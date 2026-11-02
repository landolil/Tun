# PROD-14: Stage 0-1: Acoustic & Drying (Liberation Physics, IR Drying)
## CSMFAB000000000109 — Aegis-Forge I Planetary Centrifugal Inductive Material Separation
### Series: TCIMS (Thermal Cascade Inductive Material Separator) | Volume: Stage 0 Acoustic Liberation & Stage 1 Infrared Drying
**Document Number:** CSMFAB000000000114 (Product Document 14 of 40)
**Prepared by:** Carrington Storm Motors, Safe Pod Engineering Company, Fabrication Division
**Date:** 2026-11-01 | **Classification:** Product Specification — Foundation Technology

---

## 1. Document Header & Scope

### 1.1 Document Identification

| Field | Value |
|-------|-------|
| **Document Number** | CSMFAB000000000114 |
| **Series** | Aegis-Forge Thermal Cascade Inductive Material Separator (TCIMS) |
| **Volume** | Stage 0 Acoustic Liberation & Stage 1 Infrared Drying |
| **Product Document** | 14 of 40 |
| **Prepared By** | Carrington Storm Motors, Safe Pod Engineering Company, Fabrication Division |
| **Date** | 2026-11-01 |
| **Classification** | Product Specification — Foundation Technology |
| **Applicability** | Aegis-Forge I (CSMFAB0108) all serial numbers |
| **Revision** | 1.0 (Initial Release) |
| **Supersedes** | Vol 2 Section 1.2 (Stage 0), Section 2 (Stage 1) |

### 1.2 Scope and Purpose

This document defines the complete engineering specification for the first two thermal cascade stages of the Aegis-Forge I:

- **Stage 0: Acoustic Pre-Liberation (Ambient)** — Mechanical grain boundary liberation using low-frequency resonant vibration (20-200 Hz) and ultrasonic cavitation (40 kHz) in a water-coupled pre-chamber. No thermal input. Duration: 15-30 minutes.
- **Stage 1: Infrared Drying (80-150°C)** — Moisture removal via SiC glow bar IR irradiation at 3.6 µm wavelength, with concurrent volatile organics management. Drum rotation: 5-10 RPM. N₂ atmosphere at 1.2 bar. Duration: 20 minutes.

This document establishes:
1. **Liberation physics** — Grain boundary fracture mechanics, stress wave propagation, cavitation microjet dynamics
2. **Acoustic chamber design** — BFRP housing, waveguide geometry, standing wave control
3. **Transducer arrays** — 8× LF bending plates + 8× US Langevin probes, KNbO₃-BaTiO₃ piezoelectrics
4. **Liberation Index metric** — % target mineral liberated vs. locked, size distribution shift
5. **IR drying specifications** — SiC glow bars, wavelength, power density, zoning, reflectors
6. **Moisture measurement** — FBG humidity sensors, NIR inline, mass loss verification
7. **Throughput & residence time** — 226L batch, 30 min acoustic + 60 min drying = 90 min total
7. **Energy balance** — kWh/ton, acoustic efficiency, IR efficiency, heat recovery
8. **Wear & maintenance** — Transducer life, IR emitter replacement, chamber cleaning
9. **Cross-reference matrix** — Links to PROD-05, PROD-11, PROD-12, PROD-15, FOLLOW-03, FOLLOW-17

### 1.3 Referenced Documents

| Document | Title | Relationship |
|----------|-------|--------------|
| CSMFAB000000000109 (Vol 2) | Thermal Cascade Process Engineering | Stage 0-1 parameters, temperature, duration |
| CSMFAB000000000110 (Vol 3) | Acoustic Mineral Liberation Subsystem | Transducer design, cavitation physics, liberation index |
| PROD-01 | System Overview & Architecture | Machine architecture, 8-stage cascade |
| PROD-02 | Thermal Cascade Process Engineering | Stage parameters, dwell times, gas management |
| PROD-05 | Acoustic Mineral Liberation Subsystem | Detailed AMLS design, transducer arrays, control |
| PROD-11 | Feed Preparation & Shredding | Pre-processing flow, shredder output feed to AMLS |
| PROD-12 | All-Aegis Material BOM Deep-Dive | KNbO₃-BaTiO₃ specs, BFRP, ZrO₂, PEEK CF40, PEX-a |
| PROD-13 | Feedstock Specifications | Category definitions, pre-processing requirements |
| PROD-15 | Stage 2: Polymer Flow & Separation | Downstream melt centrifuge requirements |
| FOLLOW-03 | Acoustic Transducer Array | KNbO₃-BaTiO₃ design optimization |
| FOLLOW-17 | Polymer Melt Rheology | Downstream Stage 2 rheology requirements |

### 1.4 Definitions and Abbreviations

| Abbreviation | Definition |
|--------------|------------|
| **AMLS** | Acoustic Mineral Liberation Subsystem |
| **LF** | Low-Frequency (20-200 Hz for rock matrix) |
| **US** | Ultrasonic (40 kHz for fine grain liberation) |
| **LI** | Liberation Index (% target mineral liberated vs. locked) |
| **PSD** | Particle Size Distribution |
| **FBG** | Fiber Bragg Grating (optical sensors) |
| **POF** | Polymer Optical Fiber (PMMA) |
| **SiC** | Silicon Carbide |
| **IR** | Infrared (electromagnetic radiation 3-1000 µm) |
| **NIR** | Near-Infrared (0.75-1.4 µm) |
| **PID** | Proportional-Integral-Derivative control |
| **DSP** | Digital Signal Processor |

---

## 2. Stage 0: Acoustic Mineral Liberation

### 2.1 Liberation Physics — The Fundamental Mechanism

#### 2.1.1 Grain Boundary Fatigue

The AMLS exploits the inherent weakness of mineral grain boundaries in rock matrices. Unlike crushing (compressive overload → transgranular fracture + fines), acoustic liberation applies **cyclic tensile stress** at the grain's matrix-constrained resonant frequency, inducing **progressive fatigue failure** at grain boundaries.

**Grain boundary fracture toughness:**
$$K_{IC}^{gb} \approx 1.5 \text{ MPa·m}^{0.5}$$
(Compared to transgranular $K_{IC} \approx 3.5 \text{ MPa·m}^{0.5}$ for zircon)

**Stress wave equation in heterogeneous media:**
$$\nabla^2 \mathbf{u} = \frac{1}{c^2} \frac{\partial^2 \mathbf{u}}{\partial t^2}$$
Where $\mathbf{u}$ is the displacement vector, $c$ is the phase velocity in the composite matrix.

