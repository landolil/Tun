# PROD-08: Slug Cooling & Output Catalog
## CSMFAB000000000112 — Aegis-Forge I Assembly Line Integration and Output Slug Catalog
### Series: TCIMS Volume 5 — Downstream Processing, Output Classification, Seed Material Generation

**Document Number:** CSMFAB000000000112 (Volume 5 of 5)
**Series:** Aegis-Forge Thermal Cascade Inductive Material Separator (TCIMS)
**Date:** October 2026
**Classification:** Foundation Technology — Seed Material Production & Output Stewardship

---

## 1. Purpose and Design Mandate

The Aegis-Forge I produces 14 distinct output streams per full thermal cascade cycle. Each stream must be cooled, solidified, analyzed, classified, stamped for traceability, and routed to its designated downstream destination. **None are waste. All are value.**

This document specifies the complete output handling architecture from port exit to downstream handoff:

1. **Slug Cooling Station** — 16-position ZrO₂ ceramic mold carousel with controlled N₂ quench
2. **Slug Stamp-and-Barcode System** — Alphanumeric traceability for Phoenix Protocol closure
3. **Inline Spectrometric Analysis** — LIBS (Laser-Induced Breakdown Spectroscopy) for real-time grade assignment
4. **Three-Way Routing** — Direct use / Refinement needed / Commercial sale classification
5. **CSM Seed Material Generation Map** — Direct linkage from forge output to every CSMFAB product
6. **Downstream Assembly Line Integration** — Machine 1 of 8 in modular production line
7. **Full Machine Specifications** — Technical specs, production cost, revenue model, payback

The cooling station is the thermodynamic bridge between the forge's 2200°C internal environment and the ambient-temperature downstream processes. It must solidify liquid metal slugs (156°C to 1676°C exit temperatures) into metallurgically sound ingots while preserving traceability and enabling real-time compositional verification.

**Design Mandate:** Every element that enters the forge must exit as a characterized, stamped, routed material stream. The output catalog is the forge's accounting ledger — the periodic table witnessed into sequence, quantified, and dispatched.




## 2. Output Stream Registry — Complete Catalog

The Aegis-Forge I produces 14 distinct output streams per full thermal cascade cycle. Each stream is classified by port of origin, phase at exit, temperature, and downstream destination. This registry is the single source of truth for all downstream process integration.

### 2.1 Output Stream Registry Table

| Stream # | Port | Name | Phase at Exit | Temperature | Downstream Use |
|---|---|---|---|---|---|
| S-01 | 1 | Process Water | Liquid | 80-100°C | AMLS recirculation |
| S-02 | 2 | Mixed Polymer Slug | Solid (cooled) | 25°C | Polymer reprocessing / Elium® feedstock |
| S-03 | 3 | Carbon Char Pellets | Solid granule | 25°C | Activated carbon / carburizing agent |
| S-04 | 4a | Indium-Rich Fraction | Liquid → Solid | 157-200°C | Ionic liquid In refining → YInMn Blue |
| S-05 | 4b | Zn/Pb/Sn Slug | Solid ingot | 25°C | Low-temp metal recovery / solder remanufacture |
| S-06 | 5 | Aluminum Slug | Solid ingot | 25°C | Al casting / secondary market sale |
| S-07 | 6 | Copper Billet | Solid ingot | 25°C | Cu wire remanufacture / electrical market |
| S-08 | 6-PM | Precious Metal Fraction | Included in S-07 | — | Electrolytic Au/Ag/Pd refining |
| S-09 | 7 | Ferrous Slug | Solid ingot | 25°C | Fe casting / RE magnet leach (from NdFeB) |
| S-10 | 7-RE | Rare Earth Concentrate | Included in S-09 | — | Hydromet RE extraction → magnets, catalysts |
| S-11 | 8 | Mineral Concentrate | Mixed solid | 25°C | Hydromet refinery → Zr, Ti, REE recovery |
| S-12 | Gas | Pyrolysis Fuel Gas | Gas | 25°C | Combustion for Stage 7-8 auxiliary heat |
| S-13 | Gas | CO₂ Stream | Gas | 25°C | Drum purge gas / geopolymer curing atmosphere |
| S-14 | Gas | NaCl / CaSO₄ Solids | Solid | 25°C | Construction material additive |

### 2.2 Stream Classification by Material Category

**Liquid Metal Streams (Require Cooling Station):**
- S-04: Indium-rich fraction (exits liquid at 157°C, solidifies in mold)
- S-05: Zn/Pb/Sn slug (exits liquid, solidifies in mold)
- S-06: Aluminum slug (exits liquid at 660-720°C, solidifies in mold)
- S-07: Copper billet (exits liquid at 1085-1150°C, solidifies in mold)
- S-09: Ferrous slug (exits liquid at 1538-1600°C, solidifies in mold)

**Solid Streams (Direct to Conveyor):**
- S-01: Process water (condensed, pumped to AMLS)
- S-02: Mixed polymer slug (already solid at Port 2 exit)
- S-03: Carbon char pellets (solid at Port 3 exit)
- S-11: Mineral concentrate (solid at Port 8 exit)

**Gas Streams (To Gas Capture System):**
- S-12: Pyrolysis fuel gas (combusted for Stage 7-8 heat)
- S-13: CO₂ stream (PSA-separated, reused as purge)
- S-14: Acid gas scrubber solids (collected from Train D)

**Embedded Streams (Co-exiting with Primary):**
- S-08: Precious metals (Au, Ag, Pd) report within copper matrix at Port 6
- S-10: Rare earth concentrate (Nd, Sm, Co) reports within ferrous matrix at Port 7

### 2.3 Mass Balance per 50 kg Batch (Typical PCB-Rich E-Waste)

| Stream | Mass (kg) | % of Input | Primary Elements | Value ($/kg) | Revenue ($) |
|---|---|---|---|---|---|
| S-01 Water | 2.5 | 5% | H₂O | 0.00 | 0.00 |
| S-02 Polymer | 17.5 | 35% | C, H, Cl (PVC) | 0.15 | 2.63 |
| S-03 Char | 4.0 | 8% | C (85%), ash | 0.10 | 0.40 |
| S-04 In-rich | 0.15 | 0.3% | In (15%), Sn, Zn | 280.00* | 42.00 |
| S-05 Zn/Pb/Sn | 3.0 | 6% | Zn, Pb, Sn | 2.00 | 6.00 |
| S-06 Aluminum | 6.0 | 12% | Al (95%+) | 1.80 | 10.80 |
| S-07 Copper | 11.5 | 23% | Cu (99%+) | 9.00 | 103.50 |
| S-08 PM (in S-07) | 0.135 | 0.27% | Au 15g, Ag 115g, Pd 5g | — | 1,863.00 |
| S-09 Ferrous | 7.0 | 14% | Fe, Ni, Cr | 0.45 | 3.15 |
| S-10 RE (in S-09) | 0.35 | 0.7% | Nd, Sm, Dy, Co | 45.00* | 15.75 |
| S-11 Mineral | 1.0 | 2% | ZrO₂, SiO₂, TiO₂, REE | — | Retained |
| S-12 Pyrolysis gas | — | — | CO, CH₄, H₂ | 0.85 eq | 0.85 |
| S-13 CO₂ | — | — | CO₂ | 0.05 eq | 0.05 |
| S-14 Scrubber solids | 0.5 | 1% | NaCl, CaSO₄ | 0.05 | 0.03 |

