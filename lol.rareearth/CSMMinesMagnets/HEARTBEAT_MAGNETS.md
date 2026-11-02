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
  "last_heartbeat": "2026-11-02T10:13:44Z",
  "current_runner": "018",
  "current_document": "SYNTH-01",
  "subtask": "research",
  "subtask_start": "2026-11-02T10:13:44Z",
  "documents_completed": 35,
  "total_lines_written": 70000,
  "git_commits_this_session": 1,
  "status": "phase_transition"
}
```

---

## Phase 5 Completion Summary (Final Heartbeat of Phase 5)

```
[HEARTBEAT] Runner 017j | DOC-35 | finalization | 2100 lines | 1 commit | DONE
[HEARTBEAT] Phase 5 COMPLETE — 10/10 community documents delivered
[HEARTBEAT] Zero conflation certified across all 45 pairwise comparisons
[HEARTBEAT] Phase 6 Synthesis & Integration queued — Runner 018
```

---

## Heartbeat Checks (Rotate Every Cycle)

### Cycle 1: Git & Document Status
- [ ] `git status` — check for uncommitted changes
- [ ] Count documents in FinishedWork/ (target: 35 Phase 1-5 + Phase 6 growing)
- [ ] Verify current document line count progress
- [ ] Check chunk manifests are current

### Cycle 2: Source Material Sync
- [ ] Verify all 35 Phase 1-5 docs accessible in FinishedWork/
- [ ] Verify chunk manifests for all docs
- [ ] Verify heuristic intros (6 per doc = 210 total)
- [ ] Check for new source material updates in ../seed/

### Cycle 3: Automation Health
- [ ] write_large_file.py functional
- [ ] generate_synthesis_matrix.py functional (Phase 6)
- [ ] conflation_audit.py functional (enhanced for synthesis)
- [ ] Heartbeat monitor process alive
- [ ] Disk space adequate (>5GB free)

### Cycle 4: Progress Validation
- [ ] Master_Todo.md checkboxes match actual completion
- [ ] TODO.md current with active tasks
- [ ] Memory log appended this session
- [ ] NEXT_runner file matches current phase

---

## Phase 6 Specific Checks

### Synthesis Quality Gates (Elevated)
- [ ] Lines per doc ≥1,200 (vs Phase 5: 900)
- [ ] Formulas per doc ≥30 (vs Phase 5: 20)
- [ ] Cross-refs per doc ≥25 (vs Phase 5: 15)
- [ ] Standards per doc ≥12 (vs Phase 5: 8)
- [ ] Synthesis matrix present (inter-doc mapping table)
- [ ] Decision triggers defined (if/then brokerage rules)
- [ ] Scenario portfolios (3 scenarios × 10 synths)

### Conflation Audit (Enhanced)
- [ ] Zero conflation across synthesis documents
- [ ] No synthesis document conflates distinct communities
- [ ] Cross-synthesis references properly attributed
- [ ] Ontological tags consistent across all 35+ docs

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
- `PHASE_TRANSITION` — Phase boundary (this session)

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
echo "$(date -u +"%Y-%m-%dT%H:%M:%SZ")" > HEARTBEAT_MAGNETS.md.timestamp

# Check monitor process
ps aux | grep heartbeat_monitor
```

---

*Heartbeat is the pulse of the mine. Keep it steady.*
*Last Updated: 2026-11-02 | Phase 5 Complete | Phase 6 Starting*
