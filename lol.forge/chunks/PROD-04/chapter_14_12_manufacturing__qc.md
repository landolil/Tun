## 12. Manufacturing & QC

### 12.1 Manufacturing Flow — Drum Assembly

```
POWDER PREP → FLASH SINTERING → MACHINING → LINER FAB → LINER INSTALL → PORT MACHINING
    ↓              ↓               ↓           ↓            ↓              ↓
  Section 3      Section 3       Section 5   Section 4    Section 4      Section 5
      ↓              ↓               ↓           ↓            ↓              ↓
  ACTUATOR FAB → BEARING INSTALL → FBG EMBED → BALANCING → FINAL INSPECT → SHIP
     Section 8      Section 9       Section 11  Section 10    Section 12     —
```

**Total manufacturing lead time:** 14 weeks (critical path: flash sintering + machining)

### 12.2 Drum Body — Flash Sintering (Section 3 Recap)

**Key process controls:**
- Powder blend: ±0.5 wt% composition (XRF verification per batch)
- Green density: 55±1% theoretical (die pressure control)
- Sintering cycle: Recipe locked (Section 3.5), SPC on T, P, I, V
- Post-sinter density: >99.5% (Archimedes, 3 samples/lot)
- Dimensional: ID/OD/Length ±0.1 mm (CMM, 100% inspection)

**First article inspection (FAI):** Full dimensional, density, microstructure, 4-point bend (3 bars), CT scan

### 12.3 Liner Fabrication

| Liner | Process | Key Controls |
|---|---|---|
| Zone A (Si₃N₄) | Press → Sinter 1800°C/2h/N₂ → HIP 150MPa/1400°C | Density >92%, 4-pt bend >800 MPa, CTE match |
| Zone B (ZrB₂-SiC) | Flash sinter (same as drum) | Identical process, tile geometry control |
| Zone C (3Y-TZP) | Isostatic press 200 MPa → Sinter 1500°C/4h → HIP | Density >99.5%, grain size <0.5 μm |

**Tile geometry:** Each zone fabricated as curved tiles (Section 4.7)
- Zone A: 4 tiles, 200 mm arc
- Zone B: 6 tiles, 100 mm arc  
- Zone C: 4 tiles, 200 mm arc
- Tile-to-tile joint: <0.05 mm gap, lapped faces

### 12.4 Liner Installation (Section 4.7)

**Process controls:**
- Drum fixture: Vertical, feed end up, ±0.05 mm runout
- Pin holes: Drilled in drum (ultrasonic, Ø6.00/Ø8.00 mm)
- Pin insertion: Cooled pins (LN₂, -196°C) → thermal shrink fit
- Pin peening: Laser peen pin heads (ZrO₂ fiber laser, 1064 nm)
- Final ID scan: Laser tracker, 500 points, roundness <25 μm, taper <10 μm

### 12.5 Port Machining and Valve Assembly

| Operation | Method | Acceptance Criteria |
|---|---|---|
| Port drilling | Laser (green) → Diamond core (sintered) | Position ±0.1 mm, roundness 10 μm |
| Seat lapping | Diamond slurry 1 μm | Ra < 0.2 μm, flatness <1 μm |
| Sleeve press-fit | Cryogenic (LN₂) | 0.03 mm interference, pull-out >5 kN |
| Piston fit | Diamond grind | Ø12.00/-0.01, clearance 0.02 mm |
| Actuator pocket | 5-axis CNC grind | Position ±0.02 mm, depth ±0.1 mm |
| Actuator install | Brazed bilayer (Section 8.8) | Deflection test ±3% |

### 12.6 FBG Sensor Embedding (Section 11.3)

**Drum wall:** Embedded during flash sintering (survival >95%)
**Liners:** Epoxied in grooves (Ceramabond 835)
**Feedthrough:** 6× ZrO₂ bulkhead, He leak <10⁻⁸ mbar·L/s
**Interrogator calibration:** NIST-traceable, ±0.5 pm accuracy