**Total Revenue per 50 kg batch: $2,048.16** (dominated by precious metals at 91%)
**Operating Cost: $62/batch** (electricity $45 + N₂ $2 + consumables $15)
**Net per Batch: $1,986.16**

*Indium value as refined 99.9% metal; RE value as separated oxides




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




## 4. Slug Stamp-and-Barcode System — Traceability Architecture

Before cooling sets, a ZrO₂ ceramic stamp head presses an alphanumeric code into each slug. This traceability is essential for Phoenix Protocol — knowing the full provenance of recycled material from source through every transformation.

### 4.1 Stamp System Mechanical Design

**Stamp Head:** 3Y-TZP ZrO₂ ceramic, 30mm × 5mm face, 0.3mm character depth
**Character Set:** Alphanumeric (A-Z, 0-9) + 4 special symbols (/, -, :, .) = 40 characters
**Font:** 3mm × 2mm dot-matrix (5×7 pattern), laser-etched into stamp face
**Actuation:** KNbO₃-BaTiO₃ piezoelectric stack, 50μm stroke, 2 kN force
**Cycle Time:** 0.8 seconds (extend → dwell 0.2s → retract)
**Alignment:** FBG-guided position verification (±0.02 mm accuracy)

```
STAMP FORMAT — 24 CHARACTERS
┌─────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│  BATCH-YYYYMMDD-NNN-P-TTTT-SSSS                                             │
│                                                                              │
│  │       │       │ │   │                                                    │
│  │       │       │ │   └─ Sequence within batch (0001-9999)                │
│  │       │       │ └──── Port of origin (1-8, 4a, 4b, 6-PM, 7-RE)          │
│  │       │       └────── Stage temperature band (°C, 4 digits)             │
│  │       └───────────── Batch number within day (001-999)                  │
│  └───────────────────── Date (YYYYMMDD)                                    │
│                                                                              │
│  EXAMPLE: BATCH-20261031-042-5-0680-0015                                   │
│   = Batch 42 on Oct 31 2026, Port 5 (Al), 680°C stage, slug #15            │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 4.2 Barcode / Data Matrix Encoding

**Primary:** Data Matrix ECC200 (ISO/IEC 16022) — 18×18 modules, 4mm × 4mm
**Encoded Data (JSON compact):**
```json
{
  "b": "20261031-042",    // Batch ID
  "p": "5",               // Port (string for 4a, 4b, 6-PM, 7-RE)
  "t": 680,               // Stage temp °C
  "s": 15,                // Sequence
  "m": "Al-6061",         // Material grade (from LIBS)
  "w": 1.987,             // Mass kg (load cell)
  "c": "2026-10-31T14:23:12Z"  // Timestamp UTC
}
```

**Secondary:** Human-readable alphanumeric stamp (as above)
**Tertiary:** RFID tag (optional, for high-value streams S-04, S-08, S-10)
- Tag: Passive UHF, ZrO₂-encapsulated, survives 1600°C
- Range: 3m (handheld), 10m (portal)
- Memory: 512 bytes (full genealogy)

### 4.3 Traceability Database Schema

**Database:** SQLite (local, air-gapped) + PostgreSQL (networked, CSMFAB MES)
**Table: `slug_registry`**

| Column | Type | Description |
|---|---|---|
| slug_id | UUID | Primary key (generated at stamp) |
| batch_id | TEXT | BATCH-YYYYMMDD-NNN |
| port | TEXT | Port identifier |
| stage_temp_c | INTEGER | Stage temperature |
| sequence | INTEGER | Sequence within batch-port |
| material_grade | TEXT | LIBS-assigned grade |
| mass_kg | REAL | Measured mass |
| stamp_time | TIMESTAMP | UTC stamp time |
| demold_time | TIMESTAMP | UTC demold time |
| libs_spectrum_hash | TEXT | SHA256 of LIBS spectrum |
| downstream_route | TEXT | DIRECT / REFINEMENT / SALE |
| downstream_machine | TEXT | Target machine ID (113-119) |
| phoenix_generation | INTEGER | 0 = virgin, 1+ = recycled |

**Phoenix Protocol Closure:** When a slug reaches end-of-life and re-enters as Category D feedstock, its `phoenix_generation` increments. The forge queries the registry to optimize processing parameters for known material history.

### 4.4 Stamp Verification Protocol

1. **Pre-stamp:** Mold FBG confirms slug temperature < 400°C (stampable range)
2. **Stamp:** Piezo actuator extends, dwell 200ms, retract
3. **Verify:** Machine vision (PMMA POF endoscope) reads stamp → OCR → compare to expected
4. **Log:** Write to `slug_registry` with timestamp
5. **Barcode:** Laser-etch Data Matrix adjacent to stamp (same ZrO₂ head, different tip)
6. **RFID:** Write tag (if applicable) → verify readback
7. **Release:** Only after all 3 identifiers match → conveyor advances

**Failure Modes:**
- Stamp illegible (OCR fail) → Flag for manual re-stamp at demold station
- Barcode unreadable → Re-etch (laser has 3 retries)
- RFID write fail → Log warning, continue without RFID (non-blocking)
- Registry write fail → Local buffer → sync when DB available (air-gap tolerant)




## 5. Slag Analysis and Auto-Sorting — LIBS Inline Spectrometry

Each slug emerging from the carousel is analyzed by an inline Laser-Induced Breakdown Spectroscopy (LIBS) system before routing. This provides real-time elemental composition for grade assignment and downstream routing decisions.

### 5.1 LIBS System Architecture

```
LIBS ANALYSIS STATION
┌─────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│   CONVEYOR ──► [SLUG] ──► ┌──────────────────────────────────────────┐      │
│                           │  LIBS MEASUREMENT CHAMBER                  │      │
│                           │  ┌────────────────────────────────────┐   │      │
│                           │  │  Nd:YAG Laser (1064 nm, 5 mJ)       │   │      │
│                           │  │  ├─ Pulse width: 5 ns               │   │      │
│                           │  │  ├─ Rep rate: 10 Hz                 │   │      │
│                           │  │  └─ Beam delivery: PMMA POF (1mm)   │   │      │
│                           │  ├────────────────────────────────────┤   │      │
│                           │  │  Focusing Optics: ZrO₂ lens (f=50mm)│   │      │
│                           │  │  ├─ Spot size: 100 μm               │   │      │
│                           │  │  ├─ Power density: 6.4 GW/cm²       │   │      │
│                           │  │  └─ Ablation crater: 50 μm dia      │   │      │
│                           │  ├────────────────────────────────────┤   │      │
│                           │  │  Plasma Collection:                 │   │      │
│                           │  │  ├─ KNbO₃-BaTiO₃ detector array     │   │      │
│                           │  │  │  (synchronous vibration lock-in) │   │      │
│                           │  │  ├─ Spectral range: 200-980 nm       │   │      │
│                           │  │  ├─ Resolution: 0.05 nm (FWHM)      │   │      │
│                           │  │  └─ PMMA POF → Spectrometer (3m)    │   │      │
│                           │  ├────────────────────────────────────┤   │      │
│                           │  │  Atmosphere: N₂ purge (10 SLPM)     │   │      │
│                           │  │  └─ Window: Sapphire (Al₂O₃)        │   │      │
│                           │  └────────────────────────────────────┘   │      │
│                           └──────────────────────────────────────────┘      │
│                                    │                                         │
│                                    ▼                                         │
│                         ┌─────────────────────┐                             │
│                         │  GRADE ASSIGNMENT   │                             │
│                         │  ENGINE (FPGA)      │                             │
│                         │  ├─ Peak matching   │                             │
│                         │  │  (NIST DB + CSM) │                             │
│                         │  ├─ Quantification  │                             │
│                         │  │  (CF-LIBS model) │                             │
│                         │  └─ Grade lookup    │                             │
│                         │     (rule table)    │                             │
│                         └─────────────────────┘                             │
│                                    │                                         │
│                     ┌─────────────┼─────────────┐                          │
│                     ▼             ▼             ▼                          │
│               DIRECT USE    REFINEMENT      COMMERCIAL                     │
│               (Conveyor 1)  (Conveyor 2)    (Conveyor 3)                   │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 5.2 LIBS Technical Specifications

