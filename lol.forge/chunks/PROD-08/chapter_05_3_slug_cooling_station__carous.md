## 3. Slug Cooling Station — Carousel Mold System

All liquid-metal slugs exit their respective ports into a precision-engineered carousel of ZrO₂ ceramic molds. This station is the critical thermodynamic bridge between the forge's extreme internal environment and ambient downstream processing.

### 3.1 Carousel Mechanical Architecture

```
SLUG COOLING STATION — 16-POSITION ROTARY CAROUSEL
┌─────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│    PORT 4a (In) ──►  ┌─────────┐    PORT 5 (Al) ──►  ┌─────────┐           │
│    PORT 4b (Zn) ──►  │ POS 1-4 │    PORT 6 (Cu) ──►  │ POS 5-8 │           │
│    PORT 7 (Fe) ──►   │ POS 9-12│    PORT 8 (Min) ──► │ POS 13-16│           │
│                      └─────────┘                     └─────────┘           │
│                            │                              │                │
│                      ROTARY INDEXER (KNbO₃-BaTiO₃ PIEZO)                    │
│                            │                              │                │
│                      ┌────────────────────────────────────┐                │
│                      │   N₂ QUENCH MANIFOLD (PEEK CF40)   │                │
│                      │   16 independent nozzles, zoned    │                │
│                      └────────────────────────────────────┘                │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

**Carousel Specifications:**

| Parameter | Specification | Basis |
|---|---|---|
| Positions | 16 (4 per active metal port) | 8 min cycle × 4 ports = 32 molds; 16 active + 16 cooling |
| Disc material | BFRP/Elium® filament wound | CSMFAB000000000011, non-conductive, 250°C service |
| Bushing | PEEK CF40 | Self-lubricating, 250°C continuous, radiation hard |
| Drive | KNbO₃-BaTiO₃ ultrasonic piezo motor | CSMFAB000000000020, no magnetic fields, 0.1° precision |
| Index time | 2.5 seconds (22.5° step) | 16 positions × 2.5s = 40s full rotation |
| Positional accuracy | ±0.05° (FBG verified) | Optical encoder + FBG cross-check |
| Load per position | 2.5 kg max (mold + slug) | 2 kg slug + 0.5 kg mold |
| Cycle time per position | 8 minutes | Fill (1 min) + Cool (6 min) + Demold (1 min) |
| Throughput | 7.5 slugs/hour per port | 60 min / 8 min × 1 mold/port × 4 molds |

### 3.2 ZrO₂ Ceramic Mold Design

**Mold Material: 3Y-TZP Zirconia (Yttria-Stabilized Tetragonal Zirconia Polycrystal)**

| Property | Value | Relevance |
|---|---|---|
| Composition | ZrO₂ + 3 mol% Y₂O₃ | Tetragonal phase stability to 1200°C |
| Density | 6.05 g/cm³ | High thermal mass for controlled cooling |
| Thermal conductivity | 2.2 W/m·K (25°C) → 2.8 W/m·K (1000°C) | Low conductivity = controlled solidification |
| Melting point | 2715°C | Exceeds all forge exit temperatures |
| CTE (25-1000°C) | 10.5 × 10⁻⁶/K | Matches most cast metals reasonably |
| Fracture toughness (K_IC) | 6-8 MPa·m^0.5 | Transformation toughening resists thermal shock |
| Contact angle (molten Al) | >120° | Non-wetting — no mold release needed |
| Contact angle (molten Cu) | >115° | Non-wetting |
| Contact angle (molten Fe) | >110° | Non-wetting |
| Contact angle (molten Zn) | >100° | Non-wetting |

**Mold Geometry (Standard 2 kg Slug):**

```
MOLD DIMENSIONS
┌─────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│    ┌─────────────────────────────────┐                                      │
│    │  ← 100 mm (width) →             │                                      │
│    │  ┌─────────────────────────┐   │                                      │
│    │  │                         │   │  ← 25 mm (depth)                      │
│    │  │      CAVITY             │   │                                      │
│    │  │    90 × 40 × 22 mm      │   │                                      │
│    │  │                         │   │                                      │
│    │  └─────────────────────────┘   │                                      │
│    └─────────────────────────────────┘                                      │
│         ↑                                    ↑                             │
│    ZrO₂ wall (6 mm)                   ZrO₂ base (8 mm)                    │
│                                                                              │
│    DRAFT ANGLE: 3° per side for demolding                                   │
│    FILLET RADIUS: 2 mm (stress concentration reduction)                    │
│    STAMP RECESS: 5 mm × 30 mm × 0.3 mm deep (alphanumeric code)            │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