**Acoustic stress at grain boundary:**
$$\sigma_{acoustic} = \rho c \omega A$$
Where $\rho$ = density (4650 kg/m³ for zircon), $c$ = wave speed, $\omega$ = angular frequency, $A$ = displacement amplitude.

At AMLS operating parameters:
- **LF (100 Hz, $A \approx 50 \mu m$):** $\sigma_{LF} \approx 2.9 \text{ MPa}$ — below single-cycle fracture, accumulates over $10^3-10^6$ cycles
- **US (40 kHz, $A \approx 5 \mu m$):** $\sigma_{US} \approx 1.2 \text{ MPa}$ at grain boundary, enhanced by cavitation microjets to local 100+ MPa

#### 2.1.2 Matrix-Constrained Resonance

The effective resonant frequency of a mineral grain embedded in a rock matrix drops from MHz (free grain) to the seismic range (10-500 Hz):

**Free grain resonance (isolated):**
$$f_{free} = \frac{1}{2L}\sqrt{\frac{E}{\rho}}$$

**Matrix-constrained resonance (seismic range):**
$$f_{eff} \approx f_{free} \times \sqrt{\frac{K_{gb}}{K_{matrix}}} \times \left(\frac{V_{grain}}{V_{matrix}}\right)^{1/3}$$

For zircon ($E=220$ GPa, $\rho=4650$ kg/m³, $L=0.5$ mm): $f_{free} \approx 1.7$ MHz
In silica matrix: $f_{eff} \approx 50-200$ Hz — matching earthquake disaggregation frequencies.

This matrix-constrained resonance is the **acoustic lock** that the AMLS key (frequency sweep) must turn.

#### 2.1.3 Cavitation-Induced Liberation

Ultrasonic frequencies (40 kHz) produce cavitation in water:
- Water molecules cannot follow rapid negative pressure excursions → vacuum microbubbles form
- Microbubble collapse (implosion in <1 µs): Local pressure 10²-10³ bar, temperature 5000-10000°C, microjet velocity 100-300 m/s
- This **localized shock** concentrates at grain boundary interfaces — the weakest points in rock

**Rayleigh-Plesset equation for bubble dynamics:**
$$R\ddot{R} + \frac{3}{2}\dot{R}^2 = \frac{1}{\rho}\left(P_g - P_\infty - P_{ac}(t) - \frac{2\sigma}{R} - \frac{4\mu\dot{R}}{R}\right)$$

At collapse ($R_{min}/R_0 \approx 0.01$):
- Local pressure: $P_{collapse} \sim 1$ GPa (theoretical), ~1000 bar (measured)
- Strain rate: $\dot{\epsilon} \sim 10^9$ s⁻¹

**Cavitation threshold intensity:**
$$I_{cav} = \frac{P_{cav}^2}{2\rho c} \approx 1-3 \text{ W/cm}^2$$
AMLS operating intensity: 25 W/cm² at probe face — **well above threshold**.

#### 2.1.4 Fatigue Accumulation Model

Grain boundary failure follows Miner's rule for cumulative fatigue damage:
$$D = \sum_{i} \frac{n_i}{N_i}$$
Where $n_i$ = cycles at stress level $\sigma_i$, $N_i$ = cycles to failure at $\sigma_i$.

For sinusoidal loading at $\sigma_a = 2.9$ MPa (LF array):
$$N_f \approx 10^6 \text{ cycles} \quad \text{at} \quad \sigma_a / \sigma_{UTS}^{gb} \approx 0.15$$
With 100 Hz sweep over 15 min (900 s): $n = 90,000$ cycles per frequency step.
30-second dwell at 20 frequencies: $D \approx 0.9$ — near complete boundary failure.

---

### 2.2 Acoustic Chamber Design

#### 2.2.1 Pre-Chamber Geometry

```
AMLS PRE-CHAMBER — CUTAWAY VIEW

    [KNbO₃-BaTiO₃ LF PLATE ×8] ← Radial mount on BFRP wall
           │
           │   600 mm ID × 400 mm length
           ▼
    ┌─────────────────────┐
    │  BFRP/Elium® BODY   │ ← Filament wound, 25 mm wall
    │  ┌───────────────┐  │
    │  │ WATER + FEED  │  │ ← 20L water + 30-50 kg charge
    │  │  [US PROBES]  │  │ ← 8× 40 kHz Langevin probes
    │  └───────────────┘  │
    └─────────────────────┘
           │
           ▼
    [FBG SENSOR ARRAY] ← Embedded in wall, 8 channels
           │
           ▼
    [DRAIN / OUTPUT] → TO DRUM ENTRY VIBRATORY FEEDER
```

**Chamber specifications:**

| Parameter | Specification |
|-----------|---------------|
| **Internal Diameter** | 600 mm |
| **Internal Length** | 400 mm |
| **Internal Volume** | ~113 L (working: 20L water + 30-50 kg feed) |
| **Wall Construction** | BFRP/Elium® filament wound, 25 mm wall, [±18°/90°]₃ layup |
| **Atmosphere** | N₂ at 1.2 bar (prevents air cavitation, oxidation) |
| **Water Volume** | 10-15 L (coupling fluid, reclaimed post-Stage 0) |
| **Feed Entry** | Top port, 200 mm BFRP/PEEK gate valve (Ti₃AlC₂ actuator) |
| **Discharge** | Bottom port to vibratory feeder (KNbO₃ ultrasonic drive) |
| **Pressure Rating** | 5 bar (hydrostatic test 7.5 bar N₂) |

#### 2.2.2 Standing Wave Control

**BFRP chamber natural frequencies:**
$$f_{chamber,n} = \frac{n c_{air}}{2L} \quad \text{(axial modes, } c_{air} \approx 343 \text{ m/s)}$$
$$f_{chamber,m} = \frac{\alpha_{mn} c_{air}}{2\pi R} \quad \text{(radial modes)}$$
For 600 mm diameter × 400 mm length:
- Fundamental axial: $f_1 \approx 425$ Hz
- Fundamental radial: $f_{01} \approx 185$ Hz

**Standing wave mitigation:**
1. **Asymmetric transducer mounting** — 8 LF plates at irregular angular positions (not 45° regular)
2. **Chamber wall damping** — BFRP viscoelastic loss factor η = 0.02-0.03 dissipates standing waves
3. **Water coupling** — Water fill (10-15L) disrupts air-mode standing waves
4. **Bidirectional sweep** — 20→500→20 Hz captures resonances from both directions

