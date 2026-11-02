## 13. Cross-Reference Matrix

### 13.1 Upstream Dependencies

| Document | Provides | Used In |
|----------|----------|---------|
| PROD-22 | Phoenix Protocol revenue, carbon credits, depot capex | Sec 4.3, 4.4, 5 |
| PROD-27 | CAPEX detail, manufacturing schedule, FAT, shipping | Sec 2, 6, 12 |
| PROD-28 | QA cost model, scrap/rework rates, supplier quality | Sec 3, 7, 10 |
| PROD-29 | Deployment OPEX, commissioning cost, site prep | Sec 2, 3, 6 |
| PROD-30 | Maintenance consumables $2.9M/yr, spares logistics | Sec 3, 7 |
| FOLLOW-23 | Energy balance & exergy analysis (kWh/ton) | Sec 3.3, 12 |
| FOLLOW-24 | LCA & carbon footprint (cradle-to-gate) | Sec 11 |

### 13.2 Downstream Dependencies

| Document | Consumes | Interface |
|----------|----------|-----------|
| PROD-32 | Permitting cost, compliance evidence | Economics input |
| PROD-33 | Material sourcing cost, AVL pricing | Supply chain input |
| PROD-39 | T&E cost allocation (CT-01..CT-10, SAT-01..SAT-05) | Test spec input |
| PROD-40 | Gen-II/Gen-III investment decision | Roadmap input |

### 13.3 Cross-Reference Table

| Section | Upstream Refs | Downstream Refs |
|---------|---------------|-----------------|
| 2 CAPEX | PROD-27, 29 | PROD-31, 33, 39, 40 |
| 3 OPEX | PROD-28, 29, 30, FOLLOW-23 | PROD-31, 33 |
| 4 Revenue | PROD-22, 08, 19, 20, 21 | PROD-31, 33, 40 |
| 5 Phoenix | PROD-22 | PROD-31, 33, 40 |
| 6 ROI | All upstream | PROD-32, 33, 39, 40 |
| 7 Sensitivity | All upstream | PROD-32, 33, 40 |
| 8 Financing | PROD-27, 22 | PROD-32, 33, 40 |
| 9 Market | PROD-22, 13, 19, 20, 21 | PROD-31, 33, 40 |
| 10 Risk | All prior | PROD-32, 33, 39, 40 |
| 11 LCA | PROD-24, FOLLOW-24 | PROD-32, 40 |
| 12 Scale-Up | PROD-27, 30, 37, FOLLOW-30 | PROD-40 |

---
