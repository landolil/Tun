## 14. Cross-Reference Matrix

### 14.1 Upstream Dependencies

| Document | Provides | Used In |
|----------|----------|---------|
| PROD-12 | All-Aegis Material BOM (24 components) | Sec 3, 6, 7 |
| PROD-22 | Phoenix Protocol (depot network, EOL classification, blend ratio) | Sec 2, 4, 8 |
| PROD-27 | Manufacturing schedule, FA requirements, tooling | Sec 5, 7, 9 |
| PROD-28 | QA acceptance criteria, NDT methods, supplier audit | Sec 6, 7 |
| PROD-29 | Site logistics, rail siding, crane, receiving | Sec 5, 9 |
| PROD-30 | Spare parts stocking levels, consumables BOM | Sec 6, 7 |
| FOLLOW-31 | Alternative feedstock validation (municipal, tailings, slag) | Sec 3, 8 |
| FOLLOW-38 | Urban mining logistics (collection, preprocessing) | Sec 4 |
| FOLLOW-39 | Policy/incentive framework (DPA, IRA, CHIPS) | Sec 10, 11 |

### 14.2 Downstream Dependencies

| Document | Consumes | Interface |
|----------|----------|-----------|
| PROD-31 | Material costs, logistics costs, depot capex | Economics input |
| PROD-32 | Material compliance (REACH, Conflict Minerals, TSCA) | Permitting input |
| PROD-34 | Supplier training requirements, competency | Training input |
| PROD-35 | Material handling ergonomics, crate design | HF input |
| PROD-36 | Supplier cyber risk, supply chain security | Security input |
| PROD-37 | Supply chain data for digital twin | Twin input |
| PROD-38 | AVL change control, SCN process | CM input |
| PROD-39 | Supplier FA testing, logistics validation | Test input |
| PROD-40 | Gen-II scale-up supply chain, new feedstocks | Roadmap input |

### 14.3 Cross-Reference Table

| Section | Upstream Refs | Downstream Refs |
|---------|---------------|-----------------|
| 2 Architecture | PROD-12, 22 | PROD-31, 32, 34, 37 |
| 3 Material Sourcing | PROD-12, 22, 27 | PROD-31, 32, 33, 39 |
| 4 Phoenix Logistics | PROD-22, 29 | PROD-31, 32, 33, 37, 39 |
| 5 Inbound Logistics | PROD-12, 27, 29 | PROD-31, 33 |
| 6 Warehousing | PROD-12, 28, 30 | PROD-31, 33, 34 |
| 7 Supplier AVL | PROD-12, 27, 28 | PROD-31, 32, 33, 34, 39 |
| 8 Phoenix Integration | PROD-22, 31 | PROD-31, 32, 33, 37, 39, 40 |
| 9 Outbound Logistics | PROD-08, 19, 20, 21, 29 | PROD-31, 33 |
| 10 Stockpiling | PROD-12, 31, 39 | PROD-32, 33, 40 |
| 11 Risk | All prior | PROD-31, 32, 33, 36, 40 |
| 12 Import/Export | PROD-12, 27 | PROD-32, 33 |
| 13 Contractual | PROD-27, 28, 38 | PROD-31, 32, 33 |

---
