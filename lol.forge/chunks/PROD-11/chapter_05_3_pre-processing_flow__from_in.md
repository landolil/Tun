## 3. Pre-processing Flow — From Infeed to Drum Gate

The feed preparation system operates as a continuous-flow pre-processor ahead of the batch-mode thermal cascade. Material moves through four sequential stations, each designed to remove a specific contaminant class or condition the feed for optimal cascade performance.

### 3.1 Flow Architecture

```
FEED PREPARATION FLOW DIAGRAM

[RAW INFEED HOPPER] (2 m³ live capacity, vibratory feeder)
        |
        v
[STATION 1: FERROUS SEPARATION BELT]
|  NdFeB permanent magnet drum, 1.2T surface field
|  Belt speed: 0.5 m/s, width: 800 mm
|  Ferrous fraction diverted → [FERROUS SLUG COLLECTION] (direct to Stage 7 feed)
|  Non-ferrous fraction → 
        |
        v
[STATION 2: BFRP-BLADE SHREDDER]
|  800 mm rotor, 32 BFRP blades, PEEK CF40 liners
|  Output: <150 mm, Rosin-Rammler n=1.2-1.5
|  Dust extraction: BFRP cyclone + HEPA (PM2.5 capture)
        |
        v
[STATION 3: ACOUSTIC PRE-CHAMBER (Stage 0 Pre-liberation)]
|  KNbO3-BaTiO3 transducer array: LF 20-200 Hz + US 40 kHz
|  Residence: 60 sec ambient, N2 atmosphere
|  Liberates mineral grains, delaminates PCBs, fractures organics
        |
        v
[STATION 4: MOISTURE GATE & PRE-DRY]
|  Capacitive moisture sensor (RF dielectric measurement)
|  Threshold: >25% moisture → divert to 80°C pre-dry chamber (15 min)
|  <25% moisture → direct to drum feed gate
        |
        v
[DRUM FEED GATE] → [ZrB2-SiC DRUM ENTRY PORT] (PEEK CF40 seal, ZrO2 ceramic)
```

### 3.2 Station 1: Ferrous Pre-separation — The Critical First Cut

**Why first?** Ferrous metal (steel, iron) is the highest-mass contaminant in Categories A and B. At 40-70% of structural scrap mass, ferrous material would:
- Overload the shredder (steel work-hardens, destroys BFRP blades)
- Dilute the thermal cascade (Fe melts at 1538°C — Stage 7, but enters at Stage 1)
- Contaminate non-ferrous slugs (Fe particles in Al/Cu slugs ruin purity)
- Create GIC coupling paths if steel fragments reach drum

**Solution: Permanent magnet belt separator — no electromagnets, no power, no copper windings.**

| Parameter | Specification | Rationale |
|-----------|---------------|-----------|
| Magnet material | NdFeB N52 (sintered, Ni-Cu-Ni coated) | 1.2T surface field, max energy product |
| Belt width | 800 mm | Matches shredder infeed width |
| Belt speed | 0.5 m/s (adjustable 0.3-0.8 m/s) | Optimal dwell for 50-150 mm particles |
| Drum diameter | 300 mm | High gradient at surface |
| Pole configuration | 16-pole alternating N-S | Maximum field gradient for capture |
| Ferrous capture efficiency | 95%+ for particles >10 mm | Verified by mass balance |
| Non-ferrous carryover | <2% mass | Acceptable for downstream separation |
| Maintenance | Zero (permanent magnet) | No coils, no power, no cooling |

**Ferrous output routing:** Captured ferrous fraction bypasses shredder entirely. It travels via BFRP chute directly to the **Stage 7 feed buffer** (ferrous cascade stage, 1200-1600°C). This is a dedicated feed path — ferrous material never enters the shredder, never contaminates the acoustic chamber, and never dilutes the non-ferrous thermal cascade.

### 3.3 Station 2: BFRP-Blade Shredder — Dielectric Size Reduction

**Core principle:** A shredder that shreds everything *except itself*.

The 800 mm diameter rotor carries 32 BFRP (Basalt Fiber Reinforced Polymer, Elium® matrix) blades arranged in a staggered helical pattern. The chamber is lined with 12 mm PEEK CF40 wear plates. The rotor shaft runs on Si3N4 ceramic hybrid bearings. The drive is a KNbO3-BaTiO3 ultrasonic piezoelectric motor (same as drum drive) — zero electromagnetic components in the shredder housing.

| Parameter | Specification |
|-----------|---------------|
| Rotor diameter | 800 mm |
| Rotor length | 600 mm (matches drum working length) |
| Blade count | 32 (8 rows × 4 helical positions) |
| Blade material | BFRP (Basalt/Elium®), 60% FVF, 4 mm thick |
| Blade profile | Hooked leading edge, 15° relief angle |
| Chamber liner | PEEK CF40, 12 mm replaceable segments |
| Bearing type | Si3N4 ceramic hybrid (ceramic balls, PEEK cage) |
| Drive motor | KNbO3-BaTiO3 ultrasonic piezoelectric, 15 kW |
| Rotor speed | 120 RPM (2 Hz) — low speed, high torque |
| Torque | 12,000 Nm peak |
| Throughput | 500 kg/hr (mixed feed) |
| Output size | <150 mm (95% passing), P80 = 75 mm |
| Specific energy | 0.8-1.5 kWh/ton (material dependent) |

**Blade geometry and cutting mechanics:**

