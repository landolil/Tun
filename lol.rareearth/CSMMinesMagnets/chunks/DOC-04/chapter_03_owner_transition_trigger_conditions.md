## Owner Transition Trigger Conditions
## 3. Owner Transition Trigger Conditions

This chapter defines the precise, binary milestones that must be satisfied before the facilitator-to-owner transition executes. Each trigger is objectively verifiable with documented evidence.

### 3.1 Transition Philosophy — Milestone-Based, Not Time-Based

The transition from CSM (facilitator) to Tardigradia (owner) is **not** triggered by a calendar date. It is triggered by the satisfaction of **all** conditions in Section 3.2. This ensures Tardigradia assumes ownership only when assets are de-risked, permitted, and community-aligned.

$$T_{transition} = \min\{t : \bigwedge_{i=1}^{n} C_i(t) = \text{TRUE}\}$$

Where $C_i(t)$ are the binary trigger conditions defined below.

### 3.2 Mandatory Transition Triggers — All Must Be Satisfied

#### Trigger 1: Concession Portfolio Constituted

| Criterion | Verification Method | Evidence Required |
|-----------|---------------------|-------------------|
| ≥ 30 constituted concessions | Sernageomin registry search | Constituciones mineras (title documents) |
| ≥ 15 IOCG/IOA concessions (high Fe) | DOC-01 geological classification | Mensura + geological report |
| ≥ 10 REE-bearing concessions | DOC-01 REE occurrence mapping | Geochemical assays + Sernageomin |
| Clear title (no overlaps, no judicial encumbrances) | Conservador de Bienes Raíces search | Certificados de hipotecas y gravámenes |
| Concessions held by Tardigradia Chile SpA (or nominee) | Sernageomin titularidad | Updated registry extract |

**Binary Test:** `COUNT(constituted_concessions) >= 30 AND COUNT(IOCG_IOA) >= 15 AND COUNT(REE) >= 10 AND title_clear = TRUE`

#### Trigger 2: RCA Environmental Approval (Law 19,300)

| Criterion | Verification Method | Evidence Required |
|-----------|---------------------|-------------------|
| EIA/EIS approved by SEA | SEA Resolution (RCA) | RCA document with resolutivo |
| No unresolved community observations | SEA observation matrix | All observations resolved/satisfied |
| Indigenous consulta completed (Law 19,253) | CONADI/SEA certification | Acta de consulta indígena |
| Environmental bond posted | SEA guarantee registry | Boleta de garantía / fianza |

**Binary Test:** `RCA_approved = TRUE AND consulta_completed = TRUE AND bond_posted = TRUE`

#### Trigger 3: Community Benefit Agreements Executed

| Criterion | Verification Method | Evidence Required |
|-----------|---------------------|-------------------|
| ≥ 3 host commune agreements signed | Municipal protocol | Signed agreements + municipal decree |
| FBC Trusts formed & capitalized | Conservador de Bienes Raíces | Trust deeds + capitalization proof |
| CDC Development Corps operational | Municipal registry | CDC constitución + first board minutes |
| Per-capita investment floor funded | Trust bank statements | $3,000/person/year escrowed Year 1 |

**Binary Test:** `COUNT(signed_agreements) >= 3 AND FBC_formed = TRUE AND CDC_operational = TRUE AND year1_funded = TRUE`

#### Trigger 4: Water Rights Secured (DGA)

| Criterion | Verification Method | Evidence Required |
|-----------|---------------------|-------------------|
| Water rights granted for process + camp | DGA resolution | Derechos de aprovechamiento de aguas |
| Sufficient for 30 units (0 m³ process + camp) | Hydrogeological study | Estudio hidrogeológico + DGA approval |
| No third-party oppositions pending | DGA opposition registry | Certificado de no oposición |

**Binary Test:** `water_rights_granted = TRUE AND volume_sufficient = TRUE AND no_oppositions = TRUE`

#### Trigger 5: Aegis-Forge License Executed & Phase Alpha Complete

