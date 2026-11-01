# PROD-11: Feed Preparation & Shredding
## CSMFAB000000000108 — Aegis-Forge I Planetary Centrifugal Inductive Material Separation
### Series: TCIMS (Thermal Cascade Inductive Material Separator) | Volume: Feed Preparation & Shredding
**Document Number:** CSMFAB000000000111 (Product Document 11 of 40)
**Prepared by:** Carrington Storm Motors, Safe Pod Engineering Company, Fabrication Division
**Date:** 2026-11-01 | **Classification:** Product Specification — Foundation Technology

---

## 1. Feedstock Categories A-D — Classification and Specifications

The Aegis-Forge I accepts four distinct feedstock categories, each with specific pre-processing requirements and material composition profiles. This categorization is derived from the elemental recovery targets and the thermal cascade's stage-by-stage separation capability.

### 1.1 Category A — Electronics and Printed Circuit Boards

| Subcategory | Typical Items | Key Elements | Mass Fraction | Pre-processing |
|-------------|---------------|--------------|---------------|----------------|
| Consumer Electronics | Smartphones, tablets, laptops | Au (0.03%), Ag (0.15%), Pd (0.01%), Cu (15-25%), Al (5-15%), REE in magnets | 100% | Battery removal (LiFePO₄), screen separation |
| PCBs (FR4) | Motherboards, GPU boards, server blades | Cu (20-30%), Sn/Pb solder (3-5%), Au (0.01-0.05%), Ag, Pd, fiberglass (SiO₂) | 100% | Depaneling, coarse shred <150mm |
| Motors & Drives | HDD spindle, fan motors, actuators | Cu windings (40-60%), Fe stator (30-40%), NdFeB magnets (1-3%), Dy, Tb | 100% | Ferrous pre-separation, magnet extraction |
| Power Electronics | Inverters, PSU, chargers | SiC/GaN dies (trace), Al heatsinks, Cu busbars, ceramic substrates | 100% | Heatsink removal, capacitor discharge |

**Category A Target Recovery:** >95% Cu, >99% Au/Ag/Pd, >90% REE (Nd, Dy, Tb), >95% Al

### 1.2 Category B — Structural Metals and Alloys

| Subcategory | Typical Items | Key Elements | Mass Fraction | Pre-processing |
|-------------|---------------|--------------|---------------|----------------|
| Aluminum Scrap | Wheels, engine blocks, extrusions, siding | Al (90-98%), Si (6-12%), Mg (0.3-1%), Cu (0.1-0.5%) | 100% | Ferrous separation, shred <150mm |
| Copper Scrap | Wire, pipe, tubing, busbar | Cu (99.9%), trace Ag, P | 100% | Insulation stripping (if not pre-stripped) |
| Ferrous Scrap | Rebar, structural steel, plate, castings | Fe (95-99%), C (0.05-0.8%), Mn (0.2-1.5%) | 100% | Magnetic belt separation (pre-drum) |
| Zinc Die-Cast | Housings, carburetors, hardware | Zn (95-99%), Al (3-4%), Cu (0.5-1%) | 100% | Shred <150mm, ferrous removal |
| Mixed Alloys | Brass, bronze, solder, babbitt | Cu (60-90%), Zn (5-40%), Sn (1-10%), Pb (0.5-5%) | 100% | Shred, no further separation needed |

**Category B Target Recovery:** >99% Al, >99.5% Cu, >95% Fe, >95% Zn/Pb/Sn

### 1.3 Category C — Rock, Ore, and Mineral Concentrates

| Subcategory | Typical Items | Key Elements | Mass Fraction | Pre-processing |
|-------------|---------------|--------------|---------------|----------------|
| Basalt Rock | Aggregate, quarry waste, lava rock | SiO₂ (45-55%), Al₂O₃ (12-17%), FeOₓ (9-15%), CaO (8-11%), MgO (6-10%) | 100% | Primary shred <150mm, Stage 0 acoustic |
| Zircon Sand | Beach sand concentrate, heavy mineral sand | ZrSiO₄ (65-95%), TiO₂ (ilmenite/rutile), REE (monazite) | 100% | Minimal — direct feed after Stage 0 |
| Rare Earth Concentrates | Monazite, bastnäsite, xenotime | REE oxides (40-60%), ThO₂ (0-10%), U₃O₈ (trace) | 100% | Sealed feed (radiation), Stage 0 liberation |
| Ilmenite Sand | Heavy mineral sand, tailings | FeTiO₃ (45-55%), TiO₂, FeO | 100% | Magnetic pre-separation optional |
| Borax Ore | Evaporite deposits, playa lakes | Na₂B₄O₇·10H₂O (80-95%), NaCl, KCl | 100% | Crush <150mm, moisture pre-dry |

**Category C Target Recovery:** >95% Zr (as ZrO₂), >90% REE, >90% Ti, >95% B

### 1.4 Category D — Phoenix Protocol Returns (Aegis Product EOL)

| Subcategory | Typical Items | Key Elements | Mass Fraction | Pre-processing |
|-------------|---------------|--------------|---------------|----------------|
| Aegis-C Panels | Retired ceramic armor, building panels | ZrB₂-SiC, aerogel, YInMn Blue glaze | 100% | Stage 0 acoustic liberation critical |
| BFRP Structures | End-of-life rebar, beams, tanks | Basalt fiber, Elium® resin | 100% | Elium® depolymerization at 350°C (pre-stage) |
| MR Fluid | Spent magnetorheological suspension | Iron carbonyl (Fe(CO)₅), carrier oil | 100% | Thermal separation pre-drum |
| Piezo Elements | Retired KNbO₃-BaTiO₃ transducers | K, Nb, Ba, Ti, O | 100% | Direct feed — ceramic survives cascade |

**Category D Target Recovery:** >90% Zr, >95% basalt fiber, >99% Elium® monomer, >99% KNbO₃

---

## 1.5 Feedstock Blending Strategy — Optimizing Batch Composition

The Aegis-Forge I processes 500 kg batches with controlled feedstock blending to optimize thermal cascade efficiency and elemental recovery. The blend ratio is determined by the feedstock assay and the target elemental output.

### 1.5.1 Blend Ratio Optimization

The thermal cascade has fixed stage temperatures but variable dwell times. Feedstock blending adjusts the mass flow through each stage to match the drum's thermal capacity:

| Blend Parameter | Target Range | Control Method |
|-----------------|--------------|----------------|
| **Organic content (Stage 1-2)** | 15-25% of batch mass | Limits polymer melt volume to <50L |
| **Low-temp metals (Stage 4)** | 5-12% of batch mass | Controls Zn/Pb/Sn/In port loading |
| **Aluminum (Stage 5)** | 10-20% of batch mass | Primary revenue driver, max port capacity |
| **Copper/Precious (Stage 6)** | 3-8% of batch mass | High value, thermal mass management |
| **Ferrous/REE (Stage 7)** | 20-35% of batch mass | Largest mass flow, highest power |
| **Mineral residue (Stage 8)** | 25-40% of batch mass | Slag volume, zircon dissociation |

### 1.5.2 Blending Algorithm

The control system (PROD-23) calculates the optimal blend:

```python
def calculate_blend(feedstock_assays, target_revenue):
    # Input: assays for each available feedstock stream
    # Output: mass fractions for 500 kg batch
    
    # Constraints:
    # - Total mass = 500 kg
    # - Stage 2 polymer volume < 50 L (drum capacity)
    # - Stage 5 Al mass < 100 kg (port capacity)
    # - Stage 7 Fe mass < 175 kg (port capacity)
    # - Stage 8 mineral < 200 kg (port capacity)
    # - Moisture < 25% (else pre-dry)
    # - Particle size P80 < 150 mm
    
    # Objective: Maximize revenue = Σ(element_mass × price)
    # Subject to: Thermal cascade capacity constraints
    
    return optimal_mass_fractions
```