### 12.7 Non-Destructive Testing (NDT) — Acceptance Criteria

| NDT Method | Scope | Acceptance Criteria | Frequency |
|---|---|---|---|
| **Ultrasonic (UT)** | Drum body, liners, ports | No indications >2 mm FBH equivalent | 100% |
| **CT Scan** | Drum body (full), liner bonds | No voids >0.5 mm, density map | 100% (FA), 10% (prod) |
| **Eddy Current** | Not applicable (ceramic) | — | — |
| **Visual/Optical** | All surfaces | No cracks, chips >0.5 mm, porosity clusters | 100% |
| **Dimensional (CMM)** | ID, OD, length, ports, bearings | Per Section 2, 5, 9 tables | 100% |
| **Density (Archimedes)** | Drum body, liner tiles | >99.5% (drum), >92% (Zone A) | 100% (drum), 10% (liners) |
| **4-Point Bend** | Drum body (sacrificial bars) | >620 MPa (RT), >480 MPa (1500°C) | 3 bars/lot |
| **FBG Function** | All 48 sensors | All channels active, <0.5 dB loss | 100% |

**UT specification:**
- Probe: 5 MHz, 10 mm diameter, focused
- Scan: Immersion tank, 0.5 mm step, 100% coverage
- Calibration: 3 FBH (1.5, 2, 3 mm) in ZrB₂-SiC reference block
- Recording: C-scan + B-scan, digital archive

**CT specification:**
- Source: 450 kV microfocus
- Detector: 2000×2000, 200 μm pixel
- Resolution: 200 μm voxel
- Reconstruction: Feldkamp algorithm, beam hardening correction
- Analysis: Density histogram, pore size distribution, wall thickness map

### 12.8 Assembly-Level Acceptance Tests

| Test | Procedure | Pass Criteria |
|---|---|---|
| **Hydrostatic (N₂)** | 7.5 bar (1.5× MAWP), 30 min | No pressure drop >1%, no leakage |
| **Rotation test** | 0→500 RPM, 1 hr at 500 RPM | Vibration <2.5 mm/s, bearing temp <80°C |
| **Thermal shock** | 20→1000°C, 10 min, 5 cycles | No cracking (UT post-test), FBG functional |
| **Valve actuation** | Cycle each port 20→1200°C, 5× | Trigger temp ±5°C, leak <10⁻⁶ mbar·L/s |
| **Balance verification** | Two-plane at 500 RPM | Runout <0.1 mm P-P (Section 10) |
| **FBG calibration** | Known strain/temp steps | All channels ±1°C, ±5 με |
| **Leak test (He)** | 10⁻⁸ mbar·L/s sensitivity | All seals, ports, feedthroughs |

### 12.9 Traceability and Documentation

**Each drum ships with:**
- Material certificates (powder lots, liner tiles, pins, actuators, bearings)
- FAI report (dimensional, mechanical, microstructural)
- NDT reports (UT, CT, visual) with images
- Flash sintering cycle record (T, P, I, V vs. time)
- Balance report (correction masses, final runout)
- FBG baseline calibration data
- Valve actuation curves (8 ports)
- Bearing preload and run-in record
- **Digital twin initialization file** (geometry, material props, sensor map)

**Identification:** Laser-marked on drum OD: CSMFAB-PROD-04-XXXX-YYYYMMDD (serial + date)

### 12.10 Production Rate and Capacity

| Metric | Value |
|---|---|
| Flash sintering furnace | 1 drum per cycle (24 hr cycle) |
| Machining cell | 1 drum per 3 days (4-axis grinder) |
| Assembly cell | 1 drum per 2 days |
| **Max throughput** | **2 drums/week** (single line) |
| **Target for Phase 1** | 4 drums (2 spares) |

**Bottleneck:** Flash sintering furnace (single unit). Phase 2: add 2nd furnace → 6 drums/week.

---
