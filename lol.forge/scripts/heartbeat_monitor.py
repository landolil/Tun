#!/usr/bin/env python3
"""
heartbeat_monitor.py — Background Heartbeat Monitor for lol.forge
Updates HEARTBEAT_LOLFORGE.md every 2 minutes with status.
"""

import argparse
import json
import time
import subprocess
import sys
from pathlib import Path
from datetime import datetime, timezone

class HeartbeatMonitor:
    def __init__(self, project_root, interval=120):
        self.project_root = Path(project_root)
        self.interval = interval
        self.heartbeat_file = self.project_root / "HEARTBEAT_LOLFORGE.md"
        self.state_file = self.project_root / ".heartbeat_state.json"
        self.cycle = 0
        self.cycles = ["git_status", "source_sync", "automation_health", "progress_validation"]
        
        # Load or initialize state
        self.state = self.load_state()
        
    def load_state(self):
        if self.state_file.exists():
            try:
                return json.loads(self.state_file.read_text())
            except:
                pass
        return {
            "last_heartbeat": datetime.now(timezone.utc).isoformat(),
            "current_runner": "001",
            "current_document": "PROD-01",
            "subtask": "initializing",
            "subtask_start": datetime.now(timezone.utc).isoformat(),
            "documents_completed": 0,
            "total_lines_written": 0,
            "git_commits_this_session": 0,
            "status": "active"
        }
    
    def save_state(self):
        self.state_file.write_text(json.dumps(self.state, indent=2))
    
    def run_git_status(self):
        """Cycle 1: Git & Document Status"""
        try:
            # Git status
            result = subprocess.run(
                ["git", "status", "--short"],
                cwd=self.project_root, capture_output=True, text=True
            )
            dirty_files = len(result.stdout.strip().split('\n')) if result.stdout.strip() else 0
            
            # Document counts
            prod_count = len(list((self.project_root / "docs").glob("PROD-*.md"))) if (self.project_root / "docs").exists() else 0
            follow_count = len(list((self.project_root / "docs").glob("FOLLOW-*.md"))) if (self.project_root / "docs").exists() else 0
            intro_count = len(list((self.project_root / "intros").glob("*_COMBINED_INTRO.md"))) if (self.project_root / "intros").exists() else 0
            
            # Current document line count
            current_doc_file = self.project_root / "docs" / f"{self.state['current_document']}_*.md"
            current_lines = 0
            for f in self.project_root.glob(f"docs/{self.state['current_document']}_*.md"):
                try:
                    current_lines = len(f.read_text().splitlines())
                    break
                except:
                    pass
            
            self.state.update({
                "git_dirty_files": dirty_files,
                "prod_docs": prod_count,
                "follow_docs": follow_count,
                "combined_intros": intro_count,
                "current_doc_lines": current_lines
            })
            
            return f"Git: {dirty_files} dirty | PROD: {prod_count}/40 | FOLLOW: {follow_count}/40 | Intros: {intro_count}/80 | {self.state['current_document']}: {current_lines} lines"
        except Exception as e:
            return f"Git status error: {e}"
    
    def run_source_sync(self):
        """Cycle 2: Source Material Sync"""
        try:
            sources = {
                "aegis_forge": self.project_root / "Research" / "CSMFAB0108 Aegis-Forge Thermal Cascade Inductive Material Separator",
                "outfit_fabricator": self.project_root / "Research" / "OutfitFabricator_FinishedWork" / "intros",
                "mines_magnets": self.project_root / "Research" / "MinesMagnets_FinishedWork"
            }
            
            status = []
            for name, path in sources.items():
                exists = path.exists()
                status.append(f"{name}: {'OK' if exists else 'MISSING'}")
            
            return " | ".join(status)
        except Exception as e:
            return f"Source sync error: {e}"
    
    def run_automation_health(self):
        """Cycle 3: Automation Health"""
        try:
            # Check key scripts
            scripts = [
                "scripts/generate_intros.py",
                "scripts/resume_runner.sh"
            ]
            
            status = []
            for script in scripts:
                path = self.project_root / script
                exists = path.exists()
                executable = path.stat().st_mode & 0o111 if exists else False
                status.append(f"{script}: {'OK' if exists and executable else 'MISSING' if not exists else 'NOT EXEC'}")
            
            # Disk space
            import shutil
            free_gb = shutil.disk_usage(self.project_root).free / (1024**3)
            status.append(f"Disk: {free_gb:.1f}GB free")
            
            return " | ".join(status)
        except Exception as e:
            return f"Automation health error: {e}"
    
    def run_progress_validation(self):
        """Cycle 4: Progress Validation"""
        try:
            # Check Master_Todo
            master_todo = self.project_root / "Master_Todo.md"
            todo = self.project_root / "TODO.md"
            
            master_exists = master_todo.exists()
            todo_exists = todo.exists()
            
            # Memory log
            memory_dir = self.project_root / "memory"
            latest_memory = None
            if memory_dir.exists():
                memory_files = list(memory_dir.glob("*.md"))
                if memory_files:
                    latest_memory = max(memory_files, key=lambda f: f.stat().st_mtime).name
            
            # Next runner file
            next_runner = self.project_root / f"NEXT_runner_{self.state['current_runner']}.md"
            runner_exists = next_runner.exists()
            
            return f"Master_Todo: {'OK' if master_exists else 'MISSING'} | TODO: {'OK' if todo_exists else 'MISSING'} | Memory: {latest_memory or 'NONE'} | Runner: {'OK' if runner_exists else 'MISSING'}"
        except Exception as e:
            return f"Progress validation error: {e}"
    
    def run_cycle(self):
        """Run one heartbeat cycle."""
        cycle_name = self.cycles[self.cycle % 4]
        
        if cycle_name == "git_status":
            detail = self.run_git_status()
        elif cycle_name == "source_sync":
            detail = self.run_source_sync()
        elif cycle_name == "automation_health":
            detail = self.run_automation_health()
        else:
            detail = self.run_progress_validation()
        
        # Update state
        self.state["last_heartbeat"] = datetime.now(timezone.utc).isoformat()
        self.state["last_cycle"] = cycle_name
        self.state["last_detail"] = detail
        self.save_state()
        
        # Print status line
        timestamp = datetime.now(timezone.utc).strftime("%H:%M:%S")
        status_line = f"[HEARTBEAT {timestamp}] Runner {self.state['current_runner']} | {self.state['current_document']} | {self.state['subtask']} | {self.state.get('current_doc_lines', 0)} lines | {self.state['git_commits_this_session']} commits | OK | {detail}"
        print(status_line)
        
        # Update HEARTBEAT_LOLFORGE.md with timestamp
        self.update_heartbeat_file()
        
        self.cycle += 1
    
    def update_heartbeat_file(self):
        """Update the HEARTBEAT_LOLFORGE.md with current state."""
        try:
            content = self.heartbeat_file.read_text()
            # Replace the JSON state block
            import re
            new_state = json.dumps(self.state, indent=2)
            content = re.sub(
                r'```json\n\{.*?\n\}\]',
                f'```json\n{new_state}\n```',
                content,
                flags=re.DOTALL
            )
            self.heartbeat_file.write_text(content)
        except:
            pass  # Non-critical
    
    def run(self):
        """Main monitor loop."""
        print(f"Heartbeat monitor started (interval: {self.interval}s)")
        print(f"Project: {self.project_root}")
        print("Press Ctrl+C to stop")
        
        try:
            while True:
                self.run_cycle()
                time.sleep(self.interval)
        except KeyboardInterrupt:
            print("\nHeartbeat monitor stopped")
            self.state["status"] = "paused"
            self.save_state()

def main():
    parser = argparse.ArgumentParser(description="Heartbeat monitor for lol.forge")
    parser.add_argument("--interval", type=int, default=120, help="Heartbeat interval in seconds")
    parser.add_argument("--project-root", default=None, help="Project root directory (default: parent of script dir)")
    args = parser.parse_args()
    
    if args.project_root is None:
        script_dir = Path(__file__).parent
        project_root = script_dir.parent
    else:
        project_root = Path(args.project_root)
    
    monitor = HeartbeatMonitor(project_root, args.interval)
    monitor.run()

if __name__ == "__main__":
    main()