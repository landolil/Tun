## 14. Cross-Reference Matrix

### 14.1 Upstream Dependencies

| This Section | Depends On | Document | Section |
|--------------|------------|----------|---------|
| 1.1 Document ID | Project numbering | PROD-01 | 1.1 |
| 2 Stage Parameters | Cascade profile | PROD-02 | Section 1.1, 1.3, 1.4 |
| 3 Thermoset Kinetics | Polymer properties | Mat Study IV | Sections 22-24 |
| 3 FR4 Kinetics | PCB composition | PROD-11 | Section 4 |
| 4 Char Morphology | SiC, ZrO₂, BFRP specs | PROD-12 | Sections 3.1, 3.3, 4.1 |
| 5 Gas Evolution | Gas management | PROD-07 | Sections 3, 4 |
| 6 Char Activation | Char properties, Phoenix Protocol | PROD-12, Mat Study VI | Section 5, Part VI |
| 7 Inorganic Transform | Filler specs, Stage 2 output | PROD-15 | Sections 7, 9 |
| 8 REE Partitioning | Magnet/phosphor specs | PROD-13, Mat Study V | Section 7, Part V |
| 9 Output Streams | Mold carousel, Stage 4 flux | PROD-08, PROD-17 | Section 3, Section 5 |
| 10 Throughput | Batch params, quality | PROD-02, PROD-28 | Section 1.1, Section 3 |
| 11 Energy | Power specs, heat recovery | PROD-10, PROD-02 | Section 4, Section 1.7 |
| 12 Safety | Emission limits, interlocks | PROD-07, PROD-23 | Section 5, Section 4 |
| 13 Control | PID params, FBG sensors | PROD-10, PROD-23 | Section 5, Section 4 |
| 14 Cross-Refs | All above | — | — |

### 14.2 Downstream Dependencies

| This Section | Enables | Document | Section |
|--------------|---------|----------|---------|
| 3 Kinetics | Pyrolysis modeling | FOLLOW-18 | Section 2 |
| 4 Char Morphology | Activation design | FOLLOW-18 | Section 3 |
| 5 Gas Evolution | Gas scrubber design | FOLLOW-06 | Section 3 |
| 6 Activation | Stage 1 adsorption, Stage 4 flux | PROD-02, PROD-17 | Section 2, Section 5 |
| 7 Inorganic | Stage 7 slag chemistry | PROD-20, FOLLOW-21 | All, Section 3 |
| 8 REE Partitioning | REE recovery design | FOLLOW-15, FOLLOW-21 | Section 2, Section 3 |
| 9 Output Streams | Char allocation, gas routing | PROD-17, PROD-07 | Section 5, Section 4 |
| 10 Quality | QA testing, acceptance | PROD-28 | Section 3 |
| 11 Energy | Exergy analysis | FOLLOW-23 | Section 2 |
| 12 Safety | Dust capture, emissions | FOLLOW-22 | Section 2 |
| 13 Control | Control architecture | PROD-23 | Section 4 |
| 14 Cross-Refs | Integration | PROD-13, 14, 17 | All |

### 14.3 Follow-Up Document Linkages

| Follow-Up Document | Linked From This Section | Purpose |
|--------------------|-------------------------|---------|
| **FOLLOW-06** | 5.3 (Gas routing), 12.2 (Emissions) | Gas scrubber chemistry |
| **FOLLOW-15** | 8.2 (Nd/Sm/Co pathway) | Rare earth hydromet recovery |
| **FOLLOW-16** | 8.3 (Ce/La/Y pathway), 7.3 (ZrO₂ in slag) | Zircon dissociation kinetics |
| **FOLLOW-17** | 3 (Kinetics — polymer context) | Polymer melt rheology |
| **FOLLOW-18** | 3, 4, 5, 6 (Char full lifecycle) | Char activation protocol |
| **FOLLOW-21** | 7.3 (Slag composition), 8.3 (Phosphor REEs) | Mineral slag hydrometallurgy |
| **FOLLOW-22** | 12.1 (Dust explosion), 12.2 (Emissions) | Dust & fume capture efficiency |
| **FOLLOW-23** | 11 (Energy balance) | Energy balance & exergy analysis |
| **FOLLOW-24** | 11 (Energy balance) | LCA & carbon footprint |

---

---