| Parameter | Specification | Notes |
|---|---|---|
| Laser | Nd:YAG, 1064 nm, Q-switched | CSMFAB-certified, no Ti:sapphire |
| Pulse energy | 5 mJ (adjustable 1-10 mJ) | Optimized per material |
| Pulse width | 5 ns | Standard Q-switched |
| Repetition rate | 10 Hz (single-shot per slug) | 10 pulses averaged |
| Spot diameter | 100 μm | ZrO₂ lens, f=50mm |
| Power density | 6.4 GW/cm² | Above breakdown threshold |
| Ablation mass | ~100 ng per pulse | Minimal material loss |
| Spectrometer | Echelle + ICCD (KNbO₃-BaTiO₃) | 200-980 nm, 0.05 nm res |
| Detector gating | 1 μs delay, 10 μs width | Continuum rejection |
| Acquisition time | 2 seconds per slug | 10 pulses × 10 Hz + processing |
| Elements detectable | All metals, C, Si, S, P, B, REE | 70+ elements |
| Detection limits | 1-50 ppm (metals), 100-500 ppm (light) | Matrix dependent |
| Precision (RSD) | < 2% (major), < 5% (minor), < 10% (trace) | With CF-LIBS correction |

### 5.3 Calibration-Free LIBS (CF-LIBS) Model

**Physics-Based Quantification (No Standards Required):**

```
I_ij = (F × n_s × g_i × A_ij × hν_ij) / (U(T) × 4π) × exp(-E_i/kT)

Where:
  I_ij = measured line intensity (photons/s)
  F = instrument factor (calibrated once)
  n_s = species number density
  g_i = statistical weight of upper level
  A_ij = Einstein transition probability
  hν_ij = photon energy
  U(T) = partition function at temperature T
  E_i = upper level energy
  k = Boltzmann constant
  T = plasma temperature (from Boltzmann plot)
```

**Boltzmann Plot for Plasma Temperature:**
```
ln(I_λ / (g_i A_ij λ)) vs. E_i  →  slope = -1/kT
```

**Self-Absorption Correction:** Curve-of-growth method using line pairs (resonance + non-resonance)

**Matrix Effect Correction:** Internal standardization using major element (Fe, Cu, Al as matrix)

### 5.4 Elemental Line Selection Table (Key Elements)

| Element | Primary Line (nm) | Secondary Line (nm) | Use Case |
|---|---|---|---|
| Al | 396.15 | 394.40 | Major in S-06 |
| Cu | 324.75 | 327.40 | Major in S-07 |
| Fe | 438.35 | 440.47 | Major in S-09 |
| Zn | 213.86 | 334.50 | Major in S-05 |
| Pb | 405.78 | 368.35 | Major in S-05 |
| Sn | 283.99 | 317.50 | Major in S-05 |
| In | 325.61 | 410.18 | Trace in S-04, S-05 |
| Au | 267.60 | 242.80 | Trace in S-08 |
| Ag | 328.07 | 338.29 | Trace in S-08 |
| Pd | 340.46 | 363.47 | Trace in S-08 |
| Nd | 430.36 | 401.23 | REE in S-10 |
| Sm | 443.43 | 442.43 | REE in S-10 |
| Dy | 418.71 | 421.17 | REE in S-10 |
| Zr | 339.20 | 343.82 | Major in S-11 |
| Ti | 334.94 | 336.12 | Major in S-11 |
| Si | 288.16 | 251.61 | Major in S-11, slag |
| C | 247.86 | 193.09 | Char (S-03), carbides |
| S | 180.73 | 182.04 | Sulfide content |
| Cl | 134.72 | 136.34 | PVC residue (S-02) |

### 5.5 Grade Assignment Rules (Automated)

**Routing Logic (FPGA Implementation):**

```
IF stream == S-07 (Copper):
  IF Cu >= 99.5% AND (Au+Ag+Pd) >= 50 ppm:
    GRADE = "DIRECT_USE" → Machine 114 (Cu wire drawing)
  ELSE IF Cu >= 99.0%:
    GRADE = "REFINEMENT" → Machine 114 (fire refining first)
  ELSE:
    GRADE = "COMMERCIAL_SALE" → Commodity copper market

IF stream == S-06 (Aluminum):
  IF Al >= 95% AND Fe+Si <= 1%:
    GRADE = "COMMERCIAL_SALE" → Secondary Al market (CSM uses no Al)
  ELSE:
    GRADE = "REFINEMENT" → Machine 114 (fractional crystallization)

IF stream == S-09 (Ferrous):
  IF Fe >= 95% AND (Nd+Sm+Dy) >= 0.1%:
    GRADE = "DIRECT_USE" → Machine 113 (RE leach → magnet feed)
  ELSE IF Fe >= 98%:
    GRADE = "COMMERCIAL_SALE" → Steel mill feed
  ELSE:
    GRADE = "REFINEMENT" → Machine 113 (slag adjustment)

IF stream == S-04 (Indium):
  IF In >= 10% AND Sn+Zn <= 30%:
    GRADE = "DIRECT_USE" → Machine 119 (YInMn synthesis)
  ELSE:
    GRADE = "REFINEMENT" → Ionic liquid extraction (Phoenix)

IF stream == S-11 (Mineral):
  IF ZrO₂ >= 60% AND REE >= 2%:
    GRADE = "DIRECT_USE" → Machine 113 (Zr/Ti/REE hydromet)
  ELSE:
    GRADE = "STOCKPILE" → Await Phase 2 hydromet capacity

DEFAULT:
  GRADE = "COMMERCIAL_SALE"
```

### 5.6 Three-Way Routing Conveyors

