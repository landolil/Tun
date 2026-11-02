# Output: 6 intro files in FinishedWork/intros/

set -euo pipefail

CANONICAL_DOC="$1"
DOC_ID=$(basename "$CANONICAL_DOC" .md | sed 's/.*\(DOC-[0-9]*\).*/\1/')
TRACEABILITY="chunks/${DOC_ID}/traceability.json"