### 1.5.3 Real-Time Blend Adjustment

During continuous operation, the blend is adjusted based on:
- **Incoming feedstock assay** (XRF analyzer at feed hopper)
- **Previous batch recovery data** (mass spec feedback)
- **Current drum thermal state** (FBG temperature profile)
- **Market price signals** (commodity prices for Cu, Al, REE, Au)

---

## 1.6 Hazardous Material Handling — Pre-processing Safety

Certain feedstock components require special handling before entering the standard pre-processing flow:

| Hazard | Source | Detection | Mitigation |
|--------|--------|-----------|------------|
| **Li-ion batteries** | Category A electronics | X-ray + density sort | Manual removal, separate LiFePO₄ recovery |
| **Mercury switches** | Category A (old electronics) | XRF Hg detection | Sealed extraction, Hg capture in Stage 1 |
| **PCBs (polychlorinated biphenyls)** | Category A (old transformers) | GC-MS screening | Thermal destruction Stage 3 (700°C) |
| **Asbestos** | Category C (building debris) | PLM microscopy | Wet suppression, sealed feed, Stage 8 capture |
| **Radioactive (NORM)** | Category C (monazite, zircon) | Gamma spectrometer | Shielded feed, Stage 7/8 co-collection |
| **Beryllium** | Category A (aerospace scrap) | XRF Be detection | Segregated feed, Stage 6 capture |

---

## 2. Pre-processing Flow — From Gate to Drum

The feedstock travels through a deterministic pre-processing sequence before entering the ZrB₂-SiC drum. Each step is designed to maximize downstream separation fidelity while maintaining the all-dielectric constraint.

### 2.1 Feed Hopper and Vibratory Feeder

The feed hopper provides buffer storage and controlled feed rate:
- **Capacity:** 5 m³ (≈8 ton basalt, 12 ton metals)
- **Construction:** BFRP/Elium® with PEEK CF40 wear plates
- **Outlet:** 600 mm × 400 mm, adjustable slide gate (Ti₃AlC₂ actuator)
- **Vibratory feeder:** KNbO₃-BaTiO₃ ultrasonic drive, 0-10 ton/hr variable
- **Level sensing:** FBG strain sensors on hopper walls (PMMA POF)

### 2.2 Ferrous Separation Belt — Detailed Operation

The NdFeB Halbach array separator operates continuously:
- **Magnetic circuit:** 24 × N52 blocks (60×60×30mm) in Halbach configuration
- **Field profile:** 1.2T at belt surface, <5 mT at 200 mm above belt
- **Belt construction:** UHMWPE (Dyneema® SK75) carcass, 3-ply, 1200mm wide
- **Self-cleaning:** Belt wraps around 300mm non-magnetic drum (BFRP)
- **Ferrous discharge:** Chute to ferrous slug mold carousel (PROD-08)
- **Efficiency monitoring:** FBG weight sensors on ferrous bin + non-ferrous hopper

---

## 3. BFRP-Blade Shredder Design — Dielectric Comminution

The shredder is the first mechanical process in the Aegis-Forge I and must maintain the zero-metal constraint. No steel blades, no steel housing, no steel bearings.

### 3.1 Shredder Architecture

| Parameter | Specification |
|-----------|---------------|
| **Rotor Diameter** | 800 mm |
| **Rotor Length** | 1200 mm (matches drum length) |
| **Blade Count** | 32 BFRP blades (8 rows × 4 helical) |
| **Blade Material** | Basalt fiber / Elium® unidirectional composite |
| **Blade Cross-Section** | 50 mm × 20 mm × 8 mm (tapered to 4 mm edge) |
| **Liner Material** | PEEK CF40 (replaceable panels, bolted) |
| **Housing** | BFRP/Elium® filament wound, 25 mm wall |
| **Drive** | KNbO₃-BaTiO₃ ultrasonic motor (CSMFAB000000000020) |
| **Speed Range** | 50–300 RPM (variable via piezoelectric drive) |
| **Torque** | 15 kN·m peak (stall) |
| **Throughput** | 5–8 ton/hr (feedstock dependent) |
| **Output Size** | P80 < 150 mm, P50 < 80 mm |

### 3.2 BFRP Blade Engineering (CSMFAB Materials Study Part II)

The blades are manufactured from in-house basalt fiber and Elium® resin — the crown-jewel of CSMFAB domestic production.

**Blade Layup:** [0°/±45°/90°]₂ₛ symmetric, 60% fiber volume fraction
- **0° plies (4):** Primary tensile/compressive load (basalt roving, 4800 tex)
- **±45° plies (4):** Shear and torsional stiffness
- **90° plies (2):** Transverse strength, impact resistance

**Blade Manufacturing Process (VARTM):**
1. **Preform preparation:** Basalt UD tape laid up on aluminum mandrel (reusable)
2. **Mandrel placement:** Mandrel inserted into matched metal mold (BFRP tooling)
3. **Vacuum infusion:** Elium® 150 resin drawn under -0.9 bar vacuum
4. **Cure:** Room temperature 2 hrs + post-cure 80°C 4 hrs
5. **Demold:** Mandrel extraction, blade trimming (waterjet, BFRP nozzle)
6. **Edge preparation:** CNC grind primary bevel, h-BN coating via PVD
7. **QC:** UT scan for voids, 3-point bend test (sample per batch)

**Blade Edge Geometry:**
- **Primary bevel:** 25° included angle, 2 mm land
- **Secondary micro-bevel:** 35°, 0.5 mm (self-sharpening in service)
- **Edge reinforcement:** h-BN nanoparticle coating (50 μm) for wear resistance

**Blade Life Model (CSMFAB Materials Study Part II):**

| Feedstock Category | Blade Life (ton) | Wear Mechanism |
|--------------------|------------------|----------------|
| Category A (Electronics) | 400–500 | Abrasive (SiO₂, Al₂O₃ in PCBs) |
| Category B (Metals) | 600–800 | Adhesive (Al, Cu buildup), fatigue |
| Category C (Rock/Ore) | 200–300 | High abrasion (quartz, basalt) |
| Category D (Phoenix) | 800–1000 | Low abrasion (ceramic, composite) |

**Replacement Protocol:** Blade row (4 blades) replaced as set. Full rotor change: 30 min downtime. PEEK CF40 liner panels: 2000 ton life.

### 3.3 PEEK CF40 Liners (CSMFAB Materials Study Part IV)

The shredder housing interior is lined with replaceable PEEK CF40 panels:
- **Panel dimensions:** 600 mm × 400 mm × 12 mm (12 panels per housing half)
- **Mounting:** 8 × M8 PEEK CF40 bolts per panel, torque 15 Nm
- **Wear indicator:** Integrated h-BN tracer layer at 6 mm depth — visual inspection reveals wear
- **Temperature rating:** 260°C continuous (well above shredder operating temp <80°C)
- **Chemical resistance:** Impervious to oils, solvents, battery electrolytes

### 3.4 Shredder Dynamics and Vibration Analysis

The rotor operates at up to 300 RPM (5 Hz) with significant unbalanced forces:
- **Critical speeds:** 1st bending 420 RPM, 2nd bending 1150 RPM (well above operating range)
- **Balance grade:** G2.5 (ISO 21940) — residual unbalance <5 g·mm per blade row
- **Bearing loads:** Radial 8 kN, Axial 2 kN (thrust from helical blade angle)
- **Vibration monitoring:** 3-axis FBG accelerometers at each bearing (PMMA POF)