| Conveyor | Destination | Typical Materials | Cycle Time |
|---|---|---|---|
| **Conveyor 1: Direct Use** | Downstream CSMFAB machines (113-119) | Qualified slugs meeting grade specs | Immediate |
| **Conveyor 2: Refinement** | Refinery queue (hydromet, electrolytic, zone refining) | Off-spec but recoverable | Batched (4 hr) |
| **Conveyor 3: Commercial Sale** | Weigh station → Shipping container | Commodity-grade metals | Daily batch |

**Conveyor Specifications (All Three):**
- Belt: BFRP/Elium® 200mm wide, anti-static carbon fiber woven
- Rollers: ZrO₂ ceramic, PEEK CF40 bearings
- Drive: KNbO₃-BaTiO₃ ultrasonic motor (no EM fields)
- Load cells: FBG-based force sensors at each divert point
- Diverter: PEEK CF40 pivoting blade, piezo-actuated (<100ms)
- Vision: PMMA POF barcode reader at each exit




## 6. CSM Seed Material Generation Map — Forge Output to Product Input

This is the Aegis-Forge I's ultimate purpose: **converting raw Earth and recycled matter directly into the seed materials required for every CSMFAB product.** The forge is not a recycling machine — it is a seed material generator.

### 6.1 Seed Material → CSMFAB Product Direct Linkage

| Aegis-Forge Output | Intermediate Step | Final CSMFAB Seed Material | Used In |
|---|---|---|---|
| S-04 In-rich fraction | Ionic liquid refining (Phoenix Protocol) | Indium metal 99.9% | YInMn Blue (35 products) |
| S-10 RE Concentrate | Hydromet leach → Cyanex 272 extraction | Y₂O₃, Nd₂O₃, La₂O₃ | YSZ, YInMn, RE magnets |
| S-11 Mineral Concentrate | Leach + ZrO₂ precip + Y₂O₃ addition | 3Y-TZP ZrO₂ powder | ZrO₂ fasteners, parts |
| S-11 (ZrSiO₄ dissociation) | Carbothermal + SHS program | ZrB₂ powder | CSMFAB000000000001 |
| S-11 (TiO₂ concentrate) | Chloride-thermal extraction | TiO₂ → TiCl₄ → Ti₃AlC₂ | MXene, MAX Phase |
| S-03 Carbon Char | Activation (steam, 900°C) | Activated carbon | Air/gas filtration |
| S-03 Carbon Char | Graphitization (2800°C) | Graphite | Electrode material |
| S-07 Copper Billet | Melt + draw | Cu wire | Motor windings (isolated) |
| S-09 Ferrous Slug | RE extraction first, then melt | Clean iron + RE separated | Iron castings (tooling) |
| S-06 Aluminum Slug | Melt + refine | Casting alloy or scrap sale | Commercial (CSM uses no Al in Aegis products) |
| S-12 Pyrolysis gas | Steam reform (Option B) | H₂ fuel | Engine CSMFAB000000000105 |
| S-08 Precious metals | Electrolytic refining | Au, Ag, Pd | Sale → Funds operations |
| S-05 Zn/Pb/Sn | Fractional distillation | Separated Zn/Pb/Sn | Sale or solder remanufacture |
| S-02 Polymer slug | Extrusion → filament or sheet | Polymer blend stock | Injection-moldable polymer |
| S-01 Process Water | Filtration + UV | Pure H₂O | AMLS coupling, cooling |
| S-13 CO₂ | PSA capture | CO₂ (95-99%) | Drum purge, geopolymer curing |
| S-14 Scrubber solids | None (direct use) | CaCl₂, CaSO₄ | De-icing, construction |

### 6.2 Critical Path: Rock → ZrB₂ Powder in 48 Hours

This is the most important operational sequence showing the Aegis-Forge I as a true cradle-to-material system for the portfolio's most critical ceramic:

```
HOUR 0:     Zircon sand (ZrSiO₄) loaded into Aegis-Forge I AMLS
            [20 min acoustic: >80% zircon grain liberation from silica matrix]

HOUR 0.3:   AMLS magnetic separation removes ilmenite fraction (Fe, Ti separate stream)

HOUR 0.5:   Liberated zircon sand fed to Forge drum
            Stage 8 temperature: 1700°C
            ZrSiO₄ dissociation: ZrSiO₄ → ZrO₂ + SiO₂ (liquid SiO₂ exits Port 8 first)

HOUR 3:     Stage 8 mineral concentrate (ZrO₂-rich) exits as Slug S-11

HOUR 3.5:   S-11 transferred to Phoenix Protocol hydromet circuit:
            BFRP reactor vessel; H₂SO₄ leach → ZrO₂ dissolves as Zr⁴⁺
            YCl₃ added (Yttrium from REE stream S-10)
            NH₄OH co-precipitation → Zr-Y hydroxide gel

HOUR 6:     Gel filtered, washed, dried at 120°C

HOUR 8:     Calcination furnace (1200°C, 4h) → 3Y-TZP ZrO₂ crystalline powder

HOUR 12:    3Y-TZP ZrO₂ powder available for:
            → Direct: use as ZrO₂ fastener/part powder (sintered at 1400°C)
            → Alternative: add to B₂O₃ + carbon → ZrB₂ via carbothermal synthesis

HOUR 36:    ZrB₂ carbothermal reaction complete (1700°C, 16h)
            OR: ZrB₂ SHS reaction (1h from Zr metal + B precursors)

HOUR 48:    ZrB₂ powder available for Flash Sintering into Aegis-C panels, stove burners, etc.
```

**48 hours from raw zircon sand to ready-to-sinter ZrB₂ powder. No metals, no exotic chemistry, no supply chain vulnerabilities.**

### 6.3 Alternative Critical Path: Basalt Rock → BFRP Rebar in 72 Hours

```
HOUR 0:     Basalt rock loaded into AMLS
HOUR 0.3:   Acoustic liberation → basalt grain separation
HOUR 0.5:   Basalt fed to Forge Stage 8 (1600°C) → melts to basalt slag
HOUR 3:     Basalt slag exits Port 8 → quenched to glass frit
HOUR 4:     Frit fed to Basalt Fiber Furnace (Machine 116)
HOUR 4-12:  Fiber drawing at 1400°C → continuous basalt fiber (13-17 μm)
HOUR 12:    Fiber wound onto BFRP pultrusion spools
HOUR 12-24: BFRP Pultrusion Line (Machine 117) → rebar, profiles, shapes
HOUR 24:    Elium® resin injection (in-house from MMA recovery S-02)
HOUR 24-48: Pultrusion cure (Elium® 120°C, 2h) → solid BFRP profiles
HOUR 48:    Cut to length, QC test (tensile, bend, modulus)
HOUR 72:    BFRP rebar ready for construction / CSMFAB frame structures
```

### 6.4 Critical Path: E-Waste → YInMn Blue Pigment in 36 Hours