#### 2.2.3 Waveguide Geometry for Ultrasonic Probes

The 8 Langevin probes are arranged in a **star pattern** at 45° spacing, tips directed inward at 30° angle from horizontal:

```
TOP VIEW — US PROBE LAYOUT

        [PROBE 1] ↙
              ↙
    [PROBE 8] ←───→ [PROBE 2]
    ↖                    ↘
      ↖                ↘
         ↖            ↘
            [CENTER]  ← Cavitation cloud overlap zone
           ↗            ↙
       ↗                ↙
    [PROBE 7] →──────← [PROBE 3]
          ↗        ↖
      ↗            ↖
    [PROBE 6]      [PROBE 4]
          ↘      ↙
            [PROBE 5]
```

- **Cavitation cloud radius:** ~40 mm from each probe tip
- **Overlap coverage:** >95% of 20L chamber volume
- **Probe tip material:** ZrO₂ 3Y-TZP ceramic (cavitation erosion resistance)
- **Probe immersion depth:** 150 mm below water surface

---

### 2.3 Transducer Arrays

#### 2.3.1 Low-Frequency Array (20-500 Hz)

**8× KNbO₃-BaTiO₃ Bending Plate Transducers**

| Parameter | Specification |
|-----------|---------------|
| **Piezo Material** | KNbO₃-BaTiO₃ (x=0.5 solid solution) |
| **Geometry** | Bimorph bending plate, 300 mm diameter × 6 mm total |
| **Active Layers** | 2 × 3 mm KNbO₃-BaTiO₃ discs, opposite polarity |
| **Substrate** | BFRP/Elium® plate, 2 mm, CTE-matched |
| **Electrode Pattern** | Interdigitated for multi-mode (n=0,1,2) excitation |
| **Mounting** | Radial on chamber wall, BFRP flexural hinges (no metal) |
| **Drive Voltage** | 400 V peak (optical-isolated KNbO₃ ASIC driver) |
| **Power per Unit** | 1 kW acoustic output |
| **Total LF Power** | 8 kW |
| **Frequency Range** | 20-500 Hz (logarithmic sweep, 20 Hz increments) |
| **Dwell per Step** | 30 s standard, +60 s at FBG-identified resonances |

**Displacement at 1 kW (100 Hz):**
$$\delta_{tip} = \frac{d_{31} V L^2}{2 t_p t_s} \approx 50 \mu m$$
Where $L=150$ mm (effective half-length), $t_p=3$ mm (piezo), $t_s=2$ mm (substrate).

**Material Properties (KNbO₃-BaTiO₃):**
| Property | Value |
|----------|-------|
| d₃₃ | 285 pC/N |
| d₃₁ | -120 pC/N |
| kₚ | 0.58 |
| εᵣ | 1200 |
| T_c | 310°C |
| Q_m | 85 |
| Density | 5.2 g/cm³ |

#### 2.3.2 Ultrasonic Array (40 kHz)

**8× Langevin Transducers (Bolt-Clamped Sandwich)**

| Component | Material | Specification |
|-----------|----------|---------------|
| **Piezo Stack** | 4× KNbO₃-BaTiO₃ discs | 50 mm Ø × 5 mm each |
| **Pre-load Bolt** | ZrO₂ ceramic M10 | 500 N clamping force |
| **Front Mass** | ZrO₂ 3Y-TZP ceramic | Acoustic impedance matching |
| **Back Mass** | PEEK CF40 | Impedance matching, thermal isolation |
| **Housing** | BFRP/Elium® | Non-magnetic, non-conductive |
| **Probe Tip** | ZrO₂ 3Y-TZP ceramic | Cavitation erosion resistance |

**Pre-stress Verification:**
$$\sigma_{tensile,max} = \frac{d_{33} E V_{max} \times 2}{t} = \frac{285\times10^{-12} \times 70\times10^9 \times 300 \times 2}{0.02} = 0.6 \text{ MPa}$$
Pre-stress = 500 N / (50 mm)² = 200 MPa >> 0.6 MPa: **ADEQUATE**

**Output per Transducer (500W Input Equivalent):**
| Parameter | Value |
|-----------|-------|
| Acoustic Intensity at Face | 25 W/cm² |
| Cavitation Cloud Radius | ~40 mm |
| Liberation Efficiency | 85-95% mineral surface contacted |

#### 2.3.3 Transducer Driver Electronics

All AMLS drive electronics use **CSMFAB-native optical isolation**:

```
FBG SENSORS → PMMA POF → OPTICAL DEMUX → DSP (KNbO₃-BaTiO₃ ASIC) → 8 CHANNEL DRIVERS
                                                                ├── 8× LF (1 kW, 20-500 Hz)
                                                                └── 8× US (500 W, 40 kHz)

Driver Specs:
- Variable frequency: 20-40,000 Hz
- Variable power: 0-1000 W per channel
- Phase-locked (avoid destructive interference)
- Optical isolation: PMMA POF → no conductive path to earth
- Response time: <1 ms frequency change
```

---

### 2.4 Liberation Index Metric

#### 2.4.1 Definition

**Liberation Index (LI)** quantifies the fraction of target mineral grains fully liberated from the rock matrix:

$$LI = \frac{N_{liberated}}{N_{total}} \times 100\%$$

Where:
- $N_{liberated}$ = grains with >90% surface exposed (free particles)
- $N_{total}$ = total grains of target mineral in sample

**Measurement method:** Automated SEM-EDS particle analysis on representative subsample (ISO 3082 sampling).

#### 2.4.2 CSM-Specific Liberation Targets

| Feedstock | Target Mineral | Pre-AMLS LI | Post-AMLS LI | Improvement |
|-----------|----------------|-------------|--------------|-------------|
| **Zircon sand** | ZrSiO₄ (0.1-0.5 mm) | 45% | **88%** | +95% |
| **REE ore (bastnäsite)** | REE-carbonate/phosphate | 35% | **72%** | +105% |
| **Ilmenite sand** | FeTiO₃ | 70% | **95%** | +35% |
| **Basalt aggregate** | Zr, REE in silicates | 20% | **70%** | +250% |
| **Red mud (neutralized)** | REE in Fe/Al oxides | 15% | **60%** | +300% |
| **Spent refractories** | ZrO₂, MgO grains | 25% | **65%** | +160% |

#### 2.4.3 Liberation Index Feedback Control

The AMLS uses **real-time LI estimation via FBG vibration damping**:

