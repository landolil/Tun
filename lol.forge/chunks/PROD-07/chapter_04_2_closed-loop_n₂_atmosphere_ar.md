## 2. CLOSED-LOOP N₂ ATMOSPHERE ARCHITECTURE

### 2.1 System Architecture & N₂ Circuit Description

The entire drum and gas handling system operates as a sealed nitrogen atmosphere loop. Nitrogen was selected as the carrier gas for three fundamental reasons:

1. **Inertness at cascade temperatures**: N₂ remains chemically inert across the full 25°C → 1676°C operating range. Unlike CO₂ (which participates in Boudouard reaction above 700°C) or argon (cost-prohibitive at scale), nitrogen provides thermodynamic stability without side reactions.

2. **Thermal ballast properties**: N₂ specific heat capacity (1.04 kJ/kg·K at 300K, rising to 1.15 kJ/kg·K at 1000K) provides substantial thermal mass for temperature stabilization. The 2-3 kg N₂ inventory per cycle acts as a thermal flywheel, dampening induction power transients.

3. **Industrial availability & cost**: Bulk liquid nitrogen at $0.09/kg (industrial grade) yields a make-up gas cost of < $0.30 per 50 kg feedstock batch — negligible relative to recovered metal value ($500-5000/batch).

The N₂ circuit comprises the following subsystems in series:

