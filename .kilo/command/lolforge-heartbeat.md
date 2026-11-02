---
description: Start heartbeat monitor for lol.forge (2-minute intervals)
agent: engineering-docs
---
Start the heartbeat monitor in background:

```bash
python3 lol.forge/scripts/heartbeat_monitor.py --interval 120
```

Requirements (per AGENTS.md:187-191):
- Update interval ≤ 2 minutes (120 seconds)
- Timeout guard ≤ 30 seconds per subtask
- Auto-continue: no blocking waits; queue next subtask immediately
- Terminal output: print progress every subtask completion