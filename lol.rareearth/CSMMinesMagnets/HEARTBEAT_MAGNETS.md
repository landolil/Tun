# HEARTBEAT_MAGNETS.md

## Heartbeat Configuration — CSMWip/CSMMinesMagnets

### Interval
- **Primary**: 120 seconds (2 minutes)
- **Warning threshold**: 90 seconds (if no update)
- **Critical threshold**: 180 seconds (session may timeout)

### Subtask Guard
- **Maximum per subtask**: 30 seconds
- **Auto-split trigger**: If subtask exceeds 25 seconds, auto-divide
- **Queue behavior**: Immediate next subtask, no blocking

### Output Format
```
[HEARTBEAT] $(date -u +"%H:%M:%S UTC") | Runner 004 | DOC-07 | Subtask 2.4.1/15 | ✅ Complete | Next: 2.4.2
```

### Startup (NEW — Relative Path, Auto Python3 Install)
```bash
# From repository root:
cd CSMWip/CSMMinesMagnets
bash startup.sh
```

The `startup.sh` script:
1. Installs Python3 if missing (Debian minimal container)
2. Changes to `CSMWip/CSMMinesMagnets` (relative, not `/workspace/app/`)
3. Verifies `write_large_file.py` at `../../__Python_Tools/write_large_file.py`
4. Starts heartbeat monitor with `--project-root .`
5. Displays `RESUME_SESSION_MAGNETS.md` and `NEXT_runner_004.md`

### Monitor Script (Internal)
```bash
python3 scripts/heartbeat_monitor.py --interval 120 --project-root . &
```

### Status File
- **Location**: `Logs/heartbeat_status.json`
- **Updated**: Every heartbeat
- **Contents**: Current runner, document, subtask, timestamp, next action

### Integration Points
- **TODO.md**: Auto-update checkbox status on subtask complete
- **memory/YYYY-MM-DD.md**: Append heartbeat log entry
- **Git**: Auto-commit every 5 heartbeats (configurable)

### Alert Channels
- Terminal stdout (primary)
- Log file: `Logs/heartbeat.log`
- Optional: Webhook to monitoring endpoint (future)

### Recovery Protocol
If heartbeat misses 3 consecutive intervals:
1. Read `Logs/heartbeat_status.json` for last known state
2. Resume from last completed subtask
3. Update `RESUME_SESSION_MAGNETS.md` with recovery timestamp
4. Restart monitor via `bash startup.sh`

### Key Principle
**Never use `/workspace/app/`** — it is ephemeral and disappears. Always use relative path `CSMWip/CSMMinesMagnets` from repository root. The `startup.sh` enforces this.