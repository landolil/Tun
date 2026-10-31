## 10. Support Frame & Mounting

### 10.1 Frame Design Requirements

The support frame must:
- Carry vessel weight (215 kg) + drum weight (178 kg) + dynamic loads
- Resist seismic loads (IEEE 693 High)
- Accommodate thermal expansion (vessel grows 8 mm axial, 4 mm radial at 200°C)
- Maintain dielectric isolation (no metal path to ground)
- Provide precision alignment for drum rotation (runout <0.1 mm)

### 10.2 Frame Architecture

**BFRP Box Beam Construction:**
- Material: Pultruded BFRP/Elium® box sections (200 × 100 × 8 mm)
- Layup: [0°/±45°/90°]₂s quasi-isotropic (pultruded)
- Properties: E_x = 55 GPa, E_y = 45 GPa, σ_ult = 800 MPa, ρ = 1.95 g/cm³
- Length: 2.5 m (base), 1.8 m (vertical legs)
- Total frame mass: 85 kg

**4-Point Mount Configuration:**
```
    [Vessel]
      |
[Leg 1] [Leg 2] (motor/feed end, 600 mm spacing)
      |
[Base Beam] — BFRP box beam, 2.5 m span
      |
[Leg 3] [Leg 4] (slug discharge end, 600 mm spacing)
      |
[Foundation Isolators] — 3Y-TZP ZrO₂ pads on concrete
```

### 10.3 Thermal Expansion Accommodation

**Axial expansion (vessel + drum):**
- Vessel: 1200 mm × 7.5×10⁻⁶/K × 180°C = **16.2 mm**
- Drum: 800 mm × 6.5×10⁻⁶/K × 2200°C = **11.4 mm**
- **Differential: 4.8 mm** — accommodated by sliding foot on Leg 3/4

**Sliding foot design:**
- ZrO₂ ceramic slider on ZrO₂ rail (μ = 0.15 dry)
- PTFE composite wear pad (1 mm) for initial break-in
- Spring-loaded centering (PEEK CF40 spring, 2 kN)
- Travel range: ±15 mm (3× expected)

**Radial expansion:**
- Vessel ID growth: 900 mm × 7.5×10⁻⁶/K × 180°C = **12.2 mm**
- Aerogel gap compression: 50 mm → 37.8 mm (standoffs compress)
- Frame legs: Fixed radial position (no sliding needed)

### 10.4 Seismic Design (IEEE 693 High)

**Required Response Spectrum (RRS) — High Seismic:**
- Peak ground acceleration: 0.5g
- Spectral acceleration at 5 Hz: 1.2g
- Spectral acceleration at 20 Hz: 0.8g

**Frame natural frequencies (FEA modal analysis):**
| Mode | Frequency (Hz) | Description |
|---|---|---|
| 1 | 6.2 Hz | Vessel sway (X-direction) |
| 2 | 6.8 Hz | Vessel sway (Y-direction) |
| 3 | 12.4 Hz | Vessel vertical bounce |
| 4 | 18.7 Hz | Frame torsion |
| 5 | 28.3 Hz | Frame bending (first) |

**Seismic response (response spectrum analysis):**
- Maximum vessel displacement: 18 mm (X), 16 mm (Y), 4 mm (Z)
- Maximum frame stress: 145 MPa (BFRP allowable: 800/1.5 = 533 MPa) → **SF = 3.7**
- Maximum isolator shear: 42 kN (ZrO₂ pad allowable: 120 kN) → **SF = 2.9**
- **All seismic criteria met with SF > 2.5**

### 10.5 ZrO₂ Foundation Isolators

| Parameter | Value |
|---|---|
| Material | 3Y-TZP ZrO₂, 99.5% dense |
| Geometry | 200 × 200 × 50 mm pad (4 per frame leg) |
| Load per pad | 15 kN static / 42 kN seismic |
| Compressive stress | 3.8 MPa (static) / 10.5 MPa (seismic) |
| Allowable stress | 500 MPa (ZrO₂ compressive) → SF > 47 |
| Dielectric strength | >20 kV/mm (isolates from ground) |
| Friction coefficient | 0.15 (ZrO₂ on concrete with PTFE interlayer) |

**Grounding isolation:** Frame resistance to ground >10¹² Ω (verified by 500 VDC megger). No conductive path from vessel to earth — Carrington immunity maintained.

### 10.6 Alignment & Installation

**Vessel-to-frame alignment procedure:**
1. Frame leveled on isolators to ±0.1 mm/m
2. Vessel lowered onto frame saddles (4 points, 2 per leg pair)
3. Saddle geometry: BFRP cradle with ZrO₂ wear pads, 120° contact arc
4. Axial position set by fixed stop on Leg 1/2 (motor end)
5. Radial centering verified by laser tracker — ID centerline within 0.1 mm of design
6. Drum shaft alignment: Motor coupling aligned to <0.05 mm offset, <0.02° angular
7. Flange bolt torque sequence: Star pattern, 3 passes (60, 120, 180 N·m)
8. Final runout check: Drum rotation at 10 RPM — indicator at 4 points <0.1 mm TIR

### 10.7 Frame Validation Testing

| Test | Condition | Acceptance |
|---|---|---|
| Static load | 4× operating weight (1,572 kg) | Deflection <2 mm, no damage |
| Seismic shake table | IEEE 693 High RRS, 3 axes | No resonance shift >5%, no damage |
| Thermal cycle | 20 ↔ 200°C, 100 cycles | Sliding foot operates freely |
| Dielectric test | 500 VDC megger, frame to ground | >10¹² Ω |
| Vibration (operating) | 500 RPM drum, 24 hrs | Bearing housing vibration <2 mm/s RMS |

---
