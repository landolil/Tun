## 8. Non-Conformance & CAPA

### 8.1 NCR Classification

| Class | Definition | Examples | Disposition Authority |
|---|---|---|---|
| **Critical** | Safety (SIL-3), Carrington immunity, pressure boundary, zero-metal violation | FBG channel dead; braze void >50μm; conductive path detected; SIF trip failure | Plant Manager + Quality Eng + SIS Eng (unanimous) |
| **Major** | Performance degradation, schedule impact, rework required | UT indication 0.5-1mm; fiber angle 1-2°; ZVS phase 5-10°; torque drift | Quality Eng + Mfg Eng |
| **Minor** | Cosmetic, documentation, no performance impact | Surface finish Ra slightly high; label missing; test log incomplete | Quality Eng |

### 8.2 CAPA Process (8D)

| Step | Action | Owner | Timing |
|---|---|---|---|
| **D1: Team** | Form cross-functional team (Mfg, QA, Design, Supplier) | Quality Eng | 24 hr |
| **D2: Describe** | 5W2H: What, Where, When, Who, Why, How, How many | Team | 48 hr |
| **D3: Contain** | Interim containment (quarantine, sort, retrofit) | Mfg Eng | Immediate |
| **D4: Root Cause** | 5 Whys → Fishbone → Fault tree; verify with data | Team | 5 days |
| **D5: Corrective** | Permanent fix (design, process, material, training) | Design/Mfg Eng | 15 days |
| **D6: Verify** | Pilot run / test / inspection proving fix works | Quality Eng | 20 days |
| **D7: Prevent** | Update work instructions, PFMEA, control plan, training | Quality Eng | 30 days |
| **D8: Close** | Team recognition; lessons learned to fleet twin | Plant Manager | 30 days |

### 8.3 Effectiveness Verification

| Metric | Target | Review |
|---|---|---|
| **CAPA closure rate** | 100% within 30 days | Monthly |
| **Recurrence rate** | 0% for Critical; <5% for Major | Quarterly |
| **CAE (Corrective Action Effectiveness)** | >90% (verified fix prevents recurrence) | Per CAPA |

---