```
N₂ STORAGE & SUPPLY SUBSYSTEM
┌─────────────────────────────────────────────────────────────────────────────┐
│  350 BAR BFRP-LINED STORAGE VESSEL (CSMFAB000000000011)                     │
│  ├─ Capacity: 50 L water volume × 350 bar = 17.5 kg N₂ equivalent           │
│  ├─ Liner: BFRP/Elium® (E-glass/epoxy composite, 12mm wall)                │
│  ├─ External: YInMn Blue glaze (SRI=115) for solar reflectance              │
│  ├─ Level sensor: FBG optical (PMMA fiber, no metallic path)                │
│  └─ Outlet: PEEK CF40 needle valve with ZrO₂ seat                           │
│                                                                              │
│  KFG GETTER PURIFIER (ZrO₂ CERAMIC BED)                                     │
│  ├─ Material: ZrO₂ granules (3-5 mm) doped with Zr getter alloy             │
│  ├─ Capacity: 0.5 kg Zr getter → 500 cycles at 10 ppm O₂ removal            │
│  ├─ Operating temp: 400°C (regenerates getter by H₂ reduction)              │
│  ├─ Pressure drop: < 0.1 bar at 50 SLPM flow                                │
│  └─ Body: BFRP/Elium® cylinder with ZrO₂ end fittings                       │
│                                                                              │
│  SI-C RESISTIVE PRE-HEATER                                                  │
│  ├─ Power: 5 kW (controlled via GaN inverter, Zone 1 frequency)             │
│  ├─ Element: SiC helical coil (CSMFAB000000000002)                          │
│  ├─ Max outlet temp: 200°C (pre-heats N₂ before drum entry)                 │
│  ├─ Thermal response: < 30s to steady state                                 │
│  └─ Housing: ZrO₂ ceramic sheath, BFRP shell                                │
└─────────────────────────────────────────────────────────────────────────────┘

DRUM GAS SWEEP & EXHAUST
┌─────────────────────────────────────────────────────────────────────────────┐
│  DRUM INTERIOR (600mm ID × 800mm length, ZrB₂-SiC)                          │
│  ├─ N₂ inlet: Tangential entry at 45° to drum axis (promotes swirl)         │
│  ├─ Sweep flow: 10-50 SLPM (variable by stage)                              │
│  ├─ Residence time: 2-10 seconds (function of RPM and flow)                 │
│  ├─ Exhaust port: Axial centerline, 50mm diameter                           │
│  ├─ Centrifugal separation: > 5 µm particles retained in drum               │
│  └─ Gas temperature at exit: Stage-dependent (120°C → 1676°C)               │
│                                                                              │
│  ZERO₂ CERAMIC CYCLONE SEPARATOR (ZrO₂ BODY)                                │
│  ├─ Inlet velocity: 25 m/s (tangential)                                     │
│  ├─ Cut size: 2.5 µm @ 95% efficiency (Stokes number > 1)                   │
│  ├─ Pressure drop: 0.15 bar at design flow                                  │
│  ├─ Collected particulate: Char, metal fines, ceramic dust                  │
│  ├─ Discharge: Rotary airlock (PEEK CF40, ZrO₂ rotor) to Stage 8 hopper     │
│  └─ Clean gas outlet: Axial, to condenser cascade                           │
└─────────────────────────────────────────────────────────────────────────────┘

STAGE-SPECIFIC CONDENSER CASCADE
┌─────────────────────────────────────────────────────────────────────────────┐
│  TRAIN A: MOISTURE CONDENSER (STAGE 1 OUTLET)                               │
│  ├─ Inlet: N₂ + H₂O vapor @ 120°C, 1.2 bar, 20 SLPM                         │
│  ├─ Type: Tube-and-shell, counterflow                                       │
│  ├─ Tubes: ZrO₂-lined Al₂O₃ ceramic (OD 12mm, ID 8mm, 200 tubes)            │
│  ├─ Shell: BFRP/Elium® (E-glass/epoxy, 8mm wall)                            │
│  ├─ Coolant: PEX-a water circuit @ 10°C supply, 15°C return                 │
│  ├─ Condensation temp profile: 80°C → 25°C → 5°C (three zones)              │
│  ├─ Water collection: PEEK CF40-bottomed vessel with ZrO₂ drain valve       │
│  ├─ Water quality: pH 6.5-8 (Ca(OH)₂ dosing if acidic), 5 µm ZrO₂ filter    │
│  └─ Reuse: AMLS Stage 0 acoustic coupling water circuit                     │
│                                                                              │
│  TRAIN B: ORGANIC VAPOR CONDENSER (STAGE 2 OUTLET)                          │
│  ├─ Inlet: N₂ + polymer vapors @ 300-450°C, 1.2 bar, 15 SLPM                │
│  ├─ Primary condenser (80°C): Heavy fraction (C20+ wax-like)                │
│  │  ├─ Tube: ZrO₂ ceramic, 50 tubes × 1m length                             │
│  │  ├─ Coolant: Ethylene glycol 30% @ 60°C supply                           │
│  │  └─ Collection: ZrO₂ vessel, heated jacket (prevents solidification)      │
│  ├─ Secondary condenser (25°C): Medium fraction (C6-C20 liquid organics)    │
│  │  ├─ Tube: Al₂O₃ ceramic, 100 tubes × 1.5m length                         │
│  │  ├─ Coolant: Chilled water @ 10°C supply                                 │
│  │  ├─ Calorific value: 35-42 MJ/kg (combustible liquid)                   │
│  │  └─ MMA recovery window: 100-105°C fraction (if Elium® in feedstock)     │
│  ├─ Tertiary cooler (5°C): Light organics + residual water                  │
│  │  └─ Polishing: Stage 3 char activated carbon bed                         │
│  └─ Total heat removal: 45-85 kW depending on feedstock polymer content     │
│                                                                              │
│  TRAIN C: PYROLYSIS GAS RECOVERY (STAGE 3 OUTLET)                           │
│  ├─ Inlet: N₂ + CO/CH₄/H₂/CO₂/BTX @ 600-800°C, 1.5 bar, 25 SLPM             │
│  ├─ Quench: Direct water spray (ZrO₂ nozzles) to 200°C in < 0.5s            │
│  ├─ Particulate removal: ZrO₂ cyclone (same as drum exhaust)                │
│  ├─ Tar/PAH capture: Activated carbon bed (Stage 3 char, self-supplied)     │
│  │  ├─ Bed volume: 50 L, residence time: 2s                                 │
│  │  ├─ Capacity: 200 g tar/kg char (regenerated in Stage 8)                 │
│  │  └─ Char-tar composite → Stage 8 re-feed (closed loop)                   │
│  ├─ Combustion option A (preferred): SiC-tipped ceramic burner              │
│  │  ├─ Burner: CSMFAB000000000002 design, 500 kW thermal                   │
│  │  ├─ Air supply: Pre-heated to 400°C (heat exchanger)                     │
│  │  ├─ Flue gas: To Stage 7-8 supplemental heating (reduces induction load) │
│  │  └─ Efficiency: 92% heat recovery to thermal cascade                     │
│  ├─ Reforming option B (future): Steam reforming to H₂                      │
│  │  └─ H₂ storage: CFRP vessel @ 350 bar (CSMFAB000000000105)               │
│  └─ Gas composition (N₂-free basis): CO 25-35%, CH₄ 15-25%, H₂ 20-35%,      │
│     CO₂ 15-20%, BTX 3-8% → Weighted calorific: 18.5 MJ/m³                  │
│                                                                              │
│  TRAIN D: ACID GAS SCRUBBER (HCl, SO₂, HF)                                  │
│  ├─ Inlet: N₂ + acid gases @ 150-200°C, 1.2 bar                             │
│  ├─ Target concentrations: HCl 200-1500 ppm, SO₂ 50-500 ppm, HF < 50 ppm   │
│  ├─ Reagent: Ca(OH)₂ (hydrated lime), $0.15/kg                              │
│  ├─ Reactions: Ca(OH)₂ + 2HCl → CaCl₂ + 2H₂O (ΔH = -148 kJ/mol)            │
│  │  Ca(OH)₂ + SO₂ + ½O₂ → CaSO₄ + H₂O (ΔH = -620 kJ/mol)                   │
│  ├─ Scrubber body: BFRP/Elium® cylinder, 300mm ID × 1000mm packed height    │
│  ├─ Packing: Ca(OH)₂ pellets (3-5mm) on ZrO₂ grid supports                 │
│  ├─ Lime consumption: 0.5-2 kg per 50 kg feedstock batch                   │
│  ├─ pH monitoring: Optical sensor (PMMA fiber, colorimetric)                │
│  ├─ Change-out trigger: Outlet gas pH < 7.0                                 │
│  ├─ Spent products: CaSO₄ (gypsum, construction material), CaCl₂ (de-icing) │
│  └─ Pressure drop: 0.08 bar at design flow                                  │
│                                                                              │
│  TRAIN E: METAL VAPOR CONDENSER (STAGES 4-5 OUTLET)                         │
│  ├─ Inlet: N₂ + Zn vapor (primary) + PbO particulate @ 420-900°C            │
│  ├─ Zn boiling point: 907°C → significant vapor pressure at Stage 4-5 temps │
│  ├─ Pb boiling point: 1749°C → low vapor pressure, but PbO forms           │
│  ├─ High-temp condenser (360°C): Zn liquid droplet condensation             │
│  │  ├─ Column: BFRP shell, ZrO₂ liner, 200mm ID × 800mm height              │
│  │  ├─ Cooling: PEX-a water @ 300°C supply (pressurized)                    │
│  │  ├─ Collection: ZrO₂ ceramic vessel, heated to 450°C (keeps Zn liquid)   │
│  │  ├─ Zn purity: > 99.5% (electrolytic grade after refining)               │
│  │  └─ Recovery efficiency: > 99% of vapor-phase Zn                         │
│  ├─ Low-temp condenser (120°C): Final metal condensation + water wash       │
│  │  └─ Collected: Mixed metal oxides/hydroxides → Stage 8 hydromet feed      │
│  ├─ PbO particulate capture: ZrO₂ cyclone (99.5% for > 0.5 µm)              │
│  │  └─ PbO collection: PEEK CF40 sealed containers (RCRA hazardous)         │
│  └─ Total metal vapor capture: Zn > 99%, Pb > 99.5%                         │
└─────────────────────────────────────────────────────────────────────────────┘

---

### 2.2 System Operating Pressure Control

The Aegis-Forge I operates the entire N₂ atmosphere loop at a **positive gauge pressure of 1.2-2.5 bar** (2.2-3.5 bar absolute). This pressurized operation serves four critical functions:

**1. Oxygen Exclusion (Primary Safety Function)**
At Stage 2 temperatures (300-450°C), any oxygen ingress would cause uncontrolled combustion of thermoplastic polymers, generating uncontrolled thermal excursions, toxic partial oxidation products (dioxins, furans, PAHs), and potential overpressure events. The positive pressure ensures that any leakage is outward (N₂ to atmosphere) rather than inward (air to process). Maximum allowable O₂ concentration in the loop: < 10 ppm (monitored by ZrO₂-based optical O₂ sensor).

**2. Boiling Point Elevation**
Increased system pressure raises the boiling points of volatile species, reducing premature vaporization and improving condensation efficiency in the stage-specific trains:
- Water: 100°C at 1 bar → 120°C at 2 bar (Train A inlet matches this)
- Zinc: 907°C at 1 bar → 945°C at 2.5 bar (improves Zn retention in drum melt)
- Lead: 1749°C at 1 bar → minimal shift (PbO particulate capture dominates)

**3. Pressure-Differential Gas Routing**
The pressure gradient from drum (highest) → condenser cascade → scrubbers → PSA → recycle compressor (lowest) provides the driving force for gas flow without requiring mechanical blowers in the hot process stream. Pressure drops across each element:

| Element | ΔP (bar) | Notes |
|---------|----------|-------|
| Drum internal (inlet to exhaust) | 0.05-0.15 | Function of RPM, flow rate |
| Zero₂ cyclone separator | 0.15 | Fixed geometry, 25 m/s inlet |
| Train A (3-zone condenser) | 0.12 | Counterflow, 200 tubes |
| Train B (3-stage organic) | 0.18 | Highest viscosity gas |
| Train C (pyrolysis quench + carbon) | 0.25 | Water spray + packed bed |
| Train D (lime scrubber) | 0.08 | Pellet bed, low velocity |
| Train E (metal condensers) | 0.10 | Two columns in series |
| PSA columns (adsorption) | 0.15 | Zeolite 13X, 3-5 bar swing |
| Plasma torch | 0.05 | Straight-through ceramic tube |
| **Total loop ΔP** | **1.13** | Design margin to 2.5 bar supply |

**4. Compressor Work Minimization**
By operating at elevated pressure, the recycle compressor handles denser gas (2.5× density at 2.5 bar vs 1 bar), reducing volumetric flow and compressor displacement. Compressor power scales with mass flow, not volumetric flow, so the penalty is modest: ~8 kW for 50 SLPM at 2.5 bar discharge.

### 2.2.1 Pressure Control Architecture

```
PRESSURE CONTROL LOOP
┌─────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│   DRUM PRESSURE TRANSDUCER (FBG OPTICAL)                                    │
│   ├─ Sensor: PMMA fiber with FBG grating, embedded in drum wall             │
│   ├─ Range: 0-5 bar gauge, resolution: 1 mbar                               │
│   ├─ Bandwidth: 100 Hz (captures acoustic pressure waves from AMLS)         │
│   ├─ No metallic element process-side (GIC immune)                          │
│   └─ Signal: Optical interrogator → digital → PID controller                │
│                                                                              │
│   PID CONTROLLER (SIL-3 RATED)                                              │
│   ├─ Setpoint: Stage-dependent (1.2 bar Stage 0-1, 1.8 bar Stage 2-5,       │
│   │           2.2 bar Stage 6-7, 2.5 bar Stage 8)                          │
│   ├─ P-gain: 0.8 bar⁻¹, I-time: 2.0s, D-time: 0.5s                          │
│   ├─ Output: 0-100% valve position command (optical signal to actuator)     │
│   ├─ Anti-windup: Back-calculation with 5s tracking time                    │
│   └─ Fail-safe: On sensor loss → hold last value, alarm, ramp to 1.0 bar    │
│                                                                              │
│   PRESSURE CONTROL VALVE (PCV-101)                                          │
│   ├─ Type: PEEK CF40 globe valve, ZrO₂ ceramic seat, PEEK stem              │
│   ├─ Size: Cv = 2.5 (sized for 50 SLPM N₂ at 2.5 bar ΔP)                    │
│   ├─ Actuator: Piezoelectric stack (no magnetic field, radiation hard)      │
│   ├─ Response: < 50 ms full stroke (meets SIL-3)                            │
│   ├─ Position feedback: FBG strain sensor on valve stem                     │
│   └─ Fail position: Closed (spring return) → pressure relief path activates │
│                                                                              │
│   N₂ MAKE-UP VALVE (PCV-102)                                                │
│   ├─ Type: PEEK CF40 needle valve, ZrO₂ seat                                │
│   ├─ Source: 350 bar storage vessel → pressure reducer (5 bar outlet)       │
│   ├─ Control: Slow integral action (I-time = 60s) to maintain inventory     │
│   └─ Max flow: 5 SLPM (make-up only, not for pressure control)              │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 2.2.2 Stage-Dependent Pressure Setpoints

