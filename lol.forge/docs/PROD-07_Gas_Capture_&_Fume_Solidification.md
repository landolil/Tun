# PROD-07: Gas Capture, Condensation & Fume Solidification System
## CSMFAB000000000111 — Aegis-Forge I Zero-Emission Closed-Loop Atmospheric Processing Architecture

**Document Number:** CSMFAB000000000111 (Volume 4 of 5)
**Series:** Aegis-Forge Thermal Cascade Inductive Material Separator (TCIMS)
**Classification:** Product Document — PROD-07
**Date:** 2026-10-31
**Revision:** 1.0
**Status:** Released for Fabrication

---

## 1. PURPOSE & DESIGN MANDATE

### 1.1 Zero-Release Imperative

The Aegis-Forge I is architected as a **hermetically sealed, zero-emission system**. At no point during any thermal cascade stage — from acoustic liberation (Stage 0) through mineral dissociation (Stage 8) — are process gases, vapors, or particulates released to the ambient environment. This is not merely an environmental compliance feature; it is a thermodynamic necessity. Every gas stream generated within the cascade is a recoverable material stream with intrinsic value. The system philosophy: **there is no waste, only unprocessed product.**

### 1.2 System-Level Gas Management Objectives

| Objective | Specification | Rationale |
|-----------|---------------|-----------|
| Zero atmospheric release | < 0.1 ppm total organics at vent | Regulatory + thermodynamic closure |
| N₂ carrier gas recycling | > 99.5% per cycle | $0.27/cycle operating cost |
| CO₂ capture & reuse | 95-99% purity, 90% recovery | Inert purge gas + geopolymer curing |
| Energy recovery from pyrolysis gas | 18.5 MJ/m³ weighted average | Supplemental heat for Stages 7-8 |
| Acid gas neutralization | HCl < 1 ppm, SO₂ < 1 ppm at outlet | EPA/RCRA compliance, material recovery |
| Metal vapor capture | Zn > 99%, Pb > 99.5% | High-value metal recovery |
| Dioxin/furan destruction | > 99.9999% (6-log reduction) | Plasma torch polisher mandate |

### 1.3 Integration with Thermal Cascade

The Gas Capture, Condensation & Fume Solidification (GFGS) subsystem interfaces with all eight thermal cascade stages through a unified **N₂ gas header** that sweeps the drum exhaust port. Each stage produces a characteristic gas signature that routes through stage-specific treatment trains before converging on the final N₂ recycle loop:

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                    AEGIS-FORGE I THERMAL CASCADE — GAS FLOW                  │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│  STAGE 0 (AMLS)          STAGE 1 (IR DRY)        STAGE 2 (POLYMER)         │
│  ──────────              ─────────────           ──────────────             │
│  Dust, fines            H₂O vapor @ 120°C       Polymer vapors 300-450°C    │
│  │                      │                        │                           │
│  └──────────┬────────────┴────────────┬──────────┘                           │
│             ▼                         ▼                                      │
│    ┌─────────────────┐        ┌─────────────────┐                           │
│    │  ZERO₂ CYCLONE  │        │  TRAIN A: H₂O   │                           │
│    │  (particulate   │        │  CONDENSER      │                           │
│    │   capture)      │        │  (80→25→5°C)    │                           │
│    └────────┬────────┘        └────────┬────────┘                           │
│             │                          │                                     │
│             ▼                          ▼                                     │
│    ┌─────────────────────────────────────────────────┐                       │
│    │              N₂ GAS HEADER (1.2-2.5 bar gauge)  │                       │
│    └──────────────────────┬──────────────────────────┘                       │
│                           ▼                                                  │
│    ┌─────────────────┐   ┌─────────────────┐   ┌─────────────────────────┐  │
│    │ TRAIN B: ORGANIC│   │ TRAIN C: PYRO-  │   │ TRAIN D: ACID GAS       │  │
│    │ VAPOR CONDENS.  │   │ LYSIS GAS RECV  │   │ SCRUBBER (HCl/SO₂/HF)   │  │
│    │ 3-stage:        │   │ CO/CH₄/H₂/CO₂   │   │ Dry Ca(OH)₂ injection   │  │
│    │ 80/25/5°C       │   │ 18.5 MJ/m³ avg  │   │ → CaCl₂ + CaSO₄        │  │
│    └────────┬────────┘   └────────┬────────┘   └───────────┬─────────────┘  │
│             │                     │                      │                │
│             └─────────┬───────────┴───────────────────────┘                │
│                       ▼                                                    │
│         ┌───────────────────────┐                                         │
│         │  TRAIN E: METAL VAPOR │                                         │
│         │  CONDENSER (Stg 4-5)  │                                         │
│         │  Zn @ 360°C, PbO      │                                         │
│         │  cyclone capture      │                                         │
│         └───────────┬───────────┘                                         │
│                     ▼                                                     │
│         ┌───────────────────────┐                                         │
│         │  FINAL TREATMENT      │                                         │
│         │  PSA CO₂ SEPARATION   │                                         │
│         │  Zeolite 13X, 60/30s  │                                         │
│         └───────────┬───────────┘                                         │
│                     ▼                                                     │
│         ┌───────────────────────┐                                         │
│         │  PLASMA TORCH POLISH  │                                         │
│         │  3000-8000°C, 0.5s    │                                         │
│         │  >99.9999% PCDD/PCDF  │                                         │
│         └───────────┬───────────┘                                         │
│                     ▼                                                     │
│         ┌───────────────────────┐                                         │
│         │  N₂ RECYCLE COMPRESSOR│                                         │
│         │  PEEK-valved, ZrO₂    │                                         │
│         │  piston, 350 bar tank │                                         │
│         └───────────────────────┘                                         │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘

