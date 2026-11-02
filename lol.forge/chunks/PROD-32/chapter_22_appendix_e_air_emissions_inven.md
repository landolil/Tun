## Appendix E: Air Emissions Inventory (Annual, Single Forge)

| Pollutant | Potential (tpy) | Controlled (tpy) | Permit Limit | Monitoring |
|-----------|-----------------|------------------|--------------|------------|
| **PM₂.₅** | 12.5 | 1.2 | 5 mg/Nm³ | CEMS |
| **SO₂** | 8.3 | 0.8 | 50 ppm | CEMS |
| **NOₓ** | 15.2 | 2.1 | 100 ppm | CEMS |
| **CO** | 22.1 | 3.5 | 50 ppm | CEMS |
| **VOC** | 5.4 | 0.5 | 20 ppm | CEMS + Method 25A |
| **HCl** | 4.8 | 0.3 | 10 ppm | CEMS |
| **HF** | 0.5 | 0.05 | 1 ppm | Periodic (Method 26) |
| **Hg** | 0.02 | 0.002 | 0.001 mg/Nm³ | Sorbent Trap |
| **Dioxins** | 0.0001 | 0.00001 | 0.1 ng TEQ/Nm³ | AMESA |
| **As/Sb/Bi** | 0.001 | 0.0001 | 0.01 mg/Nm³ | Method 29 |
| **CO₂e (Direct)** | 9,700 | 9,700 | — | Fuel meter + calc |
| **CO₂e (Sequestered)** | -1,150,000 | -1,150,000 | — | MgO assay + calc |

---

### 13.5 Detailed Compliance Evidence Matrix (Per Permit Condition)

| Permit | Condition | Evidence Required | Frequency | Responsible | Storage |
|--------|-----------|-------------------|-----------|-------------|---------|
| **Title V** | 40 CFR 70.6(a)(3) | Deviation reports | Within 2 days | Env Eng | Hyperledger |
| **Title V** | 40 CFR 70.6(c)(1) | Annual compliance cert | Annual | Plant Mgr | Hyperledger |
| **Title V** | 40 CFR 63.7540 | MACT performance test | Initial + 5 yr | Env Eng | Hyperledger |
| **NPDES** | 40 CFR 122.41(l) | DMR (stormwater) | Monthly | Env Eng | Hyperledger |
| **NPDES** | 40 CFR 122.41(j) | Non-compliance notice | 24 hr oral, 5 day written | Env Eng | Hyperledger |
| **RCRA** | 40 CFR 264.73 | Biennial report | Even years | Env Eng | Hyperledger |
| **RCRA** | 40 CFR 264.56 | Contingency plan | Annual review | Safety Eng | Hyperledger |
| **PSM** | 1910.119(e) | PHA update | 5 yr / after MOC | Safety Eng | Hyperledger |
| **PSM** | 1910.119(j) | MI inspection records | Per schedule | Maint Mgr | Hyperledger |
| **PSM** | 1910.119(m) | Incident investigation | Per incident | Safety Eng | Hyperledger |
| **RMP** | 40 CFR 68.79 | 5-yr accident history | 5 yr | Env Eng | RMP*eSubmit |
| **RMP** | 40 CFR 68.58 | Emergency response exercises | Annual tabletop, 3-yr full | Safety Eng | Hyperledger |
| **ASME** | Sec VIII UG-100 | Data reports (Form U-1) | Per vessel | AI | Hyperledger |
| **ASME** | Sec X 10-5 | FRP design report | Per vessel | AI | Hyperledger |
| **IEEE 693** | Sec 6.2 | Seismic qualification report | 5 yr / post-seismic | Struct Eng | Hyperledger |
| **IEC 61508** | Part 2/3 | SIF proof test (CT-04) | Annual | SIS Eng | Hyperledger |
| **IEC 62443** | 3-3 | Cybersecurity assessment | Annual | Cyber Eng | Hyperledger |

---

### 13.6 Detailed MOC Procedure for Regulatory Changes

```
MOC-REG-001: Regulatory Change Management

TRIGGER: New/amended regulation, permit condition change, enforcement action

1. IDENTIFY (Day 1-3)
   - Regulatory Affairs monitors: Federal Register, State Register, EPA/TCEQ bulletins, 
     industry associations (ISRI, SIA, AIST), legal counsel alerts
   - Log in MOC system with: Citation, effective date, applicability determination

2. ASSESS (Day 4-10)
   - Gap analysis: Current compliance vs. new requirement
   - Impact: Capital, OPEX, schedule, operations, permits
   - Risk: Enforcement probability, penalty range, reputational
   - Stakeholder review: Env, Safety, Ops, Maintenance, Engineering, Legal, Finance

3. PLAN (Day 11-20)
   - Action items with owners, due dates, budget
   - Permit modification strategy (minor vs. significant vs. major)
   - Interim compliance measures (if gap >0 before implementation)
   - Communication plan (regulator, community, workforce)

4. APPROVE (Day 21-25)
   - MOC Review Board: Plant Mgr, Env Dir, Safety Dir, Eng Dir, Legal, Finance
   - Risk acceptance sign-off (residual risk documented)
   - Budget authorization (CAPEX/OPEX)

5. IMPLEMENT (Day 26+)
   - Execute action items per schedule
   - Weekly progress tracking in MOC system
   - Verification testing (e.g., new CEMS analyzer RATA)
   - Documentation update (permits, procedures, training)

6. CLOSE (Implementation complete + 30 days)
   - Effectiveness verification (audit, data review)
   - Regulatory notification (if permit modification)
   - Lessons learned captured
   - MOC record archived (Hyperledger)

ESCALATION: If implementation >90 days past effective date → 
  Daily standup with Plant Mgr + Legal until resolved
```

