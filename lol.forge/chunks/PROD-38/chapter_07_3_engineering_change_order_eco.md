## 3. Engineering Change Order (ECO) Process

### 3.1 ECO Classification

| Class | Criteria | Max Lead Time | Approval | Deployment |
|-------|----------|---------------|----------|------------|
| **Critical** | Safety (SIL-3), Security (SL-C), Regulatory, Data integrity | 72 hours | CCB unanimous + Safety + Cyber | Staged: 1 zone → 1 stage → full (CT-04 re-test each) |
| **Major** | Performance, reliability, new capability, interface change | 30 days | CCB majority + discipline leads | Staged: 1 zone → 1 stage → full (CT-04 partial) |
| **Minor** | Bug fix, documentation, parameter tuning, cosmetic | 14 days | Discipline lead + CM | Direct to next release branch |
| **Documentation** | Spec clarification, typo, format, non-technical | 7 days | CM only | Direct to main |
| **Emergency** | Production stoppage, imminent safety/security risk | 4 hours | CM + Safety (verbal), CCB ratification within 24h | Direct to main + hotfix tag, CT-04 within 7 days |

### 3.2 ECO Lifecycle

```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│  INITIATE   │────►│  ANALYZE    │────►│   REVIEW    │────►│  APPROVE    │
│  (Any role) │     │  (Originator)│     │   (CCB)     │     │  (CCB/Lead) │
└─────────────┘     └─────────────┘     └─────────────┘     └──────┬──────┘
                                                                     │
                    ┌─────────────┐     ┌─────────────┐     ┌────────┴──────┐
                    │   CLOSE     │◄────│  VERIFY     │◄────│  IMPLEMENT    │
                    │  (Originator)│     │  (QA/Ops)   │     │  (Developers) │
                    └─────────────┘     └─────────────┘     └───────────────┘
```

**Detailed Steps:**

1. **INITIATE** — Any role submits ECO request via GitHub Issue template:
   - Title: `ECO-XXXX: <class> - <one-line summary>`
   - Description: Problem statement, proposed change, affected CIs, urgency
   - Auto-assigned ECO number (sequential)

2. **ANALYZE** — Originator (with discipline leads) performs:
   - Impact analysis: affected CIs, test cases, downstream documents, suppliers
   - Risk assessment: SIL-3 impact (PROD-23 Table 6.2), cyber impact (PROD-36 CPAT), schedule
   - Implementation plan: branch name, tasks, test requirements, rollback procedure
   - Cost/schedule estimate

3. **REVIEW** — CCB convenes (weekly for Major, ad-hoc for Critical/Emergency):
   - Safety Engineering: SIL-3 impact verdict (no impact / re-analysis / re-cert)
   - Cyber Security: SL-C impact, firmware signing, SBOM update, supply chain
   - QA: Test plan adequacy, NCR linkage, FA requirements
   - Operations: Production impact, recipe changes, operator retraining
   - Supply Chain: AVL impact, SCN issuance, requalification needs
   - Training: DQR impact, simulator updates, curriculum changes

4. **APPROVE** — CCB decision recorded in GitHub Issue:
   - **Approved**: Implementation branch created, ECO moves to IMPLEMENT
   - **Conditional**: Approved with mandatory conditions (additional test, phased deploy)
   - **Deferred**: Moved to backlog with rationale
   - **Rejected**: Closed with rationale

5. **IMPLEMENT** — Developers work on `feature/eco-XXXX` branch:
   - All changes in single branch (atomic ECO)
   - Signed commits, PR to release branch
   - CI passes: lint, typecheck, test, signature-verify, split-chunks-verify
   - Documentation updated (PROD docs, intros, cross-references)

6. **VERIFY** — QA validates implementation:
   - Unit/integration tests pass (mutation >90%)
   - CT tests executed per test plan (PROD-39)
   - Regression: prior FAT/SAT baselines re-run (automated in CI)
   - Digital twin validation: ROM/ML model cards updated (PROD-37)

7. **CLOSE** — Originator confirms:
   - All acceptance criteria met
   - As-Built/As-Maintained/As-Operated baselines updated
   - DQR blockchain updated (PROD-28, 34)
   - ECO Issue closed with `Closed: ECO-XXXX verified in prod-vX.Y.Z`

### 3.3 ECO Metrics & KPIs

| Metric | Target | Measurement |
|--------|--------|-------------|
| **Critical ECO cycle time** | ≤ 72 hours | Initiate → Approve |
| **Major ECO cycle time** | ≤ 30 days | Initiate → Approve |
| **ECO rejection rate** | < 10% | Rejected / Total submitted |
| **Emergency ECO ratio** | < 5% of total | Emergency / Total approved |
| **Post-deployment defects** | 0 Critical, ≤ 2 Major/quarter | PROD-28 NCRs linked to ECO |
| **Rollback frequency** | 0 per year | Hotfix reverts |

---