---

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

## 3. STAGE-SPECIFIC GAS TREATMENT TRAINS — DETAILED ENGINEERING

### 3.1 Train A: Moisture Condenser (Stage 1 Outlet) — Deep Dive

**Process Function:** Remove water vapor from N₂ carrier gas after Stage 1 infrared drying. The feedstock enters Stage 1 with 5-25% moisture content (wet basis). At 120°C drum wall temperature and 1.2 bar pressure, water vapor partial pressure reaches ~2 bar (superheated). The condenser must reduce dew point from 120°C to < 5°C to prevent downstream corrosion and condensation in later trains.

#### 3.1.1 Thermodynamic Design Basis

| Parameter | Value | Basis |
|-----------|-------|-------|
| Inlet gas flow | 20 SLPM N₂ + H₂O vapor | Stage 1 mass balance |
| Inlet temperature | 120°C | Drum wall temp, Stage 1 |
| Inlet pressure | 1.2 bar gauge | Stage 1 setpoint |
| Inlet H₂O mass fraction | 0.15-0.35 kg/kg dry N₂ | Feedstock moisture 5-25% |
| Target outlet dew point | 5°C | Prevents condensation at 25°C ambient |
| Heat duty (max) | 18.5 kW | Latent + sensible, 25% moisture case |

**Condensation Curve (Equilibrium):**
```
Temperature (°C) → 120 → 80 → 25 → 5
Water partial pressure (bar) → 2.0 → 0.47 → 0.032 → 0.0087
Condensed fraction → 0% → 76% → 98.4% → 99.6%
Cumulative water removed → 0 → 0.76 → 0.984 → 0.996
```

#### 3.1.2 Heat Exchanger Mechanical Design

```
TRAIN A: THREE-ZONE COUNTERFLOW CONDENSER
┌─────────────────────────────────────────────────────────────────────────────┐
│  ZONE 1: HIGH-TEMP CONDENSATION (120°C → 80°C)                              │
│  ├─ Tubes: 200 × ZrO₂-lined Al₂O₃ (OD 12mm, ID 8mm, L=1.0m)                │
│  ├─ Tube pitch: 18mm triangular (compact, high surface density)             │
│  ├─ Shell: BFRP/Elium® (E-glass/epoxy), OD 400mm, wall 8mm                  │
│  ├─ Baffles: ZrO₂ ceramic segmental, 25% cut, spacing 100mm                 │
│  ├─ Coolant: PEX-a water, 10°C supply, 45°C return (ΔT = 35°C)             │
│  ├─ Coolant flow: 1.2 L/s (pumped, variable speed)                          │
│  ├─ U-value (clean): 1,850 W/m²·K (ceramic tubes, water coolant)           │
│  ├─ Fouling factor: 0.0002 m²·K/W (water side only, N₂ side non-fouling)   │
│  ├─ Surface area: 4.2 m² (200 tubes × π × 0.012m × 1.0m × 0.56 eff.)       │
│  ├─ LMTD: 42°C (counterflow, 120/80 vs 10/45)                              │
│  ├─ Duty: 1,850 × 4.2 × 42 × 0.9 = 29.3 kW (exceeds 18.5 kW required)     │
│  └─ Pressure drop: N₂ side 0.04 bar, water side 0.3 bar                     │
│                                                                              │
│  ZONE 2: INTERMEDIATE CONDENSATION (80°C → 25°C)                            │
│  ├─ Tubes: 150 × Al₂O₃ ceramic (OD 10mm, ID 6mm, L=1.2m)                   │
│  ├─ Shell: BFRP/Elium®, OD 350mm, wall 6mm                                  │
│  ├─ Coolant: Chilled water, 10°C supply, 22°C return                        │
│  ├─ Coolant flow: 0.8 L/s                                                   │
│  ├─ U-value: 1,650 W/m²·K                                                   │
│  ├─ Surface area: 2.8 m²                                                    │
│  ├─ LMTD: 28°C (80/25 vs 10/22)                                             │
│  ├─ Duty: 13.1 kW                                                           │
│  └─ Pressure drop: N₂ side 0.04 bar, water side 0.2 bar                     │
│                                                                              │
│  ZONE 3: POLISHING COOLER (25°C → 5°C)                                      │
│  ├─ Tubes: 100 × Al₂O₃ ceramic (OD 10mm, ID 6mm, L=1.5m)                   │
│  ├─ Shell: BFRP/Elium®, OD 300mm, wall 6mm                                  │
│  ├─ Coolant: Glycol-water 30%, 5°C supply, 15°C return (chiller)            │
│  ├─ Coolant flow: 0.5 L/s                                                   │
│  ├─ U-value: 1,450 W/m²·K                                                   │
│  ├─ Surface area: 1.8 m²                                                    │
│  ├─ LMTD: 12°C (25/5 vs 5/15)                                               │
│  ├─ Duty: 3.1 kW                                                            │
│  └─ Pressure drop: N₂ side 0.04 bar, glycol side 0.15 bar                   │
│                                                                              │
│  COLLECTION & REUSE SYSTEM                                                   │
│  ├─ Zone 1 collection: 85°C water, ZrO₂ drain valve → hot water tank       │
│  ├─ Zone 2 collection: 25°C water, PEEK CF40 vessel → pH adjustment        │
│  ├─ Zone 3 collection: 5°C water, PEEK CF40 vessel → 5 µm ZrO₂ filter      │
│  ├─ pH adjustment: Ca(OH)₂ dosing pump (0.1% solution), target pH 7.0      │
│  ├─ Filtration: ZrO₂ tubular membrane, 5 µm, 99.9% removal                 │
│  ├─ Storage: 200 L BFRP tank, N₂ blanket (prevents CO₂ absorption)         │
│  └─ Reuse loop: Pumped to AMLS Stage 0 water circuit (SiC heater to 40°C)  │
└─────────────────────────────────────────────────────────────────────────────┘
```

