## 13. Cross-Reference Matrix

### 13.1 Upstream Dependencies

| Document | Provides | Used In |
|---|---|---|
| PROD-04 | Drum acceptance criteria, FBG embed, flash sinter | Sec 2.1, 3.1, 6.1 |
| PROD-06 | Vessel acceptance criteria, winding params, hydrotest | Sec 2.2, 3.2, 6.1 |
| PROD-08 | Carousel/mold criteria, slug cooling | Sec 2.6, 3.3 |
| PROD-09 | Port valve criteria, braze, actuation | Sec 2.3, 3.2, 6.1 |
| PROD-10 | Module criteria, resonance, ZVS, GIC, EMI | Sec 2.4, 2.5, 3.4, 6.1 |
| PROD-12 | Material BOM, zero-metal proof | All sections |
| PROD-23 | SIS architecture, SIL-3 SIFs, TSN/PTP | Sec 2.5, 4.1 CT-04, 6.1 |
| PROD-24 | Thermal validation, FBG cal, V&V plan | Sec 2.1, 2.5, 3.1, 4.1 CT-06, 5.1 |
| PROD-25 | Structural acceptance, FEA validation, seismic | Sec 2.1, 2.2, 3.2, 3.3, 4.1 CT-09 |
| PROD-26 | GIC immunity, dielectric verification, arc flash | Sec 2.5, 4.1 CT-07, 6.1 |
| PROD-27 | Build sequence, FAT/SAT procedures, tooling | Sec 4.1, 4.2, 11.1, 12.1 |

### 13.2 Downstream Dependencies

| Document | Consumes | Interface |
|---|---|---|
| PROD-29 | SAT procedures, commissioning, site prep | Deployment input |
| PROD-30 | PM schedules, wear parts, NDT intervals | Maintenance input |
| PROD-31 | QA cost model, scrap/rework rates, supplier quality | Economics input |
| PROD-32 | Compliance evidence, audit records, NCR history | Permitting input |
| PROD-34 | Training curriculum, competency matrix | Training input |
| PROD-37 | Quality data for twin (FBG, AE, vibration, NCR) | Twin input |
| PROD-38 | ECO process, document control, config items | CM input |
| PROD-39 | T&E specification (CT-01..CT-10, SAT-01..SAT-05) | Test spec input |

### 13.3 Cross-Reference Table

| Section | Upstream Refs | Downstream Refs |
|---|---|---|
| 2 Component Criteria | PROD-04, 06, 08, 09, 10, 12, 23, 24, 25, 26 | PROD-29, 30, 31, 32 |
| 3 Subassembly Criteria | PROD-04, 06, 08, 09, 10, 12, 24, 25 | PROD-29, 30 |
| 4 System (FAT/SAT) | PROD-23, 24, 25, 26, 27 | PROD-29, 30, 39 |
| 5 NDT Program | PROD-04, 06, 09, 24, 25 | PROD-29, 30, 39 |
| 6 Process Validation | PROD-04, 06, 09, 10, 12, 27 | PROD-29, 30 |
| 7 Supplier Quality | PROD-12, 27 | PROD-31, 32, 33 |
| 8 NCR/CAPA | All prior | PROD-29, 30, 31, 37, 38 |
| 9 Documentation | PROD-22, 37, 38 | PROD-29, 30, 31, 37, 38 |
| 10 Audit Schedule | PROD-23, 26, 27, 32 | PROD-29, 30, 32 |
| 11 Continuous Improvement | PROD-29, 37 | PROD-31, 37 |
| 12 Commissioning/SAT | PROD-22, 23, 24, 25, 26, 27 | PROD-29, 30, 34, 39 |

---