The BFRP blades are not sharpened like steel knives — they rely on **impact fracture** and **progressive delamination** of the composite against the feed material. The hooked leading edge initiates cracks in brittle materials (glass, ceramic, PCB laminate) and peels ductile materials (Al, Cu, plastic) through cyclic bending.

```
BLADE CROSS-SECTION (BFRP composite layup):

    [BFRP SKIN: 2mm 0°/90° woven basalt/Elium®]
    |
    |  <-- Neutral axis at mid-thickness
    |
    [BFRP CORE: 4mm unidirectional basalt roving, 0° orientation]
    |
    |  <-- Maximum tensile stress at outer fiber during impact
    |
    [BFRP SKIN: 2mm 0°/90° woven basalt/Elium®]

Total thickness: 8 mm (4 mm structural core + 2×2 mm skins)
FVF (Fiber Volume Fraction): 60%
Interlaminar shear strength: 65 MPa (Elium® matrix)
Mode I fracture toughness: 35 kJ/m²
```

**Why this works:** Basalt fiber has tensile strength of 3,000-4,840 MPa — comparable to S-glass but with 700°C continuous service temperature. The Elium® thermoplastic matrix allows the blade to absorb impact energy through controlled delamination rather than catastrophic fracture. When a blade segment fails, it delaminates progressively; the rotor continues operating with reduced cutting efficiency until scheduled replacement.

### 3.4 Station 3: Acoustic Pre-Chamber — Stage 0 Pre-liberation

**Purpose:** Before thermal processing, apply acoustic energy to liberate mineral grains from rock matrix, delaminate PCB layers, and fracture organic binders — all at ambient temperature.

The acoustic pre-chamber is a BFRP-lined cylinder (800 mm ID × 1000 mm length) with 48 KNbO3-BaTiO3 transducers embedded in the wall: 24 LF (20-200 Hz) for macro-fracture and 24 ultrasonic (40 kHz) for grain-boundary liberation.

| Parameter | Specification |
|-----------|---------------|
| Chamber volume | 0.5 m³ |
| Transducer count | 48 (24 LF + 24 US) |
| LF frequency range | 20-200 Hz (swept sine, resonance tracking) |
| US frequency | 40 kHz (cavitation in interstitial moisture) |
| Acoustic pressure | 140-160 dB SPL (LF), 180 dB SPL (US) |
| Residence time | 60 seconds |
| Atmosphere | Nitrogen (inert, prevents oxidation) |
| Throughput | 500 kg/hr (continuous flow) |

**Liberation mechanisms:**

1. **LF Stress Waves (20-200 Hz):** Wavelength λ = c/f ≈ 1.7-17 m in rock — whole-particle resonance. Induces tensile stress at material interfaces (mineral grain boundaries, PCB laminate layers). Stress wave equation:
   
   $$σ_{acoustic} = ρ c ω u_{max}$$
   
   For basalt (ρ=2800 kg/m³, c=5500 m/s) at 100 Hz, 1 mm displacement: σ ≈ 9.7 MPa — exceeds tensile strength of weathered rock interfaces.

2. **Ultrasonic Cavitation (40 kHz):** In residual moisture films at grain boundaries, 40 kHz creates transient cavitation bubbles. Collapse pressure:
   
   $$P_{collapse} ≈ 0.1 \frac{ρ c^2}{γ} ≈ 500 \text{ MPa}$$
   
   This micro-jetting fractures grain boundaries without bulk heating.

3. **PCB Delamination:** LF resonance matches FR4 panel modes (50-150 Hz). Cyclic bending fatigues the glass-epoxy/copper interface. Copper foil peels from substrate — liberates Cu for Stage 6, fiberglass for Stage 8 slag.

**Output:** Pre-liberated feed with 30-50% reduction in bonded composite particles. Downstream Stage 0 (in-drum acoustic) then completes liberation at temperature.

### 3.5 Station 4: Moisture Gate & Pre-dry

**Why moisture matters:** Water entering the drum at Stage 1 (80-150°C) flashes to steam, consuming 2257 kJ/kg latent heat. At 500 kg/hr feed with 10% moisture = 50 kg/hr water = 31 kW parasitic load on Zone 1-2 inverters. At >25% moisture = 125 kg/hr water = 78 kW — exceeds Zone 1-2 capacity (50 kW each).

**Solution: In-line capacitive moisture measurement with automated pre-dry diversion.**

| Parameter | Specification |
|-----------|---------------|
| Sensor type | Parallel-plate capacitive, fringing field |
| Measurement frequency | 100 MHz (RF dielectric spectroscopy) |
| Penetration depth | 50 mm (measures bulk, not surface) |
| Response time | <1 second |
| Accuracy | ±1% absolute moisture content |
| Threshold | 25% moisture (wet basis) |
| Pre-dry chamber | 80°C, forced N2 convection, 15 min residence |
| Pre-dry capacity | 200 kg/hr (handles peak moisture surges) |
| Energy consumption | 1.2 kWh/kg water removed |

**Control logic:**
```
IF moisture > 25%:
    DIVERT to pre-dry chamber
    HOLD until moisture < 15% (verified by exit sensor)
    RELEASE to drum feed gate
ELSE:
    DIRECT to drum feed gate
```

The pre-dry chamber uses the same 80°C IR drying physics as Stage 1 but at atmospheric pressure and larger particle size — lower energy intensity, higher throughput.

---
