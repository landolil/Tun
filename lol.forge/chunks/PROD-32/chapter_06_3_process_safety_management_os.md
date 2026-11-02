## 3. Process Safety Management (OSHA 29 CFR 1910.119)

### 3.1 Covered Process Determination

| Chemical | Inventory (lbs) | TQ (lbs) | Covered? |
|----------|-----------------|----------|----------|
| **Hydrogen (H₂)** | 15,000 (Stage 7 + storage) | 10,000 | **YES** |
| **Carbon Monoxide (CO)** | 25,000 (Stage 3 pyrolysis) | 10,000 | **YES** |
| **Arsine (AsH₃)** | 50 (Stage 6 trace) | 100 | No (below TQ) |
| **Stibine (SbH₃)** | 30 (Stage 6 trace) | 100 | No |
| **Bismuthine (BiH₃)** | 20 (Stage 6 trace) | 100 | No |
| **Hydrogen Chloride (HCl)** | 5,000 (Stage 4-6 scrubber) | 5,000 | **YES** |
| **Ammonia (NH₃)** | 12,000 (SCR reagent) | 10,000 | **YES** |
| **Chlorine (Cl₂)** | 8,000 (MAX Phase chlorination) | 2,500 | **YES** |
| **Sulfur Dioxide (SO₂)** | 3,000 (Stage 7-8) | 5,000 | No |

**Covered Process:** Stage 3-8 Thermal Processing including H₂/CO/NH₃/Cl₂/HCl systems

### 3.2 PSM 14-Element Implementation

| Element | Implementation | Document Reference |
|---------|----------------|-------------------|
| **1. Employee Participation** | Safety committee, PHA team, JSA development | PROD-34, SOP-001 |
| **2. Process Safety Information** | SDS, P&ID, relief design, material/energy balance | PROD-02, 03, 07, 25, 26 |
| **3. Process Hazard Analysis** | HAZOP (Sec 4), LOPA (Sec 5), FMEA (Sec 6) | PHA-2026-FORGE-001 |
| **4. Operating Procedures** | SOP-001 through SOP-020 (Sec 7) | PROD-29 Sec 8 |
| **5. Training** | 40 hr initial + 8 hr annual, certification | PROD-34 Sec 3-4 |
| **6. Contractors** | AVL, pre-qual, orientation, JSA | PROD-33 Sec 5 |
| **7. Pre-Startup Safety Review** | PSSR checklist (Sec 8) | PROD-29 Sec 6 |
| **8. Mechanical Integrity** | MI program (Sec 9) | PROD-28 Sec 5, PROD-30 |
| **9. Hot Work Permit** | Permit system, fire watch, gas test | SOP-007 |
| **10. Management of Change** | MOC form, risk review, approval chain | PROD-38 Sec 4 |
| **11. Incident Investigation** | 8D, root cause, CAPA tracking | PROD-28 Sec 8 |
| **12. Emergency Planning** | ERP, HAZWOPER, community coordination | PROD-29 Sec 11 |
| **13. Compliance Audits** | Triennial (internal), annual (OSHA VPP) | Sec 10 |
| **14. Trade Secrets** | NDA, access control, document control | PROD-38 Sec 3 |

### 3.3 Process Hazard Analysis (PHA) Summary

**Method:** HAZOP (Guidewords: NO, MORE, LESS, AS WELL AS, PART OF, REVERSE, OTHER THAN)
**Team:** Process Eng (Lead), Safety Eng, Controls Eng, Operations, Maintenance, Env Eng
**Nodes:** 47 (per P&ID: Feed → Stage 0 → Stage 1 → ... → Stage 8 → Outputs → Utilities)

#### 3.3.1 Top 10 PHA Scenarios (Risk Rank >15)

| Rank | Node | Deviation | Cause | Consequence | Safeguards | Residual Risk | Recommendation |
|------|------|-----------|-------|-------------|------------|---------------|----------------|
| 1 | Stage 7 | More H₂ | Electrolysis overpressure | H₂ explosion, vessel rupture | SIF-00-02, rupture disk, H₂ detectors | 12 (Med) | Add H₂ concentration trip at 2% |
| 2 | Stage 4 | Less HCl Scrubber Flow | Pump failure | HCl release >IDLH | SIF-00-03, CEMS, backup pump | 10 (Med) | Add low-flow interlock on scrubber pump |
| 3 | Stage 6 | More AsH₃/SbH₃ | Feed anomaly | Toxic gas release | Cu-carbon chemisorption, CEMS | 15 (High) | Add As/Sb/Bi specific CEMS |
| 4 | Stage 8 | Reverse Flow | Port valve failure | Zircon backflow to Stage 7 | SIF-00-04, check valve, FBG | 8 (Low) | Verify check valve SIL-2 |
| 5 | Gas System | External Fire | Adjacent facility | BLEVE of H₂/NH₃ storage | Separation distance, water spray | 12 (Med) | Increase H₂ storage distance to 100 ft |
| 6 | Cooling | Loss of Cooling | Chiller trip, power loss | Drum overheat, thermal runaway | SIF-00-04, LiFePO₄ backup, N₂ purge | 9 (Low) | Add 30-min battery backup for chillers |
| 7 | Electrical | GIC Event | Carrington storm | Grid loss, inverter damage | Floating secondary, NGR, ride-through | 6 (Low) | CT-07 validates annually |
| 8 | Stage 0 | More Acoustic Energy | Transducer failure | Drum fatigue, liner damage | AE monitoring, SIF-00-01 | 8 (Low) | Add acoustic power limit interlock |
| 9 | Hydromet | Less Acid Flow | Pump failure | Incomplete leach, downstream upset | Flow interlock, LIBS feedforward | 5 (Low) | Add ratio control (acid:feed) |
| 10 | Carousel | Mechanical Jam | Bearing failure | Port misalignment, seal damage | Vibration monitoring, SIF-00-23 | 8 (Low) | Add carriage position verification |

**Total PHA Recommendations:** 34 (12 High, 15 Medium, 7 Low) — All tracked in CAPA system (PROD-28).

### 3.4 Mechanical Integrity (MI) Program

| Equipment Category | Standard | Inspection/Testing | Frequency | Documentation |
|-------------------|----------|-------------------|-----------|---------------|
| **Pressure Vessels** | ASME BPVC X, API 510 | UT, VT, hydrotest | Annual/5-yr | MI-VDR-FORGE-XXX |
| **Piping (PEX-a)** | ASME B31.3, ASTM F876 | Visual, pressure test | Annual | MI-PIP-FORGE-XXX |
| **Relief Devices** | API 520/521/526, ASME Sec VIII | Bench test, pop test | 5 yr | MI-RDV-FORGE-XXX |
| **Emergency Shutdown (SIS)** | IEC 61508, ISA 84 | Proof test (CT-04), partial stroke | Annual/Quarterly | MI-SIF-FORGE-XXX |
| **Cranes/Hoists** | ASME B30.2, OSHA 1910.179 | Load test, wire rope, hook | Annual | MI-CRN-FORGE-XXX |
| **Electrical (SIL-3)** | NFPA 70E, IEC 61508 | IR scan, megger, trip test | Annual | MI-ELE-FORGE-XXX |

---
