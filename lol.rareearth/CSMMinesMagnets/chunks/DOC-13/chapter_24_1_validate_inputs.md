# 1. Validate inputs
[[ -f $CANONICAL_DOC ]] || { echo Canonical doc not found; exit 1; }
[[ -f $TRACEABILITY ]] || { echo Traceability not found; exit 1; }
