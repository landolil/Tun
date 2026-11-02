# Run conflation audit script (mandatory for every document)
python3 scripts/conflation_audit.py \
    --doc FinishedWork/DOC-34_Community_SanPedroDeAtacama.md \
    --corpus FinishedWork/ \
    --threshold 0.15 \
    --output Logs/conflation_audit_DOC-34.json
