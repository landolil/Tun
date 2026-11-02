# conflation_audit/
├── __init__.py
├── auditor.py          # ConflationAuditor class
├── detectors.py        # 7 detection functions (CO, MD, TI, SM, HC, CRD, VC)
├── evidence.py         # Exhibit A-E builders
├── deduction.py        # 3-pass deduction engine
├── verification.py     # Binary verification vectors
├── arbitration.py      # Williams Lock Hierarchy
├── recursive.py        # El Segundo recursive validation
├── horizon.py          # SHIELD 5-horizon filter
├── ledger.py           # Append-only conflict ledger (git-tracked)
├── patches.py          # Resolution patch generator
├── cli.py              # CLI interface
└── test/
    ├── test_detectors.py
    ├── test_evidence.py
    ├── test_deduction.py
    ├── test_verification.py
    ├── test_arbitration.py
    ├── test_recursive.py
    ├── test_horizon.py
    └── test_integration.py  # Full pipeline test on DOC-01..13
```

#### 9.12.3 CI/CD Integration

```yaml