#### 3.1.3 Materials & Corrosion Considerations

- **All wetted surfaces**: ZrO₂-lined Al₂O₃ ceramic or BFRP/Elium® — zero metallic contact
- **Water chemistry**: Stage 1 water contains dissolved organics, trace HCl (from PVC), dust
- **pH control**: Maintain 6.5-8.0 to prevent acid attack on ZrO₂ (stable pH 3-11) and BFRP
- **Biological control**: 0.5 ppm H₂O₂ dosing in storage tank (UV generation from plasma torch)
- **Scaling prevention**: Softened make-up water, periodic citric acid flush (quarterly)

---

### 3.2 Train B: Organic Vapor Condensation (Stage 2 Outlet) — Deep Dive

**Process Function:** Condense and fractionate polymer decomposition vapors from Stage 2 (300-450°C). The vapor mixture contains 14+ polymer types with boiling points spanning 100°C (MMA) to 450°C+ (heavy PAHs). Three-stage fractional condensation separates by volatility for maximum value recovery.

#### 3.2.1 Vapor Composition & Fractionation Targets

| Polymer Type | Decomposition Range | Key Vapor Species | Boiling Point | Target Fraction |
|--------------|---------------------|-------------------|---------------|-----------------|
| PMMA (Elium®) | 300-400°C | MMA, CO₂, CH₄ | MMA: 100.5°C | Secondary (25°C) |
| PS | 350-420°C | Styrene, α-methylstyrene | Styrene: 145°C | Primary (80°C) |
| ABS | 380-450°C | Styrene, acrylonitrile, butadiene | Butadiene: -4.5°C | Tertiary (5°C) |
| PC | 400-450°C | Bisphenol A, phenol, CO₂ | Phenol: 182°C | Primary (80°C) |
| PET | 350-420°C | Terephthalic acid, acetaldehyde | Acetaldehyde: 20°C | Secondary (25°C) |
| PVC | 250-350°C | HCl, benzene, chlorobenzene | Benzene: 80°C | Primary (80°C) |
| PE/PP | 400-480°C | α-olefins, paraffins C1-C20 | Wide range | All three fractions |

**Fractionation Strategy:**
- **Primary (80°C)**: Heavy fraction (C12+), waxes, PAHs, heavy aromatics — solid/semi-solid at 80°C
- **Secondary (25°C)**: Medium fraction (C6-C12), light aromatics (BTX), MMA, styrene — liquid at 25°C
- **Tertiary (5°C)**: Light fraction (C1-C5), permanent gases, trace organics — gas at 25°C

#### 3.2.2 Condenser Mechanical Design