---

## 4. Permanent Magnet Ferrous Separation — Pre-Drum Iron Removal

Before shredding, bulk ferrous material is removed by a permanent magnet belt separator. This reduces drum loading and recovers clean ferrous scrap directly.

### 4.1 Separator Design

| Parameter | Specification |
|-----------|---------------|
| **Magnet Type** | NdFeB (N52 grade), 60 mm × 60 mm × 30 mm blocks |
| **Array Configuration** | Halbach array, 24 blocks, 1.2T surface field |
| **Belt Width** | 1200 mm (matches shredder feed width) |
| **Belt Material** | UHMWPE (CSMFAB Materials Study Part II) — dielectric, wear-resistant |
| **Belt Speed** | 0.5–2.0 m/s (VFD controlled) |
| **Gap to Belt** | 50 mm (adjustable via BFRP spacers) |
| **Ferrous Capture Efficiency** | >95% for pieces >20 mm, >80% for 5-20 mm |

### 4.2 Halbach Array Physics

The Halbach array doubles the field on the working side while canceling on the non-working side:

```
Magnet orientation (top view):
→ ↑ ← ↓ → ↑ ← ↓ → ↑ ← ↓ → ↑ ← ↓ →
  1   2   3   4   5   6   7   8   9  ...

Field on belt side: B = B₀ + B₁ = 2×B₀ ≈ 1.2T
Field on non-working side: B ≈ 0
```

**Magnet Mounting:** Each N52 block (60×60×30mm, 0.52 kg) bonded to BFRP backing plate with structural adhesive (Elium®-compatible). Total array mass: 12.5 kg.

### 4.3 UHMWPE Belt Engineering

- **Carcass:** 3-ply Dyneema® SK75, 4 mm total thickness
- **Top cover:** 1 mm UHMWPE (wear surface)
- **Bottom cover:** 0.5 mm UHMWPE (low friction)
- **Splice:** Finger splice (vulcanized equivalent for UHMWPE)
- **Tension:** 15 kN/m operating, 45 kN/m break strength
- **Tracking:** Self-tracking via crowned BFRP drive drum

### 4.2 Operation Sequence

1. **Feedstock spreads** on UHMWPE belt (vibratory feeder ensures monolayer)
2. **Ferrous pieces** attracted to magnet array, held against belt
3. **Non-ferrous material** falls off belt end into shredder hopper
4. **Ferrous pieces** carried past belt end, released as belt curves away from magnet
5. **Clean ferrous stream** drops into collection bin → direct to ferrous slug molds (bypasses drum)

**Economic Impact:** Removes 40-60% of Category B mass before shredding, reducing shredder wear by ~50% and drum thermal load by ~30%.

---

## 5. Particle Size Distribution — Rosin-Rammler Analysis

The shredder output particle size distribution follows the Rosin-Rammler (Weibull) distribution, critical for predicting thermal cascade performance.

### 5.1 Rosin-Rammler Parameters by Feedstock

| Category | x' (characteristic size, mm) | n (spread parameter) | P80 (mm) | P50 (mm) |
|----------|------------------------------|---------------------|----------|----------|
| A (Electronics) | 45 | 1.2 | 120 | 45 |
| B (Metals) | 65 | 1.5 | 140 | 65 |
| C (Rock/Ore) | 85 | 1.0 | 150 | 85 |
| D (Phoenix) | 35 | 1.4 | 100 | 35 |

### 5.2 Sieve Analysis Protocol (Per Batch)

| Sieve Size | Category A | Category B | Category C | Category D |
|------------|------------|------------|------------|------------|
| >150 mm | <1% | <1% | <2% | 0% |
| 75–150 mm | 15% | 25% | 35% | 10% |
| 38–75 mm | 30% | 35% | 30% | 25% |
| 19–38 mm | 25% | 20% | 15% | 30% |
| 9.5–19 mm | 15% | 10% | 10% | 20% |
| <9.5 mm | 14% | 9% | 8% | 15% |

**Acceptance Criteria:** P80 ≤ 150 mm for all categories. Oversize (>150 mm) recirculated to shredder.

### 5.3 Rosin-Rammler Distribution Function

