# 2. Quality gate check on canonical
python3 verify_quality_gates.py "$CANONICAL_DOC" || exit 1
