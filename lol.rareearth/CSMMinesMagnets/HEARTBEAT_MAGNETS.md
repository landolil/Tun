# HEARTBEAT_MAGNETS.md — CSMMinesMagnets Heartbeat Configuration
## 2-Minute Heartbeat Protocol for Continuous Operation

**Project**: CSMMinesMagnets — Chilean Magnetic Minerals Brokerage Intelligence
**Heartbeat Interval**: 120 seconds (2 minutes)
**Subtask Timeout**: 30 seconds maximum
**Auto-Continue**: Enabled — no blocking waits

---

## Heartbeat State

```json
{
  "last_heartbeat": "2026-11-02T09:40:00Z",
  "current_runner": "017h",
  "current_document": "DOC-33",
  "subtask": "5.1.8.1 Research Tocopilla",
  "subtask_start": "2026-11-02T09:40:00Z",
  "documents_completed_phase5": 7,
  "total_lines_written_session": 9600,
  "git_commits_this_session": 2,
  "status": "active"
}
```

---

## Heartbeat Checks (Rotate Every Cycle)

### Cycle 1: Git & Document Status
- [ ] `git status` — check for uncommitted changes
- [ ] Count documents in FinishedWork/ (target: 31+ DOC + FOLLOW)
- [ ] Verify current document line count progress
- [ ] Check chunk manifests are current

### Cycle 2: Source Material Sync
- [ ] Verify ../seed/CSMFAB/CSMFAB0108/ accessible
- [ ] Verify ../seed/CSMWip/12_AegisOutfitFabricator/ accessible
- [ ] Verify ../seed/CSMWip/CSMMinesMagnets/ accessible
- [ ] Check for new source material updates

### Cycle 3: Automation Health
- [ ] write_large_file.py functional
- [ ] generate_heuristic_intros.sh functional
- [ ] conflation_audit.py functional
- [ ] Heartbeat monitor process alive
- [ ] Disk space adequate (>5GB free)

### Cycle 4: Progress Validation
- [ ] Master_Todo.md checkboxes match actual completion
- [ ] TODO.md current with active tasks
- [ ] Memory log appended this session
- [ ] NEXT_runner file matches Master_Todo phase

---

## Terminal Status Format

```
[HEARTBEAT] Runner XXX | DOC-XX | subtask | NNN lines | C commits | STATUS
```

**Status Values:**
- `OK` — Normal progress
- `WARN` — Subtask approaching timeout
- `BLOCKED` — Waiting on external dependency
- `DONE` — Document complete, ready for next

---

## Monitoring Commands

```bash
# Manual heartbeat check
./scripts/resume_runner.sh --status

# View heartbeat log
tail -f Logs/heartbeat.log

# Force heartbeat update
echo "$(date -u +"%Y-%m-%dT%H:%M:%SZ")" > HEARTBEAT_MAGNETS.md.timestamp

# Check monitor process
ps aux | grep heartbeat_monitor
```

---

*Heartbeat is the pulse of the intelligence forge. Keep it steady.*
*Last Updated: 2026-11-02 | Runner 017h Starting*
