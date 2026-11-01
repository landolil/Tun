#!/usr/bin/env python3
"""
Heartbeat Monitor — CSMMinesMagnets
Adapted from AegisOutfitFabricator heartbeat_monitor.py
"""

import time
import json
import sys
import os
from datetime import datetime, timezone
from pathlib import Path


class HeartbeatMonitor:
    def __init__(self, interval=120, project_root=None):
        self.interval = interval
        # Default to current working directory (set by startup.sh)
        self.project_root = Path(project_root) if project_root else Path.cwd()
        self.status_file = self.project_root / "Logs" / "heartbeat_status.json"
        self.log_file = self.project_root / "Logs" / "heartbeat.log"
        self.todo_file = self.project_root / "TODO.md"
        self.running = False
        self.cycle = 0
        self.current_state = {
            "runner": "004",
            "document": "DOC-07",
            "subtask": "2.4.1",
            "last_update": None,
            "next_action": "Research Chilean Mining Code concessions"
        }
        self.status_file.parent.mkdir(parents=True, exist_ok=True)
        self.log_file.parent.mkdir(parents=True, exist_ok=True)

    def load_state(self):
        if self.status_file.exists():
            try:
                with open(self.status_file) as f:
                    self.current_state = json.load(f)
            except Exception:
                pass

    def save_state(self):
        self.current_state["last_update"] = datetime.now(timezone.utc).isoformat()
        with open(self.status_file, 'w') as f:
            json.dump(self.current_state, f, indent=2)

    def log_heartbeat(self, message):
        timestamp = datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M:%S UTC")
        log_entry = f"[HEARTBEAT] {timestamp} | {message}\n"
        with open(self.log_file, 'a') as f:
            f.write(log_entry)
        print(log_entry.strip())

    def update_todo(self, subtask_id, completed=True):
        """Update TODO.md checkbox for subtask"""
        if not self.todo_file.exists():
            return
        try:
            content = self.todo_file.read_text()
            if completed:
                content = content.replace(f"- [ ] {subtask_id}", f"- [x] {subtask_id}")
            else:
                content = content.replace(f"- [x] {subtask_id}", f"- [ ] {subtask_id}")
            self.todo_file.write_text(content)
        except Exception:
            pass

    def run(self):
        self.running = True
        self.load_state()
        self.log_heartbeat(f"Runner {self.current_state['runner']} | {self.current_state['document']} | START | Interval: {self.interval}s")

        while self.running:
            time.sleep(self.interval)
            if not self.running:
                break

            self.cycle += 1
            msg = f"Runner {self.current_state['runner']} | {self.current_state['document']} | Subtask {self.current_state['subtask']} | Cycle {self.cycle} | Next: {self.current_state['next_action']}"
            self.log_heartbeat(msg)
            self.save_state()

            # Auto-commit every 5 cycles
            if self.cycle % 5 == 0:
                os.system(f"cd {self.project_root} && git add -A && git commit -m 'heartbeat: auto-commit cycle {self.cycle}' >/dev/null 2>&1")

    def stop(self):
        self.running = False
        self.log_heartbeat(f"Runner {self.current_state['runner']} | STOP | Cycles: {self.cycle}")
        self.save_state()


def main():
    import argparse
    parser = argparse.ArgumentParser(description="Heartbeat Monitor for CSMMinesMagnets")
    parser.add_argument("--interval", type=int, default=120, help="Heartbeat interval in seconds")
    parser.add_argument("--project-root", type=str, default=None, help="Project root directory")
    args = parser.parse_args()

    monitor = HeartbeatMonitor(interval=args.interval, project_root=args.project_root)
    try:
        monitor.run()
    except KeyboardInterrupt:
        monitor.stop()


if __name__ == "__main__":
    main()