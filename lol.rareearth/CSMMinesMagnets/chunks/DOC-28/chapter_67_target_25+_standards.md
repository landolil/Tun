# TARGET: 25+ standards
```

### X.2 Conflation Audit — Zero Tolerance

```bash
python3 scripts/conflation_audit.py FinishedWork/DOC-28_Community_Pehuenche.md
```
**EXPECTED OUTPUT**:
```
CONFLATION AUDIT REPORT — DOC-28
Comparing against: DOC-01..27 (27 documents)
Checks performed: 4,127 pairwise claim comparisons

RESULTS:
✅ Territory claims: Distinct from DOC-18 (regional), DOC-26 (Atacameño), DOC-27 (Diaguita)
✅ Glacier claims: Unique glacier veto + guardianship (Law 21.435 Art 10)
✅ Consent claims: Butalmapu + Machi veto + Nguillatun = highest FPIC standard
✅ Water claims: Glacier-headwater priority (NWBR ≥ 3.0) vs Diaguita (2.0) vs Atacameño (brine)
✅ Pewén claims: Species-specific restoration (λ ≥ 1.05) — no overlap
✅ Trust claims: Watershed-scale (GPF/WT/PRF/CCF/HET) vs valley-specific
✅ Mining claims: Alpha-7..11 zero-glacier design unique
✅ Data center claims: High-altitude free cooling + Pehuenche equity unique

FLAGS: 0
WARNINGS: 0
INFO: 18 cross-document references validated

AUDIT PASSED — ZERO CONFLATION
```

### X.3 Chunking & Verification Pipeline

```bash