The pressure setpoint varies by thermal cascade stage to optimize condensation efficiency and material separation:

| Stage | Temp Range | Setpoint (bar gauge) | Rationale |
|-------|------------|---------------------|-----------|
| 0 (AMLS) | 25-100°C | 1.2 | Low pressure: acoustic wave propagation, minimal gas density |
| 1 (IR Dry) | 100-150°C | 1.2 | Water condensation at 80-120°C optimized at low pressure |
| 2 (Polymer) | 300-450°C | 1.8 | Higher pressure suppresses premature polymer cracking |
| 3 (Pyrolysis) | 450-650°C | 2.0 | Pyrolysis gas density for combustion burner stability |
| 4 (Low-Temp Metals) | 420-550°C | 2.2 | Zn vapor pressure management, condensation efficiency |
| 5 (Al Window) | 660-720°C | 2.2 | Al melt protection, minimal vapor pressure effect |
| 6 (Cu/PM) | 1085-1150°C | 2.3 | Cu vapor suppression, precious metal retention |
| 7 (Ferrous) | 1538-1600°C | 2.4 | Fe vapor suppression, RE magnet protection |
| 8 (Mineral) | 1676°C | 2.5 | Maximum density for zircon dissociation gas management |

Pressure transitions between stages are ramped at 0.2 bar/min (limited by N₂ thermal expansion/compression rates and compressor capacity).