```
HOUR 0:     PCBs + smartphones (Category A) fed to Forge
HOUR 0.3:   AMLS liberation → magnetic separation
HOUR 0.5:   Forge thermal cascade
HOUR 3:     Stage 4: Indium-rich fraction (S-04) exits at 160°C
HOUR 3.5:   S-04 to Ionic Liquid Refining (Phoenix Protocol)
            [C₄mim][NTf₂] ionic liquid, 80°C, electrochemical
HOUR 8:     99.9% Indium metal cathode deposit
HOUR 8-12:  Indium + Yttrium (from S-10) + Manganese → YInMn Blue synthesis
HOUR 12:    YInMn Kiln (Machine 119) → 1200°C, 4h, controlled atmosphere
HOUR 24:    YInMn Blue pigment milled to <5 μm, classified
HOUR 24-36: QC: Colorimetry (L*a*b*), NIR reflectance (SRI=115), stability
HOUR 36:    YInMn Blue ready for 35 CSMFAB products (glazes, coatings, cool roofs)
```

### 6.5 Material Flow Sankey (Per 50 kg Batch)

```
INPUT (50 kg)
   │
   ├─► 17.5 kg Polymer (35%) ──► S-02 ──► Elium® MMA recovery (60-80%) ──► Elium® resin
   │                                                          └─► Char (S-03) ──► Activated C
   │
   ├─► 6.0 kg Aluminum (12%) ──► S-06 ──► Commercial sale ($10.80)
   │
   ├─► 11.5 kg Copper (23%) ──► S-07 ──► Cu wire (CSM) + PM recovery
   │       └─► 15g Au, 115g Ag, 5g Pd ──► S-08 ──► Electrolytic refining ──► Revenue $1,863
   │
   ├─► 7.0 kg Ferrous (14%) ──► S-09 ──► Fe casting + RE leach
   │       └─► 0.35 kg RE concentrate ──► S-10 ──► Hydromet ──► Y/Nd/Sm oxides
   │
   ├─► 3.0 kg Zn/Pb/Sn (6%) ──► S-05 ──► Fractional distillation ──► Separate metals
   │
   ├─► 0.15 kg In-rich (0.3%) ──► S-04 ──► Ionic liquid ──► 99.9% In ──► YInMn Blue
   │
   ├─► 4.0 kg Char (8%) ──► S-03 ──► Activation/Graphitization
   │
   ├─► 1.0 kg Mineral (2%) ──► S-11 ──► Hydromet ──► ZrO₂, TiO₂, REE
   │
   └─► Gas streams ──► S-12, S-13, S-14 ──► Energy credit + purge gas + byproducts

TOTAL SEED MATERIALS GENERATED PER BATCH:
  • 0.13 kg 99.9% In → 35 YInMn products
  • 0.25 kg Y₂O₃/Nd₂O₃/Sm₂O₃ → Magnets, YSZ, YInMn
  • 0.60 kg 3Y-TZP ZrO₂ → Fasteners, parts, ZrB₂ precursor
  • 0.40 kg Ti₃AlC₂ precursor → MXene, MAX Phase
  • 2.0 kg Activated carbon → Filtration
  • 1.5 kg Cu wire → Motor windings
  • 3.0 kg Fe casting → Tooling frames
  • 1.9 kg Polymer blend → Molded parts
```

### 6.6 Phoenix Protocol Integration — Circular Material Genealogy

**Registry Entry for Each Seed Material:**

```json
{
  "material_id": "ZrB2-20261031-042-A",
  "source_slug": "S-11-BATCH-20261031-042-8-1676-0007",
  "phoenix_generation": 0,
  "source_feedstock": "Zircon sand (Australia, Iluka Resources, Lot ZS-2026-044)",
  "processing_path": [
    "AMLS: 20 min LF+US liberation",
    "Forge Stage 8: 1700°C, 20 min dwell",
    "Hydromet: H2SO4 leach, Y-co-precipitation",
    "Calcination: 1200°C, 4h",
    "Carbothermal: 1700°C, 16h, B2O3+C"
  ],
  "final_purity": "ZrB2 99.2%, O 0.8%, C 0.3%, Fe 0.02%",
  "certification": "CSMFAB-SEED-ZRB2-V1.0",
  "allocated_to": "Flash Sintering Run FS-20261101-003",
  "allocated_products": ["Aegis-C-Panel-042", "Stove-Burner-017", "Crucible-Set-009"]
}
```

When Product Aegis-C-Panel-042 reaches end-of-life (20+ years), it returns as Category D feedstock. The registry enables:
- **Processing optimization:** Known composition → tailored thermal profile
- **Contaminant tracking:** Zero unknown elements in circular loop
- **Carbon accounting:** Full LCA from rock to product to rock




## 7. Downstream Assembly Line Integration — Machine 1 of 8

The Aegis-Forge I is explicitly the **first machine** in a modular assembly line. Output slugs flow via gravity-conveyor (BFRP belt conveyor on ZrO₂ ceramic rollers) to adjacent downstream machines. The complete line, when built, comprises 8 machines.

### 7.1 Assembly Line Architecture

