## 8. Curriculum Modules — Maintenance (PM, CBM, Spares, Tooling)

### 8.1 Module M-01: Preventive Maintenance Execution (24 hrs)

**PM Schedule (PROD-30):**
- **Daily (Shift)**: FBG health (Λ check), AE cluster review, MFC zero/span, crate cycle count
- **Weekly**: Drum bearing vibration trend, coil cold plate flow, quench nozzle pattern
- **Monthly (168 hrs)**: Port valve actuation test, flux injector calibration, carousel index
- **Quarterly (500 hrs)**: FBG full calibration (CT-06), SIF partial-stroke, CT porosity scan
- **Annual (2000 hrs)**: Drum UT PA + CT, vessel hydrotest (8 bar), TSN cable audit

**Zero-Metal Tooling:** BFRP torque wrenches, PEEK CF40 sockets, ceramic feeler gauges, PMMA POF strippers

**Assessment**: Practical — execute monthly PM on Zone 3 RTU + Port 4 valve in <4 hrs

### 8.2 Module M-02: Condition-Based Maintenance (CBM) (16 hrs)

**CBM Data Sources (PROD-30, 37):**
- FBG: 384 ch @ 125 Hz → drift, strain, thermal gradient
- AE: 16 ch @ 100 kHz → Felicity ratio, hit location, cluster analysis
- Vibration: Drum bearings, gearbox → spectral trends, bearing defect frequencies
- Process: XRF/LIBS composition trends, energy balance deviation, mass balance closure

**Decision Logic:**
- Λ > 10 (Bayesian) → auto-NCR → MT dispatch
- Trend >3σ from fleet baseline (PROD-37 twin) → predictive work order
- CT-06 FBG cal drift >0.5%/1000 hrs → schedule replacement at next outage

**Assessment**: Simulator — interpret CBM dashboard, generate work order, justify priority

### 8.3 Module M-03: Spares Management & Critical Parts (8 hrs)

**Spares Classification (PROD-30, 33):**
- **Critical (A)**: 100% on-site + 1 regional + 1 factory (drum, vessel, modules, FBG, TSN, PTP)
- **Essential (B)**: 1 regional + 1 factory (graphite die, mandrel, ZrO₂ bolts, molds, isolators)
- **Normal (C)**: Factory warehouse (PEX-a, NaHCO₃, carbon, gases, PEEK seals)
- **Phoenix (P)**: Depot network + Forge buffer (Elium® monomer, basalt, hydroxides)

**Process**: Kanban pull → QR scan → condition check (FBG/AE active) → install → return core

**Assessment**: Written — spares classification, Kanban execution, core return procedure

---
