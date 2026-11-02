# PROD-10: Induction Power Electronics
## CSMFAB000000000108 — Aegis-Forge I Planetary Centrifugal Inductive Material Separation
### Series: TCIMS (Thermal Cascade Inductive Material Separator) | Volume: Power Electronics Architecture
**Document Number:** CSMFAB000000000110 (Product Document 10 of 40)
**Prepared by:** Carrington Storm Motors, Safe Pod Engineering Company, Fabrication Division
**Date:** 2026-11-01 | **Classification:** Product Specification — Foundation Technology

---

## 1. System Overview — 8-Zone Induction Power Architecture

The Aegis-Forge I induction power electronics subsystem delivers controlled, frequency-agile electromagnetic energy to eight independent coil zones surrounding the ZrB₂-SiC drum. This is the nervous system of the thermal cascade — translating digital setpoints into precisely shaped magnetic fields that selectively heat target materials while leaving dielectric components untouched.

### 1.1 Architecture Summary

| Parameter | Specification |
|-----------|---------------|
| **Total Installed Power** | 500 kW (continuous) |
| **Input Supply** | 480 VAC, 3-phase, 60 Hz industrial |
| **Zone Count** | 8 independently controlled resonant inverters |
| **Frequency Range** | 100 kHz → 1 kHz (zone-dependent) |
| **Topology** | Class E resonant inverter with GaN HEMT switches |
| **Control Loop** | PID ±5°C with resonance tracking (1 kHz update) |
| **Sensing** | 384 FBG sensors (PMMA POF, WDM+TDM multiplexed) |
| **Isolation** | All-dielectric control wiring (PMMA optical fiber) |
| **Safety Rating** | SIL-3 + Carrington GIC immunity |

### 1.2 Zone Mapping to Thermal Stages

The eight coil zones correspond directly to the eight thermal processing stages. Each zone heats a 100 mm axial band of the 800 mm drum length.

| Zone | Axial Position | Thermal Stage | Target Temp | Frequency | Power Range | Primary Material |
|------|----------------|---------------|-------------|-----------|-------------|------------------|
| Z1 | 0–100 mm | Stage 1: Drying | 80–150°C | 100 kHz | 0–50 kW | H₂O, volatiles (indirect) |
| Z2 | 100–200 mm | Stage 2: Polymer | 150–450°C | 100 kHz | 0–50 kW | Thermoplastics (indirect) |
| Z3 | 200–300 mm | Stage 3: Pyrolysis | 450–700°C | 50 kHz | 50–80 kW | Zn, Pb, char (onset) |
| Z4 | 300–400 mm | Stage 4: Low-Temp Metals | 420–900°C | 10 kHz | 80–150 kW | Zn, Pb, Sn, In, Al |
| Z5 | 400–500 mm | Stage 5: Aluminum | 660–720°C | 10 kHz | 80–150 kW | Al alloys |
| Z6 | 500–600 mm | Stage 6: Copper | 1085–1200°C | 5 kHz | 100–200 kW | Cu, precious metals |
| Z7 | 600–700 mm | Stage 7: Ferrous | 1200–1600°C | 2 kHz | 150–350 kW | Fe, Ni, Cr, RE magnets |
| Z8 | 700–800 mm | Stage 8: Mineral | 1600–2200°C | 1 kHz | 200–500 kW | Silicates, RE oxides |

### 1.3 Power Distribution Strategy

The 480 VAC 3-phase supply enters a dedicated isolation transformer bank (3 × 200 kVA, delta-wye, BFRP-housed) providing galvanic isolation between the industrial grid and the process electronics. Each inverter module draws from a dedicated 3-phase feed with individual harmonic filtering (LCL, 5th/7th/11th notch). The isolation transformer secondary is floating — no earth reference — eliminating ground fault paths and providing inherent GIC immunity for the process electronics.

---

## 2. Resonant Inverter Design — 8× GS66516T GaN HEMT Class E Topology

Each of the eight zones employs an identical resonant inverter module, differing only in the resonant tank component values (L, C) to achieve the target frequency for that zone. The topology is Class E zero-voltage switching (ZVS), chosen for its simplicity, high efficiency (>97%), and natural suitability for variable-frequency operation.

### 2.1 Class E Resonant Inverter Principles

The Class E topology achieves ZVS by shaping the voltage waveform across the switch such that it reaches zero with zero derivative at the switching instant:

$$v_{DS}(t) = V_{DD} \left[ 1 - \frac{\pi}{2} \sin(\omega t + \phi) \right]$$

The shunt capacitance $C_{shunt}$ (comprising the GaN output capacitance $C_{oss}$ plus external capacitor) and series resonant inductance $L_r$ form the tank:

$$\omega = \frac{1}{\sqrt{L_r C_{shunt}}}$$

At resonance, the switch current is sinusoidal and the voltage is a shaped half-wave, eliminating switching losses. The GaN HEMT's near-zero reverse recovery charge ($Q_{rr} \approx 0$) makes it ideal for Class E — no body diode conduction losses during dead time.

### 2.2 GS66516T GaN HEMT Specifications

| Parameter | Value | Note |
|-----------|-------|------|
| **Device** | GS66516T (GaN Systems) | 650 V, 16 A |
| **Topology** | Half-bridge Class E | Single switch per leg |
| **V<sub>DS</sub> max** | 650 V | Derated to 400 V operating |
| **R<sub>DS(on)</sub>** | 30 mΩ (typ) @ 25°C | Low conduction loss |
| **C<sub>oss</sub>** | 55 pF (typ) @ 400 V | Forms part of resonant tank |
| **Q<sub>g</sub>** | 3.5 nC | Ultra-low gate charge |
| **T<sub>j</sub> max** | 150°C | Junction temperature limit |
| **Thermal resistance R<sub>θJC</sub>** | 0.8 K/W | Junction-to-case |

Each inverter leg uses two GS66516T devices in a half-bridge configuration with bootstrapped high-side drive. The driver IC (LMG1210 or equivalent GaN-specific driver) provides 2.5 A peak gate current for fast switching transitions (<2 ns rise/fall).

### 2.3 Variable Frequency Operation

The resonant frequency is varied by adjusting the effective tank capacitance. A switched capacitor bank (binary-weighted: C, 2C, 4C, 8C, 16C, 32C) allows discrete frequency steps, while a varactor diode array provides fine continuous tuning (±5% range). The control loop measures the actual switch voltage waveform zero-crossing and adjusts the varactor bias to maintain ZVS across the full operating range.

Frequency switching transients are managed by a pre-computed trajectory table — the controller ramps frequency in 100 Hz steps with 10 ms dwell, allowing the tank energy to settle before the next step.

### 2.4 Efficiency Analysis

At nominal operating points:

| Zone | Frequency | Output Power | Switching Loss | Conduction Loss | Total Loss | Efficiency |
|------|-----------|--------------|----------------|-----------------|------------|------------|
| Z1–Z2 | 100 kHz | 50 kW | 0.3 kW | 0.7 kW | 1.0 kW | 98.0% |
| Z3 | 50 kHz | 80 kW | 0.2 kW | 1.2 kW | 1.4 kW | 98.3% |
| Z4–Z5 | 10 kHz | 150 kW | 0.1 kW | 2.0 kW | 2.1 kW | 98.6% |
| Z6 | 5 kHz | 200 kW | 0.08 kW | 2.5 kW | 2.6 kW | 98.7% |
| Z7 | 2 kHz | 350 kW | 0.05 kW | 4.0 kW | 4.1 kW | 98.8% |
| Z8 | 1 kHz | 500 kW | 0.03 kW | 5.5 kW | 5.5 kW | 98.9% |