```
CSMFAB MODULAR ASSEMBLY LINE — PHASE 1 TO PHASE 3
┌─────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│  PHASE 1 (MACHINE 1 ONLY — SELF-SUFFICIENT)                                 │
│  ═══════════════════════════════════════════                                 │
│                                                                              │
│   ┌─────────────────┐                                                        │
│   │  MACHINE 1      │                                                        │
│   │  AEGIS-FORGE I  │ ──► S-01 Water ──────────► AMLS recirculation         │
│   │  CSMFAB 108-112 │ ──► S-02 Polymer ───────► Commercial / Stockpile     │
│   │                 │ ──► S-03 Char ──────────► Activated carbon (internal) │
│   │  INPUT:         │ ──► S-04 In-rich ───────► Stockpile (Phase 2)         │
│   │  • E-waste      │ ──► S-05 Zn/Pb/Sn ──────► Commercial sale             │
│   │  • Rock/ore     │ ──► S-06 Aluminum ──────► Commercial sale             │
│   │  • Phoenix ret. │ ──► S-07 Copper ────────► Machine 114 (wire) + PM     │
│   │                 │ ──► S-09 Ferrous ───────► Commercial + RE stockpile   │
│   │  OUTPUT:        │ ──► S-11 Mineral ────────► Stockpile (Phase 2)        │
│   │  14 streams     │ ──► S-12 Gas ───────────► Stage 7-8 combustion        │
│   │                 │ ──► S-13 CO₂ ───────────► Drum purge / geopolymer     │
│   │                 │ ──► S-14 Scrubber ──────► Construction additive       │
│   └────────┬────────┘                                                        │
│            │                                                                 │
│            ▼                                                                 │
│  REVENUE: $1,986/batch × 8 batches/day = $15,888/day = $3.97M/year          │
│  FUNDS PHASE 2 MACHINE CONSTRUCTION                                         │
│                                                                              │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│  PHASE 2 (MACHINES 2-4 — CRITICAL MINERAL REFINING)                         │
│  ═══════════════════════════════════════════════                             │
│                                                                              │
│   ┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐        │
│   │  MACHINE 2      │    │  MACHINE 3      │    │  MACHINE 4      │        │
│   │  HYDRO-REFINERY │    │  POWDER SYNTH   │    │  AEROGEL LINE   │        │
│   │  CSMFAB 113     │    │  CSMFAB 114     │    │  CSMFAB 115     │        │
│   │                 │    │                 │    │                 │        │
│   │  INPUT:         │    │  INPUT:         │    │  INPUT:         │        │
│   │  • S-11 Mineral │    │  • Zr, B, Si    │    │  • SiO₂ from    │        │
│   │  • S-10 RE      │    │    precursors   │    │    S-11         │        │
│   │  • S-04 In      │    │  • Y₂O₃ from    │    │  • Polymer C    │        │
│   │                 │    │    S-10         │    │    from S-02    │        │
│   │  OUTPUT:        │    │                 │    │                 │        │
│   │  • 99.9% In     │    │  OUTPUT:        │    │  OUTPUT:        │        │
│   │  • RE oxides    │    │  • ZrB₂ powder  │    │  • Polyimide-   │        │
│   │  • ZrO₂, TiO₂   │    │  • Si₃N₄ powder │    │    silica       │        │
│   │  • Purified     │    │  • MAX Phase    │    │    aerogel      │        │
│   │    chemicals    │    │    powders      │    │  • λ=0.010 W/m·K│        │
│   └─────────────────┘    └─────────────────┘    └─────────────────┘        │
│                                                                              │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│  PHASE 3 (MACHINES 5-8 — STRUCTURAL & FUNCTIONAL PRODUCTION)                │
│  ════════════════════════════════════════════════                             │
│                                                                              │
│   ┌─────────────────┐  ┌─────────────────┐  ┌─────────────────┐            │
│   │  MACHINE 5      │  │  MACHINE 6      │  │  MACHINE 7      │            │
│   │  BASALT FIBER   │  │  BFRP PULTRUSION│  │  MXENE REACTOR  │            │
│   │  CSMFAB 116     │  │  CSMFAB 117     │  │  CSMFAB 118     │            │
│   │                 │  │                 │  │                 │            │
│   │  INPUT:         │  │  INPUT:         │  │  INPUT:         │            │
│   │  • Basalt rock  │  │  • Basalt fiber │  │  • Ti₃AlC₂ from │            │
│   │    (AMLS direct)│  │  • Elium® resin │  │    Machine 3    │            │
│   │                 │  │                 │  │                 │            │
│   │  OUTPUT:        │  │  OUTPUT:        │  │  OUTPUT:        │            │
│   │  • Continuous   │  │  • Rebar,       │  │  • Ti₃C₂Tₓ      │            │
│   │    basalt fiber │  │    profiles,    │  │  • EMI shields  │            │
│   │  (13-17 μm)     │  │    shapes       │  │  • Supercapac.  │            │
│   └─────────────────┘  └─────────────────┘  └─────────────────┘            │
│                                                                              │
│   ┌─────────────────┐                                                       │
│   │  MACHINE 8      │                                                       │
│   │  YINMN KILN     │                                                       │
│   │  CSMFAB 119     │                                                       │
│   │                 │                                                       │
│   │  INPUT:         │                                                       │
│   │  • In (Machine 2)│                                                      │
│   │  • Y (Machine 2) │                                                      │
│   │  • Mn (S-11)    │                                                       │
│   │                 │                                                       │
│   │  OUTPUT:        │                                                       │
│   │  • YInMn Blue   │                                                       │
│   │    pigment      │                                                       │
│   │  • 35 products  │                                                       │
│   └─────────────────┘                                                       │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 7.2 Machine Interface Specifications

| Interface | Machine 1 → Machine 2 (Hydro-Refinery) | Machine 1 → Machine 3 (Powder Synth) |
|---|---|---|
| **Physical** | BFRP conveyor, ZrO₂ rollers | Pneumatic dense-phase (N₂ carrier) |
| **Material** | S-11 (mineral), S-10 (RE), S-04 (In) | ZrO₂, B₂O₃, Y₂O₃, TiO₂ powders |
| **Batch Size** | 1-5 kg per slug | 10-50 kg bulk powder |
| **Frequency** | Per forge batch (3.5 hr) | Daily consolidated |
| **Data** | Slug registry UUID, grade, LIBS spectrum | Powder lot ID, PSD, purity cert |
| **QC Handoff** | Inline LIBS + mass → Refinery LIMS | Powder QC (XRD, BET, PSD) → Synth MES |

### 7.3 Single Machine Startup (Phase 1 Self-Sufficiency)

In Phase 1, only the Aegis-Forge I is operational. All outputs except direct-use slugs go to:

| Stream | Phase 1 Disposition | Phase 2 Transition |
|---|---|---|
| S-01 Water | AMLS recirculation (internal) | Same |
| S-02 Polymer | Commercial sale ($0.15/kg) + stockpile | Machine 3 (Elium® MMA recovery) |
| S-03 Char | Activated carbon (internal gas treatment) | Machine 4 (aerogel carbon source) |
| S-04 In-rich | Stockpile (inert atmosphere) | Machine 2 (ionic liquid refining) |
| S-05 Zn/Pb/Sn | Commercial sale ($2/kg blended) | Same |
| S-06 Aluminum | Commercial sale ($1.80/kg) | Same (CSM uses no Al) |
| S-07 Copper | Machine 114 wire drawing (Phase 2) | Direct to Machine 114 |
| S-08 PM (in Cu) | Stockpile → Electrolytic refining | Machine 2 (PM refinery) |
| S-09 Ferrous | Commercial sale ($0.45/kg) + stockpile | Machine 2 (RE leach first) |
| S-10 RE (in Fe) | Stockpile with S-09 | Machine 2 (hydromet RE extraction) |
| S-11 Mineral | Stockpile (inert, N₂ blanketed) | Machine 2 (hydromet) + Machine 3 (powder) |
| S-12 Pyrolysis gas | Combustion for Stage 7-8 heat | Same + Option B (H₂ reforming) |
| S-13 CO₂ | Drum purge supplement | Machine 4 (geopolymer curing) |
| S-14 Scrubber solids | Construction additive sale | Same |

**Phase 1 Revenue Reality Check:**
- Only S-05, S-06, S-07 (Cu), S-09 generate immediate cash
- S-08 (PM in Cu) requires electrolytic refining (Phase 2) for full value
- S-04, S-10, S-11 are **strategic stockpiles** — zero revenue Phase 1, infinite value Phase 2+
- **Net Phase 1 cash flow: ~$1,500/batch** (conservative, excluding PM full value)
- **Phase 1 payback: ~150 batches (19 days at 8/day)** — still viable

### 7.4 Conveyor Handoff Mechanical Interface

**Gravity Conveyor (Forge → Downstream):**
- Incline: 5° decline (slugs roll by gravity, no power)
- Belt: BFRP/Elium® 300mm wide, cleated (15mm pitch) for positive control
- Rollers: ZrO₂ ceramic, 50mm diameter, PEEK CF40 bearings, 200mm spacing
- Side guides: PEEK CF40, adjustable width (100-300mm)
- Speed: 0.3 m/s (gravity-assisted, brake-controlled)
- Emergency stop: Piezo-actuated ZrO₂ brake pads (fail-safe engaged)

**Instrumented Handoff Station (Per Downstream Machine):**
```
HANDOFF STATION
┌─────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│  CONVEYOR IN ──► [LIBS RE-CHECK] ──► [MASS] ──► [DIMENSION] ──► CONVEYOR OUT│
│       │              │               │            │               │         │
│       ▼              ▼               ▼            ▼               ▼         │
│   FBG speed      PMMA POF        Load cell    Laser triang.   Machine     │
│   monitor        LIBS head       (FBG)       (PMMA POF)     specific     │
│                                                                              │
│  DATA PACKET TRANSFERRED TO DOWNSTREAM MACHINE MES:                         │
│  {                                                                           │
│    "slug_id": "uuid",                                                       │
│    "batch_id": "BATCH-20261031-042",                                       │
│    "grade": "DIRECT_USE",                                                   │
│    "mass_kg": 1.987,                                                        │
│    "dimensions_mm": {"w": 100.2, "d": 50.1, "h": 40.3},                   │
│    "libs_hash": "sha256...",                                                │
│    "timestamp": "2026-10-31T14:23:12Z",                                    │
│    "phoenix_gen": 0                                                         │
│  }                                                                           │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 7.5 Commissioning Sequence (Machine 1 → Machine 2 Handoff)

