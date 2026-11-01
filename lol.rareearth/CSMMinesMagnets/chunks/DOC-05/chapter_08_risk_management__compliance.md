## Risk Management & Compliance
## Chapter 8: Risk Management & Compliance

### 8.1 Risk Philosophy — Compliance as Formation Logic, Not Overlay

The Tardigradia risk management framework is not assembled from compliance checklists; it is **forced** by the logical necessity of a multi-jurisdictional formation where **regulatory boundaries are structural constraints** that shape every operational decision. The framework rests on a single, irreducible constraint: **Compliance = Formation Geometry** — the proposition that FCPA, Chilean anti-corruption, sanctions, export controls, ESG reporting, and data privacy are not external overlays but the differential geometry of the sovereign-capital-community formation. No additional postulates — no "compliance department" separate from operations, no "ethics hotline" without operational teeth, no ESG report without production data — are required. The constraint is simply: *Regulatory constraint generates operational geometry generates compliance evidence*. Everything else is the shadow this constraint casts.

### 8.2 Anti-Corruption — Dual Jurisdiction Program

**FCPA (15 USC § 78dd-1) + Chilean Law 20,393 (Corporate Criminal Liability):**

| Element | FCPA (US) | Law 20,393 (Chile) | Tardigradia Integration |
|---------|-----------|---------------------|------------------------|
| **Scope** | US persons + foreign officials | Chilean companies + foreign officials | Unified: any Tardigradia entity worldwide |
| **Prohibited** | Bribes to foreign officials | Bribes to public officials (domestic/foreign) | Zero-tolerance: no facilitation payments |
| **Books & Records** | Accurate books (SEC issuers) | Contabilidad ordenada (CMF NCG 461) | Single ERP (SAP/Oracle) with audit trail |
| **Internal Controls** | SOX 404 (public) | Modelo de prevención (Law 20,393) | **Integrated Prevention Model** certified by Chilean notary |
| **Third Party Due Diligence** | Risk-based (DOJ guidance) | Risk-based (Fiscalía guidance) | Shared screening (Dow Jones / World-Check) |
| **Training** | Annual (all personnel) | Annual (all personnel) | Bilingual (ES/EN); scenario-based |
| **Reporting Channel** | Anonymous hotline (NAVEX/EthicsPoint) | Canal de denuncias (Law 20,393) | **Single hotline** — dual jurisdiction intake |

**High-Risk Interactions (Pre-Approval Required):**
- Government permit officials (SEA, DGA, Sernageomin, CONADI)
- Municipal authorities (mayors, council members)
- Indigenous community leaders (in official capacity)
- Customs/export officials (Aduanas, BIS/DDTC)
- State-owned enterprise counterparts (Codelco, Enami, BancoEstado)

### 8.3 Sanctions & Export Controls — Unified Screening

**Regulatory Stack:**
- **US:** OFAC (SDN, sectoral), BIS (EAR 1C003, 2E003), DDTC (ITAR XII)
- **Chile:** UNSC implementation (automatic), strategic goods law
- **EU:** Council Regulations (if EU investors/buyers)

**Screening Protocol:**
1. **Counterparty Onboarding:** Automated Dow Jones/World-Check screen → Manual review for hits → Compliance Officer sign-off
2. **Transaction Screening:** Real-time SWIFT/watchlist screening for all wires >$10k
3. **End-Use Verification:** Required for all magnet/REE oxide shipments (ICP/DU certificates)
4. **Re-Screening:** Monthly batch re-screen of all counterparties
5. **Audit:** Quarterly independent audit of screening logs

**Chile-Specific:** Chilean UNSC implementation is automatic — no separate Chilean sanctions list. Tardigradia Chile SpA complies via US program + UNSC direct.

### 8.4 ESG Reporting — Unified Data Platform

**Reporting Obligations Matrix:**

