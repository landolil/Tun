## 4. Filament Winding Process

### 4.1 Process Overview

The BFRP pressure vessel is manufactured by **wet filament winding** of basalt fiber rovings impregnated with Elium® resin onto a precision CNC-machined mandrel. The [±18°/90°]₄ layup requires precise angular control and tension management to achieve the target fiber volume fraction (60%) and ply thickness consistency.

### 4.2 Mandrel Specification

| Parameter | Value |
|---|---|
| Mandrel diameter | 900 mm (matches vessel ID) |
| Mandrel length | 1,300 mm (includes flange transition zones) |
| Material | CNC-machined aluminum (6061-T6) with PTFE release coating |
| Surface finish | Ra < 1.6 μm |
| Taper | 1° draft angle for part removal |
| Cost | $25,000–$40,000 (reusable for 100+ vessels) |

### 4.3 Winding Parameters

| Parameter | Value | Control Method |
|---|---|---|
| Fiber tension | 50 N per roving | Closed-loop servo tensioner (±2 N) |
| Winding speed | 2–5 m/s | Variable by pattern (slower at transitions) |
| Resin bath temperature | 25 ± 2°C | Thermostatted bath, viscosity monitoring |
| Resin feed rate | Synchronized to fiber speed | Metering pump with flow sensor |
| Fiber areal weight | 450 g/m² per ply | Controlled by band width and speed |
| Target FVF | 60% | Validated by burnout test on coupons |

### 4.4 Layup Sequence

The [±18°/90°]₄ sequence is wound in 16 passes:

| Pass | Angle | Pattern | Purpose |
|---|---|---|---|
| 1 | +18° | Helical | Hoop strength primary |
| 2 | -18° | Helical | Hoop strength, balanced shear |
| 3 | 90° | Circumferential (hoop) | Axial stiffness, damage tolerance |
| 4 | +18° | Helical | Repeat block |
| 5 | -18° | Helical | |
| 6 | 90° | Circumferential | |
| 7 | +18° | Helical | |
| 8 | -18° | Helical | |
| 9 | 90° | Circumferential | |
| 10 | +18° | Helical | |
| 11 | -18° | Helical | |
| 12 | 90° | Circumferential | |
| 13 | +18° | Helical | |
| 14 | -18° | Helical | |
| 15 | 90° | Circumferential | |
| 16 | +18° | Helical | Final outer layer (smooth finish) |

**Total wall thickness:** 16 plies × 1.125 mm/ply = 18 mm (target)

### 4.5 Transition Zones and Flange Integration

The vessel ends require transition from cylindrical winding to flange integration:

**Flange transition (each end, 100 mm axial length):**
- Additional 4 plies of ±45° for shear transfer to flange
- Local thickness buildup to 22 mm at flange face
- ZrO₂ ceramic inserts pre-placed for bolt hole reinforcement
- PEEK CF40 flange bonding surface prepared during winding (peel ply)

**Port penetrations (gas connections, instrumentation):**
- 8× gas ports (DN25) pre-wound with local reinforcement
- 12× FBG feedthroughs (DN10) integrated during winding
- All penetrations use ZrO₂ ceramic liners bonded during winding

### 4.6 Cure Cycle

| Stage | Temperature | Duration | Pressure | Notes |
|---|---|---|---|---|
| Gelation | 25°C (ambient) | 60–120 min | Vacuum bag only | Peroxide initiator activates |
| Post-cure ramp | 25 → 120°C | 2 hr | Vacuum bag (0.8 bar) | Controlled ramp 0.8°C/min |
| Post-cure hold | 120°C | 2 hr | Vacuum bag | Completes polymerization |
| Cool down | 120 → 25°C | 3 hr | Vacuum bag | Controlled ramp 0.5°C/min |
| Demold | 25°C | — | — | Mandrel contraction release |

**No autoclave required** — Elium® cures at room temperature with vacuum consolidation only. This is a key advantage over thermoset epoxies requiring 180°C autoclave cycles.

### 4.7 Quality Control During Winding

| Check | Method | Frequency | Acceptance |
|---|---|---|---|
| Fiber tension | Inline load cell | Continuous | 50 ± 2 N |
| Resin content | Dielectric sensor | Per pass | 38–42% by weight |
| Fiber angle | Laser tracker | Every 4 passes | ±0.5° of target |
| Thickness | Ultrasonic gauge | Every pass | 1.125 ± 0.05 mm/ply |
| Void content | Coupon burnout | Per batch | <1.5% |

### 4.8 Post-Wind Inspection

- **Visual inspection:** 100% surface — no gaps, wrinkles, dry spots, resin-starved areas
- **Ultrasonic C-scan:** 100% wall area — delamination detection, thickness mapping
- **Dimensional check:** ID, OD, length, ovality at 3 stations
- **Coupon testing:** 6 coupons per vessel (hoop tensile, axial tensile, ILSS, compression)
- **Barcol hardness:** 20 points around circumference — uniformity check

---
