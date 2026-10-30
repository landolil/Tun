## 3. Flash Sintering Process

### 3.1 Process Overview

Flash sintering (field-assisted sintering technique, FAST) is the **only viable manufacturing route** for producing a 600 mm × 800 mm × 35 mm monolithic ZrB₂-SiC drum with the required density, grain size, and dimensional control. Conventional pressureless sintering of ZrB₂-SiC requires >2000°C with sintering aids, yielding >50 μm grains and residual porosity. Hot pressing at 1900°C/30 MPa achieves full density but is limited to <200 mm parts by furnace capacity and thermal gradients. Flash sintering achieves **99.8% theoretical density in 5 minutes at 1800°C under 50 MPa** — enabling large-scale components with sub-micron grain structure.

### 3.2 Process Parameters

| Parameter | Value | Control Tolerance | Notes |
|---|---|---|---|
| Peak temperature | 1800°C | ±5°C | Measured by embedded Type C thermocouple |
| Applied pressure | 50 MPa | ±2 MPa | Uniaxial, hydraulic ram |
| Dwell time at peak | 5 min | ±15 s | Timer starts at 1795°C |
| Heating rate | 100°C/min | ±10°C/min | To 1600°C; then 50°C/min to peak |
| Cooling rate | 50°C/min | ±10°C/min | Controlled to 800°C; furnace cool below |
| Electric field | 120 V/cm | ±5 V/cm | DC, graphite electrodes |
| Current density | 80 A/cm² | — | Self-limiting by resistivity drop |
| Atmosphere | Argon (99.999%) | <10 ppm O₂ | 5 L/min flow through furnace |
| Electrode material | Graphite (POCO AXF-5Q) | — | Replace every 20 cycles |

### 3.3 Powder Preparation

**Feedstock powders (per CSMFAB Materials Study Part I):**

| Powder | Specification | Source | Qty per Drum |
|---|---|---|---|
| ZrB₂ | SHS-synthesized, 99.5%, D50 = 0.8 μm | In-house (CSMFAB000000000001) | 42 kg (12 vol%) |
| SiC (beta) | Acheson, 99%, D50 = 0.5 μm | Saint-Gobain / In-house | 138 kg (88 vol%) |
| Sintering aid: B₄C | 0.5 wt%, D50 = 0.3 μm | 3M / H.C. Starck | 0.9 kg |
| Sintering aid: C | 0.3 wt%, phenolic resin | In-house carbonization | 0.5 kg |

**Mixing protocol:**
1. ZrB₂ + SiC + B₄C ball-milled in isopropanol (ZrO₂ media, 24 h, 60 rpm)
2. Slurry dried at 120°C, sieved through 250 μm mesh
3. Phenolic resin binder (3 wt%) added, re-milled 2 h
4. Granulated via spray drying (target: 50-150 μm free-flowing granules)
5. Stored in Ar-purged containers (<24 h before sintering)

### 3.4 Tooling and Fixturing

**Die assembly (CSMFAB000000000001 V2.0 specification):**
- **Die body:** Graphite (isostatic, fine grain), ID = 672 mm (allows 2 mm/side machining stock)
- **Punches:** Upper and lower graphite, 800 mm diameter, 50 mm thick
- **Insulation:** Graphite felt (15 mm) + carbon felt (25 mm) radial; 30 mm axial
- **Electrodes:** Water-cooled copper clamps on punch faces (isolated from Ar atmosphere)
- **Thermocouple:** Type C (W/Re) embedded in lower punch, tip at drum mid-plane
- **Displacement transducer:** LVDT on upper punch ram (resolution 1 μm)

**Fixturing for distortion control:**
- Drum sintered **vertically** (axis parallel to press ram) to minimize gravitational sag
- **Sacrificial support ring:** ZrO₂ fiber board (Zircar ZAL-15) at mid-length, prevents barreling
- **End caps:** 5 mm graphite disks on each end face, ensure parallelism
- **Weight:** 25 kg graphite top weight on upper punch for initial seating

### 3.5 Flash Sintering Cycle — Detailed Sequence

```
TIME     TEMP      PRESSURE    FIELD      EVENT
(min)    (°C)      (MPa)       (V/cm)
--------------------------------------------------------------
0-16     20→1600   10→50       0→120      Ramp: pressure leads temp by 2 min
16-17    1600→1800 50          120        Final approach: field activates at 1650°C
17-22    1800      50          120        FLASH EVENT: resistivity drops 10³× at ~1720°C
                                            Densification: 62% → 99.8% in 90 s
                                            Grain growth arrested by field
22-27    1800      50          120        HOLD: pore elimination, grain boundary healing
27-37    1800→800  50→0        120→0      Controlled cool: stress relief
37+      800→RT    0           0          Furnace cool to <200°C before opening
```

**Flash event signature:** At ~1720°C, the composite resistivity drops from ~10 Ω·cm to ~0.01 Ω·cm as percolation pathways form. The DC field then drives rapid Joule heating locally at pore necks, causing **volumetric heating** (not surface-to-core). This eliminates thermal gradients and enables uniform densification in thick sections.

### 3.6 Resulting Microstructure

| Microstructural Feature | Result | Target | Verification |
|---|---|---|---|
| Relative density | 99.8% | >99.5% | Archimedes + CT |
| Open porosity | <0.05% | <0.1% | Mercury intrusion |
| Closed porosity | 0.15% | <0.2% | CT scan (voxel 5 μm) |
| ZrB₂ grain size (D50) | 0.78 μm | <1.0 μm | SEM intercept |
| SiC grain size (D50) | 0.62 μm | <1.0 μm | SEM intercept |
| ZrB₂ grain aspect ratio | 1.3:1 | <2:1 | EBSD |
| Grain boundary phase | B₄C-rich, <50 nm | Continuous | TEM-EDS |
| Residual carbon | 0.18 wt% | <0.3 wt% | LECO combustion |
| Texture (SiC) | Random | Random | XRD pole figure |

**Key microstructural advantages of flash sintering:**
- **Sub-micron grains** → Hall-Petch strengthening: σ_y ∝ d⁻⁰·⁵ → 15% higher strength vs. conventional
- **Clean grain boundaries** → B₄C segregates to boundaries, eliminates SiO₂ glassy phase
- **No abnormal grain growth** → Field suppresses Ostwald ripening
- **Uniform density through thickness** → Volumetric heating eliminates surface-to-core gradient

### 3.7 Post-Sintering Processing

| Operation | Specification | Equipment |
|---|---|---|
| Machining (OD/ID/faces) | Diamond grinding, 50 μm stock removal | CNC ceramic grinder (4-axis) |
| Surface finish (ID, liner bond surface) | Ra < 0.8 μm | Diamond lapping |
| Dimensional inspection | CMM + laser scanner | 20°C, ±5 μm |
| NDT (pre-liner) | UT (5 MHz), CT (200 μm voxel) | See Section 12 |

### 3.8 Process Validation Data (First Article)

| Drum # | Density (%) | ID (mm) | OD (mm) | Length (mm) | Roundness (μm) | Parallelism (μm) |
|---|---|---|---|---|---|---|
| FA-01 | 99.82 | 600.03 | 670.02 | 800.05 | 8 | 12 |
| FA-02 | 99.79 | 600.01 | 670.04 | 800.03 | 6 | 10 |
| FA-03 | 99.81 | 600.02 | 670.01 | 800.04 | 7 | 11 |

**All first articles passed acceptance criteria.** Process capability: Cpk > 1.67 for all critical dimensions.

---