1. **Week 1-2:** Forge standalone, all streams to commercial/stockpile
2. **Week 3:** Hydro-Refinery (Machine 2) cold commissioning (water, N₂, chemicals)
3. **Week 4:** First S-11 mineral slug to Machine 2 — hydromet shakedown
4. **Week 5:** First S-04 In-rich to Machine 2 — ionic liquid loop commissioning
5. **Week 6:** First S-10 RE concentrate to Machine 2 — Cyanex 272 extraction loop
6. **Week 7:** Machine 3 (Powder Synth) receives first Zr/Y feed from Machine 2
7. **Week 8:** First ZrB₂ powder from Machine 3 → Flash Sintering (existing capability)
8. **Week 9:** First BFRP fiber from Machine 5 (basalt from AMLS direct)
9. **Week 10:** First BFRP rebar from Machine 6 → Frame for Machine 2 expansion
10. **Week 12:** Full line operational — Forge feeds 7 downstream machines

**Milestone:** First ZrB₂ panel sintered from Forge-derived powder = **Phase 2 Complete**




## 8. Full Machine Specifications — Summary

### 8.1 Aegis-Forge I Technical Specifications

| Parameter | Value | Notes |
|---|---|---|
| **Drum working diameter** | 600 mm | ZrB₂-SiC composite |
| **Drum working length** | 800 mm | 3 liner zones |
| **Drum working volume** | 226 liters | ~226 L charge capacity |
| **Maximum batch size** | 80 kg | Assumes ~65% fill factor |
| **Typical batch size** | 50 kg | PCB-rich e-waste |
| **Cycle time (full thermal cascade)** | 3.5-5 hours | Stage-dependent dwell |
| **Daily throughput (8 batches)** | 400 kg/day | 12-hr operating day |
| **Annual throughput (250 days)** | 100 metric tons/year | Single machine |
| **Maximum drum temperature** | 2400°C | Stage 8 mineral dissociation |
| **Maximum drum pressure** | 5 bar (design); 2.5 bar (operating) | N₂ atmosphere |
| **Drum rotational speed** | 0-500 RPM variable | KNbO₃-BaTiO₃ piezo motor |
| **Maximum centrifugal force** | 84.5 G at 500 RPM | r = 0.3m |
| **Induction total installed power** | 500 kW (8 × 62.5 kW zones) | 3-phase 480V |
| **Acoustic pre-processor power** | 8 kW LF + 4 kW ultrasonic | Stage 0 AMLS |
| **Gas treatment N₂ loop** | Closed-loop, 2-3 kg/cycle makeup | GFGS subsystem |
| **Machine external dimensions** | 2.2 m (L) × 1.4 m (W) × 1.8 m (H) | Excluding conveyors |
| **Total machine mass** | ~850 kg | Mostly ceramic/composite |
| **Operating electrical supply** | 3-phase 480V, 600 A service | Industrial |
| **Cooling water requirement** | 15 L/min, 10°C supply | PEX-a circuit |
| **Control system** | PMMA POF + FBG + KNbO₃-BaTiO₃ DSP | All-optical, GIC immune |

### 8.2 Slug Cooling Station Specifications

| Parameter | Value | Notes |
|---|---|---|
| **Carousel positions** | 16 (4 per active metal port) | 4 ports × 4 molds |
| **Carousel disc material** | BFRP/Elium® filament wound | Non-conductive |
| **Carousel bushing** | PEEK CF40 | Self-lubricating |
| **Drive motor** | KNbO₃-BaTiO₃ ultrasonic piezo | 0.1° precision |
| **Index time** | 2.5 seconds (22.5° step) | 40s full rotation |
| **Positional accuracy** | ±0.05° (FBG verified) | Optical + FBG cross-check |
| **Mold material** | 3Y-TZP ZrO₂ ceramic | Non-wetting, >1200°C |
| **Mold cavity (std)** | 100 × 50 × 40 mm = 200 cm³ | Interchangeable inserts |
| **Max slug mass per mold** | 2.5 kg (Al), 5.4 kg (Cu), 4.7 kg (Fe) | Density-dependent |
| **N₂ quench supply** | 5 bar, 20°C, closed-loop | GFGS Train A |
| **Nozzle type** | ZrO₂ convergent-divergent | 2mm throat, 15° div |
| **Cooling rate range** | 10-200°C/min | Metal-dependent |
| **Solidification time** | 6-8 minutes per slug | Chvorinov + control |
| **Cycle time per position** | 8 minutes | Fill + cool + demold |
| **Throughput per port** | 7.5 slugs/hour | 4 molds × 8 min |
| **Demold ejector** | 4 × PEEK CF40 pins, piezo-actuated | 500 N per pin |
| **Conveyor belt** | BFRP/Elium® 200mm wide | ZrO₂ rollers |

### 8.3 LIBS Analysis Station Specifications

| Parameter | Value | Notes |
|---|---|---|
| **Laser** | Nd:YAG, 1064 nm, Q-switched | 5 mJ, 5 ns, 10 Hz |
| **Spot diameter** | 100 μm | ZrO₂ lens f=50mm |
| **Power density** | 6.4 GW/cm² | Above breakdown |
| **Spectrometer** | Echelle + ICCD (KNbO₃-BaTiO₃) | 200-980 nm |
| **Spectral resolution** | 0.05 nm (FWHM) | |
| **Detector gating** | 1 μs delay, 10 μs width | Continuum rejection |
| **Acquisition time** | 2 seconds per slug | 10 pulses averaged |
| **Elements detectable** | 70+ (all metals, C, Si, S, P, B, REE) | |
| **Detection limits** | 1-50 ppm (metals), 100-500 ppm (light) | Matrix dependent |
| **Precision (RSD)** | <2% major, <5% minor, <10% trace | CF-LIBS corrected |
| **Grade assignment** | FPGA real-time (<100 ms) | 3-way routing |
| **Calibration** | Calibration-free LIBS (CF-LIBS) | No standards needed |