### 2.2.3 Pressure Relief System (Three Independent Layers)

Per ASME BPVC Section VIII and IEC 61511 SIL-3 requirements, three independent pressure relief paths protect the hermetic loop:

| Layer | Device | Set Pressure | Capacity | Activation |
|-------|--------|--------------|----------|------------|
| **Primary** | PEEK CF40 spring-loaded relief valve (PSV-101) | 3.0 bar gauge | 100 SLPM N₂ | Mechanical spring, no power |
| **Secondary** | ZrO₂ ceramic rupture disk (PSD-101) | 4.5 bar gauge | Full bore (50mm) | Non-reclosing, burst at 4.5 bar |
| **Emergency** | Manual ZrO₂ ceramic ball valve (MV-101) | Human-authorized | Full bore | Human + two-key authorization |

**Primary Relief (PSV-101) Detail:**
- Body: PEEK CF40 (continuous service to 250°C, peak 300°C)
- Seat: ZrO₂ ceramic (zero metallic contact with process gas)
- Spring: PEEK CF40 (non-metallic, corrosion immune, fatigue rated 10⁶ cycles)
- Discharge: BFRP expansion vessel (500 L, 10 bar design, Elium® resin)
- Expansion vessel: Water-cooled jacket, ZrO₂ lined, vents to outdoor stack via flame arrestor
- Sizing: API 520, fire case + blocked outlet + thermal expansion = 85 SLPM required → 100 SLPM rated

**Secondary Relief (PSD-101) Detail:**
- Material: ZrO₂ ceramic disc, 50mm diameter, 2mm thickness
- Burst pressure: 4.5 bar gauge ± 5% (factory tested)
- Fragmentation: Designed for non-fragmenting burst (ceramic petal pattern)
- Discharge: Same expansion vessel as PSV-101 (parallel path)
- Replacement: Manual, requires loop depressurization

**Emergency Relief (MV-101) Detail:**
- Valve: ZrO₂ ceramic ball, 50mm bore, PEEK CF40 stem/seals
- Actuation: Manual handwheel with two-key interlock (control room + local)
- Indication: Position sensor (FBG), local visual indicator, control room alarm
- Use case: Only if both PSV-101 and PSD-101 fail AND human authorization confirmed
- Discharge: Outdoor vent stack (10m height, flame arrestor, dispersion modeling per EPA)

---
