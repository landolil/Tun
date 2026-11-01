## Intellectual Property & Data Governance
## Chapter 8: Intellectual Property & Data Governance

### 8.1 IP & Data Imperative -- Sovereign Data, Protected Innovation

The IP and data governance framework is not assembled from standard data protection; it is **forced** by the logical necessity of a formation where **Chilean operational data (SCADA, community, environmental) must remain under Chilean sovereignty while US IP (Aegis-Forge, CSMFAB) remains protected under US law, and both must be defensible in cross-border disputes**. The framework rests on a single, irreducible constraint: **Data Localization + IP Protection + Cross-Border Defensibility = Single Governance Stack** -- the proposition that Chilean Law 19,628, US DTSA, CPTPP digital trade, and NY Convention enforcement can be integrated into one coherent system. No additional postulates -- no data havens, no IP havens, no cloud sovereignty separate from legal sovereignty -- are required. The constraint is simply: *Chilean data stays in Chile; US IP stays protected; arbitration enforces both*. Everything else is the shadow this constraint casts.

**Data Sovereignty Compliance Function:**
$$Compliance = \prod_{categories} Localization_{category} 	imes TransferMechanism_{category}$$
$$Localization_{SCADA} = 1, Localization_{Community} = 1, Localization_{Environmental} = 1$$
$$TransferMechanism_{Financial} = SCCs, TransferMechanism_{HR} = SCCs, TransferMechanism_{IP} = License$$
$$Compliance = 1 	imes 1 	imes 1 	imes 1 	imes 1 	imes 1 = 1.0 	ext{ (full compliance)}$$

### 8.2 Patent Prosecution Highways -- Global Portfolio

**PPH Network for Tardigradia/ACS/CSMFAB Patents:**

| Patent Office | PPH Partner | Tardigradia Families | Acceleration |
|---------------|-------------|---------------------|--------------|
| **INAPI (Chile)** | USPTO, EPO, JPO, KIPO, CNIPA | Thermal cascade, Fe16N2, Motor integration | 18-24 months |
| **USPTO (US)** | INAPI, EPO, JPO, KIPO, CNIPA | Aegis-Forge US, CSMFAB motor | 18-24 months |
| **EPO (EU)** | USPTO, INAPI, JPO | Fe16N2 EU, Magnet alloys | 24-30 months |
| **JPO (Japan)** | USPTO, EPO, INAPI | SmCo, Fe-Sn (NIMS) | 24-30 months |
| **KIPO (Korea)** | USPTO, EPO, INAPI | Motor integration | 24-30 months |
| **CNIPA (China)** | USPTO, EPO, INAPI | Full portfolio | 30-36 months |

**Global Portfolio Strategy:** File PCT -> Enter CL/US/EP/JP/KR/CN via PPH -> Grant in 18-36 months vs 48-72 standard.

**PPH Portfolio Coverage:**
$$TotalFamilies = 12 (thermal cascade, Fe16N2, MnBi, SmCo, motor, process control)$$
$$Coverage = 6 offices x 12 families = 72 national phase entries$$
$$PPHAccelerated = 72 x 0.8 = 58 entries (80% eligible)$$

**Patent Cost per Family (6 offices):**
$$Cost_{family} = Sum_{offices} (Filing + Prosecution + Maintenance)$$
$$approx $50,000/family x 12 families = $600K total portfolio cost$$

### 8.3 Trade Secret Protection -- Cross-Border Enforcement

| Secret Category | Chile (Law 19,628) | US (DTSA 18 USC 1836) | CPTPP (Art 18.78) | Enforcement Forum |
|-----------------|-------------------|----------------------|-------------------|-------------------|
| **Thermal profiles** | Criminal + civil | Civil + injunctive | Civil remedies | ICC Santiago (CL law) / ICC NY (US law) |
| **ML model weights** | Criminal + civil | Civil + injunctive | Civil remedies | Same |
| **Refractory compositions** | Criminal + civil | Civil + injunctive | Civil remedies | Same |
| **Process parameters** | Criminal + civil | Civil + injunctive | Civil remedies | Same |

**Key Procedural Advantage:** CPTPP Art 18.78 requires parties to provide **criminal procedures** for trade secret theft. Chile Law 19,628 Art 12 + US DTSA both provide criminal penalties. Parallel prosecution in Santiago + Delaware.

