# HEARTBEAT_LOLFORGE.md — lol.forge Heartbeat Configuration
## 2-Minute Heartbeat Protocol for Continuous Operation

**Project**: lol.forge — Carrington Storm Motors Forge
**Heartbeat Interval**: 120 seconds (2 minutes)
**Subtask Timeout**: 30 seconds maximum
**Auto-Continue**: Enabled — no blocking waits

---

## Heartbeat State

```json
{
  "last_heartbeat": "2026-11-02T19:00:00Z",
  "current_runner": "008",
  "current_document": "PROD-23",
  "subtask": "research",
  "subtask_start": "2026-11-02T19:00:00Z",
  "documents_completed": 22,
  "total_lines_written": 21478,
  "git_commits_this_session": 6,
  "status": "active"
}
```

---

## Heartbeat Checks (Rotate Every Cycle)

### Cycle 1: Git & Document Status
- [ ] `git status` — check for uncommitted changes
- [ ] Count documents in docs/ (target: 40 PROD + 40 FOLLOW)
- [ ] Verify current document line count progress
- [ ] Check chunk manifests are current

### Cycle 2: Source Material Sync
- [ ] Verify ../seed/CSMFAB/CSMFAB0108/ accessible
- [ ] Verify ../seed/CSMWip/12_AegisOutfitFabricator/ accessible
- [ ] Verify ../seed/CSMWip/CSMMinesMagnets/ accessible
- [ ] Check for new source material updates

### Cycle 3: Automation Health
- [ ] write_large_file.py functional
- [ ] generate_intros.py functional
- [ ] Heartbeat monitor process alive
- [ ] Disk space adequate (>5GB free)

### Cycle 4: Progress Validation
- [ ] Master_Todo.md checkboxes match actual completion
- [ ] TODO.md current with active tasks
- [ ] Memory log appended this session
- [ ] NEXT_runner file matches Master_Todo phase

---

## Heartbeat Actions

### On Each Heartbeat (Every 2 Minutes):
1. Update `last_heartbeat` timestamp in this file
2. Run current cycle checks (rotate 1→2→3→4→1...)
3. Print status line to terminal:
   ```
   [HEARTBEAT] Runner 001 | PROD-01 | research | 45 lines | 0 commits | OK
   ```
4. If subtask > 30 seconds: log warning, consider subdivision
5. If git dirty > 5 min: auto-commit with message "lol.forge: heartbeat checkpoint"

### On Session Start:
- Initialize heartbeat state
- Start background monitor: `python3 scripts/heartbeat_monitor.py --interval 120 &`
- Log session start to memory/YYYY-MM-DD.md

### On Session End:
- Stop heartbeat monitor
- Final commit and push
- Update heartbeat state to "paused"
- Log session end to memory log

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

## Emergency Procedures

### If Heartbeat Missed > 5 Minutes:
1. Check background process: `ps aux | grep heartbeat_monitor`
2. Restart: `python3 scripts/heartbeat_monitor.py --interval 120 &`
3. Log incident in memory log

### If Subtask Stuck > 60 Seconds:
1. Break into smaller subtasks
2. Update TODO.md with subdivision
3. Continue with next micro-task

### If Git Push Fails:
1. Retry with `git pull --rebase && git push`
2. If conflict: stash, pull, apply, commit, push
3. Log resolution in memory

---

## Monitoring Commands

```bash
# Manual heartbeat check
./scripts/resume_runner.sh --status

# View heartbeat log
tail -f Logs/heartbeat.log

# Force heartbeat update
echo "$(date -u +"%Y-%m-%dT%H:%M:%SZ")" > HEARTBEAT_LOLFORGE.md.timestamp

# Check monitor process
ps aux | grep heartbeat_monitor
```

---

*Heartbeat is the pulse of the forge. Keep it steady.*
*Last Updated: 2026-11-01 | Next Review: Each session start*
2026-10-31T16:19:19Z Runner 003 PROD-06 BFRP Vessel 1266 lines 202 intro 16 chunks OK
2026-11-01T00:39:50Z Runner 004 PROD-10 Research starting 0 lines 0 total OK
2026-11-01T00:56:45Z Runner 004 PROD-11 Research complete 0 lines 0 total OK
2026-11-01T01:01:05Z Runner 004 PROD-11 Complete 1202 lines 1 commit OK
2026-11-01T20:23:06Z Runner 006 Session Start PROD-16 Research Phase Initiated 0 lines 0 total OK
2026-11-02T09:30:00Z Runner 006 PROD-17 Complete 939 lines 1 commit OK
2026-11-02T09:35:00Z Runner 006 PROD-18 Research Phase Initiated 0 lines 1 total OK
2026-11-02T10:25:00Z Runner 006 PROD-18 Complete 1052 lines 1 commit OK
2026-11-02T10:35:00Z Runner 007 Session Start PROD-19 Research Phase Initiated 0 lines 2 total OK
2026-11-02T12:40:00Z Runner 007 PROD-19 Complete 1086 lines 1 commit OK
2026-11-02T12:50:00Z Runner 007 PROD-20 Research Phase Initiated 0 lines 3 total OK
2026-11-02T14:40:00Z Runner 007 PROD-20 Complete 977 lines 1 commit OK
2026-11-02T14:50:00Z Runner 007 PROD-21 Research Phase Initiated 0 lines 4 total OK
2026-11-02T16:40:00Z Runner 007 PROD-21 Complete 969 lines 1 commit OK
2026-11-02T17:00:00Z Runner 008 Session Start PROD-22 Research Phase Initiated 0 lines 5 total OK
2026-11-02T18:50:00Z Runner 008 PROD-22 Complete 909 lines 1 commit OK
