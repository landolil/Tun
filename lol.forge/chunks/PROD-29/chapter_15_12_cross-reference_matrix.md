## 12. Cross-Reference Matrix

### 12.1 Upstream Dependencies

| Document | Provides | Used In |
|---|---|---|
| PROD-22 | Phoenix Protocol, depot network, feedstock classification | Sec 1, 2, 6, 12 |
| PROD-23 | Control architecture, SIS, TSN/PTP, commissioning tests | Sec 3.4, 4, 6, 9 |
| PROD-26 | Electrical safety, GIC immunity, grounding, POF | Sec 2.2, 3.3, 3.4, 9 |
| PROD-27 | Manufacturing plan, FAT (CT-01..CT-10), IC-1..IC-10, bolt ceremony | Sec 3, 4, 6, 8 |
| PROD-28 | SAT (SAT-01..SAT-05), acceptance criteria, NDT, NCR/CAPA | Sec 4, 5, 6, 8, 9 |
| FOLLOW-22 | Dust/fume capture efficiency | Sec 7, 10 |
| FOLLOW-23 | Energy balance, exergy analysis | Sec 4, 7 |
| FOLLOW-24 | LCA, carbon footprint | Sec 10, 11 |

### 12.2 Downstream Dependencies

| Document | Consumes | Interface |
|---|---|---|
| PROD-30 | PM schedules, wear parts, maintenance windows | Maintenance input |
| PROD-31 | OPEX model, energy/ton, labor, consumables | Economics input |
| PROD-32 | Permit evidence, commissioning records, CEMS | Compliance input |
| PROD-34 | Training curriculum, competency matrix | Training input |
| PROD-37 | Operational data for twin (batch records, KPIs) | Twin input |
| PROD-39 | T&E specification (SAT-01..SAT-05) | Test spec input |

### 12.3 Cross-Reference Table

| Section | Upstream Refs | Downstream Refs |
|---|---|---|
| 1 Deployment Overview | PROD-22, 23, 25, 26, 27 | PROD-30, 31, 32, 34, 37 |
| 2 Site Prep & Civil | PROD-25, 26 | PROD-30, 32 |
| 3 Cold Commissioning (IC) | PROD-23, 26, 27 | PROD-29, 30, 39 |
| 4 Hot Commissioning (CT-08) | PROD-02, 14-21, 23, 24, 27 | PROD-29, 30, 39 |
| 5 Performance Validation (SAT) | PROD-22, 23, 24, 27, 28 | PROD-29, 30, 31, 39 |
| 6 SOPs | PROD-22, 23, 26, 27, 28 | PROD-29, 30, 34 |
| 7 Operations Philosophy | PROD-22, 28, 37 | PROD-29, 30, 31, 37 |
| 8 Maintenance Windows | PROD-28, 30 | PROD-29, 30, 31 |
| 9 Emergency Response | PROD-23, 26, 28 | PROD-29, 30, 32, 34 |
| 10 Environmental Compliance | PROD-07, 22, 26, 32, FOLLOW-22, 23, 24 | PROD-29, 30, 32 |
| 11 Training | PROD-34 | PROD-29, 30, 34 |

---
