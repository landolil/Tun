# Run conflation audit script (mandatory for every document)
python3 scripts/conflation_audit.py \
    --doc FinishedWork/DOC-33_Community_TocopillaMejillones.md \
    --corpus FinishedWork/ \
    --threshold 0.15 \
    --output Logs/conflation_audit_DOC-33.json
