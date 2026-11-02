# scripts/heartbeat_monitor.py
class HeartbeatMonitor:
    def __init__(self, interval: int = 120, project_dir: Path):
        self.interval = interval
        self.project_dir = project_dir
        self.status_file = project_dir / Logs/heartbeat_status.json
        self.log_file = project_dir / Logs/heartbeat.log
        self.pid_file = project_dir / .heartbeat_pid
    
    def run(self):
        Main heartbeat loop
        self.write_pid()
        while True:
            self.heartbeat_cycle()
            time.sleep(self.interval)
    
    def heartbeat_cycle(self):
        Single heartbeat cycle with rotating checks
        cycle = self.get_cycle_number()
        check_type = cycle % 4  # Rotate: Git, Source, Automation, Progress
        
        timestamp = datetime.utcnow().isoformat() + 'Z'
        status = self.run_check(check_type)
        
        # Log to heartbeat.log
        log_entry = f[HEARTBEAT] {timestamp} | Runner {self.current_runner} | {self.current_doc} | {self.current_subtask} | {status.lines} lines | {status.commits} commits | {status.status}
        self.log_file.write(log_entry + '\n')
        
        # Update status JSON
        self.status_file.write(json.dumps({
            'last_heartbeat': timestamp,
            'current_runner': self.current_runner,
            'current_document': self.current_doc,
            'subtask': self.current_subtask,
            'subtask_start': self.subtask_start.isoformat(),
            'documents_completed': self.documents_completed,
            'total_lines_written': self.total_lines_written,
            'git_commits_this_session': self.git_commits_this_session,
            'status': status.status,
            'check_type': check_type,
            'check_details': status.details
        }, indent=2))
```

#### 4.2.2 Rotating Checks (4-Cycle)

| Cycle | Check | Action |
|-------|-------|--------|
| **1** | Git Status | `git status` — alert if dirty >5min |
| **2** | Source Material | Verify `../seed/CSMFAB/`, `../seed/CSMWip/` accessible |
| **3** | Automation Health | `write_large_file.py`, `generate_heuristic_intros.sh` functional |
| **4** | Progress Validation | `TODO.md` checkboxes match actual completion |

---

### 4.3 Task Timer — 30-Second Subtask Guard

#### 4.3.1 Specification

```python