| Criterion | Verification Method | Evidence Required |
|-----------|---------------------|-------------------|
| Exclusive Chile license signed | License agreement | Executed license (ACS ↔ Tardigradia) |
| Phase Alpha demo complete (5 t Mountain Pass) | Third-party verification (SGS/ALS) | Verification report + purity certificates |
| CAPEX/OPEX validated at demo scale | Independent engineer report | IE report confirming $4.32/kg OPEX |
| Regulatory pathway assessed (EPA Regions 9/8/10) | Regulatory consultant memo | Memo + EPA pre-application meeting minutes |

**Binary Test:** `license_executed = TRUE AND phase_alpha_complete = TRUE AND opex_validated <= $5.00/kg AND regulatory_pathway_clear = TRUE`

#### Trigger 6: Tardigradia Capital Committed

| Criterion | Verification Method | Evidence Required |
|-----------|---------------------|-------------------|
| Series A closed (min $50M) | Subscription agreements | Executed SPAs + fund receipts |
| Corfo Ventures commitment (5-10% holdco) | CORFO investment committee approval | CORFO resolution + term sheet |
| Project finance term sheet (Aegis-Forge clusters) | Lender term sheets | Signed term sheets (min 2 lenders) |
| Foreign investment registered (Law 20,848) | Central Bank registration | Registro de inversión extranjera |

**Binary Test:** `series_A_closed >= $50M AND corfo_committed = TRUE AND project_finance_terms = TRUE AND fi_registered = TRUE`

#### Trigger 7: Key Personnel in Place

| Role | Required | Verification |
|------|----------|--------------|
| CEO Tardigradia Chile SpA | Appointed | Employment contract + RUT |
| CFO Tardigradia Chile SpA | Appointed | Employment contract + RUT |
| VP Operations (Aegis-Forge experience) | Appointed | Employment contract + RUT |
| Community Relations Director | Appointed | Employment contract + RUT |
| Environmental Permitting Manager | Appointed | Employment contract + RUT |

**Binary Test:** `COUNT(appointed_key_personnel) >= 5`

### 3.3 Conditional Triggers — Accelerate or Delay Transition

| Condition | Effect | Verification |
|-----------|--------|--------------|
| **Early Transition**: All mandatory triggers met before Month 24 | Transition executes immediately | Board resolution |
| **Delay Event**: Force majeure > 90 days | Transition deadline extends day-for-day | Force majeure notice |
| **Partial Trigger Failure**: 1 of 7 mandatory triggers unmet at Month 36 | CSM may extend mandate 12 months (fee continues) | Written notice |
| **Regulatory Moratorium**: New law blocks REE processing | Mandate suspended until resolved | Legal opinion |

### 3.4 Trigger Verification Process

**Verification Agent:** Independent law firm (Chilean) + Independent engineer (international)

**Process:**
1. CSM prepares Trigger Verification Package (TVP) — all evidence documents
2. Verification Agent reviews TVP (15 business days)
3. Verification Agent issues Trigger Certification (TC) — pass/fail per trigger
4. If all 7 mandatory triggers = PASS: Transition executes per Chapter 5
5. If any trigger = FAIL: Specific remediation plan with 90-day cure period

**Cost Allocation:** Tardigradia bears 100% of Verification Agent costs

### 3.5 Traceability Matrix — Chapter 3

| Trigger | DOC-01 Reference | DOC-02 Reference | DOC-03 Reference | External Source |
|---------|------------------|------------------|------------------|-----------------|
| T1 Concessions | Ch 2-5 (deposits) | Ch 1 (communities) | Ch 1 (royalty) | Sernageomin Catastro 2024 |
| T2 RCA | Ch 7 (infrastructure) | Ch 4 (health/env) | Ch 5 (remediation) | Law 19,300 / SEA |
| T3 Communities | Ch 1 (geography) | Ch 2-9 (ethnography) | Ch 2, 7 (agreements) | Law 19,253 / Law 21,210 |
| T4 Water | Ch 7 (infrastructure) | Ch 4 (burden) | Ch 5 (water fund) | DGA / Law 18,450 |
| T5 Aegis-Forge | Ch 8 (integration) | — | Ch 3 (tech transfer) | E172 / CSMFAB0108 |
| T6 Capital | Ch 10 (recommendations) | — | Ch 8 (venture) | CSMMagEco2026 V2.0 |
| T7 Personnel | — | Ch 7 (education) | Ch 4 (workforce) | [TBD:RESEARCH] Chile mining labor market |