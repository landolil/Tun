## 10. Audit & Compliance

### 10.1 Audit Schedule

| Audit | Frequency | Scope | Auditor | Standard |
|-------|-----------|-------|---------|----------|
| **Internal CM Audit** | Quarterly | All baselines, ECO closure, CUUID linkage, Git tags | CM + QA | ISO 10007, AS9100 |
| **External CM Audit** | Annual | Full CM program, supplier CM, DR test | AS9100 Registrar | AS9100, NQA-1 |
| **SIL-3 SIF Audit** | Annual (PROD-28 CT-04) | 24 SIFs, 2oo3, SOE, proof test | Safety + TÜV | IEC 61508, ISA-84 |
| **Cyber Audit** | Annual (PROD-36) | IEC 62443 SL-4 evidence, pen test, red team | Cyber + External | IEC 62443, NERC CIP |
| **Quality Audit** | Quarterly (PROD-28) | NCR trends, FA data, supplier performance | QA | ISO 9001, AS9100 |
| **Regulatory Audit** | Per permit (PROD-32) | EPA CEMS, NRC material, ITAR | Regulatory + Agency | 40 CFR, 10 CFR, 22 CFR |

### 10.2 Continuous Audit via Digital Twin (PROD-37)

The digital twin provides **continuous configuration audit**:

| Check | Frequency | Alert Threshold |
|-------|-----------|-----------------|
| **Baseline drift** (process vs. twin) | 10 Hz | Δx RMS > 3σ |
| **Firmware hash mismatch** | Boot + weekly | Any mismatch |
| **SBOM drift** (deployed vs. TUF) | Weekly | Any new CVE > CVSS 7 |
| **CUUUID linkage broken** | Per batch | Any CI without 4 baselines |
| **ECO closure overdue** | Daily | > 30 days Major, > 72 hrs Critical |
| **AVL expiration** | Daily | Any Tier 1 > requal_period |

### 10.3 Audit Evidence Package

Each audit produces an **Evidence Package** stored in Git + DQR blockchain:

```
audit-package-YYYY-MM-DD/
├── audit_plan.pdf
├── checklist_completed.xlsx
├── findings/
│   ├── FIND-001_major_cm_drift.md
│   ├── FIND-002_minor_docs_outdated.md
│   └── ...
├── evidence/
│   ├── git_tag_verification.log
│   ├── cuuid_linkage_report.json
│   ├── eco_closure_report.csv
│   ├── sbom_verification.log
│   ├── dr_test_results.pdf
│   └── blockchain_anchor_receipts.json
├── dispositions/
│   ├── FIND-001_CAPA_ECO-1045.md
│   └── ...
├── auditor_signatures.json
└── cm_approval.pdf
```

---
