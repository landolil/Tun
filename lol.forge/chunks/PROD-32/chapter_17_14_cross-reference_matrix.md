## 14. Cross-Reference Matrix

### 14.1 Upstream Dependencies

| Document | Provides | Used In |
|----------|----------|---------|
| PROD-22 | Phoenix Protocol carbon credits, depot permitting | Sec 2, 4, 11 |
| PROD-23 | Control architecture, SIL-3 SIFs, TSN, GIC immunity | Sec 3, 5, 8, 10 |
| PROD-26 | Electrical safety, GIC design, floating secondary | Sec 5, 7, 8 |
| PROD-28 | QA program, NDT methods, acceptance criteria | Sec 5, 6, 9, 13 |
| PROD-29 | Deployment, CEMS, commissioning, site permits | Sec 2, 4, 7, 11, 13 |
| PROD-30 | Maintenance, MI program, competency | Sec 3, 7, 9, 13 |
| FOLLOW-22 | Dust/fume capture efficiency data | Sec 2.2 |
| FOLLOW-23 | Energy balance for permitting | Sec 2.1 |
| FOLLOW-24 | LCA for NEPA/permitting | Sec 2.1, 11 |
| FOLLOW-25 | Seismic qualification data | Sec 6 |
| FOLLOW-26 | Fire protection design basis | Sec 7 |

### 14.2 Downstream Dependencies

| Document | Consumes | Interface |
|----------|----------|-----------|
| PROD-33 | Material sourcing compliance (Conflict Minerals, REACH) | Supply chain input |
| PROD-34 | Training curriculum (PSM, HAZWOPER, LOTO, radiation) | Training input |
| PROD-35 | Safety zone definitions, ergonomics | HF input |
| PROD-36 | Security architecture, air-gap implementation | Security input |
| PROD-37 | Compliance data for digital twin | Twin input |
| PROD-38 | MOC process, change control for permits | CM input |
| PROD-39 | T&E specification (regulatory witness tests) | Test input |
| PROD-40 | Regulatory roadmap for Gen-II | Roadmap input |

### 14.3 Cross-Reference Table

| Section | Upstream Refs | Downstream Refs |
|---------|---------------|-----------------|
| 2 Environmental | PROD-22, 29, FOLLOW-22,23,24 | PROD-32, 33, 39, 40 |
| 3 PSM | PROD-23, 26, 28, 29, FOLLOW-22,26 | PROD-32, 33, 34, 39 |
| 4 RMP | PROD-22, 23, 26, 28, 29 | PROD-32, 33, 39 |
| 5 ASME | PROD-04, 06, 25, 27, 28 | PROD-32, 33, 39 |
| 6 Seismic | PROD-25, 27, 28, FOLLOW-25 | PROD-32, 33, 39 |
| 7 Fire | PROD-07, 23, 26, 29, FOLLOW-26 | PROD-32, 33, 35, 39 |
| 8 Radiation | PROD-23, 26, FOLLOW-27 | PROD-32, 36, 39 |
| 9 Worker Safety | PROD-23, 28, 29, 30, 34 | PROD-32, 34, 35, 39 |
| 10 Cyber | PROD-23, 26, 36, FOLLOW-29 | PROD-32, 36, 39 |
| 11 State/Local | PROD-29, 28, 22 | PROD-32, 33, 39 |

---