### 8.4 Data Governance -- Localization + Cross-Border Flow

**Data Classification & Localization:**

| Data Category | Localization | Cross-Border Flow Mechanism | Retention |
|---------------|--------------|----------------------------|-----------|
| **SCADA/Operational** | Chile (Tardigradia Chile SpA servers) | Aggregated anonymized to Holdco | 7 years (Law 19,628) |
| **Community/CVO** | Chile (FBC Trust servers) | **No cross-border flow** | Permanent (trust records) |
| **Environmental/SEA** | Chile (SEA portal + Tardigradia) | SEA reporting only | 10 years (Law 19,300) |
| **Financial/ERP** | Chile (Tardigradia) + US (Holdco consolidation) | SCCs + Law 19,628 Art 12 | 7 years (tax) |
| **HR/Payroll** | Chile (Tardigradia) | Anonymized to Holdco | 7 years (labor law) |
| **IP/License** | US (ACS) + Chile (Tardigradia) | License agreement terms | Life of patent + 6 years |

**Cross-Border Transfer Safeguards (Law 19,628 Art 12 + CPTPP Art 14.11):**
- Standard Contractual Clauses (SCCs) for all transfers
- Adequacy assessment: Chile -> US (no adequacy decision) -> SCCs required
- US -> Chile (no adequacy) -> SCCs required
- Binding Corporate Rules (BCRs) for Tardigradia group (Year 3 target)

**SCCs Coverage:**
$$TotalTransfers = 6 data categories x 2 directions = 12 SCC agreements$$
$$BCRStatus = Year 3 target (per EU GDPR Art 47)$$

### 8.5 Cybersecurity Standards -- Critical Infrastructure Alignment

**Cybersecurity Framework Stack:**

| Layer | Standard | Certification | Audit Frequency |
|-------|----------|---------------|-----------------|
| **IT Governance** | ISO 27001 | ISO 27001 cert | Annual |
| **OT/ICS Security** | IEC 62443 SL-2 | IEC 62443 audit | Annual |
| **Cloud Security** | CSA STAR Level 2 | CSA STAR | Annual |
| **Supply Chain** | SLSA Level 3 | SLSA attestation | Per release |
| **Incident Response** | NIST SP 800-61 | Tabletop exercise | Quarterly |
| **Chilean Critical Infra** | Law 21,663 | CSIRT registration | Continuous |

**Data Breach Notification:**
- Chile Law 19,628: 72 hours to PDP (Data Protection Authority)
- US State laws: Varies (typically 30-60 days)
- CPTPP Art 14.14: Prompt notification to affected parties
- GDPR (if EU data): 72 hours to DPA

**Cybersecurity Investment ROI:**
$$Investment_{cyber} = $2.5M (ISO 27001 + IEC 62443 + CSA STAR + SLSA)$$
$$RiskReduction = P(breach)_{before} - P(breach)_{after} = 0.15 - 0.03 = 0.12$$
$$ExpectedLoss_{before} = 0.15 	imes $50M = $7.5M/yr$$
$$ExpectedLoss_{after} = 0.03 	imes $50M = $1.5M/yr$$
$$AnnualSavings = $6M/yr ightarrow ROI = rac{6M}{2.5M} = 2.4x 	ext{ (Year 1)}$$

[TBD:RESEARCH] Law 19,628 cross-border transfer adequacy assessment for Chile-US data flows (2026-Q1)

[TBD:RESEARCH] Chile Law 21,663 critical infrastructure cybersecurity registration process (2026-Q1)

### 8.6 Traceability Matrix -- Chapter 8

| Claim | Source | Verification |
|-------|--------|--------------|
| INAPI PPH partners | INAPI official site | Official list |
| Law 19,628 Art 12 cross-border | Biblioteca del Congreso Nacional | Primary text |
| DTSA 18 USC 1836 | US Code | Primary text |
| CPTPP Art 18.78 trade secrets | CPTPP Chapter 18 | Treaty text |
| CPTPP Art 14 digital trade | CPTPP Chapter 14 | Treaty text |
| ISO 27001 / IEC 62443 | ISO / IEC | Current editions |
| Law 21,663 critical infra | Biblioteca del Congreso Nacional | Primary text |
| SCCs for Chile-US transfer | European Commission / Chilean PDP | Standard clauses |

---

*End of Chapter 8. Next: Chapter 9 -- Traceability Matrix*
