## 2. Drum Manufacturing — ZrB₂-SiC Flash Sintering

### 2.1 Process Flow — Flash Sintering (FAST)

```
POWDER PREP → DIE LOAD → SINTER CYCLE → POST-SINTER MACHINING → INSPECTION
     │           │            │                  │                │
     ▼           ▼            ▼                  ▼                ▼
  Ball mill   Graphite die  1800°C/50MPa/      Diamond grind    CMM + UT + CT
  24h IPA     672mm ID      5min dwell         50μm stock       200μm voxel
  0.5μm D50   ZrO₂ felt     Resistivity drop   OD/ID/faces      FBG survival
```

### 2.2 Flash Sintering Parameters (Per PROD-04 Section 3)

| Parameter | Value | Control Tolerance | Monitoring |
|---|---|---|---|
| Peak temperature | 1800°C | ±5°C | Embedded Type C TC (mid-plane) |
| Applied pressure | 50 MPa | ±2 MPa | Hydraulic ram load cell |
| Dwell time | 5 min | ±15 s | Timer at 1795°C |
| Heating rate | 100°C/min → 50°C/min | ±10°C/min | TC derivative |
| Electric field | 120 V/cm | ±5 V/cm | Electrode voltage/current |
| Atmosphere | Argon 99.999% | <10 ppm O₂ | Residual gas analyzer |
| Graphite electrodes | POCO AXF-5Q | Replace/20 cycles | Visual + resistance |

### 2.3 Graphite Die Assembly (CSMFAB000000000001 V2.0)

| Component | Specification | Qty | Life |
|---|---|---|---|
| Die body | Isostatic graphite, ID 672 mm, 800 mm L | 1 | 20 drums |
| Upper punch | Graphite, 800 mm dia, 50 mm thick | 1 | 20 drums |
| Lower punch | Graphite with Type C TC pocket | 1 | 20 drums |
| Radial insulation | Graphite felt 15 mm + carbon felt 25 mm | 1 set | 20 drums |
| Axial insulation | Graphite felt 30 mm (end caps) | 2 | 20 drums |
| Sacrificial support ring | ZrO₂ fiber board (Zircar ZAL-15) | 1 | 1 drum |
| Water-cooled electrodes | Copper clamps, isolated | 2 sets | 50 drums |

**Distortion control:** Vertical sintering (axis || press ram). 25 kg graphite top weight on upper punch for seating. Support ring at mid-length prevents barreling.

### 2.4 Post-Sinter Machining

| Operation | Tool | Stock Removal | Tolerance | Time |
|---|---|---|---|---|
| OD grind | Diamond wheel (D64) | 2 mm/side | ±0.05 mm | 8 hr |
| ID grind | Diamond wheel (D64) | 2 mm/side | ±0.05 mm | 10 hr |
| Face grind | Diamond cup wheel | 1 mm/face | ±0.05 mm, parallelism 10 μm | 6 hr |
| Port sleeve bores (×8) | Ultrasonic drilling | 12.0 mm +0.02/-0 | Position ±0.1 mm | 16 hr |
| FBG channel grooves | Laser ablation | 0.5 mm wide × 1 mm deep | Position ±0.2 mm | 8 hr |

### 2.5 Liner Zone Installation (A-02, A-03)

**Zone A — Si₃N₄ (4 tiles, 200 mm arc × 250 mm):**
1. Tiles sintered 1800°C/2h/N₂, diamond ground, pin holes drilled
2. 12 × ZrO₂ pins (Ø6×20 mm) inserted through tile/drum
3. Pins peened, heads laser-welded (ZrO₂ fiber laser)

**Zone B — ZrB₂-SiC (6 tiles, 100 mm arc × 300 mm):**
1. Tiles flash-sintered same as drum body (matched CTE)
2. 18 × ZrO₂ pins (Ø6×20 mm) through overlap joint with Zone C
3. Tiles matched to drum curvature ±0.1 mm

**Zone C — 3Y-TZP (4 tiles, 200 mm arc × 250 mm):**
1. Isostatic press 200 MPa, sinter 1500°C/4h, HIP 150 MPa/1400°C/2h
2. 12 × ZrO₂ pins (Ø8×25 mm) through overlap with Zone B
3. Larger pins for higher thermal loads

**Installation sequence (vertical, feed-end up):**
1. Zone C installed first (bottom): pins inserted, seated, peened
2. Zone B installed: overlap with Zone C aligned, pins through both
3. Zone A installed last (top): overlap with Zone B aligned, pins inserted
4. All pin heads laser-welded for positive retention
5. Final ID scan: roundness <25 μm, taper <10 μm over 800 mm

### 2.6 FBG Sensor Embedding (128 sensors during A-03)

| Sensor Type | Qty | Location | Installation Method |
|---|---|---|---|
| Temperature (FBG-T) | 96 | 12 per zone × 8 circumferential × 1 axial | Grooved during machining, epoxy-bonded (Hysol EA 9394) |
| Strain (FBG-ε) | 32 | 4 per zone × 8 circumferential × 1 axial | Surface-mounted in grooves, same epoxy |
| Reference (unstrained) | 16 | 2 per zone, adjacent to strain | Same thermal path, mechanically isolated |

**Survival rate target:** 100% (all first articles achieved 100% survival)

---