```
TRAIN B: THREE-STAGE FRACTIONAL CONDENSER
┌─────────────────────────────────────────────────────────────────────────────┐
│  STAGE 2 INLET CONDITIONS                                                    │
│  ├─ Gas flow: 15 SLPM N₂ + organics (variable by feedstock)                 │
│  ├─ Temperature: 300-450°C (stage-dependent)                                │
│  ├─ Pressure: 1.8 bar gauge (Stage 2 setpoint)                              │
│  ├─ Organic loading: 0.5-3.0 kg per 50 kg feedstock batch                   │
│  └─ HCl co-contaminant: 200-1500 ppm (from PVC)                             │
│                                                                              │
│  QUENCH ZONE (450°C → 150°C) — Direct Contact                               │
│  ├─ Quench fluid: Recycled heavy fraction (from primary condenser)          │
│  ├─ Injection: ZrO₂ ceramic nozzles, 50 µm droplets, 0.5 L/min             │
│  ├─ Quench time: < 0.1s (prevents repolymerization/coking)                 │
│  ├─ Vessel: BFRP/Elium®, 400mm ID × 600mm, tangential entry                │
│  ├─ Outlet: 150°C, saturated with heavy organics                            │
│  └─ Recycle pump: PEEK CF40 gear pump, magnetic drive (no seals)            │
│                                                                              │
│  PRIMARY CONDENSER (150°C → 80°C) — Heavy Fraction                          │
│  ├─ Type: Vertical tube condenser, ZrO₂ ceramic tubes                       │
│  ├─ Tubes: 50 × OD 16mm, ID 12mm, L=1.0m                                    │
│  ├─ Coolant: Ethylene glycol 30%, 60°C supply, 90°C return                 │
│  ├─ Coolant flow: 0.6 L/s                                                   │
│  ├─ Surface area: 1.5 m²                                                    │
│  ├─ Duty: 25-45 kW (feedstock dependent)                                    │
│  ├─ Collection: Heated ZrO₂ vessel (90°C jacket), gravity drain             │
│  ├─ Product: Heavy wax/polymer condensate, 35-42 MJ/kg calorific            │
│  │  ├─ Uses: Mold release agent, cracker feedstock, fuel                   │
│  │  └─ HCl content: < 50 ppm (partitioned to aqueous phase)                 │
│  └─ Pressure drop: 0.06 bar                                                 │
│                                                                              │
│  SECONDARY CONDENSER (80°C → 25°C) — Medium Fraction                        │
│  ├─ Type: Horizontal shell-and-tube, Al₂O₃ ceramic tubes                    │
│  ├─ Tubes: 100 × OD 12mm, ID 8mm, L=1.5m                                    │
│  ├─ Coolant: Chilled water, 10°C supply, 22°C return                        │
│  ├─ Coolant flow: 1.0 L/s                                                   │
│  ├─ Surface area: 4.5 m²                                                    │
│  ├─ Duty: 30-55 kW                                                          │
│  ├─ Collection: PEEK CF40 vessel, 25°C, nitrogen blanket                    │
│  ├─ Product: Liquid organic fraction (C6-C12), 35-42 MJ/kg                 │
│  │  ├─ MMA recovery: 60-80% yield from Elium® feedstock (100-105°C cut)    │
│  │  ├─ Styrene recovery: 70-85% yield from PS/ABS                          │
│  │  ├─ BTX fraction: Separable by distillation (future FOLLOW doc)         │
│  │  └─ Chlorinated organics: < 10 ppm (partitioned to aqueous)             │
│  └─ Pressure drop: 0.08 bar                                                 │
│                                                                              │
│  TERTIARY COOLER (25°C → 5°C) — Light Fraction & Polishing                  │
│  ├─ Type: Compact plate-fin, Al₂O₃ ceramic plates                           │
│  ├─ Coolant: Glycol-water 30%, 5°C supply, 12°C return                      │
│  ├─ Surface area: 2.2 m²                                                    │
│  ├─ Duty: 8-15 kW                                                           │
│  ├─ Polishing bed: Stage 3 char activated carbon (50 L, 2s residence)      │
│  │  └─ Removes trace PAHs, dioxin precursors, chlorinated organics          │
│  ├─ Outlet gas: N₂ + permanent gases (CO, CO₂, CH₄, H₂) to Train C         │
│  └─ Pressure drop: 0.04 bar                                                 │
│                                                                              │
│  TOTAL TRAIN B HEAT REMOVAL: 63-115 kW (feedstock dependent)               │
│  TOTAL PRESSURE DROP: 0.18 bar                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

#### 3.2.3 MMA Recovery from Elium® Feedstock (CSMFAB Integration)

When Elium® BFRP cuttings/off-cuts are included in feedstock (Phoenix Protocol returns, manufacturing scrap), the Stage 2 vapor stream contains **methyl methacrylate (MMA)** from thermal depolymerization of the Elium® resin matrix.

**MMA Recovery Window:**
- MMA boiling point: 100.5°C at 1 atm → ~105°C at 1.8 bar
- Target fraction: Secondary condenser 100-105°C cut
- Theoretical yield: 85-90% of Elium® resin mass → MMA monomer
- Practical recovery: 60-80% (condensation efficiency + purification losses)
- Purification: Simple distillation (MMA bp 100.5°C, separates from styrene 145°C, water 100°C)
- Value: Recovered MMA feeds in-house Elium® synthesis (Materials Study Part II) — closes resin loop

**Process Integration:**
```
Elium® scrap in feedstock
        │
        ▼
Stage 2: Thermal depolymerization (350-400°C)
        │
        ▼
MMA vapor in N₂ stream (partial pressure ~0.15 bar)
        │
        ▼
Train B Secondary Condenser (100-105°C cut)
        │
        ▼
Crude MMA condensate (85% MMA, 10% water, 5% impurities)
        │
        ▼
Distillation column (ZrO₂ trays, BFRP shell)
        │
        ├─ Overhead: 99.5% MMA → Elium® synthesis reactor
        ├─ Bottoms: Water + heavies → Train B primary recycle
        └─ Vent: Light ends → Train C combustion
