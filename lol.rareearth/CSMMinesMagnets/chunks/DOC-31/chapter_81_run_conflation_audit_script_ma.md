# Run conflation audit script (mandatory for all Phase 5 docs)
python3 scripts/conflation_audit.py \
    --doc DOC-31 \
    --compare DOC-16,DOC-26,DOC-27,DOC-28,DOC-29,DOC-30 \
    --threshold 0.15 \
    --output Logs/conflation_DOC-31.json
