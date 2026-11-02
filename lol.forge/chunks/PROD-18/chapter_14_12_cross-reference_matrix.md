## 12. Cross-Reference Matrix

### 12.1 Upstream Dependencies

| Document | Section | Dependency | PROD-18 Usage |
|---|---|---|---|
| **PROD-02** | 7.1-7.6 | Stage 5 thermal profile, Al window physics | Core process basis |
| **PROD-04** | 2.1, 7.5 | Drum geometry, Port 5 location/actuation | Valve timing, zone mapping |
| **PROD-09** | 2.2, 5.3 | Port 5 valve specs, Ti₃AlC₂ actuation at 720°C | Valve calibration, force balance |
| **PROD-12** | 3, 4, 7 | BFRP, SiC, ZrO₂, Ti₃AlC₂, cryolite specs | Material selection, properties |
| **PROD-13** | Tables 2-5 | Feedstock Categories A-D Al content | Input mass balance, alloy distribution |
| **PROD-16** | 4.4, 8.1 | Activated char consumption, slag composition | Mineral residue to Stage 7 |
| **PROD-17** | 1.2, 8.1 | Stage 4 cleared metals, Al matrix clean | Zn/Pb/Sn/In removed, Al only melt |

### 12.2 Downstream Dependencies

| Document | Section | Dependency | PROD-18 Provides |
|---|---|---|---|
| **PROD-19** | 1.3 | Stage 5 cleared Al, Cu/Fe feedstock | Al removed, Cu/Fe matrix clean |
| **PROD-20** | 1.3, 8.1 | Stage 7 ferrous feed, dross/slag | Dross/salt slag to Stage 7 |
| **PROD-21** | 1.3 | Stage 8 mineral residue | Minerals concentrated |
| **FOLLOW-14** | 3.2 | Mg removal kinetics | Flux chemistry validation |
| **FOLLOW-20** | 3.1, 4.1 | Ferrous/wrought/cast Al metallurgy | Slug composition, fractionation logic |
| **FOLLOW-21** | All | Mineral slag hydrometallurgy | Stage 7/8 slag composition |
| **FOLLOW-23** | 3.1 | Energy balance | Stage 5 energy integration |

### 12.3 Cross-Reference Table

| PROD-18 Section | References | Referenced By |
|---|---|---|
| 1.1 Parameters | PROD-02 Table 1, PROD-04 Table 2 | PROD-19, PROD-20 |
| 1.2 Context | PROD-17 Fig 1, PROD-19 Fig 1 | — |
| 1.3 Feedstock | PROD-13 Tables 2-5, PROD-17 Sec 8 | — |
| 2.1 Al Window | Materials Study Part I (Al) | — |
| 2.2 Melt Props | Materials Study Part I, Part II | PROD-19 |
| 2.3 Centrifugal | PROD-04 Sec 2.4 (centrifugal) | PROD-19, PROD-20 |
| 3.1-3.3 Mg Removal | Materials Study Part V (Mg), FOLLOW-20 | FOLLOW-14, FOLLOW-20 |
| 4.1-4.2 Fractionation | PROD-12 Sec 13 (specs), PROD-28 (QA) | PROD-19, FOLLOW-20 |
| 5.1-5.3 Dross | PROD-16 Sec 5 (char activation), PROD-07 (gas) | PROD-20, FOLLOW-21 |
| 6.1-6.2 Impurities | PROD-13 (feedstock), PROD-17 (Stage 4 removal) | PROD-19, PROD-20 |
| 7.1-7.2 Outputs | PROD-17 Sec 8, PROD-19 Sec 1.3 | PROD-19, PROD-20 |
| 8.1-8.2 Quality | PROD-12 Sec 13, PROD-28 | — |
| 9.1-9.3 Energy | PROD-02 Sec 12, PROD-23 | PROD-24 |
| 10.1-10.3 Safety | PROD-26, PROD-28, PROD-32 | — |
| 11.1-11.5 Control | PROD-10, PROD-23 | PROD-23 |
| 12 Matrix | All above | Master_Todo, NEXT_runner |

---