| Framework | Jurisdiction | Frequency | Data Source | Tardigradia Integration |
|-----------|--------------|-----------|-------------|------------------------|
| **CMF NCG 461** | Chile | Annual | ERP + SCADA + CVO | **Primary** — Chilean listed entity equivalent |
| **TCFD** | Global (investors) | Annual | Climate risk model + ops data | Integrated into NCG 461 |
| **SASB (EM-MM)** | Global (investors) | Annual | Production + safety + env data | Mapped to NCG 461 indicators |
| **SEC Climate Rules** | US (if IPO) | Annual | GHG + transition risk | TCFD-aligned |
| **CSRD/ESRS** | EU (if EU buyers) | Annual | Double materiality | Voluntary alignment |
| **Equator Principles** | Project finance | Annual | Project-level E&S | EP4 aligned (project finance requirement) |
| **IFC PS** | Project finance | Annual | Project-level E&S | EP4 aligned |

**Unified ESG Data Platform (Tardigradia Proprietary):**
- **Single Source of Truth:** SCADA (env/production) + ERP (financial/HR) + CVO (community) → Data Lake
- **Automated Indicator Calculation:** GHG Scope 1/2/3, water intensity, TRIR, community investment, indigenous engagement
- **Audit Trail:** Blockchain-anchored (Hyperledger) for indicator immutability
- **Real-Time Dashboards:** Board, CVO, Corfo, ProChile, LPs — role-based access

### 8.5 Data Privacy — Dual Jurisdiction Compliance

| Regulation | Jurisdiction | Personal Data Scope | Tardigradia Measures |
|------------|--------------|---------------------|---------------------|
| **Law 19,628** | Chile | Employees, community members, indigenous data | Consent management; data minimization; DPO (Chile) |
| **CCPA/CPRA** | California (US) | CA residents (employees, contractors) | Opt-out mechanisms; data inventory; DPO (US) |
| **GDPR** | EU (if EU LPs/buyers) | EU data subjects | SCCs; DPIA; DPO (EU rep) |

**Cross-Border Transfers:** Standard Contractual Clauses (SCCs) + Chilean Law 19,628 Art 12 authorization for international transfer.

### 8.6 Cybersecurity — Critical Infrastructure Protection

**Classification:** Magnet manufacturing = **Critical Infrastructure** (Chilean Law 21,663 + US CISA)

**Framework:** NIST CSF 2.0 + IEC 62443 (industrial control systems)

| Layer | Controls | Verification |
|-------|----------|--------------|
| **IT (Enterprise)** | Zero Trust (Okta/CrowdStrike); SOC 2 Type II; annual pen test | Independent audit |
| **OT (SCADA/ICS)** | IEC 62443 SL-2; network segmentation; historian isolation | OT-specific pen test |
| **Data** | Encryption at rest (AES-256) + in transit (TLS 1.3); key management (HSM) | Crypto audit |
| **Supply Chain** | SBOM for all software; vendor risk tiering; SLSA Level 3 for build | SBOM audit |
| **Incident Response** | 1-hr detection; 4-hr containment; 24-hr recovery (CISA playbook) | Tabletop exercises quarterly |

**CVO Cyber Interface:** Community environmental data feeds isolated from OT/IT — separate network segment with read-only access.

### 8.7 Traceability Matrix — Chapter 8

| Claim | Source | Verification |
|-------|--------|--------------|
| FCPA 15 USC 78dd-1 | US Code | Primary text |
| Law 20,393 prevention model | Biblioteca del Congreso Nacional | Primary text |
| CMF NCG 461 | Comisión para el Mercado Financiero | Regulation text |
| TCFD/SASB/SEC alignment | Framework publications | Current editions |
| Law 19,628 data privacy | Biblioteca del Congreso Nacional | Primary text |
| NIST CSF 2.0 / IEC 62443 | NIST / IEC publications | Current editions |
| Law 21,663 critical infra | Biblioteca del Congreso Nacional | Primary text |
| Equator Principles EP4 | Equator Principles Association | Current edition |

---

*End of Chapter 8. Next: Chapter 9 — Traceability Matrix*