1. FBG sensors on chamber wall measure vibration transmissibility
2. As grains liberate, effective chamber damping changes (free particles absorb more energy)
3. DSP correlates damping increase with LI calibration curves
4. When LI > target (default 75%), sweep terminates early (minimum 10 min)

**Target LI by Feedstock Category:**
| Category | Default LI Target | Minimum Duration |
|----------|-------------------|------------------|
| A (Electronics) | 85% | 15 min |
| B (Municipal) | 70% | 20 min |
| C (Mineral) | 75% | 30 min LF + 15 min US |
| D (Phoenix) | 80% | 20 min LF + 20 min US |

---

## 3. Stage 1: Infrared Drying (80-150°C)

### 3.1 Target Materials & Physics

#### 3.1.1 Moisture Species and Release Temperatures

| Moisture Type | Source | Release Temp | Mechanism |
|---------------|--------|--------------|-----------|
| **Free surface water** | All wet feeds | 80-100°C | Evaporation |
| **Crystal-bound water** | Gypsum (CaSO₄·2H₂O) | 107-120°C | Dehydration |
| **Crystal-bound water** | Borax (Na₂B₄O₇·10H₂O) | 100-140°C | Dehydration |
| **Crystal-bound water** | Kaolin (Al₂Si₂O₅(OH)₄) | 150°C | Partial dehydration |
| **Low-boiling organics** | Alcohols, acetone residues | 80-150°C | Vaporization |
| **PCB flux solvents** | Terpineol (Tb=218°C) | >150°C | Begins at Stage 1 end |

#### 3.1.2 Why Infrared (Not Induction)?

Induction heating is ineffective at 80-150°C because:
- Target materials (water, hydrated minerals, organics) are **non-conductive** (ρ > 10⁸ Ω·m)
- Induction couples to conductivity (eddy currents) and permeability (hysteresis)
- Water has ε'' (dielectric loss) peak at 3 µm and 6 µm — ideal for IR absorption

**IR absorption spectrum of water:**
- Primary peak: 3.0 µm (O-H stretch)
- Secondary peak: 6.3 µm (H-O-H bend)
- SiC glow bar emission peak: ~3.6 µm at 800-900°C surface temp
- **Match:** SiC IR output overlaps water absorption peak → high coupling efficiency

---

### 3.2 IR Emitter Specifications

#### 3.2.1 SiC Glow Bar Design

**Emitter type:** Silicon carbide resistive elements (CSMFAB000000000002-type) — same material used in Ancient Hearth stove burner.