---

### 13.7 Permit Modification Classification

| Modification Type | Trigger | Timeline | Public Notice | EPA Review |
|-------------------|---------|----------|---------------|------------|
| **Administrative** | Typo, contact change, monitor relocation | 30 days | No | No |
| **Minor** | New monitor, increased frequency, operational flexibility | 90 days | Yes (15-day) | 45 days |
| **Significant** | New source, emission increase >SER, new control tech | 180 days | Yes (30-day) | 90 days |
| **Major (PSD/NSR)** | Emission increase >250 tpy CO₂e, new major source | 12-18 months | Yes (30-day + hearing) | 12+ months |

**Forge-Specific Modifications Expected:**
- Year 2: Gen-II scale-up (Major PSD for 2000 L)
- Year 3: Hydrogen co-production (Significant - new H₂ source)
- Year 5: Thermal battery integration (Minor - new energy storage)

---

### 13.8 Detailed Incident Reporting Requirements

| Regulation | Trigger | Initial Report | Written Follow-up | Agency |
|------------|---------|----------------|-------------------|--------|
| **40 CFR 68.42** (RMP) | Accidental release >RQ | 24 hr (NRC 1-800-424-8802) | 30 days | EPA |
| **29 CFR 1910.119(m)** (PSM) | Catastrophic release, injury, near miss | 8 hr (OSHA) | 30 days | OSHA |
| **40 CFR 302.6** (CERCLA) | RQ release (HCl 5,000 lbs, NH₃ 100 lbs) | Immediately (NRC) | 30 days | EPA |
| **40 CFR 264.56** (RCRA) | Fire, explosion, release | 24 hr | 30 days | EPA/TCEQ |
| **29 CFR 1904.39** (OSHA) | Fatality, hospitalization, amputation, eye loss | 8 hr (fatality), 24 hr (other) | — | OSHA |
| **Texas Water Code 26.039** | Unauthorized discharge | 24 hr | 30 days | TCEQ |
| **Texas Health & Safety 382.021** | Air emission exceedance | 24 hr | 30 days | TCEQ |

**Forge-Specific Reporting Triggers:**
- SIF spurious trip (PROD-23 CT-04) → Internal NCR (PROD-28), not reportable unless release
- FBG drift >0.5%/1000hrs (PROD-28) → Internal NCR, not reportable
- CEMS exceedance (any parameter) → 24-hr TCEQ, 30-day written
- GIC ride-through activation (CT-07) → Internal log, not reportable unless grid event

---

### 13.9 Compliance Cost Summary (Annual, Single Forge)

| Category | Annual Cost | Basis |
|----------|-------------|-------|
| **Permit Fees** | $125,000 | Title V ($75K), NPDES ($5K), RCRA ($25K), RMP ($20K) |
| **CEMS Operation** | $380,000 | Analyzers ($180K), calibration gases ($50K), DAS ($50K), QA ($100K) |
| **Stack Testing** | $180,000 | Annual RATA ($80K), periodic MACT ($100K) |
| **Ambient Monitoring** | $95,000 | 3 stations (PM₂.₅, SO₂, NOₓ, O₃, MET) |
| **PSM/RMP Program** | $220,000 | PHA updates ($50K), audits ($70K), training ($50K), exercises ($50K) |
| **Mechanical Integrity** | $350,000 | UT/CT/AE ($150K), hydrotest ($50K), relief valves ($50K), SIF testing ($100K) |
| **Environmental Staff** | $480,000 | 3 FTE (Env Eng, Safety Eng, Tech) × $160K loaded |
| **Legal/Consulting** | $150,000 | Permit support, enforcement defense, regulatory tracking |
| **Training (Env/Safety)** | $85,000 | HAZWOPER, PSM, LOTO, respiratory, confined space |
| **Emergency Response** | $65,000 | Equipment, drills, mutual aid, community outreach |
| **TOTAL** | **$2,130,000** | **2.7% of OPEX** |

---

### 13.10 Regulatory Roadmap (2026-2035)

| Year | Milestone | Regulatory Action | Lead |
|------|-----------|-------------------|------|
| **2026** | Forge-01 Construction | Title V App, RCRA Part B App, RMP Submitted | Env Eng |
| **2027** | Forge-01 Commissioning | SAT-05, CEMS Certification, PSM PSSR | All |
| **2028** | Forge-01 Operations | Title V Issued, RCRA Part B Issued, RMP Approved | Env Eng |
| **2028** | Forge-02/03 Construction | Permit modifications (Minor) | Env Eng |
| **2029** | Forge-02/03 Operations | Title V Mod, PSM Revalidation | Env/Safety |
| **2030** | Gen-II (2000 L) Design | PSD Major Mod, NEPA EA Supplement | Env Eng |
| **2031** | Gen-II Construction | Title V Major Mod, RCRA Mod | Env Eng |
| **2032** | Gen-II Commissioning | New SAT, CEMS Expansion | All |
| **2033** | Gen-II Operations | Permit Reissuance (5-yr) | Env Eng |
| **2035** | 50-Forge Network | Programmatic Permit (Multi-source) | Legal/Env |

---