The cumulative passing fraction:
$$P(x) = 1 - \exp\left[-\left(\frac{x}{x'}\right)^n\right]$$

Where $x$ = particle size, $x'$ = characteristic size, $n$ = spread parameter.

**Derivation of x' and n from shredder physics:**
- $x' \propto \frac{\text{blade gap} \times \text{rotor speed}}{\text{material toughness}}$
- $n \approx 1.0–1.5$ for brittle materials (rock, ceramics)
- $n \approx 1.5–2.0$ for ductile materials (metals, polymers)

---

## 6. Moisture Pre-check and Pre-dry — Water Management

Excess moisture in feedstock consumes thermal energy during Stage 1 (80-150°C) and can cause steam explosions in the sealed drum.

### 6.1 Capacitive Moisture Sensor Array

| Parameter | Specification |
|-----------|---------------|
| **Sensor Type** | Fringing-field capacitive, PEEK CF40 housing |
| **Measurement Frequency** | 10 MHz (immune to material conductivity) |
| **Scan Rate** | 10 Hz (continuous during feed) |
| **Calibration** | Per feedstock category (stored in FPGA) |
| **Accuracy** | ±2% absolute moisture content |
| **Output** | 4-20 mA equivalent via PMMA POF to FPGA |

### 6.2 Sensor Calibration Protocol

Calibration curves generated per feedstock category:
1. **Reference samples:** 5 moisture levels (5%, 15%, 25%, 35%, 45%) per category
2. **Gravimetric validation:** Oven dry at 105°C for 24 hrs
3. **Curve fit:** 3rd order polynomial $M = aC^3 + bC^2 + cC + d$
4. **Storage:** Coefficients in FPGA non-volatile memory (radiation-hard)

### 6.2 Pre-dry Chamber (If Moisture >25%)

| Parameter | Specification |
|-----------|---------------|
| **Chamber Volume** | 2 m³ (batch) |
| **Heating** | SiC glow bars (CSMFAB Materials Study Part I), 80°C |
| **Atmosphere** | N₂ purge, 0.2 bar overpressure |
| **Duration** | 15 min (verified by outlet humidity sensor) |
| **Energy** | 0.8 kWh/kg water removed |
| **Water Recovery** | Condensed in heat exchanger → Stage 1 water tank |

**Thermal Penalty Avoided:** 25% moisture = 125 kg water/ton feed = 80 kWh latent heat saved per ton by pre-drying.

### 6.3 SiC Glow Bar Specification (CSMFAB Materials Study Part I)

- **Material:** Reaction-bonded SiC (RB-SiC), 25 mm OD × 500 mm
- **Power:** 2.5 kW per bar, 8 bars per chamber
- **Temperature:** 800°C surface (radiates to 80°C chamber air)
- **Life:** 20,000 hours (oxidation-limited)
- **Control:** PWM power via PMMA POF isolated driver

---

## 7. Shredder Wear and Maintenance — BFRP vs Steel Benchmark

The all-dielectric shredder trades absolute wear life for contamination-free output. Comparison with conventional steel-blade shredders:

| Metric | BFRP-Blade (Aegis) | Steel-Blade (Conventional) |
|--------|-------------------|---------------------------|
| **Blade Life (Category C)** | 200–300 ton | 500–800 ton |
| **Blade Replacement Cost** | $1,200/row (4 blades) | $800/row (4 blades) |
| **Contamination** | Zero metal | Fe, Cr, Ni in output |
| **GIC Immunity** | Complete | None (steel = antenna) |
| **Recyclability** | 100% (Elium® depolymerization) | Scrap only |
| **Blade Change Time** | 30 min (row) | 45 min (row) |

**Total Cost of Ownership (5000 ton/yr, Category C mix):**
- BFRP: $45,000/yr blades + $12,000/yr liners = $57,000/yr
- Steel: $28,000/yr blades + $500,000/yr contamination remediation (hydromet penalties) = $528,000/yr

**The BFRP shredder pays for itself in contamination avoidance alone.**

### 7.1 Blade Wear Monitoring System

Real-time wear tracking via h-BN tracer layer:
- **Principle:** h-BN (white) exposed when CFRP (black) wears through 6 mm
- **Detection:** Optical sensor (PMMA POF) scans blade edges every revolution
- **Alert:** >50% tracer exposure = schedule replacement next shift
- **Data logging:** Wear rate (mm/ton) stored for life prediction

### 7.2 Liner Wear Monitoring

- **PEEK CF40 panels:** Thickness gauge (ultrasonic, PMMA POF) at 4 corners
- **Replacement threshold:** 8 mm remaining (from 12 mm new)
- **Typical life:** 2000 ton (Category C), 4000 ton (Category A/B/D)

---

## 8. Safety Systems — Jam Detection, Fire Suppression, Explosion Venting

### 8.1 Jam Detection

- **Torque monitoring:** Drive motor current sensor (optical, PMMA POF) — >90% rated torque for >5s = jam
- **Vibration monitoring:** FBG accelerometers on housing — >15 mm/s RMS = jam
- **Auto-reverse:** 30s reverse at 50% torque, then forward. 3 cycles max before E-stop.
- **Clearing protocol:** Optical E-stop → hydraulic pusher (PEEK CF40 ram) forces jammed material through.

### 8.2 Hydraulic Jam Clearer

- **Actuator:** PEEK CF40 ram, 100 mm bore × 300 mm stroke, 50 bar
- **Fluid:** PEX-a hydraulic line, biodegradable hydraulic fluid (vegetable-based)
- **Force:** 39 kN at 50 bar (sufficient to clear any jam at 15 kN·m torque)
- **Cycle time:** 10 s extend, 5 s retract
- **Safety:** Mechanical lockout when E-stop engaged

### 8.2 Fire Suppression

- **Detection:** IR flame sensors (InGaAs, PMMA POF) + FBG temperature >150°C
- **Agent:** Novec 1230 (clean agent, zero ODP, zero GWP) — 50 kg stored in BFRP tank
- **Delivery:** 4 nozzles (ZrO₂ ceramic tips) at rotor ends and housing midpoints
- **Activation:** <200 ms from detection, discharge in 10s
- **Post-suppression:** N₂ purge 5 min, then manual inspection required.

### 8.3 Explosion Venting (Battery Thermal Runaway Mitigation)

- **Vent panels:** 4 × BFRP rupture discs (burst pressure 0.5 bar) on housing top
- **Vent area:** 0.5 m² total (NFPA 68 compliant for dust/gas explosion)
- **Ducting:** BFRP duct to gas capture system (PROD-07) — flame arrestor at inlet
- **Suppression:** Novec 1230 pre-discharge if vent activates (pressure rise detection)

---

## 9. Performance Specifications — 10-Parameter Validation Table

| # | Parameter | Specification | Test Method |
|---|-----------|---------------|-------------|
| 1 | Throughput (Category A) | 5 ton/hr ± 10% | Weigh belt, 1 hr run |
| 2 | Throughput (Category B) | 8 ton/hr ± 10% | Weigh belt, 1 hr run |
| 3 | Output P80 Size | ≤150 mm all categories | Sieve analysis (ASTM D4749) |
| 4 | Ferrous Removal Efficiency | >95% (>20 mm), >80% (5-20 mm) | Magnetic separation test |
| 5 | Moisture Detection Accuracy | ±2% absolute | Gravimetric validation |
| 6 | Pre-dry Energy | ≤0.8 kWh/kg water | Calorimetric |
| 7 | BFRP Blade Life | ≥200 ton (Category C) | Wear tracking, h-BN indicator |
| 8 | PEEK CF40 Liner Life | ≥2000 ton | Visual + thickness gauge |
| 9 | Jam Frequency | <1 per 100 ton | Operational log |
| 10 | Fire/Explosion Incidents | 0 per year | Safety log |

---

## 10. Downstream Integration — Drum Feed Gate and Acoustic Pre-chamber Handoff

### 10.1 Drum Feed Gate (PROD-09 Interface)

The shredder discharges directly into the drum feed gate:
- **Gate type:** Ti₃AlC₂ thermal actuator + ZrO₂ ceramic piston (PROD-09)
- **Batch size:** 500 kg (226L drum working volume at 60% fill)
- **Cycle time:** 3 min (gate open → batch in → gate close → Argon purge)
- **Interlock:** Feed gate only opens if drum RPM > 10 and O₂ < 100 ppm

### 10.2 Acoustic Pre-chamber Handoff (PROD-05 Interface)

The acoustic pre-chamber (Stage 0) is physically integrated with the shredder discharge:
- **Material flow:** Shredder → Acoustic pre-chamber (1 min residence) → Drum feed gate
- **Acoustic parameters:** LF 20-200 Hz (KNbO₃-BaTiO₃ transducers) + Ultrasonic 40 kHz
- **Liberation target:** >80% mineral grain boundary fracture for Category C rock
- **Dust capture:** Cyclone separator at pre-chamber exhaust → PROD-07 gas system

---

## Appendix A: Shredder BOM (All-Aegis Materials)

| Item | Qty | Material | CSMFAB Ref | Notes |
|------|-----|----------|------------|-------|
| Rotor Shaft | 1 | Si₃N₄ ceramic | Mat Study I | No steel |
| Rotor Core | 1 | BFRP/Elium® pultruded | CSMFAB000000000010 | 1200mm × 200mm |
| Blades | 32 | Basalt/Elium® UD | Mat Study II | In-house fiber + resin |
| Blade Bolts | 128 | PEEK CF40 M12 | Mat Study IV | 25 Nm torque |
| Housing | 1 | BFRP/Elium® filament wound | CSMFAB000000000011 | 25mm wall |
| Liners | 24 | PEEK CF40 panels | Mat Study IV | 12mm thick, replaceable |
| Drive Motor | 1 | KNbO₃-BaTiO₃ ultrasonic | CSMFAB000000000020 | 15 kN·m |
| Bearing | 2 | Si₃N₄ ceramic roller | CSMMECH000000001 | Hybrid ceramic |
| Seal | 2 | ZrO₂ face + PEEK spring | CSMFAB000000000016 | 2000 RPM, 10 bar |
| Moisture Sensors | 8 | PEEK CF40 capacitive | Mat Study IV | PMMA POF output |
| Fire Sensors | 6 | InGaAs IR + FBG | Mat Study IV | PMMA POF |
| Suppression Tank | 1 | BFRP Novec 1230 | CSMFAB000000000011 | 50 kg agent |
| Vent Panels | 4 | BFRP rupture disc | CSMFAB000000000011 | 0.5 bar burst |
| Control Cabinet | 1 | BFRP | CSMFAB000000000010 | PMMA POF only |

---

## Appendix B: Particle Size Effects on Thermal Cascade

The particle size distribution directly affects Stage 2 (polymer melt) and Stage 3 (pyrolysis) efficiency:

**Stage 2 — Polymer Melt Centrifuge:**
- Polymer pieces >50 mm: Centrifugal force sufficient for wall migration at 12.6 G
- Polymer pieces <10 mm: Risk of entrainment in gas flow, reduced separation
- Optimal range: 10–100 mm (achieved by P80 ≤ 150 mm shred)

**Stage 3 — Pyrolysis:**
- Particle size <20 mm: Heat transfer limited by conduction, pyrolysis completes in 30 min dwell
- Particle size >50 mm: Core may not reach 450°C in 30 min, char yield increases
- Shredder P80 ≤ 150 mm ensures >90% of particles <50 mm after Stage 2 melt migration

**Liberation Index (Category C):**
$$LI = \frac{\text{Free mineral grains}}{\text{Total mineral grains}} \times 100\%$$
- Without Stage 0: LI ≈ 15-25%
- With Stage 0 (acoustic): LI ≈ 65-85%
- Shredder P80 ≤ 150 mm enables Stage 0 efficiency

---

## Appendix C: Economic Analysis

### C.1 Capital Cost (Shredder + Separator + Pre-dry)

| Subsystem | Cost | Notes |
|-----------|------|-------|
| BFRP-Blade Shredder (rotor, housing, 32 blades) | $185,000 | In-house blades, Elium® VARTM |
| KNbO₃-BaTiO₃ Ultrasonic Motor | $45,000 | CSMFAB000000000020 |
| Si₃N₄ Bearings (2) | $12,000 | CSMMECH000000001 |
| PEEK CF40 Liners (24 panels) | $38,000 | Replaceable |
| NdFeB Halbach Separator | $28,000 | 24 blocks N52, UHMWPE belt |
| UHMWPE Belt (1200mm × 10m) | $4,500 | Braided in-house |
| Moisture Sensor Array (8) | $16,000 | Capacitive, PMMA POF |
| Pre-dry Chamber (SiC glow bars) | $22,000 | 2 m³, N₂ purge |
| Fire Suppression (Novec 1230) | $35,000 | 50 kg, 4 nozzles |
| Explosion Venting | $18,000 | 4 rupture discs, ducting |
| Control System (FPGA, PMMA POF) | $25,000 | Shared with PROD-23 |
| **Total PROD-11 CAPEX** | **$428,500** | |

### C.2 Operating Cost (Per Ton Feedstock)

| Category | Blade Wear | Liner Wear | Energy | Maintenance | Total/Ton |
|----------|------------|------------|--------|-------------|-----------|
| A (Electronics) | $3.00 | $0.50 | $8.00 | $2.00 | $13.50 |
| B (Metals) | $2.00 | $0.40 | $6.00 | $1.50 | $9.90 |
| C (Rock/Ore) | $6.00 | $0.80 | $10.00 | $3.00 | $19.80 |
| D (Phoenix) | $1.50 | $0.30 | $5.00 | $1.00 | $7.80 |

### C.3 Revenue Protection (Contamination Avoidance)

| Contaminant | Steel Shredder Penalty | BFRP Shredder | Savings/Ton |
|-------------|------------------------|---------------|-------------|
| Fe in Al slug | 2% → downgraded to casting alloy | 0% | $150/ton Al |
| Cu in Fe slug | 0.5% → REE recovery loss | 0% | $500/ton Fe |
| Cr/Ni in REE concentrate | Hydromet reagent consumption | 0% | $2,000/ton REE |
| **Total Protection Value** | — | — | **>$2,650/ton feedstock** |

---

## Appendix D: Shredder Manufacturing Drawings

### D.1 Rotor Assembly Drawing

```
ROTOR ASSEMBLY — PROD-11-SHD-001
=====================================
SHEET 1 OF 3

SECTION A-A (ROTOR CROSS-SECTION)
=================================
        [Si3N4 SHAFT Ø80mm]
              │
              ▼
    ┌─────────────────────┐
    │ BFRP CORE Ø600mm    │  ← Pultruded tube, 20mm wall
    │ 1200mm LENGTH       │
    └─────────────────────┘
              │
              ▼
    ┌─────────────────────┐
    │ 32 BLADE SLOTS      │  ← 45° helix, 8 rows × 4
    │ M12 PEEK BOLTS      │
    └─────────────────────┘
              │
              ▼
    ┌─────────────────────┐
    │ Si3N4 BEARING JOURNAL│  ← Ø120mm, 80mm wide
    └─────────────────────┘

DIMENSIONS:
- Overall length: 1450mm (including shaft ends)
- Rotor diameter: 800mm (over blades)
- Core diameter: 600mm
- Shaft diameter: 80mm (Si3N4)
- Blade bolt circle: 720mm
- Helix angle: 45° (right-hand)
- Row spacing: 150mm axial

TOLERANCES:
- Shaft runout: <0.01mm (Si3N4 precision grind)
- Blade bolt circle: ±0.05mm
- Helix angle: ±0.5°
- Row position: ±0.25mm
- Dynamic balance: G2.5 @ 300 RPM

MATERIALS:
- Shaft: Si3N4 (CSMFAB Mat Study I), HIP'd
- Core: BFRP/Elium® pultruded tube (CSMFAB000000000010)
- Blades: Basalt/Elium® UD (Mat Study II, in-house)
- Bolts: PEEK CF40 M12 (Mat Study IV)
- Bearings: Si3N4 hybrid ceramic (CSMMECH000000001)
```

### D.2 Blade Detail Drawing

```
BLADE DETAIL — PROD-11-SHD-002
===============================
SHEET 2 OF 3

BLADE PROFILE (UNDEFORMED)
==========================
       50mm
    ┌─────────────────┐
    │  0° PLY (4)     │  ← 4800 tex basalt roving
    │ ±45° PLY (4)    │
    │  90° PLY (2)    │
    └─────────────────┘
       20mm WIDE

EDGE GEOMETRY:
    Primary bevel: 25° included, 2mm land
    Micro-bevel: 35°, 0.5mm
    h-BN coating: 50μm PVD

MOUNTING:
    4 × M12 PEEK CF40 bolts per blade
    Bolt pattern: 2 per end, 100mm spacing
    Torque: 25 Nm (lubricated with PTFE paste)
    Washer: PEEK CF40, 2mm thick

WEAR INDICATOR:
    h-BN tracer layer at 6mm depth
    White layer exposed = replacement due
```

### D.3 Housing and Liner Layout

```
HOUSING ASSEMBLY — PROD-11-SHD-003
===================================
SHEET 3 OF 3

HOUSING DIMENSIONS:
- Internal diameter: 1000mm
- Internal length: 1250mm
- Wall thickness: 25mm (BFRP/Elium® filament wound)
- Flange thickness: 30mm (BFRP)
- Bolt circle: 1150mm, 24 × M16 PEEK CF40

LINER PANELS (24 total):
- 12 per side (upper/lower housing)
- Each: 600mm × 400mm × 12mm PEEK CF40
- Mounting: 8 × M8 PEEK CF40 bolts
- Wear indicator: h-BN at 6mm

SEAL ARRANGEMENT:
- Drive end: ZrO2 face seal + PEEK spring (CSMFAB000000000016)
- Non-drive: ZrO2 face seal + PEEK spring
- Pressure rating: 10 bar, 2000 RPM
```

---

## Appendix E: Commissioning Test Procedures

### E.1 Factory Acceptance Test (FAT)

| Test | Procedure | Pass Criteria |
|------|-----------|---------------|
| 1. Rotor balance | Spin to 300 RPM, measure vibration | <2 mm/s RMS at bearings |
| 2. Blade pull test | Hydraulic pull 2× operating force | No bolt stretch, no delam |
| 3. Liner fit check | Install all 24 panels | Gap <0.5mm, bolt torque 15 Nm |
| 4. Separator field map | Gauss meter scan belt surface | 1.2T ±5% at center, uniform |
| 5. Moisture sensor cal | 5 reference samples per category | ±2% accuracy all points |
| 6. Pre-dry thermal test | 80°C chamber, 100kg wet feed | Outlet humidity <5% in 15 min |
| 7. Fire suppression | Actuate Novec 1230 system | Discharge <10s, full coverage |
| 8. Explosion vent | Pressurize to 0.5 bar | All 4 panels burst simultaneously |
| 9. Jam clear cycle | Insert test jam, trigger clear | Cleared in <30s, no damage |
| 10. E-stop response | Optical E-stop at max load | Rotor stop <2s, motor power off |

### E.2 Site Acceptance Test (SAT)

| Test | Procedure | Pass Criteria |
|------|-----------|---------------|
| 1. Feed hopper integration | Connect to upstream conveyor | No spillage, controlled feed |
| 2. Separator → shredder flow | Run Category B feed 1 hr | >95% ferrous removal |
| 3. Shredder → acoustic handoff | Run Category C feed 1 hr | Dust <5 mg/m³ at handoff |
| 4. Acoustic → drum feed gate | Full batch cycle | Gate cycle <3 min |
| 5. Full system throughput | Mixed feed 4 hr continuous | Meet all throughput specs |
| 6. Wear baseline | Measure all blade edges | h-BN layer intact, baseline set |
| 7. PMMA POF verification | OTDR all fibers | Loss <0.5 dB/km |
| 8. Emergency systems | Full E-stop, fire, vent test | All activate <spec times |

---

## Appendix F: Maintenance Schedule

| Interval | Task | Duration | Parts | Personnel |
|----------|------|----------|-------|-----------|
| **Shift** | Visual inspection (blades, liners, belt) | 10 min | — | Operator |
| **Daily** | h-BN wear scan (optical) | 15 min | — | Operator |
| **Daily** | Moisture sensor zero-check | 5 min | — | Tech |
| **Weekly** | Belt tension check + tracking | 30 min | — | Tech |
| **Weekly** | Bearing temperature trend (FBG) | 10 min | — | Tech |
| **Monthly** | Blade edge measurement (caliper) | 1 hr | — | Tech |
| **Monthly** | Liner thickness gauge (4 corners) | 30 min | — | Tech |
| **Quarterly** | Rotor removal, full inspection | 4 hr | — | 2 Techs |
| **Quarterly** | Separator magnet inspection | 1 hr | — | Tech |
| **Annually** | Blade row replacement (Category C) | 2 hr | 4 blades | 2 Techs |
| **Annually** | Liner panel replacement (if needed) | 3 hr | 24 panels | 2 Techs |
| **2 Years** | Si3N4 bearing replacement | 4 hr | 2 bearings | 2 Techs |
| **5 Years** | Housing re-inspection (UT scan) | 8 hr | — | NDT Tech |
| **10 Years** | Major overhaul (rotor, motor, seals) | 24 hr | Full kit | Team |

---

*End of PROD-11: Feed Preparation & Shredding*
*Total Lines: ~950+ (including appendices)*
*Next: PROD-12 All-Aegis Material BOM Deep-Dive*

The feedstock travels through a deterministic pre-processing sequence before entering the ZrB₂-SiC drum. Each step is designed to maximize downstream separation fidelity while maintaining the all-dielectric constraint.

```
FEED HOPPER (5 m³ capacity)
    │
    ▼
[FERROUS SEPARATION BELT] — Permanent magnet NdFeB, 1.2T surface field
    │   Removes 40-60% bulk ferrous → direct to ferrous slug collection
    │   (bypasses drum for Category B ferrous scrap)
    ▼
[BFRP-BLADE SHREDDER] — 800mm rotor, 32 BFRP blades, PEEK CF40 liners
    │   Reduces all feedstock to <150mm maximum dimension
    │   Throughput: 5 ton/hr (Category A), 8 ton/hr (Category B/C/D)
    ▼
[ACOUSTIC PRE-CHAMBER] — Stage 0: LF (20-200 Hz) + Ultrasonic (40 kHz)
    │   Mineral liberation from rock matrix (Category C)
    │   BFRP/Elium® delamination (Category D)
    │   Duration: 1-5 min depending on feedstock
    ▼
[MOISTURE CHECK] — Capacitive sensor array, 10 Hz scan
    │   If >25% moisture: divert to 80°C pre-dry chamber (15 min)
    │   If ≤25%: direct to drum feed gate
    ▼
[DRUM FEED GATE] — Ti₃AlC₂ actuator, ZrO₂ ceramic piston
    │   Batch loading: 500 kg per cycle (226L drum working volume)
    │   Argon backfill to 0.5 bar, purge O₂ <100 ppm
    ▼
[ZrB₂-SiC DRUM] — Thermal cascade begins at Stage 1 (80°C)
```

---

## 3. BFRP-Blade Shredder Design — Dielectric Comminution

The shredder is the first mechanical process in the Aegis-Forge I and must maintain the zero-metal constraint. No steel blades, no steel housing, no steel bearings.

### 3.1 Shredder Architecture

| Parameter | Specification |
|-----------|---------------|
| **Rotor Diameter** | 800 mm |
| **Rotor Length** | 1200 mm (matches drum length) |
| **Blade Count** | 32 BFRP blades (8 rows × 4 helical) |
| **Blade Material** | Basalt fiber / Elium® unidirectional composite |
| **Blade Cross-Section** | 50 mm × 20 mm × 8 mm (tapered to 4 mm edge) |
| **Liner Material** | PEEK CF40 (replaceable panels, bolted) |
| **Housing** | BFRP/Elium® filament wound, 25 mm wall |
| **Drive** | KNbO₃-BaTiO₃ ultrasonic motor (CSMFAB000000000020) |
| **Speed Range** | 50–300 RPM (variable via piezoelectric drive) |
| **Torque** | 15 kN·m peak (stall) |
| **Throughput** | 5–8 ton/hr (feedstock dependent) |
| **Output Size** | P80 < 150 mm, P50 < 80 mm |

### 3.2 BFRP Blade Engineering (CSMFAB Materials Study Part II)

The blades are manufactured from in-house basalt fiber and Elium® resin — the crown-jewel of CSMFAB domestic production.

**Blade Layup:** [0°/±45°/90°]₂ₛ symmetric, 60% fiber volume fraction
- **0° plies (4):** Primary tensile/compressive load (basalt roving, 4800 tex)
- **±45° plies (4):** Shear and torsional stiffness
- **90° plies (2):** Transverse strength, impact resistance

**Blade Edge Geometry:**
- **Primary bevel:** 25° included angle, 2 mm land
- **Secondary micro-bevel:** 35°, 0.5 mm (self-sharpening in service)
- **Edge reinforcement:** h-BN nanoparticle coating (50 μm) for wear resistance

**Blade Life Model (CSMFAB Materials Study Part II):**

| Feedstock Category | Blade Life (ton) | Wear Mechanism |
|--------------------|------------------|----------------|
| Category A (Electronics) | 400–500 | Abrasive (SiO₂, Al₂O₃ in PCBs) |
| Category B (Metals) | 600–800 | Adhesive (Al, Cu buildup), fatigue |
| Category C (Rock/Ore) | 200–300 | High abrasion (quartz, basalt) |
| Category D (Phoenix) | 800–1000 | Low abrasion (ceramic, composite) |

**Replacement Protocol:** Blade row (4 blades) replaced as set. Full rotor change: 30 min downtime. PEEK CF40 liner panels: 2000 ton life.

### 3.3 PEEK CF40 Liners (CSMFAB Materials Study Part IV)

The shredder housing interior is lined with replaceable PEEK CF40 panels:
- **Panel dimensions:** 600 mm × 400 mm × 12 mm (12 panels per housing half)
- **Mounting:** 8 × M8 PEEK CF40 bolts per panel, torque 15 Nm
- **Wear indicator:** Integrated h-BN tracer layer at 6 mm depth — visual inspection reveals wear
- **Temperature rating:** 260°C continuous (well above shredder operating temp <80°C)
- **Chemical resistance:** Impervious to oils, solvents, battery electrolytes

---

## 4. Permanent Magnet Ferrous Separation — Pre-Drum Iron Removal

Before shredding, bulk ferrous material is removed by a permanent magnet belt separator. This reduces drum loading and recovers clean ferrous scrap directly.

### 4.1 Separator Design

| Parameter | Specification |
|-----------|---------------|
| **Magnet Type** | NdFeB (N52 grade), 60 mm × 60 mm × 30 mm blocks |
| **Array Configuration** | Halbach array, 24 blocks, 1.2T surface field |
| **Belt Width** | 1200 mm (matches shredder feed width) |
| **Belt Material** | UHMWPE (CSMFAB Materials Study Part II) — dielectric, wear-resistant |
| **Belt Speed** | 0.5–2.0 m/s (VFD controlled) |
| **Gap to Belt** | 50 mm (adjustable via BFRP spacers) |
| **Ferrous Capture Efficiency** | >95% for pieces >20 mm, >80% for 5-20 mm |

### 4.2 Operation Sequence

1. **Feedstock spreads** on UHMWPE belt (vibratory feeder ensures monolayer)
2. **Ferrous pieces** attracted to magnet array, held against belt
3. **Non-ferrous material** falls off belt end into shredder hopper
4. **Ferrous pieces** carried past belt end, released as belt curves away from magnet
5. **Clean ferrous stream** drops into collection bin → direct to ferrous slug molds (bypasses drum)

**Economic Impact:** Removes 40-60% of Category B mass before shredding, reducing shredder wear by ~50% and drum thermal load by ~30%.

---

## 5. Particle Size Distribution — Rosin-Rammler Analysis

The shredder output particle size distribution follows the Rosin-Rammler (Weibull) distribution, critical for predicting thermal cascade performance.

### 5.1 Rosin-Rammler Parameters by Feedstock

| Category | x' (characteristic size, mm) | n (spread parameter) | P80 (mm) | P50 (mm) |
|----------|------------------------------|---------------------|----------|----------|
| A (Electronics) | 45 | 1.2 | 120 | 45 |
| B (Metals) | 65 | 1.5 | 140 | 65 |
| C (Rock/Ore) | 85 | 1.0 | 150 | 85 |
| D (Phoenix) | 35 | 1.4 | 100 | 35 |

### 5.2 Sieve Analysis Protocol (Per Batch)

| Sieve Size | Category A | Category B | Category C | Category D |
|------------|------------|------------|------------|------------|
| >150 mm | <1% | <1% | <2% | 0% |
| 75–150 mm | 15% | 25% | 35% | 10% |
| 38–75 mm | 30% | 35% | 30% | 25% |
| 19–38 mm | 25% | 20% | 15% | 30% |
| 9.5–19 mm | 15% | 10% | 10% | 20% |
| <9.5 mm | 14% | 9% | 8% | 15% |

**Acceptance Criteria:** P80 ≤ 150 mm for all categories. Oversize (>150 mm) recirculated to shredder.

---

## 6. Moisture Pre-check and Pre-dry — Water Management

Excess moisture in feedstock consumes thermal energy during Stage 1 (80-150°C) and can cause steam explosions in the sealed drum.

### 6.1 Capacitive Moisture Sensor Array

| Parameter | Specification |
|-----------|---------------|
| **Sensor Type** | Fringing-field capacitive, PEEK CF40 housing |
| **Measurement Frequency** | 10 MHz (immune to material conductivity) |
| **Scan Rate** | 10 Hz (continuous during feed) |
| **Calibration** | Per feedstock category (stored in FPGA) |
| **Accuracy** | ±2% absolute moisture content |
| **Output** | 4-20 mA equivalent via PMMA POF to FPGA |

### 6.2 Pre-dry Chamber (If Moisture >25%)

| Parameter | Specification |
|-----------|---------------|
| **Chamber Volume** | 2 m³ (batch) |
| **Heating** | SiC glow bars (CSMFAB Materials Study Part I), 80°C |
| **Atmosphere** | N₂ purge, 0.2 bar overpressure |
| **Duration** | 15 min (verified by outlet humidity sensor) |
| **Energy** | 0.8 kWh/kg water removed |
| **Water Recovery** | Condensed in heat exchanger → Stage 1 water tank |

**Thermal Penalty Avoided:** 25% moisture = 125 kg water/ton feed = 80 kWh latent heat saved per ton by pre-drying.

---

## 7. Shredder Wear and Maintenance — BFRP vs Steel Benchmark

The all-dielectric shredder trades absolute wear life for contamination-free output. Comparison with conventional steel-blade shredders:

| Metric | BFRP-Blade (Aegis) | Steel-Blade (Conventional) |
|--------|-------------------|---------------------------|
| **Blade Life (Category C)** | 200–300 ton | 500–800 ton |
| **Blade Replacement Cost** | $1,200/row (4 blades) | $800/row (4 blades) |
| **Contamination** | Zero metal | Fe, Cr, Ni in output |
| **GIC Immunity** | Complete | None (steel = antenna) |
| **Recyclability** | 100% (Elium® depolymerization) | Scrap only |
| **Blade Change Time** | 30 min (row) | 45 min (row) |

**Total Cost of Ownership (5000 ton/yr, Category C mix):**
- BFRP: $45,000/yr blades + $12,000/yr liners = $57,000/yr
- Steel: $28,000/yr blades + $500,000/yr contamination remediation (hydromet penalties) = $528,000/yr

**The BFRP shredder pays for itself in contamination avoidance alone.**

---

## 8. Safety Systems — Jam Detection, Fire Suppression, Explosion Venting

### 8.1 Jam Detection

- **Torque monitoring:** Drive motor current sensor (optical, PMMA POF) — >90% rated torque for >5s = jam
- **Vibration monitoring:** FBG accelerometers on housing — >15 mm/s RMS = jam
- **Auto-reverse:** 30s reverse at 50% torque, then forward. 3 cycles max before E-stop.
- **Clearing protocol:** Optical E-stop → hydraulic pusher (PEEK CF40 ram) forces jammed material through.

### 8.2 Fire Suppression

- **Detection:** IR flame sensors (InGaAs, PMMA POF) + FBG temperature >150°C
- **Agent:** Novec 1230 (clean agent, zero ODP, zero GWP) — 50 kg stored in BFRP tank
- **Delivery:** 4 nozzles (ZrO₂ ceramic tips) at rotor ends and housing midpoints
- **Activation:** <200 ms from detection, discharge in 10s
- **Post-suppression:** N₂ purge 5 min, then manual inspection required.

### 8.3 Explosion Venting (Battery Thermal Runaway Mitigation)

- **Vent panels:** 4 × BFRP rupture discs (burst pressure 0.5 bar) on housing top
- **Vent area:** 0.5 m² total (NFPA 68 compliant for dust/gas explosion)
- **Ducting:** BFRP duct to gas capture system (PROD-07) — flame arrestor at inlet
- **Suppression:** Novec 1230 pre-discharge if vent activates (pressure rise detection)

---

## 9. Performance Specifications — 10-Parameter Validation Table

| # | Parameter | Specification | Test Method |
|---|-----------|---------------|-------------|
| 1 | Throughput (Category A) | 5 ton/hr ± 10% | Weigh belt, 1 hr run |
| 2 | Throughput (Category B) | 8 ton/hr ± 10% | Weigh belt, 1 hr run |
| 3 | Output P80 Size | ≤150 mm all categories | Sieve analysis (ASTM D4749) |
| 4 | Ferrous Removal Efficiency | >95% (>20 mm), >80% (5-20 mm) | Magnetic separation test |
| 5 | Moisture Detection Accuracy | ±2% absolute | Gravimetric validation |
| 6 | Pre-dry Energy | ≤0.8 kWh/kg water | Calorimetric |
| 7 | BFRP Blade Life | ≥200 ton (Category C) | Wear tracking, h-BN indicator |
| 8 | PEEK CF40 Liner Life | ≥2000 ton | Visual + thickness gauge |
| 9 | Jam Frequency | <1 per 100 ton | Operational log |
| 10 | Fire/Explosion Incidents | 0 per year | Safety log |

---

## 10. Downstream Integration — Drum Feed Gate and Acoustic Pre-chamber Handoff

### 10.1 Drum Feed Gate (PROD-09 Interface)

The shredder discharges directly into the drum feed gate:
- **Gate type:** Ti₃AlC₂ thermal actuator + ZrO₂ ceramic piston (PROD-09)
- **Batch size:** 500 kg (226L drum working volume at 60% fill)
- **Cycle time:** 3 min (gate open → batch in → gate close → Argon purge)
- **Interlock:** Feed gate only opens if drum RPM > 10 and O₂ < 100 ppm

### 10.2 Acoustic Pre-chamber Handoff (PROD-05 Interface)

The acoustic pre-chamber (Stage 0) is physically integrated with the shredder discharge:
- **Material flow:** Shredder → Acoustic pre-chamber (1 min residence) → Drum feed gate
- **Acoustic parameters:** LF 20-200 Hz (KNbO₃-BaTiO₃ transducers) + Ultrasonic 40 kHz
- **Liberation target:** >80% mineral grain boundary fracture for Category C rock
- **Dust capture:** Cyclone separator at pre-chamber exhaust → PROD-07 gas system

---

## Appendix A: Shredder BOM (All-Aegis Materials)

| Item | Qty | Material | CSMFAB Ref | Notes |
|------|-----|----------|------------|-------|
| Rotor Shaft | 1 | Si₃N₄ ceramic | Mat Study I | No steel |
| Rotor Core | 1 | BFRP/Elium® pultruded | CSMFAB000000000010 | 1200mm × 200mm |
| Blades | 32 | Basalt/Elium® UD | Mat Study II | In-house fiber + resin |
| Blade Bolts | 128 | PEEK CF40 M12 | Mat Study IV | 25 Nm torque |
| Housing | 1 | BFRP/Elium® filament wound | CSMFAB000000000011 | 25mm wall |
| Liners | 24 | PEEK CF40 panels | Mat Study IV | 12mm thick, replaceable |
| Drive Motor | 1 | KNbO₃-BaTiO₃ ultrasonic | CSMFAB000000000020 | 15 kN·m |
| Bearing | 2 | Si₃N₄ ceramic roller | CSMMECH000000001 | Hybrid ceramic |
| Seal | 2 | ZrO₂ face + PEEK spring | CSMFAB000000000016 | 2000 RPM, 10 bar |
| Moisture Sensors | 8 | PEEK CF40 capacitive | Mat Study IV | PMMA POF output |
| Fire Sensors | 6 | InGaAs IR + FBG | Mat Study IV | PMMA POF |
| Suppression Tank | 1 | BFRP Novec 1230 | CSMFAB000000000011 | 50 kg agent |
| Vent Panels | 4 | BFRP rupture disc | CSMFAB000000000011 | 0.5 bar burst |
| Control Cabinet | 1 | BFRP | CSMFAB000000000010 | PMMA POF only |

---

## Appendix B: Particle Size Effects on Thermal Cascade

The particle size distribution directly affects Stage 2 (polymer melt) and Stage 3 (pyrolysis) efficiency:

**Stage 2 — Polymer Melt Centrifuge:**
- Polymer pieces >50 mm: Centrifugal force sufficient for wall migration at 12.6 G
- Polymer pieces <10 mm: Risk of entrainment in gas flow, reduced separation
- Optimal range: 10–100 mm (achieved by P80 ≤ 150 mm shred)

**Stage 3 — Pyrolysis:**
- Particle size <20 mm: Heat transfer limited by conduction, pyrolysis completes in 30 min dwell
- Particle size >50 mm: Core may not reach 450°C in 30 min, char yield increases
- Shredder P80 ≤ 150 mm ensures >90% of particles <50 mm after Stage 2 melt migration

**Liberation Index (Category C):**
$$LI = \frac{\text{Free mineral grains}}{\text{Total mineral grains}} \times 100\%$$
- Without Stage 0: LI ≈ 15-25%
- With Stage 0 (acoustic): LI ≈ 65-85%
- Shredder P80 ≤ 150 mm enables Stage 0 efficiency

---

## Appendix C: Economic Analysis

### C.1 Capital Cost (Shredder + Separator + Pre-dry)

| Subsystem | Cost | Notes |
|-----------|------|-------|
| BFRP-Blade Shredder (rotor, housing, 32 blades) | $185,000 | In-house blades, Elium® VARTM |
| KNbO₃-BaTiO₃ Ultrasonic Motor | $45,000 | CSMFAB000000000020 |
| Si₃N₄ Bearings (2) | $12,000 | CSMMECH000000001 |
| PEEK CF40 Liners (24 panels) | $38,000 | Replaceable |
| NdFeB Halbach Separator | $28,000 | 24 blocks N52, UHMWPE belt |
| UHMWPE Belt (1200mm × 10m) | $4,500 | Braided in-house |
| Moisture Sensor Array (8) | $16,000 | Capacitive, PMMA POF |
| Pre-dry Chamber (SiC glow bars) | $22,000 | 2 m³, N₂ purge |
| Fire Suppression (Novec 1230) | $35,000 | 50 kg, 4 nozzles |
| Explosion Venting | $18,000 | 4 rupture discs, ducting |
| Control System (FPGA, PMMA POF) | $25,000 | Shared with PROD-23 |
| **Total PROD-11 CAPEX** | **$428,500** | |

### C.2 Operating Cost (Per Ton Feedstock)

| Category | Blade Wear | Liner Wear | Energy | Maintenance | Total/Ton |
|----------|------------|------------|--------|-------------|-----------|
| A (Electronics) | $3.00 | $0.50 | $8.00 | $2.00 | $13.50 |
| B (Metals) | $2.00 | $0.40 | $6.00 | $1.50 | $9.90 |
| C (Rock/Ore) | $6.00 | $0.80 | $10.00 | $3.00 | $19.80 |
| D (Phoenix) | $1.50 | $0.30 | $5.00 | $1.00 | $7.80 |

### C.3 Revenue Protection (Contamination Avoidance)

| Contaminant | Steel Shredder Penalty | BFRP Shredder | Savings/Ton |
|-------------|------------------------|---------------|-------------|
| Fe in Al slug | 2% → downgraded to casting alloy | 0% | $150/ton Al |
| Cu in Fe slug | 0.5% → REE recovery loss | 0% | $500/ton Fe |
| Cr/Ni in REE concentrate | Hydromet reagent consumption | 0% | $2,000/ton REE |
| **Total Protection Value** | — | — | **>$2,650/ton feedstock** |

---

*End of PROD-11: Feed Preparation & Shredding*
*Total Lines: ~950+ (including appendices)*
*Next: PROD-12 All-Aegis Material BOM Deep-Dive*