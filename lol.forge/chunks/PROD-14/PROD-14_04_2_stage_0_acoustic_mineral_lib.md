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
