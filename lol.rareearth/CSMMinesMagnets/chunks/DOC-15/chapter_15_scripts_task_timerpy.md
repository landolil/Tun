# scripts/task_timer.py
class TaskTimer:
    def __init__(self, guard_seconds: int = 30, project_dir: Path):
        self.guard = guard_seconds
        self.project_dir = project_dir
        self.log_file = project_dir / Logs/task_timer.log
    
    def start_subtask(self, subtask_id: str):
        Called at subtask start
        self.current_subtask = subtask_id
        self.start_time = time.time()
        self.log(fSTART {subtask_id})
    
    def check(self) -> bool:
        Called periodically — returns True if OK, False if timeout
        elapsed = time.time() - self.start_time
        if elapsed > self.guard:
            self.log(fTIMEOUT {self.current_subtask} after {elapsed:.1f}s)
            # Trigger subdivision recommendation
            self.recommend_subdivision(self.current_subtask)
            return False
        return True
    
    def complete_subtask(self, subtask_id: str):
        Called at subtask completion
        elapsed = time.time() - self.start_time
        self.log(fCOMPLETE {subtask_id} in {elapsed:.1f}s)
        self.current_subtask = None
```

#### 4.3.2 Integration with Resume

- **Heartbeat** provides **liveness** (protocol alive) → Phase 3 verify
- **Task Timer** provides **progress** (subtasks completing) → Phase 5 continue
- Both write to **Logs/** which are Git-tracked → Phase 3 verify

---

### 4.4 Continuity Signals Matrix

| Signal | Source | Frequency | Resume Phase | Failure Action |
|--------|--------|-----------|--------------|----------------|
| **Heartbeat** | `heartbeat_monitor.py` | 120s | Phase 3 (freshness) | >5min gap → auto-commit checkpoint |
| **Task Timer** | `task_timer.py` | 30s guard | Phase 5 (progress) | >30s → recommend subdivision |
| **Git Commits** | Manual/auto | 3-5 subtasks | Phase 3 (clean status) | >5min dirty → auto-commit |
| **Audit Ledger** | `conflation_audit.py` | Per conflict | Phase 4 (regress) | New CRITICAL/HIGH → block resume |
| **Chunk Manifests** | `write_large_file.py` | Per doc | Phase 3 (verify) | Corruption → re-chunk from canonical |

---

### 4.5 Cross-Reference to DOC-04, DOC-11, DOC-13, DOC-14

| Cross-Ref | Monitoring Relevance |
|-----------|---------------------|
| **DOC-04** | Brokerage trigger monitoring = heartbeat analog |
| **DOC-11** | Grid monitoring (NOAA SWPC) = heartbeat analog |
| **DOC-13** | El Segundo Mirror (Ch. 4) = heartbeat + task timer |
| **DOC-14** | Audit ledger monitoring = continuity signal |

---

### 4.6 Chapter 4 Summary

The Heartbeat & Task Timer provide **dual continuity signals**:

- **Heartbeat (120s)**: Proves protocol liveness, runs rotating health checks, logs to Git
- **Task Timer (30s guard)**: Proves subtask progress, enforces subdivision, prevents stall
- **Both**: Write to Git-tracked logs, verified in resume Phase 3, started in Phase 5

These signals ensure **any disruption is detected within 120s** and **any stall is flagged within 30s**.

**Next**: Chapter 5 — Conflation Audit Integration: Regression Mode in Resume Flow.

---