Losses dominated by GaN conduction (R<sub>DS(on)</sub> × I<sub>rms</sub>²) and inductor ESR at low frequencies. Switching losses become negligible below 10 kHz.

---

## 3. Frequency Ladder & Zone Mapping — Physics-Based Design

The frequency ladder (100 kHz → 1 kHz) is not arbitrary — it is derived from the skin depth equation and the magnetic properties of target materials at each stage temperature.

### 3.1 Skin Depth and Frequency Selection

Skin depth determines how deeply the magnetic field penetrates the material:

$$\delta = \sqrt{\frac{2\rho}{\omega \mu}}$$

Where $\rho$ = electrical resistivity (Ω·m), $\omega = 2\pi f$ = angular frequency, $\mu = \mu_0 \mu_r$ = magnetic permeability.

For uniform heating of a material of thickness $d$, we require $\delta \geq d/2$. For selective surface heating (e.g., thin foils), $\delta \ll d$.

### 3.2 Material Property Tables at Operating Temperatures

#### Electrical Resistivity (ρ) vs Temperature

| Material | ρ @ 20°C (nΩ·m) | ρ @ 500°C (nΩ·m) | ρ @ 1000°C (nΩ·m) | ρ @ 1500°C (nΩ·m) |
|----------|-----------------|------------------|-------------------|-------------------|
| Aluminum | 26.5 | 78 | — (liquid) | — |
| Copper | 16.8 | 45 | 85 | — (liquid) |
| Iron (ferritic) | 97 | 320 | 580 | 920 |
| Nickel | 69 | 210 | 380 | — |
| Zinc | 59 | 120 (liq) | — | — |
| Lead | 208 | 450 (liq) | — | — |
| Tin | 115 | 240 (liq) | — | — |
| Indium | 84 | 180 (liq) | — | — |
| Steel (304 SS) | 720 | 1100 | 1350 | 1500 |

#### Relative Permeability (μ<sub>r</sub>) vs Temperature

| Material | μ<sub>r</sub> @ 20°C | μ<sub>r</sub> @ 500°C | μ<sub>r</sub> @ 770°C (Curie) | μ<sub>r</sub> @ 1000°C |
|----------|---------------------|----------------------|-------------------------------|------------------------|
| Iron (pure) | 5000 | 200 | 1 (paramagnetic) | 1 |
| Nickel | 600 | 50 | 1 (Curie 354°C) | 1 |
| Cobalt | 250 | 20 | 1 (Curie 1115°C) | 1 |
| Ferrite (MnZn) | 2000 | 100 | 1 | 1 |
| Non-ferrous (Al, Cu, Zn, Pb) | 1 | 1 | 1 | 1 |

### 3.3 Skin Depth Calculations at Zone Frequencies

| Zone | Freq (kHz) | Material | ρ (nΩ·m) | μ<sub>r</sub> | δ (mm) | Target Thickness |
|------|------------|----------|----------|--------------|--------|------------------|
| Z1–Z2 | 100 | Air/N₂ (indirect) | — | 1 | — | — |
| Z3 | 50 | Zn (liq) | 120 | 1 | 7.8 | 150 mm charge |
| Z3 | 50 | Pb (liq) | 450 | 1 | 15.1 | 150 mm charge |
| Z4 | 10 | Al (solid) | 78 | 1 | 14.0 | 10–50 mm pieces |
| Z5 | 10 | Al (liq) | 280 | 1 | 26.6 | 50 mm pool depth |
| Z6 | 5 | Cu (solid) | 85 | 1 | 20.7 | 20 mm wire bundles |
| Z6 | 5 | Cu (liq) | 220 | 1 | 33.3 | 50 mm pool |
| Z7 | 2 | Fe (solid) | 580 | 1 | 17.1 | 30 mm plate/slab |
| Z7 | 2 | Fe (liq) | 920 | 1 | 21.5 | 50 mm pool |
| Z8 | 1 | Silicates | 10⁹ | 1 | >1000 | Full penetration |

**Key insight:** At Z7 (2 kHz), ferromagnetic materials have lost permeability (above Curie), so heating relies on eddy currents only. The lower frequency ensures deeper penetration into large ferrous pieces. At Z8 (1 kHz), the refractory minerals are essentially insulators — heating is purely by thermal conduction from the drum wall and susceptor materials.

### 3.4 Ampere-Turns and B-Field Requirements

The magnetic field strength $H = N I / l_e$ (ampere-turns per meter) must produce sufficient flux density $B = \mu H$ for the target power. For a 100 mm axial zone with 8-turn coil:

| Zone | Target Power | I<sub>rms</sub> (per turn) | N | NI (A-t) | B<sub>peak</sub> (mT) |
|------|--------------|---------------------------|---|----------|---------------------|
| Z1 | 50 kW | 125 A | 8 | 1000 | 12.6 |
| Z3 | 80 kW | 160 A | 8 | 1280 | 16.1 |
| Z5 | 150 kW | 220 A | 8 | 1760 | 22.1 |
| Z7 | 350 kW | 330 A | 8 | 2640 | 33.1 |
| Z8 | 500 kW | 395 A | 8 | 3160 | 39.6 |

---

## 4. GaN Thermal Management — Junction-to-Cold-Plate Design

Maintaining GaN junction temperature below 125°C (derated from 150°C max) at 500 kW total dissipation requires a high-performance liquid cooling system.

### 4.1 Thermal Resistance Budget

| Thermal Interface | R<sub>θ</sub> (K/W) | Notes |
|-------------------|---------------------|-------|
| Junction-to-case (R<sub>θJC</sub>) | 0.8 | GS66516T datasheet |
| Case-to-cold-plate (TIM + interface) | 0.15 | Indium foil or phase-change TIM |
| Cold-plate convection (water) | 0.05 | Microchannel, 2 m/s flow |
| Water-to-ambient (chiller) | 0.02 | External chiller |
| **Total R<sub>θJA</sub>** | **1.02 K/W** | |

At 5.5 kW dissipation (Z8 worst case): $\Delta T = 5.5 \times 1.02 = 5.6°C$ above water temperature. With 25°C inlet water, T<sub>j</sub> ≈ 31°C — well within limits.

### 4.2 Microchannel Cold Plate Design

Each inverter module mounts on a copper microchannel cold plate (CSMFAB-sourced copper — the only copper in the machine, justified as internal heat spreader not connected to earth):

- **Channel geometry:** 0.5 mm wide × 1 mm deep, 40 channels parallel
- **Flow rate:** 2 L/min per module (16 L/min total for 8 modules)
- **Pressure drop:** 0.8 bar @ 2 L/min
- **Material:** Copper base with PEX-a water connections
- **Surface finish:** Ni-P electroless nickel (corrosion resistance, solderable)

### 4.3 PEX-a Water Circuit

The cooling water circuit uses PEX-a tubing (CSMFAB Materials Study Part IV) throughout — completely non-conductive, eliminating any conductive path from the process electronics to the building ground. This is a critical Carrington immunity feature.

- **Loop layout:** Parallel feed to each module, manifold return
- **Filtration:** 10 μm cartridge filter, ZrO₂ housing
- **Treatment:** Deionized water, 18 MΩ·cm, with corrosion inhibitor (benzotriazole, 50 ppm)
- **Monitoring:** FBG temperature sensors at each module inlet/outlet

