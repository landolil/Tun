## 13. Cross-Reference Matrix

### 13.1 Upstream Dependencies

| Document | Provides | Used In |
|---|---|---|
| PROD-04 | Drum design, FBG embed, flash sinter, liner specs | Sec 2, 8, 9 |
| PROD-06 | Vessel design, winding, aerogel, glaze, hydrotest | Sec 3, 8, 9 |
| PROD-08 | Carousel, molds, slug cooling, bearing specs | Sec 7, 8, 9 |
| PROD-09 | Port valves, Ti₃AlC₂ actuators, ZrO₂ pistons | Sec 4, 8, 9 |
| PROD-10 | Power electronics, GaN modules, resonance, ZVS | Sec 5, 6, 8, 9 |
| PROD-25 | Structural life limits, fatigue, NDT intervals | Sec 2, 3, 7, 11 |
| PROD-27 | Manufacturing WIs, FAT procedures, bolt ceremony | Sec 8, 12 |
| PROD-28 | Acceptance criteria, NDT procedures, NCR/CAPA, SAT | Sec 2-7, 11, 12 |
| PROD-29 | Commissioning baselines, SOPs, operational KPIs | Sec 1, 8, 11 |
| FOLLOW-04 | Port valve thermal actuation life | Sec 4, 8 |
| FOLLOW-05 | BFRP vessel filament winding life | Sec 3, 8 |
| FOLLOW-07 | Slug mold thermal cycling life | Sec 7, 8 |
| FOLLOW-08 | PEEK CF40 seal engineering life | Sec 3, 8 |
| FOLLOW-12 | Shredder blade wear life | Sec 9 |

### 13.2 Downstream Dependencies

| Document | Consumes | Interface |
|---|---|---|
| PROD-31 | OPEX model (labor, parts, downtime), overhaul schedule | Economics input |
| PROD-32 | Compliance evidence (PSM, ASME, IEEE 693) | Permitting input |
| PROD-34 | Training curriculum, competency matrix | Training input |
| PROD-37 | Maintenance data for twin (FBG, AE, vibration, NCR) | Twin input |
| PROD-38 | ECO process for maintenance procedure changes | CM input |
| PROD-39 | T&E specification (maintenance validation tests) | Test spec input |

### 13.3 Cross-Reference Table

| Section | Upstream Refs | Downstream Refs |
|---|---|---|
| 1 Maintenance Strategy | PROD-23, 26, 28 | PROD-30, 31, 37 |
| 2 Drum Maintenance | PROD-04, 09, 25, 27, 28, FOLLOW-04 | PROD-29, 30, 31 |
| 3 Vessel Maintenance | PROD-06, 25, 27, 28, FOLLOW-05 | PROD-29, 30, 31 |
| 4 Port Valve Maintenance | PROD-09, 28, FOLLOW-04, 08 | PROD-29, 30, 31 |
| 5 Coil Bank Maintenance | PROD-10, 28 | PROD-29, 30, 31 |
| 6 Power Electronics Maintenance | PROD-10, 23, 26, 28 | PROD-29, 30, 31 |
| 7 Frame/Carousel/Bearings | PROD-08, 25, 28, FOLLOW-07, 12 | PROD-29, 30, 31 |
| 8 Major Overhaul | PROD-04, 06, 08, 09, 10, 22, 27, 28, 29 | PROD-29, 30, 31, 37 |
| 9 Consumables & Wear Parts | PROD-04, 06, 08, 09, 10, 12, 27 | PROD-29, 30, 31, 33 |
| 10 Spare Parts Logistics | PROD-12, 22, 28 | PROD-29, 30, 31, 33 |
| 11 Predictive Maintenance | PROD-28, 37, FOLLOW-29 | PROD-29, 30, 31, 37 |
| 12 Documentation | PROD-22, 28, 37, 38 | PROD-29, 30, 31, 37, 38 |

---