```

---

### 3.3 Train C: Pyrolysis Gas Recovery (Stage 3 Outlet) — Deep Dive

**Process Function:** Process the non-condensable gas from Stage 3 pyrolysis (450-650°C) containing CO, CH₄, H₂, CO₂, and BTX. Two pathways: combustion for heat recovery (Option A, current baseline) or steam reforming to H₂ (Option B, future).

#### 3.3.1 Pyrolysis Gas Composition & Energy Content

For 50 kg mixed organic feedstock (typical batch), Stage 3 produces:

| Gas Species | Volume % (N₂-free) | Molar Mass | LHV (MJ/kg) | LHV (MJ/m³) | Energy Contribution |
|-------------|-------------------|------------|-------------|-------------|---------------------|
| CO | 25-35% | 28 g/mol | 10.1 | 12.6 | 30-40% |
| CH₄ | 15-25% | 16 g/mol | 50.0 | 35.8 | 35-50% |
| H₂ | 20-35% | 2 g/mol | 120.0 | 10.8 | 15-25% |
| CO₂ | 15-20% | 44 g/mol | 0 | 0 | Diluent |
| BTX (liquid at 25°C) | 3-8% | ~90 g/mol | 42 | 42 (liquid) | 5-10% |
| **Weighted average** | **100%** | — | — | **18.5** | **100%** |

**Total pyrolysis gas yield:** 8-12 Nm³ per 50 kg feedstock (N₂-free basis)
**Total energy content:** 150-220 MJ per batch (equivalent to 4-6 kg natural gas)

#### 3.3.2 Gas Processing Train

```
TRAIN C: PYROLYSIS GAS PROCESSING
┌─────────────────────────────────────────────────────────────────────────────┐
│  INLET CONDITIONS                                                            │
│  ├─ Flow: 25 SLPM N₂ + pyrolysis gas (variable)                            │
│  ├─ Temperature: 600-800°C (Stage 3 drum exit)                             │
│  ├─ Pressure: 2.0 bar gauge (Stage 3 setpoint)                             │
│  ├─ Particulate: Char fines, ash, metal oxides (0.5-2 g/Nm³)               │
│  ├─ Tar/PAH: 50-200 mg/Nm³ (condensable at < 200°C)                        │
│  └─ Acid gases: HCl < 50 ppm, SO₂ < 20 ppm (most removed in Stage 2)       │
│                                                                              │
│  QUENCH SECTION (800°C → 200°C in < 0.5s)                                   │
│  ├─ Method: Direct water spray (ZrO₂ nozzles, 50 µm droplets)              │
│  ├─ Water rate: 0.3 L/min (evaporative cooling)                            │
│  ├─ Quench gas: Recycled N₂ from PSA outlet (cool, clean)                  │
│  ├─ Vessel: BFRP/Elium®, 500mm ID × 800mm, refractory ZrO₂ liner           │
│  ├─ Outlet: 200°C, saturated steam + gas                                    │
│  └─ Steam separation: ZrO₂ cyclone → steam to Train A water reuse          │
│                                                                              │
│  PARTICULATE REMOVAL                                                         │
│  ├─ Device: ZrO₂ ceramic cyclone (same design as drum exhaust)             │
│  ├─ Efficiency: 99.5% for > 2.5 µm, 85% for 1-2.5 µm                       │
│  ├─ Collected: Char/ash/metal fines → Stage 8 hopper (via rotary airlock)  │
│  └─ Pressure drop: 0.12 bar                                                 │
│                                                                              │
│  TAR/PAH ADSORPTION (CRITICAL — PREVENTS BURNER FOULING)                   │
│  ├─ Adsorbent: Activated carbon from Stage 3 char output (self-supplied!)  │
│  ├─ Char activation: Steam/CO₂ at 800°C → 800 m²/g BET surface area        │
│  ├─ Bed: BFRP vessel, 50 L, 300mm ID × 700mm packed depth                  │
│  ├─ Superficial velocity: 0.5 m/s → 2s residence time                      │
│  ├─ Capacity: 200 g tar/kg char (breakthrough at 80% saturation)           │
│  ├─ Regeneration: Char-tar composite → Stage 8 re-feed (tar pyrolyzes)     │
│  ├─ Cycle: 1 batch adsorption → 1 batch regeneration (continuous)          │
│  └─ Outlet tar: < 1 mg/Nm³ (meets burner spec)                             │
│                                                                              │
│  OPTION A: COMBUSTION FOR HEAT RECOVERY (BASELINE)                         │
│  ├─ Burner: SiC-tipped ceramic burner (CSMFAB000000000002)                 │
│  ├─ Design: Premixed, swirl-stabilized, ceramic combustor liner            │
│  ├─ Thermal input: 500 kW (max, at peak gas flow)                          │
│  ├─ Combustion air: Pre-heated to 400°C via recuperator                    │
│  ├─ Air/fuel ratio: λ = 1.15 (15% excess air)                              │
│  ├─ Flue gas temp: 1100°C (adiabatic) → 850°C after recuperator            │
│  ├─ Heat recovery: Flue gas → Stage 7-8 induction zone pre-heat            │
│  ├─ Heat transfer: SiC ceramic heat exchanger (gas-gas)                    │
│  ├─ Efficiency: 92% (gas LHV → useful heat to thermal cascade)             │
│  ├─ Emissions: NOx < 50 ppm (staged combustion, low flame temp)            │
│  ├─ CO: < 10 ppm (complete combustion at λ=1.15, 1100°C)                   │
│  └─ Flue gas disposal: To atmosphere via 15m stack (after heat recovery)   │
│                                                                              │
│  OPTION B: STEAM REFORMING TO H₂ (FUTURE — FOLLOW-UP DOC)                 │
│  ├─ Reformer: ZrB₂-SiC tubular reactor (CSMFAB000000000001 material)       │
│  ├─ Reaction: CH₄ + H₂O → CO + 3H₂ (ΔH = +206 kJ/mol, endothermic)        │
│  │  CO + H₂O → CO₂ + H₂ (water-gas shift, ΔH = -41 kJ/mol)                │
│  ├─ Steam/carbon ratio: 3.0 (prevents coking)                              │
│  ├─ Temperature: 800-850°C (indirectly heated by induction)               │
│  ├─ Pressure: 20 bar (favors H₂, requires compression)                     │
│  ├─ Catalyst: Ni/ZrO₂ (ceramic-supported, no metal contamination risk)    │
│  ├─ H₂ product: 99.97% purity (PSA purification)                           │
│  ├─ H₂ storage: CFRP vessel @ 350 bar (CSMFAB000000000105)                │
│  ├─ Energy balance: 75% of gas LHV → H₂ LHV (25% loss as heat)             │
│  └─ Integration: H₂ → Carrington-proof engine (CSMFAB000000000105)        │
└─────────────────────────────────────────────────────────────────────────────┘
```

#### 3.3.3 Closed-Loop Char-Tar Cycle

The char-tar closed loop is a key innovation: **Stage 3 output captures Stage 3 contaminants.**

1. **Stage 3 produces char** (carbonaceous residue from pyrolysis)
2. **Char is steam-activated** → high-surface-area activated carbon
3. **Activated carbon adsorbs tar/PAH** from pyrolysis gas (Train C)
4. **Char-tar composite** is re-fed to **Stage 8** in next batch
5. **Stage 8 (1676°C) pyrolyzes tar** → more char + clean gas
6. **Net result: Zero tar emission, zero activated carbon purchase**

Carbon balance per 50 kg batch:
- Char produced: 8-12 kg (from 50 kg organics)
- Char activated: 5 kg → 4 kg activated carbon (80% yield)
- Tar captured: 0.5-1.5 kg (adsorbed on 4 kg carbon)
- Char-tar to Stage 8: 5-6 kg
- Stage 8 char output: +5-6 kg (net char accumulation → periodic withdrawal)

---

### 3.4 Train D: Acid Gas Scrubber (HCl, SO₂, HF) — Deep Dive

**Process Function:** Neutralize acid gases (primarily HCl from PVC dehydrochlorination, SO₂ from sulfur-containing materials, HF from fluoropolymers) using dry lime injection. The dry scrubber approach avoids liquid waste streams and produces usable solid byproducts.

#### 3.4.1 Acid Gas Sources & Loadings

| Source Stage | Acid Gas | Generation Mechanism | Typical Loading (per 50 kg batch) |
|--------------|----------|---------------------|-----------------------------------|
| Stage 2 (Polymer) | HCl | PVC dehydrochlorination: -(CH₂-CHCl)-ₙ → -CH=CH- + HCl | 0.5-3.0 kg HCl (1-6% PVC in feedstock) |
| Stage 3 (Pyrolysis) | SO₂ | Sulfur in rubber, vulcanization agents, solder flux | 0.1-0.5 kg SO₂ |
| Stage 2/3 | HF | Fluoropolymers (PTFE, FEP), electronics fluxes | < 0.05 kg HF (rare) |

**Gas Phase Concentrations at Scrubber Inlet (1.2 bar, 150-200°C):**
- HCl: 200-1500 ppm (mass basis: 0.3-2.2 g/Nm³)
- SO₂: 50-500 ppm (mass basis: 0.1-0.7 g/Nm³)
- HF: < 50 ppm (mass basis: < 0.04 g/Nm³)

#### 3.4.2 Reaction Chemistry & Stoichiometry

**Primary Reactions:**
```
Ca(OH)₂ + 2HCl → CaCl₂ + 2H₂O        ΔH°₂₉₈ = -148 kJ/mol HCl
Ca(OH)₂ + SO₂ + ½O₂ → CaSO₄ + H₂O    ΔH°₂₉₈ = -620 kJ/mol SO₂
Ca(OH)₂ + 2HF → CaF₂ + 2H₂O          ΔH°₂₉₈ = -160 kJ/mol HF
```

**Stoichiometric Lime Requirements (per 50 kg batch, max loading):**
- HCl: 3.0 kg → 2.9 kg Ca(OH)₂ (MW: Ca(OH)₂=74, 2HCl=73)
- SO₂: 0.5 kg → 0.8 kg Ca(OH)₂ (MW: Ca(OH)₂=74, SO₂=64 + 0.5O₂)
- HF: 0.05 kg → 0.07 kg Ca(OH)₂
- **Total theoretical: 3.8 kg Ca(OH)₂ per batch (maximum)**

**Practical Design:** 2× stoichiometric excess for kinetic completeness → **7.6 kg Ca(OH)₂ per batch maximum**
- Lime cost: $0.15/kg → $1.14/batch maximum
- Typical batch (low PVC): 0.5-2.0 kg Ca(OH)₂ → $0.08-0.30/batch

#### 3.4.3 Scrubber Mechanical Design

```
TRAIN D: DRY LIME SCRUBBER
┌─────────────────────────────────────────────────────────────────────────────┐
│  SCRUBBER VESSEL                                                             │
│  ├─ Type: Vertical packed bed, counter-current gas-solid contact            │
│  ├─ Body: BFRP/Elium® cylinder (E-glass/epoxy filament wound)              │
│  ├─ Dimensions: 300mm ID × 1000mm packed height, 8mm wall                  │
│  ├─ Design pressure: 5 bar gauge (MAWP), 1.2-2.5 bar operating             │
│  ├─ Design temperature: 250°C continuous, 300°C peak                       │
│  ├─ Liner: None required (BFRP/Elium® resistant to Ca(OH)₂, CaCl₂, CaSO₄) │
│  └─ External: YInMn Blue glaze (SRI=115) for thermal management            │
│                                                                              │
│  PACKING & GAS DISTRIBUTION                                                  │
│  ├─ Packing material: Ca(OH)₂ pellets, 3-5mm diameter, spherical           │
│  ├─ Pellet density: 1.8 g/cm³ (bulk: 1.1 g/cm³, void fraction 0.4)         │
│  ├─ Bed mass: 15-20 kg Ca(OH)₂ (7-10 batches capacity at typical loading) │
│  ├─ Support grid: ZrO₂ ceramic perforated plate (2mm holes, 40% open)      │
│  ├─ Gas distributor: ZrO₂ ceramic sparger ring (uniform radial flow)       │
│  ├─ Superficial velocity: 0.3 m/s (low for high contact efficiency)        │
│  ├─ Residence time: 3.3s (1000mm / 0.3 m/s)                                │
│  ├─ Pressure drop: 0.08 bar (Ergun equation, spherical pellets)            │
│  └─ Channeling prevention: Periodic bed vibration (piezo actuator)         │
│                                                                              │
│  LIME FEED & PRODUCT REMOVAL                                                 │
│  ├─ Lime feed: Gravimetric feeder (PEEK CF40 auger), 0-50 g/min range      │
│  ├─ Feed control: pH feedback (optical sensor) + feedforward (batch recipe)│
│  ├─ Spent product discharge: Rotary airlock (PEEK CF40, ZrO₂ rotor)        │
│  ├─ Discharge rate: Matches feed rate (steady-state bed level)             │
│  ├─ Product receiver: PEEK CF40 container, 20 L, sealed                    │
│  └─ Product composition: CaCl₂ (60-80%), CaSO₄ (20-35%), CaF₂ (<1%)        │
│                                                                              │
│  MONITORING & CONTROL                                                        │
│  ├─ Inlet gas: Temperature (FBG), flow (thermal mass), HCl/SO₂ (optical)  │
│  ├─ Bed: Temperature profile (5× FBG sensors at 200mm spacing)             │
│  ├─ Bed level: Capacitive probe (ceramic), continuous                       │
│  ├─ Outlet gas: pH (optical, colorimetric), HCl/SO₂ (optical, ppm)        │
│  ├─ Change-out trigger: Outlet pH < 7.0 (indicates lime exhaustion)        │
│  ├─ Alarm: Outlet HCl > 10 ppm or SO₂ > 5 ppm                              │
│  └─ SIS trip: Outlet HCl > 50 ppm → emergency lime feed + flares           │
│                                                                              │
│  THERMAL MANAGEMENT                                                          │
│  ├─ Reaction exotherm: 148 kJ/mol HCl → 41 kW peak (max HCl load)          │
│  ├─ Bed temperature rise: 30-50°C adiabatic (mitigated by gas flow)        │
│  ├─ Cooling: Water jacket on vessel (PEX-a, 20°C supply, 50°C return)      │
│  ├─ Cooling duty: 15-40 kW (matches reaction heat)                         │
│  └─ Hot spot prevention: Uniform gas distribution, bed vibration           │
└─────────────────────────────────────────────────────────────────────────────┘
```

#### 3.4.4 Byproduct Utilization

| Byproduct | Composition | Quantity (per 50 kg batch) | Use/Disposition |
|-----------|-------------|---------------------------|-----------------|
| **Spent lime (primary)** | CaCl₂ 60-80%, CaSO₄ 20-35%, CaF₂ <1% | 5-15 kg | **CaCl₂**: De-icing salt ($50-100/ton) **CaSO₄**: Gypsum for construction, geopolymer additive **CaF₂**: Fluoride source for metallurgy |
| **Fly ash carryover** | Fine Ca(OH)₂, reaction products | 0.5-1 kg | Captured in downstream cyclone → same receiver |

**Zero Waste Outcome:** All scrubber products have beneficial use or zero-cost disposal. No hazardous waste generated from acid gas treatment.

---

### 3.5 Train E: Metal Vapor Condenser (Stages 4-5 Outlet) — Deep Dive

**Process Function:** Capture zinc vapor (primary) and lead oxide particulate from the gas stream exiting Stages 4 (420-550°C, Pb/Sn/Zn/In separation) and 5 (660-720°C, Al window). Zinc vapor pressure becomes significant above 500°C; lead remains primarily as PbO particulate.

#### 3.5.1 Zinc Vapor Thermodynamics

**Zn Vapor Pressure (Antoine Equation):**
```
log₁₀(P_Pa) = 7.835 - 6880/T(K)  (valid 600-1200K)
```

| Temperature (°C) | Temperature (K) | Zn Vapor Pressure (Pa) | Zn Vapor Pressure (bar) |
|------------------|-----------------|------------------------|-------------------------|
| 420 | 693 | 0.8 | 8×10⁻⁶ |
| 500 | 773 | 12 | 1.2×10⁻⁴ |
| 550 | 823 | 85 | 8.5×10⁻⁴ |
| 600 | 873 | 480 | 4.8×10⁻³ |
| 650 | 923 | 2,200 | 0.022 |
| 700 | 973 | 8,500 | 0.085 |

At Stage 4-5 conditions (420-550°C drum, 2.2 bar system pressure), Zn vapor partial pressure reaches 0.001-0.1 bar. For 25 SLPM N₂ flow, this represents **0.5-5 g/min Zn vapor** — significant loss if not captured.

#### 3.5.2 Two-Stage Condenser Design

```
TRAIN E: TWO-STAGE METAL VAPOR CONDENSER
┌─────────────────────────────────────────────────────────────────────────────┐
│  HIGH-TEMPERATURE CONDENSER (ZINC PRIMARY) — 360°C                          │
│  ├─ Purpose: Condense Zn vapor as liquid droplets before it cools to oxide  │
│  ├─ Inlet: N₂ + Zn vapor @ 420-550°C, 2.2 bar, 20 SLPM                     │
│  ├─ Target outlet temp: 360°C (Zn vapor pressure = 0.01 Pa — 99.99% cond.) │
│  ├─ Column: Vertical, BFRP/Elium® shell, ZrO₂ ceramic liner                │
│  ├─ Dimensions: 200mm ID × 800mm height, 6mm shell, 3mm liner              │
│  ├─ Internals: ZrO₂ ceramic structured packing (Mellapak-type, 250 m²/m³)  │
│  ├─ Packing height: 600mm, void fraction 0.95                              │
│  ├─ Cooling: PEX-a water circuit, 300°C supply (pressurized, 30 bar)       │
│  │  └─ Water at 300°C/30 bar: liquid, cp = 5.8 kJ/kg·K, ρ = 700 kg/m³      │
│  ├─ Coolant flow: 0.8 L/s (jacket + internal coils)                        │
│  ├─ Heat duty: 15-40 kW (sensible + latent Zn)                             │
│  ├─ Collection vessel: ZrO₂ ceramic, 100mm ID × 300mm, heated jacket 450°C │
│  │  └─ Maintains Zn liquid (mp 419.5°C) for gravity drain                  │
│  ├─ Zn collection rate: 0.5-5 g/min (feedstock dependent)                  │
│  ├─ Zn purity: > 99.5% (electrolytic grade after downstream refining)      │
│  ├─ Pressure drop: 0.05 bar                                                │
│  └─ Efficiency: > 99% vapor-phase Zn capture                               │
│                                                                              │
│  LOW-TEMPERATURE CONDENSER (FINAL POLISHING) — 120°C                       │
│  ├─ Purpose: Capture residual metal vapors, condense water, wash gas       │
│  ├─ Inlet: N₂ + trace metals + H₂O @ 360°C, 2.2 bar                        │
│  ├─ Outlet: 120°C, saturated, to PSA                                       │
│  ├─ Column: BFRP/Elium® shell, Al₂O₃ ceramic tubes                         │
│  ├─ Tubes: 100 × OD 10mm, ID 6mm, L=1.2m                                   │
│  ├─ Coolant: Chilled water, 10°C supply, 25°C return                       │
│  ├─ Heat duty: 8-15 kW                                                     │
│  ├─ Collection: PEEK CF40 vessel, mixed metal oxides/hydroxides            │
│  │  └─ Composition: ZnO, SnO₂, In₂O₃, Al₂O₃, Fe₂O₃ (trace)                │
│  │  └─ Disposition: Stage 8 hydrometallurgical feed                         │
│  ├─ Pressure drop: 0.05 bar                                                │
│  └─ Total Train E pressure drop: 0.10 bar                                  │
│                                                                              │
│  LEAD OXIDE (PbO) PARTICULATE CAPTURE                                       │
│  ├─ Pb vapor pressure at 550°C: < 10⁻⁶ bar (negligible)                    │
│  ├─ Pb forms PbO particulate via oxidation: 2Pb + O₂ → 2PbO               │
│  ├─ Particle size: 0.1-2 µm (submicron fume)                               │
│  ├─ Capture device: ZrO₂ ceramic cyclone (high-efficiency design)          │
│  │  ├─ Inlet velocity: 30 m/s (tangential)                                │
│  │  ├─ Cut size: 0.5 µm @ 99.5% efficiency                                 │
│  │  ├─ Body: ZrO₂ ceramic, 150mm ID × 400mm height                        │
│  │  └─ Pressure drop: 0.15 bar                                            │
│  ├─ Collection: PEEK CF40 sealed container (RCRA hazardous — PbO)          │
│  ├─ PbO mass: 0.1-0.5 kg per 50 kg batch (feedstock dependent)            │
│  ├─ Disposition: Licensed hazardous waste facility OR Pb recovery circuit  │
│  │  (future FOLLOW doc: PbO reduction to metallic Pb)                      │
│  └─ Regulatory: EPA RCRA D008 (lead), manifest required, 90-day storage    │
└─────────────────────────────────────────────────────────────────────────────┘
```

#### 3.5.3 Zinc Recovery Economics

| Parameter | Value |
|-----------|-------|
| Zn in feedstock (typical e-waste) | 1-5% by mass |
| Zn per 50 kg batch | 0.5-2.5 kg |
| Zn vapor capture efficiency | > 99% |
| Zn recovered per batch | 0.5-2.5 kg |
| Zn value (LME, 2026) | $2.80-3.20/kg |
| Revenue per batch | $1.40-8.00 |
| Operating cost (cooling, handling) | < $0.50/batch |
| **Net contribution** | **Positive, offsets N₂ make-up cost** |

---

## 4. FINAL GAS TREATMENT — CO₂ CAPTURE & N₂ RECOVERY