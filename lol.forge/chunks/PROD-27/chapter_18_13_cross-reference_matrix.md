## 13. Cross-Reference Matrix

### 13.1 Upstream Dependencies

| Document | Provides | Used In |
|---|---|---|
| PROD-04 | Drum geometry, flash sinter params, liner specs | A-01, A-02, A-03, A-04, A-05 |
| PROD-06 | Vessel geometry, winding params, aerogel, glaze | A-06, A-07, A-08 |
| PROD-08 | Mold specs, carousel requirements | A-12 |
| PROD-09 | Port valve design, actuator specs | A-04 |
| PROD-10 | Inverter module design, coil specs | A-09, A-10 |
| PROD-12 | Material BOM, zero-metal proof | All assemblies |
| PROD-24 | Thermal validation of process temps | A-01, A-06, A-09 |
| PROD-25 | FEA-validated dimensions, bolt torques | A-03, A-08, A-13 |
| PROD-26 | GIC immunity, dielectric verification | A-10, A-11, A-13 |

### 13.2 Downstream Dependencies

| Document | Consumes | Interface |
|---|---|---|
| PROD-28 | Acceptance criteria, FAT procedures | QA program input |
| PROD-29 | Shipping specs, site prep, commissioning | Deployment input |
| PROD-30 | Spare parts list, wear schedules | Maintenance input |
| PROD-39 | FAT/SAT test procedures | T&E specification |

### 13.3 Cross-Reference Table

| Section | Upstream Refs | Downstream Refs |
|---|---|---|
| 2 Drum Mfg | PROD-04, 12, 24, 25 | PROD-28, 30 |
| 3 Vessel Mfg | PROD-06, 12, 24, 25 | PROD-28, 30 |
| 4 Port Valves | PROD-09, 12, 25 | PROD-28, 30 |
| 5 Coil Bank | PROD-03, 10, 12, 24 | PROD-28, 30 |
| 6 Power Electronics | PROD-10, 23, 26 | PROD-28, 30 |
| 7 Frame/Carousel | PROD-08, 12, 25 | PROD-28, 30 |
| 8 Integration | All prior | PROD-28, 29, 30 |
| 9 FAT | PROD-23, 24, 25, 26 | PROD-28, 29, 39 |

---