### 8.4 Stamp & Traceability Specifications

| Parameter | Value | Notes |
|---|---|---|
| **Stamp material** | 3Y-TZP ZrO₂ ceramic | Survives 1600°C |
| **Character depth** | 0.3 mm | Laser-etched face |
| **Character size** | 3mm × 2mm (5×7 dot matrix) | 40 character set |
| **Actuation** | KNbO₃-BaTiO₃ piezo stack | 50μm stroke, 2 kN |
| **Stamp cycle** | 0.8 seconds | Extend, dwell, retract |
| **Alignment accuracy** | ±0.02 mm (FBG guided) | |
| **Data Matrix** | ECC200, 18×18 modules, 4mm² | ISO/IEC 16022 |
| **RFID (optional)** | Passive UHF, ZrO₂ encapsulated | Survives 1600°C |
| **Database** | SQLite (local) + PostgreSQL (MES) | Air-gap tolerant |

### 8.5 Production Cost Per Machine (Small Batch: 5-Unit Run)

| Assembly Group | Material Cost | Labor Cost | Total |
|---|---|---|---|
| ZrB₂-SiC Drum (flash sintered) | $18,500 | $6,200 | $24,700 |
| BFRP Pressure Vessel (filament wound) | $4,200 | $3,800 | $8,000 |
| Aerogel Insulation Gap Fill | $1,800 | $400 | $2,200 |
| 8-Zone Induction Coil Bank | $28,000 | $8,500 | $36,500 |
| GaN Induction Inverter Electronics | $35,000 | $4,200 | $39,200 |
| AMLS Acoustic Pre-Processor | $8,500 | $2,800 | $11,300 |
| Gas Capture System (Trains A-E) | $22,000 | $9,500 | $31,500 |
| Slug Carousel Mold System | $6,500 | $3,200 | $9,700 |
| PEEK CF40 Drive Assembly | $12,000 | $4,800 | $16,800 |
| ZrO₂ Bearing and Seal Package | $5,500 | $2,000 | $7,500 |
| PMMA POF Control System | $4,800 | $3,500 | $8,300 |
| BFRP Frame and Conveyor | $3,500 | $2,800 | $6,300 |
| Plasma Torch Unit | $8,000 | $2,200 | $10,200 |
| Assembly, Testing, Commissioning | $0 | $18,000 | $18,000 |
| **TOTAL** | **$158,300** | **$71,900** | **$230,200** |

**Prototype (1 unit):** ~$385,000 (3× multiplier for NRE + tooling)
**Small batch (5 units):** ~$230,200 each
**Production volume (50+ units):** ~$148,000 each
**MSRP (production volume):** $220,000–$280,000 each

**Payback at $15,424/day revenue:** **15-18 days of operation per machine**

### 8.6 Operating Cost Per Batch (50 kg E-Waste)

| Cost Item | Unit Cost | Quantity | Cost/Batch |
|---|---|---|---|
| Electricity (induction + aux) | $0.12/kWh | 375 kWh | $45.00 |
| N₂ make-up gas | $0.09/kg | 2.5 kg | $0.23 |
| Lime (Ca(OH)₂) scrubber | $0.15/kg | 5 kg avg | $0.75 |
| Water (cooling + quench) | $0.002/L | 500 L | $1.00 |
| ZrO₂ mold wear (amortized) | $200/mold | 0.05 mold | $10.00 |
| PEEK CF40 seal/bushing wear | $500/set | 0.01 set | $5.00 |
| KNbO₃-BaTiO₃ transducer wear | $1,000/array | 0.001 array | $1.00 |
| Consumables (filters, gaskets) | — | — | $15.00 |
| **TOTAL OPERATING COST** | | | **$77.98** |

### 8.7 Revenue Per Batch (50 kg PCB-Rich E-Waste)

| Stream | Mass (kg) | Price ($/kg) | Revenue |
|---|---|---|---|
| S-05 Zn/Pb/Sn | 3.0 | 2.00 | $6.00 |
| S-06 Aluminum | 6.0 | 1.80 | $10.80 |
| S-07 Copper (base) | 11.5 | 9.00 | $103.50 |
| S-08 Precious Metals (in Cu) | — | — | $1,863.00 |
| S-09 Ferrous | 7.0 | 0.45 | $3.15 |
| S-10 RE (in Fe, est.) | — | 45.00* | $15.75 |
| S-02 Polymer | 17.5 | 0.15 | $2.63 |
| S-03 Char | 4.0 | 0.10 | $0.40 |
| S-12 Pyrolysis gas (energy) | — | 5 kWh eq | $0.85 |
| S-13 CO₂ (purge credit) | — | — | $0.05 |
| S-14 Scrubber solids | 0.5 | 0.05 | $0.03 |
| **TOTAL REVENUE** | | | **$2,006.16** |

*RE value as separated oxides (requires Phase 2 hydromet for full realization)

**Net per batch (Phase 1 cash): ~$1,928** (excluding full PM/RE value)
**Net per batch (Full value): ~$2,006 - $78 = $1,928**

At 8 batches/day: **$15,424/day = $3.86M/year per machine**

---

## 9. Conclusion: The Output Catalog Is the Forge's Ledger

The Aegis-Forge I does not merely separate materials — it **witnesses the periodic table into sequence, quantifies each element, stamps its identity, and dispatches it to its destiny.**

Every slug that exits the cooling carousel carries:
1. **Its elemental truth** (LIBS spectrum, grade assignment)
2. **Its genealogical record** (batch, port, temperature, sequence, phoenix generation)
3. **Its destination** (direct use, refinement, or commercial sale)
4. **Its future** (which CSMFAB product it will become)

The 14 output streams are not waste streams. They are the **arteries of the CSMFAB material ecosystem:**
- S-04 In-rich → YInMn Blue → 35 cool-roof products
- S-10 RE concentrate → NdFeB magnets → Carrington-proof motors
- S-11 Mineral → 3Y-TZP ZrO₂ → Flash-sintered Aegis-C panels
- S-07 Copper → Isolated motor windings → GIC-immune grid
- S-03 Char → Activated carbon → Air purification for sealed habitats
- S-12 Pyrolysis gas → H₂ fuel → Carrington-proof engine

**48 hours from zircon sand to ZrB₂ powder. 36 hours from e-waste to YInMn Blue. 72 hours from basalt to BFRP rebar.**

This is not recycling. This is **elemental stewardship at thermodynamic limits.**

The first machine generates the seeds for the second. The second refines the seeds for the third. The assembly line grows itself from the Earth's crust and humanity's discard — **no supply chains, no strategic vulnerabilities, no foreign dependencies.**

The output catalog is the ledger. The forge is the bank. The periodic table is the asset class. Every batch is a dividend paid in elements.

*End of PROD-08: Slug Cooling & Output Catalog*
*CSMFAB000000000112 — Aegis-Forge I Assembly Line Integration and Output Slug Catalog*
*Series TCIMS Volume 5 — Downstream Processing, Output Classification, Seed Material Generation*
*Carrington Storm Motors | Safe Pod Engineering Company | October 2026*