---

## 5. FBG Optical Sensing Network — 384 PMMA POF Sensors

Temperature feedback for the PID control loops comes entirely from fiber Bragg grating (FBG) sensors embedded in the drum wall, communicated via PMMA plastic optical fiber (POF). This all-dielectric sensing path is immune to the intense EM fields and provides Carrington-hardened data transmission.

### 5.1 FBG Sensor Specifications

| Parameter | Specification |
|-----------|---------------|
| **Fiber Type** | PMMA POF (step-index, 980 μm core, 1000 μm clad) |
| **Grating Type** | Type I FBG, UV-written in PMMA |
| **Wavelength Range** | 650–850 nm (PMMA transmission window) |
| **Temperature Sensitivity** | 0.15 nm/°C (PMMA, higher than silica's 0.01 nm/°C) |
| **Resolution** | 0.1°C (interrogator limited) |
| **Accuracy** | ±0.5°C (calibrated) |
| **Sensor Length** | 5 mm grating, 10 mm total |
| **Quantity** | 384 (48 per zone × 8 zones) |
| **Multiplexing** | WDM (8 wavelengths) + TDM (6 spatial channels per wavelength) |

### 5.2 Sensor Placement Strategy

Each 100 mm zone contains 48 FBG sensors distributed as:
- **Drum inner wall (24 sensors):** 3 circumferential rings × 8 angular positions — measures process-side temperature
- **Drum outer wall (12 sensors):** 3 rings × 4 positions — measures coil-side temperature
- **Coil former (8 sensors):** 2 rings × 4 positions — measures coil winding temperature
- **Cold plate (4 sensors):** Inlet/outlet per module — monitors coolant ΔT

### 5.3 WDM+TDM Multiplexing Architecture

```
Optical Interrogator (1 kHz sweep)
    │
    ├── λ1 (680 nm) → TDM Channel 1 → 6 sensors (Zone 1)
    ├── λ2 (700 nm) → TDM Channel 2 → 6 sensors (Zone 2)
    ├── λ3 (720 nm) → TDM Channel 3 → 6 sensors (Zone 3)
    ├── λ4 (740 nm) → TDM Channel 4 → 6 sensors (Zone 4)
    ├── λ5 (760 nm) → TDM Channel 5 → 6 sensors (Zone 5)
    ├── λ6 (780 nm) → TDM Channel 6 → 6 sensors (Zone 6)
    ├── λ7 (800 nm) → TDM Channel 7 → 6 sensors (Zone 7)
    └── λ8 (820 nm) → TDM Channel 8 → 6 sensors (Zone 8)
```

Each TDM channel uses a 1×6 optical splitter (PMMA, fused biconical taper) with 60 m total fiber length per channel. The interrogator uses a tunable VCSEL (650–850 nm) with 1 kHz sweep rate, providing 125 Hz per sensor update rate.

### 5.4 PMMA POF Advantages for This Application

1. **GIC Immunity:** Zero conductive path — no antenna for geomagnetically induced currents
2. **EM Immunity:** Unaffected by 500 kW of 1–100 kHz magnetic fields
3. **High Temperature Sensitivity:** 0.15 nm/°C (15× silica) enables 0.1°C resolution with simpler interrogator
4. **Radiation Hardness:** PMMA tolerates gamma/neutron flux better than silica
5. **In-House Drawable:** CSMFAB Materials Study Part IV shows $0.08–$0.15/m vs $0.22–$0.80 commercial

---

## 6. PID Control Architecture — ±5°C Zone Control with Resonance Tracking

The control system maintains each zone at its thermal setpoint while simultaneously tracking the resonant frequency of the Class E inverter to maintain ZVS.

### 6.1 Dual-Loop Control Structure

```
                    ┌─────────────────────┐
   T_setpoint ────►│   Thermal PID       │───► Power Command (kW)
                    │   (Outer Loop)      │       100 ms update
                    └─────────┬───────────┘
                              │
                              ▼
                    ┌─────────────────────┐
                    │   Power-to-Freq     │
                    │   Mapping Table     │
                    └─────────┬───────────┘
                              │
                              ▼
                    ┌─────────────────────┐
   V_DS Zero-Cross─►│   Resonance Tracker │───► Varactor Bias / Cap Bank
   (Inner Loop)     │   (Inner Loop)      │       10 ms update
                    └─────────────────────┘
```

### 6.2 Thermal PID (Outer Loop) — 100 ms Update

$$u(t) = K_p e(t) + K_i \int e(t) dt + K_d \frac{de(t)}{dt}$$

| Zone | K<sub>p</sub> | K<sub>i</sub> (s⁻¹) | K<sub>d</sub> (s) | Anti-Windup |
|------|--------------|-------------------|------------------|-------------|
| Z1–Z2 | 0.8 | 0.02 | 0.5 | ±10% output clamp |
| Z3 | 1.0 | 0.03 | 0.8 | ±10% |
| Z4–Z5 | 1.2 | 0.05 | 1.0 | ±10% |
| Z6 | 1.5 | 0.08 | 1.2 | ±10% |
| Z7 | 1.8 | 0.10 | 1.5 | ±10% |
| Z8 | 2.0 | 0.15 | 2.0 | ±10% |

Gains increase at lower frequencies (higher power zones) because thermal mass dominates response.

### 6.3 Resonance Tracker (Inner Loop) — 10 ms Update

The Class E inverter maintains ZVS by detecting the switch voltage zero-crossing and comparing to the gate drive timing. A phase-locked loop (PLL) structure adjusts the varactor bias voltage to align the voltage zero-crossing with the gate turn-on instant:

$$\phi_{error} = t_{V_{DS}=0} - t_{gate-on}$$

$$\Delta V_{varactor} = K_{p,PLL} \phi_{error} + K_{i,PLL} \int \phi_{error} dt$$

This inner loop runs at 100 Hz (10 ms), 10× faster than the thermal loop, ensuring ZVS is maintained during thermal transients.

### 6.4 Feedforward Compensation

A feedforward term based on the zone's thermal model predicts the power required for the next setpoint change:

$$P_{ff} = m c_p \frac{dT}{dt} + h A (T - T_{amb}) + \epsilon \sigma A (T^4 - T_{amb}^4)$$

Where the radiative term dominates above 800°C. The feedforward reduces thermal PID integral windup during ramp phases.

---

## 7. Selective Heating Physics — Conductivity/Permeability as Material Selector

The fundamental sorting mechanism of the Aegis-Forge I is the frequency-dependent coupling of the induction field to different material classes.

### 7.1 Coupling Coefficient Derivation

The power absorbed by a material in an alternating magnetic field:

$$P_{abs} = \frac{\pi^2 B_{peak}^2 d^2 f^2 V}{6 \rho} \quad \text{(non-magnetic, } \delta \gg d\text{)}$$

$$P_{abs} = \frac{\pi B_{peak}^2 f V}{\mu} \quad \text{(magnetic, } \delta \ll d\text{)}$$

Where $V$ = volume of material, $d$ = characteristic dimension.

### 7.2 Selective Heating Matrix

| Material Class | ρ (nΩ·m) | μ<sub>r</sub> | Coupling at 100 kHz | Coupling at 10 kHz | Coupling at 1 kHz |
|----------------|----------|--------------|---------------------|-------------------|------------------|
| Copper | 16.8 | 1 | Very High | High | Moderate |
| Aluminum | 26.5 | 1 | High | Moderate | Low |
| Zinc (liq) | 120 | 1 | Moderate | Low | Very Low |
| Lead (liq) | 450 | 1 | Low | Very Low | Negligible |
| Iron (ferro) | 97 | 5000 | Extreme | Very High | High |
| Steel | 720 | 200 | High | Moderate | Low |
| Ceramics | 10¹² | 1 | None | None | None |
| Polymers | 10¹⁵ | 1 | None | None | None |
| BFRP | 10¹⁰ | 1 | None | None | None |

**Design rule:** At Z7 (2 kHz), ferrous materials heat 50× more than aluminum. At Z5 (10 kHz), aluminum heats 15× more than zinc. At Z1–Z2 (100 kHz), only very thin conductive foils couple — bulk plastics and organics do not heat directly.

### 7.3 Thermal-EM Coupling in Mixed Charge

In a real feedstock batch, materials are mixed. The induction field creates a **thermal gradient** within the charge:

1. **Ferrous pieces** heat first and hottest (hysteresis + eddy)
2. **Non-ferrous conductors** (Cu, Al) heat second (eddy only)
3. **Resistive metals** (Zn, Pb, Sn) heat third
4. **Dielectrics** (ceramics, plastics, glass) heat only by conduction from hot neighbors

This natural sorting is enhanced by the drum rotation — as materials liquefy at different temperatures, centrifugal force segregates them radially before port ejection.

---

## 8. 3-Phase Power Distribution — 480V Delta, Isolation, Harmonic Filtering

### 8.1 Supply Architecture

```
Grid (480V Δ, 60 Hz)
    │
    ├──► Isolation Transformer Bank (3 × 200 kVA, Δ-Y, BFRP case)
    │       │
    │       ├──► Inverter Module 1 (Zone 1) + LCL Filter
    │       ├──► Inverter Module 2 (Zone 2) + LCL Filter
    │       ├──► Inverter Module 3 (Zone 3) + LCL Filter
    │       ├──► Inverter Module 4 (Zone 4) + LCL Filter
    │       ├──► Inverter Module 5 (Zone 5) + LCL Filter
    │       ├──► Inverter Module 6 (Zone 6) + LCL Filter
    │       ├──► Inverter Module 7 (Zone 7) + LCL Filter
    │       └──► Inverter Module 8 (Zone 8) + LCL Filter
    │
    └──► Neutral Grounding Resistor (NGR) — 5 A limit
```

### 8.2 Isolation Transformer Specifications

- **Rating:** 200 kVA each (3 total, one per phase group)
- **Primary:** 480 V Δ, withstand 10 kV BIL
- **Secondary:** 400 V Y (floating, no neutral connection to ground)
- **Insulation:** Class H (180°C), BFRP housing, vacuum pressure impregnated
- **Leakage Inductance:** 3% (integrated with LCL filter)
- **Inter-winding Capacitance:** <50 pF (minimizes common-mode noise)

### 8.3 LCL Harmonic Filter (Per Module)

| Parameter | Value |
|-----------|-------|
| **Topology** | LCL (L1 = 200 μH, C = 10 μF, L2 = 50 μH) |
| **Resonant Frequency** | 3.5 kHz (damped) |
| **Target Harmonics** | 5th (300 Hz), 7th (420 Hz), 11th (660 Hz), 13th (780 Hz) |
| **Attenuation** | >40 dB at switching harmonics |
| **Capacitor** | Film (PP), 10 μF, 1000 VAC, ZrO₂ case |
| **Inductors** | Nanocrystalline core, PEX-a cooling, BFRP housing |

### 8.4 GIC Immunity Design

The entire power distribution system is designed for Carrington-level geomagnetic disturbance (dB/dt = 5000 nT/s, inducing 10–100 V/km on transmission lines):

1. **Floating secondary:** No path for DC/low-f GIC to enter process electronics
2. **NGR limits fault current:** 5 A max ground fault
3. **All-dielectric control:** PMMA POF for all signals — no copper wires to act as antennas
4. **BFRP transformer housing:** Non-conductive, no eddy current heating from GIC
5. **Surge protection:** Gas discharge tubes (GDT) at transformer primary, 3 kA rating

---

## 9. Electrical Safety & SIL-3 — Arc Flash, Ground Fault, Carrington Hardening

### 9.1 Safety Integrity Level 3 (SIL-3) Architecture

The power electronics subsystem achieves SIL-3 (IEC 61508) through:

| Safety Function | Implementation | PFD<sub>avg</sub> |
|-----------------|----------------|-------------------|
| Over-temperature shutdown | Dual FBG sensors (2oo3 voting) | 1×10⁻⁴ |
| Over-current protection | GaN desaturation detection (hardware) | 5×10⁻⁵ |
| Ground fault detection | NGR + residual current monitor | 2×10⁻⁴ |
| Arc flash mitigation | BFRP enclosure, no exposed conductors | 1×10⁻⁴ |
| Emergency stop | Hardwired optical E-stop (PMMA POF) | 1×10⁻⁴ |

**Total PFD<sub>avg</sub> = 5.5×10⁻⁴** (meets SIL-3: 10⁻⁴ to 10⁻³)

### 9.2 Arc Flash Mitigation

- **No exposed conductors** inside the BFRP pressure vessel boundary
- **All connections** are bolted, torque-verified, insulated with ZrO₂ sleeves
- **Incident energy** < 1.2 cal/cm² at working distance (PPE Category 0)
- **Arc-resistant switchgear** not required — enclosed in BFRP

### 9.3 Ground Fault Protection

- **High-resistance grounding** (5 A NGR) limits fault current
- **Residual current monitors** on each phase (30 mA trip, 100 ms)
- **PMMA POF communication** ensures fault signals reach controller even during GIC event

### 9.4 Carrington Event Hardening

| Threat | Mitigation |
|--------|------------|
| Geomagnetically Induced Current (DC) | Floating secondary, NGR, no earth reference |
| E1 HEMP (fast pulse) | All-dielectric control (PMMA POF), no copper antennas |
| E2 HEMP (intermediate) | GDT surge protection at grid interface |
| E3 HEMP (slow, GIC-like) | Same as GIC — floating architecture |
| Surface charging (space) | Conductive YInMn Blue glaze provides bleed path |

---

## 10. Scaling Laws — 226L to 20,000L

The Aegis-Forge I architecture scales from the 226 L prototype to 20,000 L production units.

### 10.1 Geometric Scaling

| Parameter | 226 L (Lab) | 2,000 L (Pilot) | 20,000 L (Production) |
|-----------|-------------|-----------------|----------------------|
| Drum Diameter | 600 mm | 1200 mm | 2500 mm |
| Drum Length | 800 mm | 1800 mm | 4000 mm |
| Wall Thickness | 35 mm | 50 mm | 80 mm |
| Volume | 226 L | 2,035 L | 19,635 L |
| Rotational Speed | 500 RPM | 350 RPM | 240 RPM |
| G-Force (at wall) | 84.5 G | 82 G | 81 G |

### 10.2 Power Scaling

Power scales with surface area (heat loss) and volume (thermal mass):

$$P_{scale} = P_{ref} \left( \frac{V}{V_{ref}} \right)^{2/3} \times \text{efficiency factor}$$

| Scale | Volume | Total Power | Per-Zone Power | Inverter Count |
|-------|--------|-------------|----------------|----------------|
| Lab | 226 L | 500 kW | 62.5 kW | 8 × 62.5 kW |
| Pilot | 2,000 L | 2.1 MW | 262 kW | 8 × 262 kW |
| Production | 20,000 L | 12.5 MW | 1.56 MW | 16 × 780 kW (paralleled) |

### 10.3 Inverter Paralleling Strategy

At production scale, each zone uses multiple inverter modules in parallel with current-sharing control:
- **Master-slave current sharing** via optical fiber (PMMA POF)
- **Phase interleaving** (180° for 2 modules, 120° for 3) reduces ripple
- **Common DC bus** with individual AC filters per module

---

## 11. Performance Specifications — 12-Parameter Validation Table

| # | Parameter | Specification | Test Method |
|---|-----------|---------------|-------------|
| 1 | Total Output Power | 500 kW ± 2% | Calorimetric |
| 2 | Zone Power Accuracy | ±3% of setpoint | Load bank |
| 3 | Temperature Control | ±5°C (steady state) | FBG validation |
| 4 | Temperature Ramp Rate | 50°C/min (max) | Step response |
| 5 | Inverter Efficiency | >97% (all zones) | Electrical measurement |
| 6 | THD (grid current) | <5% (IEEE 519) | Power analyzer |
| 7 | Power Factor | >0.98 (fundamental) | Power analyzer |
| 8 | Resonance Tracking Bandwidth | 100 Hz | Frequency sweep |
| 9 | FBG Update Rate | 125 Hz/sensor | Interrogator spec |
| 10 | Fault Detection Time | <10 ms (desat) | Simulated fault |
| 11 | E-stop Response | <50 ms (optical) | E-stop test |
| 12 | GIC Immunity | Survive 100 A/km | Simulated GIC |

---

## 12. Downstream Integration — Assembly Line 113, Coil Alignment, Sensor Verification

### 12.1 Mechanical Interface

The induction coil bank mounts to the BFRP pressure vessel via eight BFRP flange rings (one per zone). Each ring has:
- **Alignment pins:** ZrO₂ ceramic, 12 mm diameter, ±0.05 mm tolerance
- **Bolt pattern:** 16 × M10 PEEK CF40 bolts, 25 Nm torque
- **Gap adjustment:** 15 mm coil-to-drum gap, shim-adjustable ±2 mm

### 12.2 Assembly Sequence (CSMFAB 113)

1. **Drum installation:** ZrB₂-SiC drum lowered into BFRP vessel
2. **Coil bank insertion:** 8-zone coil assembly slides over drum (crane-assisted)
3. **Flange bolting:** BFRP flanges torqued in star pattern
4. **Water circuit connection:** PEX-a quick-connect fittings, leak test @ 10 bar
5. **Optical fiber routing:** PMMA POF from FBG sensors to interrogator rack
6. **Power cable pull:** BFRP-armored cables (no copper exposed) to inverter modules
7. **Alignment verification:** Laser tracker confirms coil-to-drum concentricity <0.1 mm
8. **Cold commissioning:** Dry run at 100 RPM, no power, verify rotation, vibration <2 mm/s
9. **Hot commissioning:** Progressive power-up by zone, FBG calibration, PID tuning

### 12.3 Sensor Verification Protocol

Before each batch:
1. **FBG baseline:** All 384 sensors read at ambient — verify ±0.5°C agreement
2. **Interrogator self-test:** Wavelength calibration against reference FBG
3. **Resonance check:** Each inverter swept 80–120% nominal frequency, verify ZVS
4. **Thermal model update:** Feed ambient conditions, feedstock estimate to predictive model
5. **Go/No-Go:** All checks pass → batch start authorized

---


---

## Appendix A: Detailed Inverter Schematics and BOM

### A.1 Single-Line Diagram (Per Zone)

```
480V Δ Primary
     │
     ▼
┌─────────────────────────────────────┐
│  Isolation Transformer (200 kVA)    │
│  Δ-Y, 480V→400V, Floating Secondary │
└─────────────────────────────────────┘
     │
     ▼
┌─────────────────────────────────────┐
│  LCL Harmonic Filter                │
│  L1=200μH │ C=10μF │ L2=50μH        │
└─────────────────────────────────────┘
     │
     ▼
┌─────────────────────────────────────┐
│  GaN Class E Resonant Inverter      │
│  ┌─────────────────────────────┐    │
│  │  Half-Bridge: 2× GS66516T   │    │
│  │  Bootstrapped High-Side Drv │    │
│  │  Varactor Tuning Network    │    │
│  │  Switched Cap Bank (6-bit)  │    │
│  └─────────────────────────────┘    │
│  Resonant Tank: Lr + Cshunt         │
│  Output: 1–100 kHz, 0–500 kW       │
└─────────────────────────────────────┘
     │
     ▼
┌─────────────────────────────────────┐
│  Induction Coil (8-turn Cu tube)    │
│  Al₂O₃ sleeve │ PEX-a cooling       │
│  BFRP housing │ 15mm gap to drum    │
└─────────────────────────────────────┘
     │
     ▼
┌─────────────────────────────────────┐
│  ZrB₂-SiC Drum (Load)               │
│  FBG Sensors (48/zone)              │
│  PMMA POF → Interrogator            │
└─────────────────────────────────────┘
```

### A.2 Bill of Materials (Per Zone)

| Item | Qty | Part Number | Description | CSMFAB Ref |
|------|-----|-------------|-------------|------------|
| 1 | 2 | GS66516T | 650V 16A GaN HEMT | Mat Study IV |
| 2 | 1 | LMG1210 | GaN Half-Bridge Driver | Mat Study IV |
| 3 | 1 | Custom | Microchannel Cold Plate (Cu) | — |
| 4 | 1 | Custom | Resonant Inductor (Nanocrystalline) | — |
| 5 | 6 | C0G/NP0 | Switched Cap Bank (10nF–640nF) | — |
| 6 | 4 | BBY65-02V | Varactor Diodes (2–15pF) | — |
| 7 | 1 | BFRP-Elium | Coil Housing | CSMFAB000000000011 |
| 8 | 8m | Cu Tube 25mm | Coil Conductor | — |
| 9 | 8m | Al₂O₃ Tube | Coil Insulation | Mat Study I |
| 10 | 10m | PEX-a 1/2 | Water Cooling | Mat Study IV |
| 11 | 48 | Custom | FBG Sensor (PMMA) | Mat Study IV |
| 12 | 60m | PMMA POF 1mm | Sensor Fiber | Mat Study IV |
| 13 | 1 | Custom | 1×6 PMMA Splitter | — |
| 14 | 1 | BFRP Pultruded | Mounting Flange | CSMFAB000000000010 |
| 15 | 16 | PEEK CF40 | M10 Bolts | Mat Study IV |
| 16 | 12 | ZrO₂ | Alignment Pins | Mat Study I |

### A.3 Control Electronics BOM (Shared Across 8 Zones)

| Item | Qty | Part Number | Description |
|------|-----|-------------|-------------|
| 1 | 1 | Custom | FPGA Controller (Artix-7, BFRP board) |
| 2 | 1 | Custom | FBG Interrogator (VCSEL + InGaAs PDA) |
| 3 | 8 | TLV320ADC | 16-bit ADC (current sense) |
| 4 | 8 | AMC1306 | Isolated ΣΔ ADC (voltage sense) |
| 5 | 1 | LoRa SX1276 | Wireless Telemetry | Mat Study IV |
| 6 | 1 | LiFePO4 100Wh | Backup Power | Mat Study IV |
| 7 | 1 | BFRP | Control Cabinet |

---

## Appendix B: Derivation of Key Equations

### B.1 Class E ZVS Condition Derivation

For Class E operation with shunt capacitance C:

The switch voltage waveform:
$$v(t) = V_{DD} + \frac{I_{DC}}{\omega C} \sin(\omega t) - \frac{V_{DD} \pi}{2} \sin(\omega t + \phi)$$

ZVS requires $v(0) = 0$ and $dv/dt|_{t=0} = 0$:

$$V_{DD} - \frac{V_{DD} \pi}{2} \sin(\phi) = 0 \Rightarrow \sin(\phi) = \frac{2}{\pi}$$

$$\frac{I_{DC}}{\omega C} - \frac{V_{DD} \pi}{2} \cos(\phi) = 0 \Rightarrow \frac{I_{DC}}{\omega C} = \frac{V_{DD} \pi}{2} \sqrt{1 - \frac{4}{\pi^2}}$$

Solving for optimal load resistance:
$$R_{opt} = \frac{8}{\pi^2 + 4} \frac{V_{DD}^2}{P_{out}} \approx 0.577 \frac{V_{DD}^2}{P_{out}}$$

### B.2 Skin Depth with Temperature-Dependent Resistivity

For metals, resistivity increases linearly with temperature:
$$\rho(T) = \rho_0 [1 + \alpha (T - T_0)]$$

Where $\alpha$ = temperature coefficient of resistance (TCR):
| Material | TCR (×10⁻³/K) |
|----------|--------------|
| Copper | 3.93 |
| Aluminum | 4.29 |
| Iron | 5.0–6.5 |
| Nickel | 6.0 |

Substituting into skin depth:
$$\delta(T) = \sqrt{\frac{2\rho_0[1+\alpha(T-T_0)]}{\omega\mu}}$$

At 1000°C, copper resistivity is ~5× room temperature, increasing skin depth by √5 ≈ 2.2×.

### B.3 Ferromagnetic Heating Enhancement Factor

Below Curie temperature, ferromagnetic materials exhibit hysteresis heating:

$$P_{hyst} = k_h f B_{peak}^n V$$

Where $k_h$ = hysteresis coefficient, $n$ ≈ 1.6–2.0 (Steinmetz exponent).

Total heating power:
$$P_{total} = P_{eddy} + P_{hyst} = \frac{\pi^2 B_{peak}^2 d^2 f^2 V}{6\rho} + k_h f B_{peak}^n V$$

At 2 kHz with B<sub>peak</sub> = 33 mT, iron hysteresis loss dominates eddy current loss by ~10× below Curie.

---

## Appendix C: FBG Interrogator Detailed Design

### C.1 VCSEL Sweep Characteristics

| Parameter | Value |
|-----------|-------|
| Center Wavelength | 750 nm |
| Sweep Range | 650–850 nm (200 nm) |
| Sweep Rate | 1 kHz (triangle wave) |
| Linearity | >99% |
| Output Power | 5 mW |
| SMSR | >40 dB |
| RIN | <-140 dB/Hz |

### C.2 Detection Scheme

Balanced photodetection with InGaAs PIN diodes:
- **Bandwidth:** 2 MHz (sufficient for 1 kHz sweep × 200 nm)
- **NEP:** 5 pW/√Hz
- **Dynamic Range:** 80 dB
- **Resolution:** 0.1 pm (enables 0.1°C with 0.15 nm/°C sensitivity)

### C.3 WDM Filter Bank

8-channel thin-film filter array (PMMA substrate):
| Channel | Center λ | Bandwidth | Isolation |
|---------|----------|-----------|-----------|
| CH1 | 680 nm | 20 nm | >30 dB |
| CH2 | 700 nm | 20 nm | >30 dB |
| CH3 | 720 nm | 20 nm | >30 dB |
| CH4 | 740 nm | 20 nm | >30 dB |
| CH5 | 760 nm | 20 nm | >30 dB |
| CH6 | 780 nm | 20 nm | >30 dB |
| CH7 | 800 nm | 20 nm | >30 dB |
| CH8 | 820 nm | 20 nm | >30 dB |

---

## Appendix D: PID Tuning Methodology

### D.1 Ziegler-Nichols Closed-Loop Tuning

For each zone, the ultimate gain K<sub>u</sub> and period P<sub>u</sub> are found by disabling integral/derivative and increasing K<sub>p</sub> until sustained oscillation:

| Zone | K<sub>u</sub> | P<sub>u</sub> (s) | K<sub>p</sub> (0.6K<sub>u</sub>) | T<sub>i</sub> (0.5P<sub>u</sub>) | T<sub>d</sub> (0.125P<sub>u</sub>) |
|------|--------------|------------------|----------------------------------|--------------------------------|----------------------------------|
| Z1–Z2 | 2.5 | 45 | 1.5 | 22.5 | 5.6 |
| Z3 | 2.0 | 60 | 1.2 | 30 | 7.5 |
| Z4–Z5 | 1.8 | 90 | 1.08 | 45 | 11.25 |
| Z6 | 1.5 | 120 | 0.9 | 60 | 15 |
| Z7 | 1.3 | 180 | 0.78 | 90 | 22.5 |
| Z8 | 1.1 | 240 | 0.66 | 120 | 30 |

These are starting values; final tuning adds feedforward and anti-windup.

### D.2 Anti-Windup Implementation

```c
// Back-calculation anti-windup
error = T_setpoint - T_measured;
integral += error * dt;

// Anti-windup: track output saturation
output = Kp * error + Ki * integral + Kd * (error - prev_error) / dt;
if (output > output_max || output < output_min) {
    // Back-calculate integral to prevent windup
    integral -= (output - sat_output) / Kt;  // Kt = tracking gain
}
output = clamp(output, output_min, output_max);
prev_error = error;
```

---

## Appendix E: Harmonic Analysis and IEEE 519 Compliance

### E.1 Expected Harmonic Spectrum (Per Inverter)

Class E inverter input current harmonics (dominated by DC link capacitor charging):

| Harmonic | Frequency | Magnitude (% of fundamental) | IEEE 519 Limit |
|----------|-----------|-----------------------------|----------------|
| 1 (fund) | 60 Hz | 100% | — |
| 5 | 300 Hz | 18% | 4.0% |
| 7 | 420 Hz | 12% | 4.0% |
| 11 | 660 Hz | 6% | 2.0% |
| 13 | 780 Hz | 4% | 2.0% |
| 17 | 1020 Hz | 2.5% | 1.5% |
| 19 | 1140 Hz | 2% | 1.5% |
| 23 | 1380 Hz | 1.5% | 0.6% |
| 25 | 1500 Hz | 1.2% | 0.6% |

### E.2 LCL Filter Performance

With LCL filter (L1=200μH, C=10μF, L2=50μH, R<sub>damp</sub>=2Ω):

| Harmonic | Unfiltered | Filtered | Margin |
|----------|------------|----------|--------|
| 5th | 18% | 0.8% | 5× limit |
| 7th | 12% | 0.5% | 8× limit |
| 11th | 6% | 0.3% | 6.7× limit |
| 13th | 4% | 0.2% | 10× limit |

THD after filtering: **2.1%** (well within 5% limit).

---

## Appendix F: Reliability and MTBF Analysis

### F.1 Component Failure Rates (MIL-HDBK-217F, Ground Benign, 25°C)

| Component | Qty/Zone | λ (failures/10⁶ hrs) | Total λ/Zone |
|-----------|----------|---------------------|--------------|
| GS66516T GaN | 2 | 0.5 | 1.0 |
| LMG1210 Driver | 1 | 0.3 | 0.3 |
| Film Capacitors | 12 | 0.02 | 0.24 |
| Varactor Diodes | 4 | 0.1 | 0.4 |
| Nanocrystalline Inductor | 1 | 0.05 | 0.05 |
| Cold Plate (Cu) | 1 | 0.01 | 0.01 |
| FBG Sensors | 48 | 0.005 | 0.24 |
| PMMA POF (60m) | 1 | 0.1 | 0.1 |
| PEX-a Tubing | 10m | 0.02 | 0.02 |
| **Total per Zone** | | | **2.36** |

### F.2 System MTBF

For 8 zones in series (any zone failure stops process):
$$\lambda_{system} = 8 \times 2.36 = 18.88 \text{ failures/10}^6 \text{ hrs}$$
$$MTBF = \frac{1}{\lambda_{system}} = 52,966 \text{ hours} \approx 6.0 \text{ years}$$

With redundancy (N+1 spares for inverters): MTBF > 20 years.

---

## Appendix G: Commissioning Test Procedures

### G.1 Factory Acceptance Test (FAT) - Per Module

| Test | Procedure | Pass Criteria |
|------|-----------|---------------|
| 1. Hi-Pot | 2500 VDC, 60s, primary-secondary | <1 mA leakage |
| 2. Insulation Resistance | 1000 VDC, 60s | >100 MΩ |
| 3. Winding Resistance | 4-wire Kelvin | <5 mΩ per turn |
| 4. Inductance | LCR meter @ 1 kHz | Within ±5% of design |
| 5. Resonant Frequency | Sweep 500Hz–200kHz | Within ±2% of target |
| 6. ZVS Verification | Scope V<sub>DS</sub> @ full power | dv/dt = 0 at turn-on |
| 7. Efficiency | Calorimetric @ 25/50/75/100% load | >97% all points |
| 8. Thermal | IR camera @ full load, 30 min | T<sub>j</sub> < 100°C |
| 9. FBG Calibration | Ice bath (0°C) + oil bath (100°C) | ±0.5°C accuracy |
| 10. PID Response | Step 50°C, measure settling | <30s, <10% overshoot |

### G.2 Site Acceptance Test (SAT) - Full System

| Test | Procedure | Pass Criteria |
|------|-----------|---------------|
| 1. Mechanical Alignment | Laser tracker | <0.1 mm concentricity |
| 2. Rotation Test | 0–500 RPM, 1 hr | Vibration <2 mm/s RMS |
| 3. Vacuum Leak Check | Helium leak detector | <1×10⁻⁶ mbar·L/s |
| 4. Water Circuit | 10 bar, 1 hr | Zero leaks |
| 5. Optical Fiber | OTDR + power meter | <0.5 dB/km loss |
| 6. Cold Power-Up | All zones 10% power, 30 min | No faults |
| 7. Zone Calibration | Each zone to 500°C, hold 1 hr | ±5°C steady state |
| 8. Full Power | All zones 100%, 4 hr | Stable, no thermal runaway |
| 9. E-Stop Test | Activate optical E-stop | All inverters off <50 ms |
| 10. GIC Simulation | Inject 10 Hz, 100 A/km | No protection trips |

---

*End of PROD-10: Induction Power Electronics*
*Total Lines: ~900+ (including appendices)*
*Next: PROD-11 Feed Preparation & Shredding*

---

## Appendix H: Cross-Reference Matrix

### H.1 PROD Document Dependencies

| This Document | Depends On | Provides To |
|---------------|------------|-------------|
| PROD-10 | PROD-01 (Architecture), PROD-03 (Coil Design) | PROD-23 (Control System), PROD-24 (Thermal Modeling) |
| PROD-10 | Materials Study IV (GaN, PMMA, PEX-a) | FOLLOW-02 (Coil Optimization), FOLLOW-10 (GaN Thermal) |
| PROD-10 | CSMFAB-P003 (GIC Blocker) | FOLLOW-26 (Fire Protection), FOLLOW-27 (Rad Hardening) |

### H.2 Key Interface Parameters

| Interface | Parameter | Value | Tolerance |
|-----------|-----------|-------|-----------|
| PROD-03 → PROD-10 | Coil inductance (per zone) | 2.5–15 μH | ±5% |
| PROD-03 → PROD-10 | Coil resistance (per zone) | 5–15 mΩ | ±10% |
| PROD-10 → PROD-23 | Power command update rate | 100 ms | ±1 ms |
| PROD-10 → PROD-23 | FBG data rate | 125 Hz/sensor | ±5 Hz |
| PROD-10 → PROD-24 | Thermal model power input | 0–500 kW/zone | ±3% |
| PROD-10 → FOLLOW-10 | Cold plate flow rate | 2 L/min/module | ±0.2 L/min |

---

## Appendix I: Manufacturing and Assembly Drawings

### I.1 Inverter Module Assembly Sequence

```
STEP 1: Cold Plate Preparation
  ► CNC machine copper cold plate (microchannels, mounting holes)
  ► Electroless Ni-P plate (5 μm)
  ► Pressure test @ 20 bar water
  ► Cleanliness: ISO 14644-1 Class 7

STEP 2: GaN Mounting
  ► Apply Indium foil TIM (50 μm) to cold plate
  ► Place GS66516T die (automated pick-and-place, ±25 μm)
  ► Ultrasonic wire bond (Al wire, 25 μm, 4 bonds per die)
  ► X-ray inspection: voids < 2%, shear > 20 MPa

STEP 3: Gate Driver PCB Assembly
  ► SMT: LMG1210, bootstrap caps, gate resistors
  ► Conformal coat (Parylene C, 25 μm)
  ► Mount to cold plate (thermal vias to GaN pads)
  ► Bolt: 4× M3 PEEK CF40, 0.5 Nm

STEP 4: Resonant Tank Assembly
  ► Wind nanocrystalline inductor (Litz wire, 50 strands × 0.05mm)
  ► Vacuum pressure impregnate (epoxy, BFRP bobbin)
  ► Mount switched cap bank (SMD C0G, reflow)
  ► Mount varactor array (SOT-23, reflow)
  ► Connect to GaN output (copper bus bar, insulated)

STEP 5: Coil Connection
  ► Feed Cu tube through Al₂O₃ sleeve
  ► Braze Cu tube to inverter output bus (Ag-Cu braze, 780°C)
  ► Pressure test coil water circuit @ 15 bar
  ► Install BFRP housing (2 halves, adhesive bond)

STEP 6: Integration Test
  ► Hi-pot, insulation resistance
  ► Cold power-up (10% power, 5 min)
  ► ZVS verification @ 3 frequencies
  ► Thermal soak (100% power, 30 min)
  ► FBG calibration (if sensors pre-installed)

STEP 7: Ship Set
  ► Package in BFRP crate (custom foam)
  ► Include: test report, calibration cert, spare fuses
```

### I.2 Critical Dimensions and Tolerances

| Feature | Nominal | Tolerance | Measurement Method |
|---------|---------|-----------|-------------------|
| Coil tube OD | 25.00 mm | ±0.05 mm | CMM |
| Coil tube ID | 20.00 mm | ±0.05 mm | CMM |
| Al₂O₃ sleeve ID | 25.10 mm | ±0.05 mm | Go/No-Go gauge |
| Coil-to-drum gap | 15.0 mm | ±0.5 mm | Laser micrometer |
| Cold plate flatness | — | 0.02 mm | Optical flat |
| FBG sensor position | Per drawing | ±1.0 mm | Optical comparator |
| Flange bolt circle | 850 mm | ±0.1 mm | CMM |
| Alignment pin diameter | 12.00 mm | +0.000/-0.011 mm | Go/No-Go |

### I.3 Material Traceability Requirements

All structural and thermal components require full material traceability:
- **Heat/lot numbers** recorded for: Cu tube, Al₂O₃, BFRP, PEEK CF40, ZrO₂, GaN die
- **Certificates of conformance** for: GaN (Wolfspeed), PMMA POF (Mitsubishi), PEX-a (Uponor)
- **First article inspection** (FAI) per AS9102 for first 3 units per lot
- **Non-destructive examination:** UT for Cu braze joints, X-ray for wire bonds, dye penetrant for BFRP bonds

---

## Appendix J: Operational Procedures

### J.1 Normal Startup Sequence

1. **Pre-start Checks (T-30 min)**
   - Verify water chiller at 25°C, 16 L/min flow
   - Verify FBG interrogator online, all 384 sensors reporting
   - Verify LoRa telemetry link to control room
   - Verify E-stop circuit continuity (optical loop)

2. **Inverter Power-Up (T-10 min)**
   - Close 480V breaker (soft-start via pre-charge resistors)
   - Verify DC link voltage: 650 VDC ± 5%
   - Enable inverter modules sequentially (Z1→Z8, 10s intervals)
   - Verify ZVS at idle (10% power) for all zones

3. **Drum Rotation Start (T-0 min)**
   - Ramp drum to 50 RPM (piezoelectric motor)
   - Verify rotation sensor (FBG-based encoder on shaft)
   - Confirm coolant ΔT < 2°C across all modules

4. **Thermal Ramp (T+0 to T+180 min)**
   - Load feedstock batch
   - Execute thermal profile per PROD-02 schedule
   - Monitor FBG temperatures, adjust PID as needed
   - Log all data to digital twin (PROD-37)

### J.2 Emergency Shutdown Procedures

| Scenario | Trigger | Action | Recovery |
|----------|---------|--------|----------|
| Over-temperature | Any FBG > T<sub>set</sub> + 25°C | Immediate inverter disable, drum coast-down | Cool to <200°C, investigate |
| Ground fault | NGR current > 5 A | All inverters off, isolate transformer | Megger test, clear fault |
| Arc flash | Optical sensor (PMMA POF) | <1 ms inverter cutoff, E-stop | Replace damaged module |
| GIC event | Grid dV/dt > threshold | Ride-through (floating architecture) | Monitor, log, continue |
| Cooling loss | Flow < 10 L/min or ΔT > 10°C | Graceful power reduction to 20% | Restore cooling, ramp up |
| FBG failure | >10 sensors lost in zone | Zone power limited to 50% | Replace fiber bundle at next outage |

### J.3 Maintenance Intervals

| Interval | Task | Duration | Parts |
|----------|------|----------|-------|
| Daily | Visual inspection, FBG health check | 15 min | — |
| Weekly | Water quality (DI resistivity, pH), filter check | 30 min | Filter cartridge |
| Monthly | Torque check (flange bolts, electrical connections) | 2 hr | — |
| Quarterly | Cold plate cleaning (chemical flush) | 4 hr | Citric acid solution |
| Annually | GaN module inspection (thermal cycling fatigue) | 8 hr | Spare modules |
| 5 Years | FBG fiber bundle replacement | 16 hr | PMMA POF spools |
| 10 Years | Isolation transformer rewind | 40 hr | Rewind kit |

---

## Appendix K: Economic Analysis

### K.1 Capital Cost Breakdown (226L Unit)

| Subsystem | Qty | Unit Cost | Total | Notes |
|-----------|-----|-----------|-------|-------|
| GS66516T GaN (2/zone) | 16 | $45 | $720 | Wolfspeed volume pricing |
| LMG1210 Driver | 8 | $12 | $96 | |
| Microchannel Cold Plate | 8 | $850 | $6,800 | CNC Cu + Ni-P |
| Nanocrystalline Inductor | 8 | $1,200 | $9,600 | Custom wound |
| Film Capacitors (switched bank) | 96 | $8 | $768 | C0G/NP0 |
| Varactor Diodes | 32 | $3 | $96 | BBY65-02V |
| BFRP Housings | 8 | $2,500 | $20,000 | Filament wound |
| Cu Tube (25mm, 8m/zone) | 64m | $45/m | $2,880 | |
| Al₂O₃ Sleeve | 64m | $120/m | $7,680 | |
| PEX-a Tubing | 80m | $3.75/m | $300 | |
| FBG Sensors (384) | 384 | $15 | $5,760 | Custom PMMA |
| PMMA POF (60m/zone) | 480m | $0.40/m | $192 | In-house draw |
| PMMA Splitters (1×6) | 8 | $85 | $680 | Fused biconical |
| FBG Interrogator | 1 | $12,000 | $12,000 | VCSEL + balanced PD |
| FPGA Controller | 1 | $3,500 | $3,500 | Artix-7 BFRP board |
| Isolation Transformers | 3 | $15,000 | $45,000 | 200 kVA, BFRP case |
| LCL Filter Components | 8 sets | $1,800 | $14,400 | |
| **Subtotal Power Electronics** | | | **$130,472** | |
| Installation & Commissioning | | | $35,000 | |
| **Total PROD-10 CAPEX** | | | **$165,472** | |

### K.2 Operating Cost (Per Batch, 226L)

| Cost Item | Per Batch | Annual (500 batches) |
|-----------|-----------|---------------------|
| Electricity (500 kWh @ $0.07/kWh) | $35 | $17,500 |
| Cooling water (makeup, treatment) | $2 | $1,000 |
| PEX-a replacement (annualized) | $0.60 | $300 |
| FBG fiber replacement (annualized) | $3.20 | $1,600 |
| GaN module replacement (0.5%/yr) | $0.72 | $360 |
| **Total OPEX/Batch** | **$41.52** | **$20,760/yr** |

### K.3 Revenue Contribution

The power electronics enables the thermal cascade that produces:
- **Al slugs:** ~150 kg/batch @ $2.50/kg = $375
- **Cu slugs:** ~80 kg/batch @ $9.00/kg = $720
- **Fe/Steel slugs:** ~400 kg/batch @ $0.50/kg = $200
- **Zn/Pb/Sn slugs:** ~45 kg/batch @ $3.00/kg = $135
- **Precious metals (Au/Ag/Pd):** ~200 g/batch @ $65/g = $13,000
- **RE oxides:** ~25 kg/batch @ $45/kg = $1,125
- **Carbon char:** ~60 kg/batch @ $0.80/kg = $48
- **Mineral concentrate:** ~800 kg/batch @ $0.15/kg = $120

**Gross revenue/batch: ~$15,723**
**Net margin (after OPEX, labor, maintenance): ~$12,000/batch**
**ROI on PROD-10 CAPEX: ~14 batches (at 500 batches/yr = 10 days)**

---

*End of PROD-10: Induction Power Electronics*
*Total Lines: ~950+ (including all appendices)*
*Next: PROD-11 Feed Preparation & Shredding*