| Parameter | Specification |
|-----------|---------------|
| **Emitter Count** | 12 (3 per quadrant, axial positions) |
| **Emitter Length** | 200 mm each (total 2.4 m heated length) |
| **Emitter Diameter** | 12 mm OD × 8 mm ID (hollow for N₂ purge) |
| **Surface Temperature** | 800-900°C (controlled) |
| **Peak Emission Wavelength** | 3.6 µm (Wien's law at 850°C) |
| **Power per Emitter** | 5 kW (total 60 kW IR array) |
| **Electrical Supply** | 480V 3-phase, SCR-controlled per quadrant |
| **Emitter Material** | α-SiC (CSMFAB000000000002, flash-sintered) |
| **Emitter Housing** | BFRP/Elium® with Al₂O₃ ceramic mounts |
| **Reflectors** | Polished ZrO₂-coated BFRP (95% IR reflectivity) |
| **Emitter Life** | 10,000 hours (degradation: SiC oxidation → emissivity drop) |

#### 3.2.2 Zoning and Power Distribution

```
DRUM CROSS-SECTION — IR EMITTER ZONES

    Quadrant 1 (Top)     Quadrant 2 (Right)
    [EMITTER 1]          [EMITTER 4]
    [EMITTER 2]          [EMITTER 5]
    [EMITTER 3]          [EMITTER 6]
           │                    │
           │   ROTATING DRUM    │
           │   (ZrB₂-SiC)       │
           ▼                    ▼
    Quadrant 3 (Bottom)  Quadrant 4 (Left)
    [EMITTER 7]          [EMITTER 10]
    [EMITTER 8]          [EMITTER 11]
    [EMITTER 9]          [EMITTER 12]

Each quadrant: Independent SCR control → PID per quadrant
```

**Zoning rationale:**
- Top quadrant: Highest power (feed entry, wettest material)
- Bottom quadrant: Lowest power (material already partially dried)
- Side quadrants: Medium power (uniform radial drying)

**Power profile (typical 20-min cycle):**
| Time (min) | Top | Right | Bottom | Left | Total Power |
|------------|-----|-------|--------|------|-------------|
| 0-5 | 60 kW | 50 kW | 30 kW | 50 kW | 190 kW |
| 5-10 | 55 kW | 45 kW | 25 kW | 45 kW | 170 kW |
| 10-15 | 45 kW | 40 kW | 20 kW | 40 kW | 145 kW |
| 15-20 | 35 kW | 30 kW | 15 kW | 30 kW | 110 kW |

---

### 3.3 Drum Operation During Stage 1

| Parameter | Specification |
|-----------|---------------|
| **Rotation Speed** | 5-10 RPM (slow, gentle tumbling — uniform drying) |
| **Centrifugal G** | 0.07-0.28 G (insufficient for separation — intentional) |
| **Atmosphere** | N₂ at 1.2 bar (prevents explosive H₂/organic vapor combinations) |
| **Duration** | 20 minutes (sufficient for 50 kg charge with <30% moisture) |
| **Temperature Ramp** | 80°C → 150°C over 20 min (3.5°C/min) |
| **Feed Rate** | Vibratory feeder: 2.5 kg/min (50 kg / 20 min) |

---

### 3.4 Moisture Measurement

#### 3.4.1 FBG Humidity Sensors

**Sensor type:** PMMA optical fiber with FBG gratings coated with hygroscopic polymer (PVA-H₃PO₄)

| Parameter | Specification |
|-----------|---------------|
| **Sensor Count** | 8 (2 per quadrant, axial positions) |
| **Wavelength Range** | 1530-1565 nm (C-band, WDM multiplexed) |
| **Humidity Sensitivity** | 5 pm/%RH (calibrated) |
| **Temperature Cross-Sensitivity** | 10 pm/°C (compensated via reference FBG) |
| **Response Time** | <30 seconds (polymer swelling kinetics) |
| **Operating Range** | 0-100% RH, 20-200°C |

**Installation:** FBG fibers routed through drum wall via PEEK CF40 feedthroughs, gratings positioned in drum headspace.

#### 3.4.2 NIR Inline Moisture Analyzer

**Sensor type:** Dual-wavelength NIR absorption (1.45 µm water / 1.72 µm reference)

| Parameter | Specification |
|-----------|---------------|
| **Measurement Principle** | $A = \log_{10}(I_0/I) = \epsilon \cdot c \cdot l$ |
| **Wavelengths** | 1.45 µm (H₂O), 1.72 µm (reference), 1.94 µm (H₂O validation) |
| **Optical Path** | PMMA POF probe through drum port window (sapphire) |
| **Sampling Rate** | 10 Hz |
| **Accuracy** | ±0.5% absolute moisture |
| **Calibration** | Gravimetric reference samples per lot |

#### 3.4.3 Mass Loss Verification (Primary Control)

**Method:** FBG weight sensors on drum support bearings measure real-time mass loss.

| Parameter | Specification |
|-----------|---------------|
| **Sensor Type** | FBG strain gauges on 4 ZrO₂ isolation pads (PROD-04) |
| **Resolution** | ±10 g on 500 kg charge (0.002%) |
| **Integration** | Sum of 4 bearing loads = total drum + charge mass |
| **Water Loss Calculation** | $\Delta m_{H_2O} = m_{initial} - m_{current} - m_{volatiles}$ |
| **Volatile Correction** | NIR hydrocarbon sensor (3.4 µm C-H stretch) |
| **Stage 1 Completion Criteria** | $\Delta m_{H_2O} < 0.5$ kg over 2 consecutive minutes |

---

### 3.5 Water and Volatile Recovery

Exiting vapor (mostly H₂O) exits through **Port 1 (150°C set-point)**:

1. **Condensation:** BFRP heat exchanger (chilled to 10°C by PEX-a cooling circuit)
2. **Liquid water collected:** Analyzed for metal content (ICP-MS), either:
   - Purified (RO + UV) → reused as process water
   - Discharged if <1 ppm metals
3. **Organic vapors:** Trace quantity passes through activated carbon bed (char from Stage 3!)
   - **Elegant closed cycle:** Char from Stage 3 later used to adsorb Stage 1/2 organics
4. **Gas composition monitoring:** Online GC-MS on Port 1 exhaust
   - H₂O (primary), organics (<50 ppm), HCl (<10 ppm if PVC present), NH₃ (<5 ppm)

**Water recovery rate:** 90-95% of input moisture recovered as liquid water.

---

## 4. Throughput & Residence Time

### 4.1 Stage Timing (Per 500 kg Batch)

| Stage | Activity | Duration | Notes |
|-------|----------|----------|-------|
| **0** | Acoustic Liberation | 15-30 min | Category-dependent (C: 30 min, A: 15 min) |
| **Transfer** | AMLS → Drum | 2 min | Vibratory feeder, 2.5 kg/min |
| **1** | IR Drying | 20 min | Fixed (moisture-controlled termination) |
| **Total Pre-Thermal** | Stage 0 + 1 + Transfer | **37-52 min** | Before Stage 2 heating begins |

### 4.2 Throughput Capacity

| Metric | Value |
|--------|-------|
| **Batch Size** | 500 kg (226 L drum volume at ~2.2 g/cm³ bulk density) |
| **Batches per Day** | 16-20 (with 90 min thermal cascade = 3.5-5 hr/batch) |
| **Daily Throughput** | 8-10 metric tons |
| **Annual Throughput (330 days)** | 2,640-3,300 metric tons |

### 4.3 Bottleneck Analysis

| Stage | Capacity | Limiting Factor |
|-------|----------|-----------------|
| AMLS (Stage 0) | 2 batches/hr | 15-30 min cycle + 5 min drain/refill |
| Stage 1 Drying | 3 batches/hr | 20 min fixed + water vapor handling |
| **System Bottleneck** | **AMLS** | Longest single stage (up to 30 min) |

---

## 5. Energy Balance

### 5.1 Stage 0 Acoustic Energy

| Parameter | Value |
|-----------|-------|
| **LF Array Power** | 8 kW × 0.25 hr = 2 kWh/batch |
| **US Array Power** | 4 kW × 0.25 hr = 1 kWh/batch |
| **Water Heating** | 15 L × 4.18 kJ/kg·K × 10°C = 0.17 kWh |
| **Total Stage 0** | **3.17 kWh/batch** |
| **Per Ton Feed** | **6.34 kWh/ton** |

**Acoustic efficiency:** ~40% (electrical → acoustic), remainder heats water/chamber.

### 5.2 Stage 1 IR Drying Energy

| Parameter | Value |
|-----------|-------|
| **IR Array Power (avg)** | 150 kW × 0.33 hr = 49.5 kWh/batch |
| **Drum Rotation** | 5 kW × 0.33 hr = 1.65 kWh |
| **N₂ Supply/Heating** | 2 kWh/batch |
| **Vapor Condensation (cooling)** | 8 kWh/batch (heat pump COP=3) |
| **Total Stage 1** | **61.15 kWh/batch** |
| **Per Ton Feed** | **122 kWh/ton** |

**IR efficiency:** ~65% (electrical → absorbed IR), losses: emitter convection, wall absorption, window transmission.

### 5.3 Combined Stage 0-1 Energy

| Metric | Value |
|--------|-------|
| **Total Energy/Batch** | 64.3 kWh |
| **Energy/Ton Feed** | 128.6 kWh/ton |
| **Stage 0 Fraction** | 4.9% |
| **Stage 1 Fraction** | 95.1% |

### 5.4 Heat Recovery

- **Condensate heat (10°C → 80°C):** 0.4 kWh/kg water × 40 kg = 16 kWh recovered
- **IR emitter exhaust (if any):** N/A (emitters in drum, no exhaust)
- **Net energy after recovery:** 48.3 kWh/batch = **96.6 kWh/ton**

---

## 6. Wear & Maintenance

### 6.1 Transducer Life

| Component | Life | Wear Mechanism | Replacement Trigger |
|-----------|------|----------------|---------------------|
| **LF Piezo Plates** | 20,000 hrs | Depolarization at 310°C (T_c) — but operates at 25°C | FBG output drop >20% |
| **US Piezo Stacks** | 10,000 hrs | Fatigue cracking at pre-load bolt interface | Acoustic intensity <20 W/cm² |
| **ZrO₂ Probe Tips** | 5,000 hrs | Cavitation erosion (pitting) | Tip diameter reduction >2 mm |
| **PEEK CF40 Back Mass** | 15,000 hrs | Creep at 200°C (back mass temp) | Dimensional change >0.5% |
| **ZrO₂ Front Mass** | 30,000 hrs | Thermal cycling fatigue | Crack detection (FBG AE) |

### 6.2 IR Emitter Life

| Component | Life | Wear Mechanism | Replacement Trigger |
|-----------|------|----------------|---------------------|
| **SiC Glow Bars** | 10,000 hrs | Surface oxidation → emissivity drop (0.92 → 0.75) | Power increase >15% for same temp |
| **BFRP Reflectors** | 20,000 hrs | IR degradation of Elium® matrix | Reflectivity <90% |
| **Al₂O₃ Mounts** | 50,000 hrs | Thermal shock cracking | Visual inspection |

### 6.3 Maintenance Schedule

| Interval | Action | Duration |
|----------|--------|----------|
| **Per Batch** | AMLS water drain/refill, chamber visual | 5 min |
| **Daily** | FBG calibration check, IR power verification | 15 min |
| **Weekly** | Transducer acoustic output test (hydrophone) | 30 min |
| **Monthly** | ZrO₂ probe tip inspection (boroscope) | 1 hr |
| **Quarterly** | SiC emitter removal, emissivity test | 2 hr |
| **Annually** | Full AMLS transducer replacement (8 LF + 8 US) | 8 hr |

---

## 6. Control System Architecture

### 6.1 Stage 0 Control Hierarchy

The AMLS control system operates as a **three-level hierarchy**:

```
LEVEL 1: SUPERVISORY (Batch Level)
├── Batch recipe selection (feedstock category A-D)
├── Target LI setting (75% default, category-adjusted)
├── Total duration limit (30 min max)
└── Interlock: Drum ready, water level, N₂ pressure

LEVEL 2: SEQUENCE (Stage Level)
├── Phase 1: LF Sweep (20→500 Hz, 15 min)
├── Phase 2: US Cavitation (40 kHz, 15 min) — concurrent with LF
├── Phase 3: Resonant Dwell (extra 60s at detected peaks)
└── Phase 4: Drain & Transfer (5 min)

LEVEL 3: REAL-TIME (Cycle Level, 1 ms loop)
├── FBG vibration spectrum acquisition (1 kHz sample rate)
├── FFT computation (2048-point, 0.5 Hz resolution)
├── Peak detection & tracking (adaptive threshold)
├── Frequency/power setpoint update (per transducer)
└── Phase-lock maintenance (all 16 channels synchronized)
```

### 6.2 Adaptive Frequency Sweep Algorithm

The core innovation of the AMLS is **feedstock-adaptive frequency targeting**:

```python
def adaptive_sweep(fbg_spectrum, current_freq, dwell_timer):
    
    Input: FBG vibration spectrum (magnitude vs frequency)
    Output: Next frequency setpoint, dwell extension
    
    # Detect resonant peaks >3 dB above local baseline
    peaks = find_peaks(fbg_spectrum, prominence=3, distance=5)  # Hz
    
    # Classify peaks by mineral signature (pre-calibrated library)
    mineral_matches = {}
    for peak_freq in peaks:
        for mineral, sig in MINERAL_SIGNATURES.items():
            if abs(peak_freq - sig.freq) < sig.bandwidth:
                mineral_matches[mineral] = peak_freq
    
    # Priority dwell extension for high-value minerals
    dwell_extension = 0
    if 'zircon' in mineral_matches:
        dwell_extension += 60  # Extra 60s at zircon resonance
    if 'bastnasite' in mineral_matches:
        dwell_extension += 45
    if 'ilmenite' in mineral_matches:
        dwell_extension += 30
    
    # Continue sweep unless at final frequency
    if current_freq >= 500:
        return SWEEP_COMPLETE, dwell_extension
    else:
        next_freq = current_freq * 1.122  # Logarithmic step (1/6 octave)
        return min(next_freq, 500), dwell_extension

MINERAL_SIGNATURES = {
    'zircon': {'freq': 185, 'bandwidth': 15, 'priority': 'HIGH'},
    'bastnasite': {'freq': 95, 'bandwidth': 20, 'priority': 'HIGH'},
    'ilmenite': {'freq': 55, 'bandwidth': 10, 'priority': 'MED'},
    'quartz': {'freq': 280, 'bandwidth': 25, 'priority': 'LOW'},
    'feldspar': {'freq': 145, 'bandwidth': 15, 'priority': 'LOW'},
}
```

### 6.3 Phase-Locked Multi-Channel Synchronization

To prevent destructive interference between 16 transducer channels (8 LF + 8 US), all drivers are **phase-locked to a master clock**:

```
MASTER CLOCK (KNbO₃-BaTiO₃ ASIC)
         │
         ├── LF CHANNEL 0 (0° reference)
         ├── LF CHANNEL 1 (+45°)
         ├── LF CHANNEL 2 (+90°)
         ├── LF CHANNEL 3 (+135°)
         ├── LF CHANNEL 4 (+180°)
         ├── LF CHANNEL 5 (+225°)
         ├── LF CHANNEL 6 (+270°)
         ├── LF CHANNEL 7 (+315°)
         ├── US CHANNEL 0 (40 kHz, 0°)
         ├── US CHANNEL 1 (40 kHz, +45°)
         ├── US CHANNEL 2 (40 kHz, +90°)
         ├── US CHANNEL 3 (40 kHz, +135°)
         ├── US CHANNEL 4 (40 kHz, +180°)
         ├── US CHANNEL 5 (40 kHz, +225°)
         ├── US CHANNEL 6 (40 kHz, +270°)
         └── US CHANNEL 7 (40 kHz, +315°)
```

**Phase error budget:** <5° at 40 kHz, <0.5° at 100 Hz (achieved via optical fiber distribution of master clock).

### 6.4 Stage 1 IR Drying Control

**Quadrant-independent PID control:**

| Quadrant | Setpoint (°C) | Kp | Ki | Kd | Control Output |
|----------|---------------|-----|-----|-----|----------------|
| Top | 150 | 0.8 | 0.02 | 0.1 | SCR firing angle |
| Right | 140 | 0.7 | 0.015 | 0.08 | SCR firing angle |
| Bottom | 120 | 0.6 | 0.01 | 0.05 | SCR firing angle |
| Left | 140 | 0.7 | 0.015 | 0.08 | SCR firing angle |

**Feedforward compensation:** NIR moisture measurement → predicted power demand → pre-emptive SCR adjustment.

**Safety interlocks:**
- Chamber pressure >2 bar → emergency N₂ vent
- Emitter surface temp >950°C → power cut
- FBG humidity sensor failure → fallback to mass loss rate
- Water level <5L in AMLS → pause LF sweep

---

## 7. Scaling Laws

### 7.1 Stage 0 Scaling (226L → 20,000L)

The AMLS must scale from the 226L Aegis-Forge I to industrial 20,000L units:

| Parameter | 226L (Lab) | 2,000L (Pilot) | 20,000L (Industrial) | Scaling Law |
|-----------|------------|----------------|----------------------|-------------|
| Chamber Diameter | 600 mm | 1,800 mm | 5,500 mm | D ∝ V^(1/3) |
| Chamber Length | 400 mm | 1,200 mm | 3,600 mm | L ∝ V^(1/3) |
| LF Transducers | 8 | 24 | 72 | N ∝ V^(2/3) (surface area) |
| US Probes | 8 | 24 | 72 | N ∝ V^(2/3) |
| LF Power/Transducer | 1 kW | 3 kW | 9 kW | P ∝ D (maintain intensity) |
| US Power/Probe | 500 W | 1.5 kW | 4.5 kW | P ∝ D |
| Total LF Power | 8 kW | 72 kW | 648 kW | P_total ∝ V^(2/3) |
| Total US Power | 4 kW | 36 kW | 324 kW | P_total ∝ V^(2/3) |
| Water Volume | 15 L | 135 L | 1,350 L | V_water ∝ V |
| Cycle Time | 30 min | 30 min | 30 min | **Constant** (grain physics) |

**Key insight:** Cycle time is **invariant** with scale — grain boundary fatigue physics depends on cycles, not absolute dimensions. Power scales with surface area (V^(2/3)), not volume.

### 7.2 Stage 1 Scaling

| Parameter | 226L | 2,000L | 20,000L | Scaling Law |
|-----------|------|--------|---------|-------------|
| IR Emitters | 12 | 36 | 108 | N ∝ V^(2/3) |
| Emitter Power | 5 kW | 15 kW | 45 kW | P ∝ D |
| Total IR Power | 60 kW | 540 kW | 4,860 kW | P_total ∝ V^(2/3) |
| Drying Time | 20 min | 20 min | 20 min | **Constant** (diffusion-limited) |
| N₂ Flow | 50 Nm³/hr | 450 Nm³/hr | 4,500 Nm³/hr | Q ∝ V |

---

## 8. Safety & Environmental

### 8.1 Acoustic Safety

| Hazard | Source | Mitigation |
|--------|--------|------------|
| **Airborne noise** | LF transducers (20-500 Hz) | BFRP chamber: 35 dB attenuation at 100 Hz |
| **Ultrasonic leakage** | US probes (40 kHz) | Submerged operation; chamber sealed |
| **Cavitation erosion** | ZrO₂ probe tips | Material selection; scheduled replacement |
| **Structural fatigue** | BFRP chamber walls | FEA-validated; FBG strain monitoring |

**Occupational exposure limits (OSHA/ISO):**
- LF (20-500 Hz): 85 dB(A) 8-hr TWA → chamber meets 70 dB(A) at operator position
- US (40 kHz): 110 dB SPL → fully contained (submerged)

### 8.2 Thermal Safety (Stage 1)

| Hazard | Source | Mitigation |
|--------|--------|------------|
| **Emitter overtemp** | SiC glow bar runaway | Independent thermocouple + SCR hard cutoff at 950°C |
| **N₂ asphyxiation** | 1.2 bar N₂ atmosphere | O₂ monitor <19.5% → alarm; confined space permit |
| **Organic vapor explosion** | Stage 1 volatiles + air ingress | N₂ inerting; LEL monitor <10%; explosion vent |
| **Water hammer** | AMLS drain/refill | Slow-acting valves; surge tanks |

### 8.3 Environmental Compliance

| Emission | Source | Control | Limit |
|----------|--------|---------|-------|
| **Particulate (PM2.5)** | AMLS discharge dust | Cyclone + baghouse (ceramic) | <5 mg/Nm³ |
| **VOCs** | Stage 1 organics | Activated carbon (Stage 3 char) | <50 ppm |
| **HCl** | PVC in feed | NaHCO₃ injection + carbon bed | <10 ppm |
| **Noise** | Transducers | BFRP enclosure + vibration isolation | 70 dB(A) at boundary |
| **Wastewater** | AMLS water reclaim | Closed loop; blowdown to treatment | Zero discharge |

---

## 9. Performance Specifications (Validated)

| Parameter | Specification | Test Method | Acceptance |
|-----------|---------------|-------------|------------|
| **Stage 0 Liberation Index (Zircon)** | ≥88% | SEM-EDS particle analysis | Pass ≥85% |
| **Stage 0 Liberation Index (REE)** | ≥70% | SEM-EDS + MLA | Pass ≥65% |
| **Stage 0 Duration** | ≤30 min | Stopwatch | Pass ≤30 min |
| **Stage 1 Moisture Removal** | ≥95% of input H₂O | Gravimetric | Pass ≥95% |
| **Stage 1 Final Moisture** | <1% | NIR + gravimetric | Pass <1% |
| **Stage 1 Duration** | 20 min ±2 min | Stopwatch | Pass 18-22 min |
| **IR Emitter Uniformity** | ±10% power/emitter | IR camera | Pass ≤10% |
| **Acoustic Intensity (US)** | ≥25 W/cm² | Hydrophone | Pass ≥25 W/cm² |
| **FBG Temp Accuracy** | ±1°C | Reference thermocouple | Pass ±1°C |
| **FBG Humidity Accuracy** | ±2% RH | Salt solution calibration | Pass ±2% RH |
| **Phase Lock Error (LF)** | <0.5° | Optical phase meter | Pass <0.5° |
| **Phase Lock Error (US)** | <5° | Optical phase meter | Pass <5° |
| **Total Energy/Batch** | ≤70 kWh | Power meter | Pass ≤70 kWh |
| **Water Recovery** | ≥90% | Flow meter | Pass ≥90% |
| **Cycle Time (0+1)** | ≤52 min | Stopwatch | Pass ≤52 min |

---

## 10. Cross-Reference Matrix

### 10.1 Upstream Dependencies

### 7.1 Upstream Dependencies

| This Section | Depends On | Document | Section |
|--------------|------------|----------|---------|
| 1.1 Document ID | Project numbering | PROD-01 | 1.1 |
| 2.1 Liberation Physics | Vol 3 AMLS physics | Vol 3 | Sections 2-3 |
| 2.2 Chamber Design | AMLS chamber spec | Vol 3 | Section 2.2 |
| 2.3 Transducer Arrays | Transducer specs | Vol 3 | Sections 2.2, 3.2 |
| 2.4 Liberation Index | Metrics | Vol 3 | Section 5.2 |
| 3.1 Target Materials | Stage 1 parameters | Vol 2 | Section 2 |
| 3.2 IR Emitters | SiC glow bar spec | PROD-12 | Section 3.2 |
| 3.3 Drum Operation | Drum specs | PROD-04 | Section 2 |
| 3.4 Moisture Measurement | FBG sensors | PROD-10 | Sections 4, 5 |
| 4 Throughput | Batch parameters | PROD-02 | Section 1.1 |
| 5 Energy Balance | Power specs | PROD-02 | Section 1.1 |
| 6 Maintenance | Material specs | PROD-12 | Sections 3, 4 |
| 7 Cross-Refs | All above | — | — |

### 7.2 Downstream Dependencies

| This Section | Enables | Document | Section |
|--------------|---------|----------|---------|
| 2 Liberation Physics | Stage 0 design validation | PROD-15 | Section 1 |
| 2.3 Transducers | Spare parts planning | PROD-30 | Section 3 |
| 3 IR Drying | Stage 1 moisture control | PROD-15 | Section 7 |
| 3.4 Moisture Sensors | Process control inputs | PROD-23 | Section 3 |
| 4 Throughput | Batch scheduling | PROD-23 | Section 2 |
| 5 Energy Balance | OPEX calculation | PROD-31 | Section 2 |
| 6 Maintenance | PM scheduling | PROD-30 | Section 2 |
| 7 Cross-Refs | Integration verification | PROD-05, 11, 12, 15 | All |

### 7.3 Follow-Up Document Linkages

| Follow-Up Document | Linked From This Section | Purpose |
|--------------------|-------------------------|---------|
| **FOLLOW-03** | 2.3 (Transducer Arrays) | Acoustic transducer optimization |
| **FOLLOW-05** | 2.2 (BFRP Chamber) | Vessel filament winding |
| **FOLLOW-10** | 2.3.3 (ASIC Drivers) | GaN inverter thermal mgmt |
| **FOLLOW-11** | 3.4 (FBG Sensors) | FBG sensor embedding |
| **FOLLOW-12** | 2.2 (Chamber Wear) | Shredder blade wear life |
| **FOLLOW-13** | 3.2 (SiC Emitters) | YInMn Blue glaze durability |
| **FOLLOW-17** | 4 (Throughput) | Polymer melt rheology |
| **FOLLOW-22** | 3.5 (Vapor Recovery) | Dust & fume capture |
| **FOLLOW-23** | 5 (Energy Balance) | Energy balance & exergy |
| **FOLLOW-24** | 5 (Energy Balance) | LCA & carbon footprint |
| **FOLLOW-25** | 2.2 (Chamber Design) | Seismic qualification |
| **FOLLOW-26** | 2.2 (Fire Protection) | Fire suppression |

---

## 8. Appendices

### Appendix A: Stage 0-1 Quick-Reference Card

| Parameter | Stage 0 (Acoustic) | Stage 1 (IR Drying) |
|-----------|-------------------|---------------------|
| **Temperature** | Ambient (20-30°C) | 80-150°C |
| **Duration** | 15-30 min | 20 min |
| **Primary Mechanism** | Grain boundary fatigue + cavitation | IR evaporation + dehydration |
| **Key Hardware** | 8× LF + 8× US transducers | 12× SiC glow bars |
| **Atmosphere** | N₂ + water coupling | N₂ at 1.2 bar |
| **Drum Speed** | N/A (pre-chamber) | 5-10 RPM |
| **Output** | Liberated feedstock | Dry feedstock (<1% moisture) |
| **Energy/Batch** | 3.17 kWh | 61.15 kWh |
| **Key Metric** | Liberation Index >75% | Moisture <1% |

### Appendix B: AMLS Material BOM (From PROD-12)

| # | Component | Material | Qty |
|---|-----------|----------|-----|
| 1 | Pre-chamber body | BFRP/Elium® filament wound | 1 |
| 2 | LF piezo plates | KNbO₃-BaTiO₃ bimorphs | 8 |
| 3 | US probe tips | ZrO₂ 3Y-TZP ceramic | 8 |
| 4 | US piezo stacks | KNbO₃-BaTiO₃ discs | 32 (4×8) |
| 5 | US front mass | ZrO₂ 3Y-TZP | 8 |
| 6 | US back mass | PEEK CF40 | 8 |
| 7 | US clamping bolts | ZrO₂ ceramic M10 | 8 |
| 8 | Magnetic separator housing | BFRP | 1 |
| 9 | Permanent magnets | SmCo (Electron Energy Corp) | 4 |
| 10 | Water pump | ZrO₂-lined piezoelectric | 1 |
| 11 | FBG sensor array | PMMA POF + FBG | 8 ch |
| 12 | Control electronics | KNbO₃-BaTiO₃ ASIC | 1 |
| 13 | Seal rings | PEEK CF40 | 4 |
| 14 | Water pipes | PEX-a + ZrO₂ fittings | 1 set |

### Appendix C: IR Emitter Array Material BOM

| # | Component | Material | Qty |
|---|-----------|----------|-----|
| 1 | SiC glow bars | α-SiC (CSMFAB000000000002) | 12 |
| 2 | Emitter housing | BFRP/Elium® | 4 quadrants |
| 3 | Reflectors | ZrO₂-coated BFRP | 12 |
| 4 | Al₂O₃ mounts | 99.7% Al₂O₃ ceramic | 12 |
| 5 | SCR controllers | GaN-based (optical isolated) | 4 |
| 6 | FBG humidity sensors | PMMA POF + PVA coating | 8 |
| 7 | NIR probes | PMMA POF + sapphire window | 4 |
| 8 | Mass loss FBGs | FBG on ZrO₂ pads | 4 |

### Appendix D: Revision History

| Rev | Date | Author | Changes |
|-----|------|--------|---------|
| 1.0 | 2026-11-01 | CSM Fabrication Division | Initial release — complete Stage 0-1 specification |

---

*End of PROD-14: Stage 0-1 Acoustic & Drying*
*CSMFAB000000000114 — Product Document 14 of 40*
*Next: PROD-15 — Stage 2: Polymer Flow & Separation*