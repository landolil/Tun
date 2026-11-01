#!/usr/bin/env bash
# One-line session initializer for CSMMinesMagnets
# Usage: bash CSMMinesMagnets/session-start.sh

set -euo pipefail
cd "$(git rev-parse --show-toplevel)/lol.rareearth/CSMMinesMagnets"

# 1. Ensure Python3
command -v python3 >/dev/null 2>&1 || { apt-get update && apt-get install -y python3 python3-pip python3-venv; }

# 2. Verify write_large_file.py
python3 ../../__Python_Tools/write_large_file.py --help >/dev/null 2>&1 && echo "✓ write_large_file.py ready"

# 3. Verify scripts
for s in scripts/heartbeat_monitor.py scripts/task_timer.py scripts/generate_heuristic_intros.sh; do
  [[ -f "$s" ]] && echo "✓ $s" || echo "✗ MISSING: $s"
done

# 4. Git status
git status --short

# 5. Start heartbeat (120s interval)
python3 scripts/heartbeat_monitor.py --interval 120 --project-root . &
echo "HEARTBEAT_PID=$!" > .heartbeat_pid
echo "✓ Heartbeat started (PID: $!)"

# 6. Show resume context
cat RESUME_SESSION_MAGNETS.md
echo "---"
cat NEXT_runner_005.md

# 7. Quick taskmaster resume
source scripts/taskmaster.sh 2>/dev/null && taskmaster.sh quick-resume

echo ""
echo "=== SESSION READY ==="
echo "Work dir: $(pwd)"
echo "Stop heartbeat: kill \$(cat .heartbeat_pid)"
