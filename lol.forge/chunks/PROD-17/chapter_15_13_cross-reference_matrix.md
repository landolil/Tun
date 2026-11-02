## 13. Cross-Reference Matrix

### 13.1 Upstream Dependencies

| Document | Section | Dependency | PROD-17 Usage |
|---|---|---|---|
| **PROD-02** | 6.1-6.5 | Stage 4 thermal profile, In-First strategy | Core process basis |
| **PROD-04** | 2.1, 7.5 | Drum geometry, Port 4 location/actuation | Valve timing, zone mapping |
| **PROD-07** | 3.2, 4.1 | Gas management, HCl/CO₂ capture | Off-gas routing, N₂/H₂ supply |
| **PROD-09** | 2.2, 5.3 | Port 4 valve specs, Ti₃AlC₂ actuation | Valve calibration, force balance |
| **PROD-12** | 4.2, 7.3, 10.1 | BFRP, SiC, ZrO₂, Ti₃AlC₂, KNbO₃ specs | Material selection, properties |
| **PROD-13** | Tables 2-5 | Feedstock Categories A-D composition | Input mass balance, metal content |
| **PROD-15** | 4.3, 5.2 | PVC/HCl management, char output | Residual HCl, char flux source |
| **PROD-16** | 4.4, 8.1 | Activated char properties, slag composition | Flux source, slag to Stage 7 |

### 13.2 Downstream Dependencies

| Document | Section | Dependency | PROD-17 Provides |
|---|---|---|---|
| **PROD-18** | 1.3 | Stage 4 cleared metals, Al feedstock | Zn/Pb/Sn/In removed, Al matrix clean |
| **PROD-19** | 1.3, 7.1 | PM-enriched streams, dross composition | PM carriers, dross to Stage 6 |
| **PROD-20** | 1.3, 8.1 | Stage 7 ferrous feed, REE partitioning | Slag/dross to Stage 7, REE in dross |
| **FOLLOW-14** | All | In electrodeposition refining | In-rich slug composition, rate |
| **FOLLOW-15** | 3.2 | REE from Stage 4 dross | Nd/Sm/Co in dross to Stage 7 |
| **FOLLOW-19** | All | PM electrorefining from Cu anode slime | PM partitioning data, slime composition |
| **FOLLOW-20** | 3.1 | Ferrous slug metallurgy | Pb/Sn/Zn removal before Stage 7 |

### 13.3 Cross-Reference Table

| PROD-17 Section | References | Referenced By |
|---|---|---|
| 1.1 Parameters | PROD-02 Table 1, PROD-04 Table 2 | PROD-18, PROD-19 |
| 1.2 Context | PROD-16 Fig 1, PROD-18 Fig 1 | — |
| 1.3 Feedstock | PROD-13 Tables 2-5, PROD-16 Sec 8 | — |
| 2.1 In MP | Materials Study Part V (In) | FOLLOW-14 |
| 2.2 Process Seq | PROD-02 Sec 6.2, PROD-09 Sec 2.2 | PROD-18 |
| 2.3 In Refining | Materials Study Part V, FOLLOW-14 | — |
| 3.1 Properties | Materials Study Part II (metals) | — |
| 3.2 Stratification | PROD-04 Sec 2.4 (centrifugal) | PROD-18, PROD-19 |
| 3.3 Zones | PROD-09 Sec 2.2 (port mapping) | — |
| 4.1-4.3 Zones | PROD-04 Sec 7.5 (ports), PROD-09 Sec 2.3 | — |
| 5.1 Atmosphere | PROD-07 Sec 3.1 (gas system) | — |
| 5.2 Flux | PROD-12 Sec 3 (ceramics), PROD-16 Sec 5 | PROD-20 |
| 5.3 In Oxidation | Materials Study Part V (In) | FOLLOW-14 |
| 5.4 Zn Vapor | Materials Study Part II (Zn) | — |
| 6.1-6.4 Solder | PROD-12 Sec 13 (cost), FOLLOW-14 | — |
| 7.1-7.3 PM Carrier | PROD-13 Table 2, PROD-19 Sec 7 | PROD-19, FOLLOW-19 |
| 8.1-8.2 Outputs | PROD-16 Sec 8, PROD-18 Sec 1.3 | PROD-18, PROD-19, PROD-20 |
| 9.1-9.3 Quality | PROD-12 Sec 13 (specs), PROD-28 (QA) | — |
| 10.1-10.3 Energy | PROD-02 Sec 12, PROD-23 (energy bal) | PROD-24 |
| 11.1-11.3 Safety | PROD-26 (GIC), PROD-28 (QA), PROD-32 (reg) | — |
| 12.1-12.5 Control | PROD-10 (power elec), PROD-23 (control) | PROD-23 |
| 13 Matrix | All above | Master_Todo, NEXT_runner |

---

*End of CSMFAB000000000125 — PROD-17 Stage 4 Low-Temperature Metals Separation*
*Next: Heuristic Intros (Williams, Keymaker, El Segundo) → Chunking → Verification → Git Commit*