**Mold Cavity Volume:** 90 × 40 × 22 mm = 79.2 cm³
**Theoretical Mass Capacity:**
- Aluminum (ρ=2.70): 214 g per cavity × 4 cavities = 856 g (undersized for 2 kg target)
- Copper (ρ=8.96): 710 g per cavity × 4 = 2.84 kg
- Iron (ρ=7.87): 623 g per cavity × 4 = 2.49 kg

**Revised Production Mold:** 100 × 50 × 40 mm cavity = 200 cm³ → 2.0 kg Al, 5.4 kg Cu, 4.7 kg Fe
Actual mold uses **interchangeable inserts** for different metal densities.

### 3.3 N₂ Quench System — Controlled Solidification

**Quench Manifold:** PEEK CF40 16-port distribution block, fed by 25mm PEX-a supply line
**Nozzle Design:** ZrO₂ ceramic convergent-divergent nozzles, 2mm throat, 15° divergence
**Gas Supply:** N₂ at 5 bar, 20°C, from closed-loop system (GFGS Train A outlet)

**Cooling Rate Profiles by Metal:**

| Metal | Exit Temp | Target Cooling Rate | N₂ Flow | Nozzle Pressure | Resulting Microstructure |
|---|---|---|---|---|---|
| Indium | 157°C | 50-100°C/min | 5 SLPM | 2 bar | Fine equiaxed, <50 μm grain |
| Zn/Pb/Sn | 300-400°C | 100-200°C/min | 8 SLPM | 3 bar | Fine dendritic, <100 μm |
| Aluminum | 660-720°C | 20-50°C/min | 15 SLPM | 4 bar | Fine equiaxed, 50-100 μm |
| Copper | 1085-1150°C | 30-80°C/min | 20 SLPM | 5 bar | Columnar-to-equiaxed transition |
| Iron | 1538-1600°C | 10-30°C/min | 25 SLPM | 5 bar | Coarse columnar (controlled by slow cool) |

**Quench Control Algorithm:**
```
FOR each mold position:
  1. READ mold FBG temperature (embedded in ZrO₂ wall, 3 sensors/mold)
  2. COMPUTE required cooling rate from solidification model
  3. ADJUST N₂ nozzle valve position (PEEK CF40 piezo-actuated)
  4. LOG temperature vs. time at 10 Hz
  5. VERIFY solidus reached (latent heat release plateau detection)
  6. HOLD until mold temp < 200°C (safe demold)
  7. INDEX to demold position
```

**Solidification Time Calculation (Chvorinov's Rule):**
```
t_solid = B × (V/A)²
where B = mold constant (ZrO₂: 2.5 min/cm² for Al, 1.8 for Cu, 1.2 for Fe)
V = casting volume (200 cm³)
A = surface area (2×(100×50 + 100×40 + 50×40) = 27,600 mm² = 276 cm²)
V/A = 200/276 = 0.725 cm
t_solid(Al) = 2.5 × 0.725² = 1.3 min (theoretical) → 6 min practical (with N₂ control)
t_solid(Cu) = 1.8 × 0.725² = 0.95 min → 6 min practical
t_solid(Fe) = 1.2 × 0.725² = 0.63 min → 8 min practical (slow cool for stress relief)
```

### 3.4 Automated Demolding System

**Ejector Pins:** 4 × PEEK CF40 pins per mold, 6mm diameter, 30mm stroke
**Actuation:** KNbO₃-BaTiO₃ piezoelectric stack actuator (10 μm stroke, amplified to 30mm via flexure)
**Force:** 500 N per pin (sufficient for draft-angle release with non-wetting surface)
**Cycle:** Mold indexes to demold station → ejector extends → slug drops to conveyor → ejector retracts → mold indexes to fill position

**Conveyor Handoff:** BFRP belt conveyor on ZrO₂ ceramic rollers (CSMFAB000000000014-type)
- Belt: BFRP/Elium® composite, 200mm wide, 2mm thick
- Rollers: ZrO₂ ceramic, 50mm diameter, PEEK CF40 bearings
- Speed: 0.5 m/s (matches demold cycle)
- LIBS station: 500mm downstream of demold point



