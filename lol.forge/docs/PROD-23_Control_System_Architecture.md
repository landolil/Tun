# Combined Heuristic Intro — PROD-23 Control System Architecture
## Williams / Keymaker / El Segundo Synthesis

---

### The Lock That Forges the Key

The Aegis-Forge I control system exists because **a 2200°C induction furnace cannot tolerate a single copper wire crossing its pressure boundary during a Carrington storm.** This constraint (Williams: Constraint) is not negotiable — it is physics. A 5000 nT/s geomagnetic field induces >100 A/km in conductors. Inside the forge, that coupling destroys GaN gate drivers (6 V threshold), corrupts safety logic, and melts the ZrB₂-SiC drum.

The **empirical gap** (Williams: Necessity) is the measured divergence between continuous-time control theory and discrete-time implementation under electromagnetic hostility. PROD-10 and PROD-03 establish the theoretical baseline: 8-zone Class E inverters, 100 kHz → 1 kHz, ZVS maintained by varactor tuning. But fabrication reality demands: (1) FBG sensors at 125 Hz each, 384 channels, reconstructed via 1 kHz thermal model because PMMA degrades >800°C; (2) PLL lock acquisition <50 ms while varactor updates 100× slower than GaN switching; (3) SIL-3 SIFs with 2oo3 voting on sensors that share cable trays, power supplies, and interrogators — physical independence ≠ functional independence.

The **fabrication fidelity gap** (Keymaker: Empirical Lock) is precisely this divergence: continuous phase control vs. 100× slower varactor actuation; point measurement at cold flange → inference of hot drum inner surface; common-cause failure modes that defeat 2oo3 voting.

---

### The Mathematical Key That Turns the Lock

The single computational primitive that generates the solution is the **discrete-time thermal-admittance model executed at 1 kHz on the Zone RTU:**

```
T_inner[k+1] = T_inner[k] + (Δt/ρcV) × (P_ind[k] - hA(T_inner[k] - T_flange[k]) - εσA(T_inner⁴[k] - T_surr⁴))
```

This one equation, discretized with Δt = 1 ms on ARM Cortex-A53 (Zephyr, <100 μs compute), is the **atomic computation** (Keymaker: Mathematical Key). Everything derives from it:
- Thermal PID setpoint → power command via inverse model + PID
- Resonance tracker → frequency/varactor via pre-computed LUT (PROD-10)
- Cascade feedforward → downstream stage setpoints with transport delay
- SIF trip logic → predicted T_inner 50 ms ahead → pre-emptive trip
- Digital twin sync → full state trajectory at 10 Hz for PROD-37

**Theory→History validation** (Keymaker: Turn): The model predicts CSMFAB0108 test data within measurement uncertainty — 500 kW step to 1800°C in 42 s predicted, 45 s measured; ZVS lock 38 ms predicted, 35 ms measured; SIF trip 38 ms predicted, 36 ms measured.

**History→Theory correction** (Keymaker: Turn): Char growth oscillation (15°C at 0.8 Hz) → added char-thickness state to RLS. FBG drift (0.5 nm/hr) → reference FBG common-mode subtraction. TSN latency spike (2.3 ms) → local OCXO on each node. Varactor saturation (28 V) → 8-bit cap bank + slag-level feedforward.

The mathematical key **absorbs history** — each anomaly extends the model, the core primitive remains unchanged.

---

### The Mirror That Witnesses the Fabrication

The forge observes its own fabrication through **four nested metrology loops** (El Segundo: Mirror):

1. **Microsecond (L0 FPGA):** Gate-level witness — desat detect at 10 ns, ZVS timestamp vs. gate command, current sense at 1 MHz. The FPGA sees the switch fail before it destroys itself. ZVS achievement >99.9%/cycle.

2. **Millisecond (L1 RTU):** Thermal reconstruction — virtual sensor running the atomic computation. 48 FBG inputs → T_inner prediction ±5°C at 2200°C. Model residual <2°C RMS or re-identification triggers.

3. **100 ms (L2 PLC):** Cascade consistency — mass-energy balance across stages. XRF/LIBS composition → feedforward. Elemental closure >99.5%/batch or investigation flagged.

4. **100 ms (L3 SCADA → PROD-37):** Digital twin shadow — 512-core HPC runs same models + CFD + FEA. ML autoencoder (FOLLOW-29) flags >3σ deviation. Twin suggests PID gains, flux rates, RPM profiles.

The fabricator watches the process at the scale of the phenomenon: gate switching (10 ns), thermal diffusion (1 ms), material transformation (100 ms), fleet optimization (continuous).

---

### The Participation That Authorizes Consequence

The inside operator witnesses the phenomenon into existence at **four cognitive checkpoints** (El Segundo: Participation) where judgment cannot be automated:

1. **Batch Recipe Authorization:** Feedstock UUID scanned → Category A–D → Operator confirms recipe. Wrong choice = slag, port blockage, weeks downtime. PVC >5% in Category B requires HCl management judgment (PROD-15).

2. **Stage Transition Gate:** Stage complete → Shift Lead reviews energy, yield, gas, SIF events, anomalies. Stage 4: visual In-grade confirmation (pyrometer + XRF). Stage 6: H₂ <4% verification before Port 6B open.

3. **SIF Bypass Authorization:** Dual-key (Shift Lead + Safety Engineer), time-limited (4 hr), blockchain-audited. Risk acceptance is human — no algorithm accepts organizational risk.

5. **Carrington Ride-Through Exit:** Post-GIC, grid stable 30 min → Operator verifies drum thermal state (no shock >100°C/s), SIF health, authorizes staged grid reconnect with utility coordination.

**Automation executes; humans authorize at boundaries of consequence.** HMI (ISA-101) presents exactly needed information — no alarm flood.

---

### The Protocol That Guarantees Fidelity at Every Scale

The recursive V&V fractal (El Segundo: Protocol) mirrors verification structure across five scales:

| Scale | Artifact | Pattern |
|-------|----------|---------|
| **L0 Component** | FPGA bitstream + 100% coverage + HIL 10⁶ cycles | Stimulate → Observe → Compare → Act |
| **L1 Module** | RTU firmware + mutation testing >90% + 72 hr soak | Stimulate → Observe → Compare → Act |
| **L2 Subsystem** | PLC/SIS signed + formal verification + SIF injection | Stimulate → Observe → Compare → Act |
| **L3 System** | FAT: 8 RTUs + 8 PLCs + SIS + SCADA on TSN | Stimulate → Observe → Compare → Act |
| **L4 Deployment** | SAT: 10 production batches, zero spurious trips | Stimulate → Observe → Compare → Act |
| **L5 Sustainment** | Quarterly partial-stroke, annual full proof, twin shadow | Stimulate → Observe → Compare → Act |

**Recursive invariant:** `Evidence(level) ⊆ Evidence(level+1)`. Evidence accumulates upward. Git tag chain (`fpga-v1.3.7 → rtu-v2.1.4 → stg04-v3.0.1 → forge-fat-v1.0 → forge-sat-v1.0`) is the cryptographic proof.

---

### The Commitments That Constrain the System

This document locks in (Williams: Commitment) seven non-negotiables for all downstream documents:

1. **Four-level hierarchy fixed:** L0 (100 kHz) → L1 (1 kHz) → L2 (100 Hz) → L3 (10 Hz). Time constants are physical.

2. **PMMA POF only fieldbus:** 480+ sensors, 96+ actuators, PTP, TSN — all dielectric. FOLLOW-11 validates 10-year lifetime.

3. **24 SIL-3 SIFs immutable:** Table 6.2 defines safety envelope. PROD-26, 32, 39 must validate. No downgrade without re-cert.

4. **TSN schedule frozen:** 1 ms cycle, 4 slices (SIS/RTU/PLC/SCADA), 100 μs guard band. FOLLOW-29 operates in best-effort only.

5. **Air-gap absolute:** No IT→OT IP. Data diode unidirectional (OT→IT). PROD-36, 37 architect around this.

6. **GIC ride-through mandatory:** 5 ms transition, 10 ms island, LiFePO₄ backup indefinite. PROD-10 sizes DC link caps.

7. **ISA-88 recipe schema:** XML structure (Section 4.5) for thermal, gas, flux, ports, interlocks. PROD-14–21 populate. PROD-38 versions in Git.

8. **PTP <1 μs required:** GNSS+OCXO grandmaster, 24h holdover, all nodes boundary clocks. FOLLOW-11 embeds PTP in interrogator.

These are the **architectural load-bearing walls**. PROD-24 (Thermal Model), PROD-26 (GIC), PROD-29 (Operations), PROD-37 (Digital Twin), FOLLOW-10/11/27/29 build on this foundation. They cannot move the walls.

---

### Cross-Document Traceability Matrix

| This Document | Upstream Source | Downstream Consumer | Interface |
|---------------|-----------------|---------------------|-----------|
| Architecture (Sec 1) | PROD-01, PROD-02 | PROD-24, PROD-26 | Hierarchy, cascade |
| Field Devices (Sec 2) | PROD-03, 04, 05 | PROD-23 (self), FOLLOW-11 | 480 sensors, 96 actuators |
| Zone RTU (Sec 3) | PROD-10 | PROD-24, FOLLOW-10 | PID, PLL, FBG at 1 kHz |
| Stage PLC (Sec 4) | PROD-14–21 | PROD-29, 30 | Cascade, interlocks, recipes |
| SCADA (Sec 5) | PROD-37, 38 | PROD-29, 31, 37 | Historian, alarms, batch, twin |
| SIS (Sec 6) | PROD-07, 26, IEC 61508 | PROD-26, 32, 39 | 24 SIL-3 SIFs, 2oo3 |
| GIC Immunity (Sec 7) | PROD-10, 26 | PROD-26, FOLLOW-27 | Floating, NGR, all-dielectric |
| TSN Network (Sec 8) | PROD-10, IEEE 802.1 | PROD-23 (self), FOLLOW-11 | 1 Gbps, FRER, 4 VLANs |
| PTP Sync (Sec 9) | PROD-10 | PROD-23 (self), FOLLOW-11 | <1 μs, OCXO holdover |
| Cyber Security (Sec 10) | PROD-36, IEC 62443 | PROD-36, FOLLOW-29 | Air-gap, diode, ML anomaly |
| HMI (Sec 11) | PROD-35, ISA-101 | PROD-29, 34 | HP graphics, ISA-18.2 alarms |
| Config Mgmt (Sec 12) | PROD-38, Git | PROD-38, 39 | GitOps, MOC, DR |

---

*End of Combined Heuristic Intro — PROD-23 Control System Architecture*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*# CSMFAB000000000123
## Aegis-Forge I: Control System Architecture — Distributed Control, Safety Interlocks & Carrington Immunity
### Hierarchical FPGA/RTU/PLC/SCADA, SIL-3 SIS, TSN Network, GIC-Hardened OT
**Document Number:** CSMFAB000000000123 (PROD-23)
**Series:** Aegis-Forge Thermal Cascade Inductive Material Separator (TCIMS)
**Date:** November 2026
**Classification:** CSMFAB Internal — Engineering Specification
**Revision:** 1.0

---

## 1. Control Architecture Overview

### 1.1 Design Philosophy

The Aegis-Forge I control system is a **four-level hierarchical distributed architecture** designed to operate in the most hostile electromagnetic environment on Earth: inside a 500 kW induction furnace at 2200°C, during a Carrington-class geomagnetic storm. Every design decision flows from three irreducible constraints:

1. **All-Dielectric Sensing & Actuation:** No copper wires cross the pressure boundary. All 480+ field devices communicate via PMMA POF optical fiber. This eliminates antenna effects for GIC/EMP.
2. **Deterministic Real-Time Control:** 1 kHz zone-level PID loops with resonance tracking require <1 ms jitter. Achieved via TSN (IEEE 802.1Qbv) time-aware scheduling on a dual-ring 1 Gbps optical network.
3. **SIL-3 Safety Integrity:** 24 safety instrumented functions with 2oo3 voting, <50 ms response, certified to IEC 61508/ISA-84.

### 1.2 Hierarchy Summary

| Level | Name | Hardware | Cycle Time | Scope | Key Functions |
|-------|------|----------|------------|-------|---------------|
| **L0** | **Cell (FPGA)** | Artix-7 FPGA (BFRP board) | 10 μs (100 kHz) | Single inverter leg | GaN gate drive, desat protection, ZVS tracking, current sense |
| **L1** | **Zone RTU** | ARM Cortex-A53 (8×, BFRP) | 1 ms (1 kHz) | One inductive zone | Thermal PID, resonance tracker, FBG acquisition, MFC control |
| **L2** | **Stage PLC** | IEC 61131-3 PLC (8×, rugged) | 10 ms (100 Hz) | One thermal stage | Cascade control, interlock logic, recipe management, carousel |
| **L3** | **Plant SCADA** | Linux workstation (dual, air-gapped) | 100 ms (10 Hz) | Full Forge | Historian, alarm mgmt, batch tracking, MES, digital twin |

### 1.3 Data Flow Architecture

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                           PLANT SCADA (L3) — 10 Hz                          │
│  ┌─────────────┐ ┌─────────────┐ ┌─────────────┐ ┌─────────────────────┐   │
│  │ Historian   │ │ Alarm Mgmt  │ │ Batch Track │ │ Digital Twin Sync   │   │
│  │ (InfluxDB)  │ │ (ISA-18.2)  │ │ (ISA-88)    │ │ (OPC-UA + Kafka)    │   │
│  └──────┬──────┘ └──────┬──────┘ └──────┬──────┘ └──────────┬──────────┘   │
│         │               │               │               │                │
│         └───────────────┼───────────────┼───────────────┘                │
│                         ▼               ▼                                │
│              ┌─────────────────────────────────┐                         │
│              │      OPC-UA Server (TSN)        │ ◄── Unidirectional      │
│              │   (Data Diode to IT Network)    │     Data Diode          │
│              └──────────────────┬──────────────┘                         │
└─────────────────────────────────┼────────────────────────────────────────┘
                                  │ TSN Dual-Ring (1 Gbps, <100 μs latency)
                                  ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│                          STAGE PLCs (L2) — 100 Hz                           │
│  ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐  │
│  │Stg 0 │ │Stg 1 │ │Stg 2 │ │Stg 3 │ │Stg 4 │ │Stg 5 │ │Stg 6 │ │Stg 7 │  │
│  └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘  │
│     │        │        │        │        │        │        │        │       │
│     └────────┴────────┴────────┴────────┴────────┴────────┴────────┘       │
│              │                  Interlock Bus (SIL-3, 2oo3)                 │
└──────────────┼──────────────────────────────────────────────────────────────┘
               │ TSN
               ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│                           ZONE RTUs (L1) — 1 kHz                            │
│  ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐  │
│  │ Z1   │ │ Z2   │ │ Z3   │ │ Z4   │ │ Z5   │ │ Z6   │ │ Z7   │ │ Z8   │  │
│  │100kHz│ │100kHz│ │50kHz │ │10kHz │ │10kHz │ │5kHz  │ │2kHz  │ │1kHz  │  │
│  └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘  │
│     │        │        │        │        │        │        │        │       │
└─────┼────────┼────────┼────────┼────────┼────────┼────────┼────────┼───────┘
      │        │        │        │        │        │        │        │
      ▼        ▼        ▼        ▼        ▼        ▼        ▼        ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│                         CELL FPGAs (L0) — 100 kHz                           │
│  GaN Gate Drive │ Desat Detect │ ZVS Tracker │ Current Sense │ PMMA POF   │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## 2. Field Device Layer — 480+ All-Dielectric Sensors & Actuators

### 2.1 Sensor Inventory

| Sensor Type | Qty | Location | Interface | Update Rate | Spec |
|-------------|-----|----------|-----------|-------------|------|
| **FBG Temperature** | 384 | Drum wall (inner/outer), coil former, cold plate | PMMA POF, WDM+TDM | 125 Hz/sensor | ±0.5°C, 0.1°C res |
| **FBG Strain** | 64 | Coil housing, drum flanges, vessel | PMMA POF | 100 Hz | ±1 με, gap monitor |
| **POF Level** | 16 | Slag/metal interfaces (Ports 1-8) | PMMA POF | 100 Hz | ±2 mm, 2200°C rated |
| **Pyrometer** | 8 | Port windows (1 per zone) | PMMA POF | 1 kHz | ±10°C, 600-2400°C |
| **Mass Spectrometer** | 8 | Off-gas headers (Stages 0,3,4,6,7,8) | PMMA POF | 10 Hz | 1-200 amu, ppm |
| **XRF Analyzer** | 8 | Port streams (inline LIBS backup) | PMMA POF | 1 Hz | 11-92 Z, 0.1% |
| **ZrO₂ pO₂ Probe** | 16 | Stages 3-8 atmosphere | PMMA POF | 10 Hz | 10⁻²⁰–1 atm |
| **Pressure Transducer** | 24 | Vessel, gas lines, cooling | PMMA POF | 100 Hz | 0-10 bar, ±0.1% |
| **Flow Meter (MFC)** | 32 | Ar/He/H₂/N₂/CO/CO₂ lines | PMMA POF | 10 Hz | 0-500 SLPM, ±1% |
| **Vibration (AE)** | 16 | Drum bearings, gearbox | PMMA POF | 100 kHz | 100 kHz BW |
| **Rotation Encoder** | 2 | Drum shaft (FBG-based) | PMMA POF | 1 kHz | ±0.1 RPM |
| **Optical E-Stop** | 8 | Perimeter, control room | PMMA POF loop | <1 ms | SIL-3 certified |

### 2.2 Actuator Inventory

| Actuator Type | Qty | Location | Interface | Response | Spec |
|---------------|-----|----------|-----------|----------|------|
| **GaN Inverter Gates** | 16 | 8 zones × 2 legs | PMMA POF (FPGA) | 100 ns | 650V, 16A |
| **Varactor Bias** | 32 | 8 zones × 4 varactors | PMMA POF (RTU) | 1 ms | 0-30V, 1 mV res |
| **Switched Cap Bank** | 48 | 8 zones × 6 bits | PMMA POF (RTU) | 1 ms | Binary weighted |
| **MFC Valves** | 32 | Gas distribution | PMMA POF (RTU) | 10 ms | 0-500 SLPM |
| **Port Valves (8)** | 8 | Exit ports 1-8 | PMMA POF (PLC) | 50 ms | Ti₃AlC₂ thermal |
| **Carousel Index** | 1 | Slug mold carousel | PMMA POF (PLC) | 100 ms | 16-position |
| **Flux Injectors** | 8 | Stages 3-7 | PMMA POF (PLC) | 10 ms | 0-10 kg/min |
| **Quench Nozzles** | 16 | Ports 4-8 | PMMA POF (PLC) | 10 ms | N₂, 50 bar |
| **Drum Drive (Piezo)** | 1 | Shaft | PMMA POF (PLC) | 1 ms | 0-500 RPM |
| **Crane/Hoist Interlock** | 4 | Maintenance access | PMMA POF (SIS) | <50 ms | SIL-3 |

### 2.3 PMMA POF Optical Fiber Specifications

| Parameter | Value |
|-----------|-------|
| **Fiber Type** | Step-index PMMA, 980 μm core / 1000 μm clad |
| **Attenuation** | <0.2 dB/m @ 650 nm, <0.5 dB/m @ 850 nm |
| **Bandwidth** | >200 MHz·km (sufficient for 1 Gbps TSN) |
| **Temperature Rating** | -40°C to +85°C (jacket), -40°C to +70°C (core) |
| **Radiation Hardness** | >10⁶ Gy gamma, >10¹⁴ n/cm² neutron |
| **Bend Radius** | >25 mm (installation), >50 mm (long-term) |
| **Connector** | BFRP ferrule, ZrO₂ sleeve, push-pull locking |
| **In-House Draw Cost** | $0.08-0.15/m (CSMFAB Materials Study Part IV) |

**Cable Routing:** All POF cables run in BFRP cable trays with ZrO₂ separators. No metallic conduit. Cable trays grounded via 1 MΩ bleed resistors (static dissipation only).

---

## 3. Zone Control Layer (RTU) — 1 kHz Deterministic Control

### 3.1 RTU Hardware Architecture

Each of the 8 Zone RTUs is an identical BFRP-housed compute module:

| Component | Specification |
|-----------|---------------|
| **Processor** | Quad-core ARM Cortex-A53 @ 1.5 GHz (RP2350-class, radiation-hardened) |
| **Memory** | 1 GB LPDDR4 ECC, 32 MB MRAM (non-volatile config) |
| **OS** | Zephyr RTOS (certified, <10 μs context switch) |
| **Network** | 2× 1 Gbps TSN (dual-ring, IEEE 802.1Qbv) |
| **Optical I/O** | 8× PMMA POF transceiver (WDM/TDM FBG), 4× PMMA POF (actuators) |
| **Analog I/O** | 16-ch 16-bit ADC (current sense), 8-ch 16-bit DAC (varactor) |
| **Power** | 24 VDC ±10% from isolated DC-DC (BFRP housed) |
| **Environment** | -20°C to +70°C, vibration 5G, shock 50G |

### 3.2 Dual-Loop Control Structure (Per Zone)

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                            ZONE RTU CONTROL LOOPS                           │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  THERMAL PID (OUTER LOOP) — 1 ms / 1 kHz                                   │
│  ┌──────────────┐    ┌──────────────┐    ┌──────────────┐                 │
│  │ T_setpoint   │───►│  PID Calc    │───►│ Power Cmd    │───► Zone RTU    │
│  │ (from Stage  │    │  Kp, Ki, Kd  │    │ (0-500 kW)   │    Output       │
│  │  PLC + FF)   │    │  Anti-windup │    └──────────────┘                 │
│  └──────────────┘    └──────┬───────┘                                     │
│                             │                                             │
│                             ▼                                             │
│              ┌─────────────────────────────────┐                          │
│              │     POWER-TO-FREQUENCY MAP      │                          │
│              │  (Pre-computed LUT + interp)    │                          │
│              └──────────────┬──────────────────┘                          │
│                             │                                             │
│                             ▼                                             │
│  RESONANCE TRACKER (INNER LOOP) — 10 ms / 100 Hz                         │
│  ┌──────────────┐    ┌──────────────┐    ┌──────────────┐                 │
│  │ V_DS Zero-   │───►│  PLL Phase   │───►│ Varactor Bias│───► FPGA       │
│  │ Cross Detect │    │  Error       │    │ + Cap Bank   │    (Cell L0)   │
│  └──────────────┘    └──────────────┘    └──────────────┘                 │
│        ▲                     │                                             │
│        │              ┌──────┴──────┐                                     │
│        │              ▼             ▼                                     │
│        │        ┌───────────┐ ┌───────────┐                              │
│        └───────►│ Cap Bank  │ │ Varactor  │                              │
│   (FPGA)       │ (Coarse)  │ │ (Fine)    │                              │
│                └───────────┘ └───────────┘                              │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 3.3 Thermal PID Parameters (Per Zone)

| Zone | Stages | K<sub>p</sub> | K<sub>i</sub> (s⁻¹) | K<sub>d</sub> (s) | Anti-Windup | Feedforward |
|------|--------|---------------|---------------------|-------------------|-------------|-------------|
| Z1-2 | 1-2 | 0.8 | 0.02 | 0.5 | ±10% | Radiative + convective |
| Z3 | 3 | 1.0 | 0.03 | 0.8 | ±10% | + Latent heat (pyrolysis) |
| Z4-5 | 4-5 | 1.2 | 0.05 | 1.0 | ±10% | + Latent heat (melting) |
| Z6 | 6 | 1.5 | 0.08 | 1.2 | ±10% | + Latent heat (Cu) |
| Z7 | 7 | 1.8 | 0.10 | 1.5 | ±10% | + Latent heat (Fe) + hysteresis |
| Z8 | 8 | 2.0 | 0.15 | 2.0 | ±10% | + Radiative (T⁴ dominant) |

**Gain Scheduling:** Parameters interpolate based on T_setpoint (300-2200°C). At T < 400°C, K<sub>d</sub> = 0 (noise suppression).

### 3.4 Resonance Tracker (PLL) Design

The Class E inverter maintains ZVS by aligning the switch voltage zero-crossing with the gate turn-on instant. A software PLL runs at 100 Hz:

```
Phase Error:  φ_err = t(V_DS=0) - t(gate_on)

PLL Output:   ΔV_varactor = K_p_PLL × φ_err + K_i_PLL × ∫φ_err dt
              ΔCap_Bank   = round(ΔV_varactor / V_per_step)  (coarse)

Gains:        K_p_PLL = 0.05 V/ns,  K_i_PLL = 500 V/s
Lock Range:   ±5% of nominal frequency
Acquisition:  <50 ms from cold start
```

**FPGA Interface:** The RTU sends varactor bias (16-bit DAC) and cap bank select (6-bit GPIO) to the Cell FPGA via PMMA POF. The FPGA updates the hardware within 10 μs.

### 3.5 FBG Acquisition & Processing

```
FBG Interrogator (per Zone RTU):
├── VCSEL: 650-850 nm sweep, 1 kHz triangle wave
├── WDM: 8-channel thin-film filter (20 nm spacing)
├── TDM: 1×6 PMMA splitter per wavelength
├── Detection: Balanced InGaAs PIN, 2 MHz BW
├── Processing: Peak detection (centroid), λ → T conversion
│   T = (λ_measured - λ_ref) / 0.15 nm/°C  (PMMA FBG sensitivity)
├── Output: 48 temperatures @ 125 Hz each (6 per TDM channel)
└── Health: SNR >20 dB, peak width <0.5 nm, no missing channels
```

**Fault Handling:** If >10 sensors in a zone report invalid data → RTU limits zone power to 50%, raises SCADA alarm, logs event.

---

## 4. Stage Control Layer (PLC) — 100 Hz Cascade & Interlocks

### 4.1 PLC Hardware (Per Stage)

| Component | Specification |
|-----------|---------------|
| **Controller** | IEC 61131-3 PLC (CODESYS runtime, SIL-3 certified) |
| **CPU** | Dual-core ARM Cortex-R52 @ 800 MHz (lockstep) |
| **Memory** | 512 MB RAM ECC, 64 MB FRAM (recipe + interlock config) |
| **Network** | 2× 1 Gbps TSN (dual-ring), 1× 100 Mbps OPC-UA (SCADA) |
| **Safety Bus** | Dedicated 100 Mbps TSN channel (2oo3 voting) |
| **I/O** | 64-ch PMMA POF (sensors), 32-ch PMMA POF (actuators) |
| **Program** | Structured Text (ST) + Sequential Function Chart (SFC) |
| **Cycle Time** | 10 ms deterministic (jitter <100 μs) |

### 4.2 Stage Control Functions

Each Stage PLC manages the complete thermal stage operation:

| Function | Description | Cycle |
|----------|-------------|-------|
| **Cascade Temperature Control** | Receives T_setpoint from SCADA, sends zone power commands to RTUs | 10 ms |
| **Interlock Logic** | Evaluates 24 SIL-3 + 12 SIL-2 + 36 SIL-1 conditions per stage | 1 ms (SIS) |
| **Recipe Management** | Loads Stage recipe (temp profile, durations, gas flows) from SCADA | On batch start |
| **Carousel Control** | Indexes 16-position slug mold carousel, triggers quench/demold | Event-driven |
| **Flux Injection** | Controls Na₂CO₃/NaCl/KCl/cryolite feed rates per stage recipe | 10 ms |
| **Gas Atmosphere** | Manages Ar/He/H₂/N₂/CO/CO₂ MFCs to maintain pO₂ < 10⁻¹⁵ atm | 10 ms |
| **Composition Feedback** | Receives XRF/LIBS/mass spec data, adjusts setpoints | 100 ms |
| **Digital Twin Sync** | Publishes stage state to Kafka (OPC-UA) for PROD-37 | 100 ms |

### 4.3 Cascade Control Strategy

The 8 stages form a **cascade control hierarchy** with feedforward between stages:

```
Stage 0 (AMLS) ──► Stage 1 (Drying) ──► Stage 2 (Polymer) ──► Stage 3 (Pyrolysis)
     │                │                   │                    │
     ▼                ▼                   ▼                    ▼
Feed composition → Moisture → Polymer type → Char yield → Gas composition
     │                │                   │                    │
     └────────────────┴───────────────────┴────────────────────┘
                              │
                              ▼
                    STAGE 4 (Low-Temp Metals)
                              │
                              ▼
                    STAGE 5 (Aluminum Window)
                              │
                              ▼
                    STAGE 6 (Copper & PM)
                              │
                              ▼
                    STAGE 7 (Ferrous Cascade)
                              │
                              ▼
                    STAGE 8 (Mineral/Zircon)
```

**Feedforward Parameters (Passed Downstream):**
- Stage 0→1: Liberation index (LI), particle size distribution
- Stage 1→2: Residual moisture, organics composition
- Stage 2→3: Polymer melt viscosity, HCl generation rate
- Stage 3→4: Char yield, fixed carbon, inorganic composition
- Stage 4→5: In/Pb/Sn/Zn removed, PM captured, residue analysis
- Stage 5→6: Al removed, Mg content, dross composition
- Stage 6→7: Cu removed, PM grade, Fe/REE in residue
- Stage 7→8: Slag composition (B=1.2, MgO/Al₂O₃=1.5), FeO, REE oxides

### 4.4 Interlock Logic (Per Stage)

Each stage implements a **Safety Instrumented Function (SIF)** table:

| SIF Tag | Description | SIL | Sensors (2oo3) | Actuators | Response |
|---------|-------------|-----|----------------|-----------|----------|
| SIF-XX-01 | Drum over-temp (any FBG > T_lim) | 3 | 3× FBG/zone | All zone inverters OFF | <50 ms |
| SIF-XX-02 | Vessel over-pressure (>5 bar) | 3 | 3× Pressure | Emergency vent, inverters OFF | <50 ms |
| SIF-XX-03 | Atmosphere breach (pO₂ > 10⁻⁶ atm) | 3 | 3× ZrO₂ pO₂ | N₂ purge, inverters OFF | <50 ms |
| SIF-XX-04 | Cooling water loss (flow < 10 L/min) | 3 | 3× Flow | Graceful power ramp to 20% | <100 ms |
| SIF-XX-05 | FBG comms loss (>10 sensors/zone) | 2 | RTU heartbeat | Zone power limited to 50% | <500 ms |
| SIF-XX-06 | Drum rotation loss (<10 RPM) | 2 | 2× Encoder | Inverters OFF, drum coast | <100 ms |
| SIF-XX-07 | Ground fault (NGR > 5 A) | 3 | NGR monitor | All inverters OFF, isolate | <50 ms |
| SIF-XX-08 | GIC event (grid dV/dt > threshold) | 2 | Grid monitor | Ride-through mode | <10 ms |
| SIF-XX-09 | Port valve fail (position mismatch) | 2 | Valve FBG | Block stage advance | <500 ms |
| SIF-XX-10 | Carousel jam (index timeout) | 2 | Position sensor | Hold stage, alarm | <1 s |

**Voting Logic:** 2oo3 (two-out-of-three) for SIL-3. Sensors are physically separated (different angular positions on drum).

### 4.5 Recipe Management (ISA-88 Compliant)

```
Stage Recipe Structure (XML):
<StageRecipe id=STG-04-REV-03>
  <Header>
    <Stage>4</Stage>
    <Version>3</Version>
    <Author>Process Eng</Author>
    <Date>2026-11-02</Date>
  </Header>
  <ThermalProfile>
    <Segment id=1>  <!-- Indium-First -->
      <T_Setpoint>160</T_Setpoint>        <!-- °C -->
      <Duration>300</Duration>            <!-- seconds -->
      <RampRate>5</RampRate>              <!-- °C/min -->
      <RPM>400</RPM>
    </Segment>
    <Segment id=2>  <!-- Sn/Pb/Bi -->
      <T_Setpoint>280</T_Setpoint>
      <Duration>180</Duration>
      <RPM>300</RPM>
    </Segment>
    ...
  </ThermalProfile>
  <GasAtmosphere>
    <Ar>15</Ar>          <!-- SLPM -->
    <He>5</He>
    <H2>2</H2>
    <N2>0</N2>
  </GasAtmosphere>
  <FluxInjection>
    <Material>Na2CO3</Material>
    <Rate>0.5</Rate>     <!-- kg/min -->
    <Trigger>T>150</Trigger>
  </FluxInjection>
  <PortSequence>
    <Port>4A</Port> <OpenAt>160</OpenAt> <CloseAt>170</CloseAt>
    <Port>4B</Port> <OpenAt>200</OpenAt> <CloseAt>300</CloseAt>
    <Port>4C</Port> <OpenAt>340</OpenAt> <CloseAt>450</CloseAt>
  </PortSequence>
  <Interlocks>
    <SIF-04-01><Limit>180</Limit></SIF-04-01>  <!-- In over-temp -->
    <SIF-04-02><Limit>1.0</Limit></SIF-04-02>  <!-- pO₂ ppm -->
  </Interlocks>
</StageRecipe>
```

**Version Control:** All recipes stored in Git (PROD-38 Config Mgmt). Batch execution records recipe hash (SHA256) for traceability.

---

## 5. Plant Supervisory Layer (SCADA) — 10 Hz Operations

### 5.1 SCADA Architecture

| Component | Technology | Specification |
|-----------|------------|---------------|
| **OS** | Ubuntu 24.04 LTS (hardened, no network services) |
| **SCADA SW** | Ignition Perspective (Inductive Automation) + custom modules |
| **Historian** | InfluxDB 2.7 (time-series, 10-year retention, downsampling) |
| **Alarm System** | ISA-18.2 compliant, shelving, escalation, annotation |
| **Batch System** | ISA-88 compliant (Procedural Function Chart) |
| **MES Interface** | OPC-UA (CSMFAB companion spec), ERP integration |
| **Digital Twin** | Kafka + gRPC → PROD-37 (512-core HPC) |
| **HMI** | 3× 55 4K displays (control room), 2× tablet (field) |
| **Redundancy** | Hot standby (dual servers, VRRP, <1 s failover) |
| **Backup** | Hourly config, daily historian, weekly full (BFRP NAS) |

### 5.2 HMI Design — High-Performance Graphics

**Design Principles (ISA-101 / ASM Consortium):**
- **Situation Awareness:** Gray backgrounds, color only for abnormalities
- **Alarm Rationalization:** <1 alarm/10 min normal, <10 alarm/hr upset
- **Navigation:** 3-level hierarchy (Overview → Stage → Zone)
- **Trending:** 1 hr, 8 hr, 24 hr, 7 day pre-configured
- **Faceplates:** Standardized for RTU, PLC, SIS, Inverter

**Key Displays:**
1. **Forge Overview:** All 8 zones thermal profile, drum RPM, gas flows, batch progress
2. **Stage Detail:** Zone power, FBG trends, port status, carousel position
3. **Zone Detail:** PID trends, resonance tracker, FBG spatial map, efficiency
4. **Safety Overview:** SIF status, bypass register, proof test schedule
5. **Digital Twin:** Predictive vs actual, anomaly flags, optimization suggestions

### 5.3 Batch Tracking & Genealogy (ISA-88)

```
Batch Record Structure:
Batch_2026-11-02_08 = {
  batch_id: FB-2026-11-02-08,
  recipe: CASCADE-STD-REV-12,
  feedstock: {
    category: A,
    mass_kg: 50,
    composition: {...},
    uuid: CSM-RECYCLER-NA-2026-10-15
  },
  stages: [
    {stage: 0, duration_s: 1800, energy_kwh: 12, li_avg: 0.82},
    {stage: 1, duration_s: 1200, energy_kwh: 8, moisture_final: 0.02},
    ...
    {stage: 8, duration_s: 5400, energy_kwh: 245, zircon_diss: 0.96}
  ],
  outputs: {
    slugs: [
      {port: 8, mass_kg: 12.5, grade: 3Y-TZP, uuid: SLG-2026-11-02-08-8A},
      ...
    ],
    gas: {pyrolysis_kwh: 45, co2_tonne: 0.08}
  },
  quality: {pass: true, deviations: []},
  digital_twin_hash: sha256:abc123...,
  blockchain_anchor: tx:0xdef456...
}
```

### 5.4 MES & ERP Integration

| Interface | Protocol | Data Exchanged | Frequency |
|-----------|----------|----------------|-----------|
| **MES → Forge** | OPC-UA | Work orders, recipe selection, material lots | Per batch |
| **Forge → MES** | OPC-UA | Batch completion, yield, quality, genealogy | Per batch |
| **ERP → Forge** | HTTPS (unidirectional diode) | Inventory, demand forecast, maintenance | Daily |
| **Forge → ERP** | HTTPS (unidirectional diode) | Production, scrap, cost, carbon credits | Hourly |

---

## 6. Safety Instrumented System (SIS) — SIL-3 Certified

### 6.1 SIS Architecture

The SIS is **physically separate** from the BPCS (Basic Process Control System):

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                         SAFETY INSTRUMENTED SYSTEM                          │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  SENSORS (2oo3) ──► SAFETY LOGIC SOLVER ──► FINAL ELEMENTS                 │
│  (Dedicated PMMA POF)    (TÜV-certified FPGA)    (Dedicated PMMA POF)      │
│       │                        │                        │                  │
│       ▼                        ▼                        ▼                  │
│  ┌─────────┐              ┌──────────────┐       ┌──────────────┐         │
│  │ FBG T   │              │ Voting Logic │       │ Inverter     │         │
│  │ FBG P   │              │ 2oo3 per SIF │       │ Gate Drive   │         │
│  │ FBG Strain│             │ <10 μs scan  │       │ (Hard OFF)   │         │
│  └─────────┘              └──────┬───────┘       └──────────────┘         │
│                                 │                                         │
│                    ┌────────────┼────────────┐                            │
│                    ▼            ▼            ▼                            │
│              ┌─────────┐   ┌─────────┐  ┌─────────┐                       │
│              │ Port    │   │ Gas     │  │ Drum    │                       │
│              │ Valves  │   │ Valves  │  │ Brake   │                       │
│              │ (Ti₃AlC₂)│   │ (MFCs)  │  │ (Piezo) │                       │
│              └─────────┘   └─────────┘  └─────────┘                       │
│                                                                             │
│  BYPASS MANAGEMENT: Dual-key (Operations + Safety), time-limited, logged  │
│  PROOF TEST: Quarterly (online), Annual (full stroke), IEC 61511 compliant │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 6.2 SIF Register (24 SIL-3 Functions)

| SIF Tag | Description | Process | SIL | PFD<sub>avg</sub> | Test Interval |
|---------|-------------|---------|-----|-------------------|---------------|
| SIF-00-01 | Forge over-temp (any zone) | All | 3 | 1×10⁻⁴ | Quarterly |
| SIF-00-02 | Vessel over-pressure | All | 3 | 1×10⁻⁴ | Quarterly |
| SIF-00-03 | Atmosphere breach (pO₂) | All | 3 | 2×10⁻⁴ | Quarterly |
| SIF-00-04 | Cooling water loss | All | 3 | 1×10⁻⁴ | Quarterly |
| SIF-00-05 | Ground fault (NGR) | All | 3 | 1×10⁻⁴ | Quarterly |
| SIF-00-06 | E-stop activation | All | 3 | 1×10⁻⁴ | Monthly |
| SIF-01-01 | Stage 0: LF amplitude limit | 0 | 3 | 5×10⁻⁵ | Quarterly |
| SIF-02-01 | Stage 1: Drum over-temp | 1 | 3 | 1×10⁻⁴ | Quarterly |
| SIF-03-01 | Stage 2: Polymer over-temp | 2 | 3 | 1×10⁻⁴ | Quarterly |
| SIF-03-02 | Stage 2: HCl detection >50 ppm | 2 | 3 | 2×10⁻⁴ | Quarterly |
| SIF-04-01 | Stage 4: In over-temp (>180°C) | 4 | 3 | 1×10⁻⁴ | Quarterly |
| SIF-04-02 | Stage 4: Zn vapor pressure >0.5 bar | 4 | 3 | 2×10⁻⁴ | Quarterly |
| SIF-05-01 | Stage 5: Mg vapor pressure >0.1 bar | 5 | 3 | 2×10⁻⁴ | Quarterly |
| SIF-06-01 | Stage 6: H₂ explosion limit (>4%) | 6 | 3 | 1×10⁻⁴ | Quarterly |
| SIF-06-02 | Stage 6: AsH₃/SbH₃ >1 ppm | 6 | 3 | 2×10⁻⁴ | Quarterly |
| SIF-07-01 | Stage 7: CO >1000 ppm | 7 | 3 | 2×10⁻⁴ | Quarterly |
| SIF-07-02 | Stage 7: Fe splash detection | 7 | 2 | 5×10⁻⁴ | Quarterly |
| SIF-08-01 | Stage 8: SiO₂ condenser blockage | 8 | 3 | 1×10⁻⁴ | Quarterly |
| SIF-08-02 | Stage 8: Flash sinter over-current | 8 | 3 | 1×10⁻⁴ | Quarterly |
| SIF-08-03 | Stage 8: Drum thermal shock (>100°C/s) | 8 | 3 | 1×10⁻⁴ | Quarterly |
| SIF-09-01 | Drum bearing over-temp | Mech | 2 | 1×10⁻³ | Quarterly |
| SIF-09-02 | Drum seal leak rate >10⁻⁶ mbar·L/s | Mech | 2 | 5×10⁻⁴ | Quarterly |
| SIF-10-01 | Carrington GIC ride-through | Power | 2 | 1×10⁻³ | Annual |
| SIF-10-02 | Cyber intrusion (anomaly score > threshold) | Cyber | 2 | 1×10⁻³ | Monthly |

**Total PFD<sub>avg</sub> (SIL-3):** 2.3×10⁻³ (meets SIL-3: 10⁻⁴ to 10⁻³ per function, system <10⁻²)

### 6.3 Proof Test Procedures

| Test Type | Frequency | Method | Documentation |
|-----------|-----------|--------|---------------|
| **Online Partial Stroke** | Quarterly | SIS solver initiates 10% valve stroke, verifies feedback | Auto-logged |
| **Full Function Test** | Annual (shutdown) | Inject simulated process trips, verify <50 ms response | Signed report |
| **Sensor Calibration** | Annual | Compare FBG/pO₂/pressure to reference standards | Cal cert |
| **Logic Verification** | Annual | Formal proof (model checking) of SIS application code | Proof report |
| **Bypass Audit** | Monthly | Review all active bypasses, justify, time-limit | Audit trail |

---

## 7. Carrington GIC Immunity — EMP-Hardened OT

### 7.1 Threat Model

| Phenomenon | Parameter | Standard |
|------------|-----------|----------|
| **GIC (Geomagnetic)** | dB/dt = 5000 nT/s, 100 A/km induced | IEEE Std 1656 |
| **E1 HEMP** | 50 kV/m, 1 ns rise, 100 MHz bandwidth | IEC 61000-2-9 |
| **E2 HEMP** | 1-10 kV/m, 1 μs-1 ms, similar to lightning | IEC 61000-4-25 |
| **E3 HEMP** | Slow (1-100 s), quasi-DC, like GIC | IEC 61000-4-34 |
| **Surface Charging** | >10 kV (space environment) | MIL-STD-1857 |

### 7.2 Hardening Architecture

| Layer | Mitigation | Implementation |
|-------|------------|----------------|
| **Physical** | Faraday cage RTUs | BFRP housing + conductive YInMn glaze (σ = 10⁴ S/m) |
| **Power** | Floating secondary | Isolation transformers (Δ-Y), no earth reference |
| **Power** | NGR limiting | 5 A high-resistance grounding |
| **Power** | Surge protection | GDT (3 kA) + MOV at transformer primary |
| **Signal** | All-dielectric comms | PMMA POF — zero conductive path |
| **Signal** | Optical isolation | No copper crossing pressure boundary |
| **Signal** | Common-mode choke | Nanocrystalline on any residual copper |
| **Network** | TSN dual-ring | No single point of failure, deterministic |
| **Cyber** | Air-gap + data diode | Unidirectional to IT, no external IP |
| **Firmware** | Signed boot | Secure boot on all FPGA/RTU/PLC |

### 7.3 GIC Ride-Through Mode

When grid dV/dt > threshold (detected by dedicated monitor):

1. **Detection** (1 ms): Grid monitor FPGA triggers interrupt
2. **Transition** (5 ms): Inverters switch to ride-through — maintain DC link from bus capacitors
3. **Isolation** (10 ms): Physical contactors open (vacuum, BFRP housed) — Forge islanded
4. **Sustain** (indefinite): LiFePO₄ backup (100 Wh) powers control system; drum coast-down
5. **Reconnect** (auto): When grid stable >30 s, pre-charge → contactor close → resume

**Validation:** Tested at up to 100 A/m simulated field (Helmholtz coil facility). No protection trips, no data loss.

---

## 8. Network Architecture — TSN Deterministic Ethernet

### 8.1 TSN Configuration (IEEE 802.1Qbv)

| Parameter | Value |
|-----------|-------|
| **Topology** | Dual-ring (counter-rotating), 8 RTUs + 8 PLCs + 2 SCADA |
| **Speed** | 1 Gbps (1000BASE-T1 automotive, PMMA POF media) |
| **Scheduling** | Time-Aware Shaper (TAS), 1 ms cycle, 8 time slices |
| **Time Slices** | Slice 0: SIS (SIL-3), Slice 1: RTU control, Slice 2: PLC, Slice 3: SCADA, Slice 4-7: Best effort |
| **Latency** | <100 μs (SIS), <500 μs (RTU), <1 ms (PLC), <5 ms (SCADA) |
| **Jitter** | <10 μs (SIS), <50 μs (RTU), <100 μs (PLC) |
| **Redundancy** | FRER (Frame Replication and Elimination for Reliability) |
| **VLANs** | VLAN 10: SIS, VLAN 20: RTU, VLAN 30: PLC, VLAN 40: SCADA, VLAN 99: Mgmt |
| **Sync** | IEEE 802.1AS (PTP), <1 μs accuracy |

### 8.2 Time-Aware Schedule (1 ms Cycle)

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                         TSN 1 ms CYCLE (GCL - Gate Control List)            │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  0.000 ms  │►│ SIS (SIL-3)          │ Gate Open: VLAN 10                   │
│            │   │ 2oo3 voting frames │ Duration: 200 μs                     │
│            │   │ Priority: 7        │                                      │
│  0.200 ms  │►│ RTU Control        │ Gate Open: VLAN 20                   │
│            │   │ PID commands, FBG  │ Duration: 300 μs                     │
│            │   │ Priority: 6        │                                      │
│  0.500 ms  │►│ PLC Data           │ Gate Open: VLAN 30                   │
│            │   │ Cascade setpoints  │ Duration: 200 μs                     │
│            │   │ Priority: 5        │                                      │
│  0.700 ms  │►│ SCADA / Mgmt       │ Gate Open: VLAN 40/99                │
│            │   │ OPC-UA, Historian  │ Duration: 200 μs                     │
│            │   │ Priority: 3-4      │                                      │
│  0.900 ms  │►│ Guard Band         │ Gate Closed (all)                    │
│            │   │ Sync margin        │ Duration: 100 μs                     │
│  1.000 ms  │   CYCLE REPEATS                                                │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 8.3 Network Health Monitoring

| Metric | Threshold | Action |
|--------|-----------|--------|
| **Frame loss (SIS)** | >0 frames/hr | Immediate alarm, path switch |
| **Latency (RTU)** | >500 μs | Degrade to 500 Hz control |
| **PTP offset** | >1 μs | Alarm, switch to holdover OCXO |
| **FRER mismatch** | >0.1% | Path degradation alert |
| **Link utilization** | >80% | Traffic shaping, alarm |

---

## 9. Time Synchronization — PTP Grandmaster

### 9.1 Synchronization Architecture

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                         PTP TIME SYNCHRONIZATION                            │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  GRANDMASTER (GM)                                                           │
│  ┌─────────────────────────────────────────────────────────────────────┐   │
│  │ GNSS Receiver (GPS+GLONASS+Galileo, anti-jam, anti-spoof)          │   │
│  │       │                                                             │   │
│  │       ▼                                                             │   │
│  │ OCXO Holdover (Microchip 5071A, ±50 ppb/day, 24h holdover)        │   │
│  │       │                                                             │   │
│  │       ▼                                                             │   │
│  │ PTP Grandmaster (IEEE 1588v2, Power Profile, 2-step)               │   │
│  │       │                                                             │   │
│  │       ├──► Port 1: TSN Ring A (GM)                                 │   │
│  │       └──► Port 2: TSN Ring B (GM)                                 │   │
│  └─────────────────────────────────────────────────────────────────────┘   │
│              │                    │                                        │
│              ▼                    ▼                                        │
│  ┌─────────────────┐    ┌─────────────────┐                              │
│  │ TSN RING A      │    │ TSN RING B      │                              │
│  │ (Boundary Clocks│    │ (Boundary Clocks│                              │
│  │  at each node)  │    │  at each node)  │                              │
│  └────────┬────────┘    └────────┬────────┘                              │
│           │                      │                                        │
│           ▼                      ▼                                        │
│  ┌─────────────────────────────────────────────────────────────────────┐   │
│  │ ALL NODES: RTUs, PLCs, SCADA, SIS, FPGA (via PMMA POF PTP)        │   │
│  │ Sync Accuracy: <1 μs (typical <200 ns)                             │   │
│  │ Holdover: 24 hours (OCXO) if GM lost                               │   │
│  └─────────────────────────────────────────────────────────────────────┘   │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 9.2 PTP Configuration

| Parameter | Value |
|-----------|-------|
| **Profile** | IEEE 802.1AS (TSN) / IEEE 1588v2 Power Profile |
| **Mode** | 2-step (Pdelay_Req/Resp for peer delay) |
| **Sync Interval** | 125 ms (8 Hz) |
| **Announce Interval** | 1 s |
| **Timeout** | 3 announce intervals (3 s) |
| **Best Master Clock Algorithm** | Enabled (GM priority 1: 128, priority 2: 128) |
| **Holdover Spec** | <1 μs drift over 24h (OCXO ±50 ppb) |
| **Asymmetry Calibration** | Performed at commissioning, stored in FRAM |

---

## 10. Cyber-Physical Security — Air-Gapped OT

### 10.1 Security Architecture

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                         CYBER-PHYSICAL SECURITY ZONES                       │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  IT NETWORK (Enterprise)                                                    │
│  ┌─────────────────────────────────────────────────────────────────────┐   │
│  │ ERP, Email, Web, Historian (read-only), Engineer Workstations      │   │
│  └────────────────────────────────┬────────────────────────────────────┘   │
│                                   │                                         │
│                                   ▼ UNIDIRECTIONAL DATA DIODE               │
│                                   (TX-only fiber, RX physically cut)       │
│                                   │                                         │
│  OT NETWORK (Forge) — AIR-GAPPED                                            │
│  ┌─────────────────────────────────────────────────────────────────────┐   │
│  │ SCADA, PLCs, RTUs, SIS, FPGAs, FBG Interrogators                   │   │
│  │ NO external IP, NO wireless, NO USB ports, NO Bluetooth            │   │
│  └─────────────────────────────────────────────────────────────────────┘   │
│                                                                             │
│  DMZ (Data Historian Replica)                                               │
│  ┌─────────────────────────────────────────────────────────────────────┐   │
│  │ InfluxDB replica (read-only), MQTT broker (IT→OT blocked)          │   │
│  │ Updated via data diode (1-way: OT → IT)                             │   │
│  └─────────────────────────────────────────────────────────────────────┘   │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 10.2 Defense in Depth

| Layer | Controls |
|-------|----------|
| **Perimeter** | Physical air-gap, data diode, no internet connectivity |
| **Network** | TSN VLAN segmentation, MACsec encryption, port security |
| **Host** | Immutable OS (NixOS), signed firmware, no package manager runtime |
| **Application** | Role-based access (Operator/Engineer/Safety/Admin), MFA (hardware token) |
| **Data** | Encryption at rest (AES-256), blockchain-anchored audit log |
| **Monitoring** | ML anomaly detection (FOLLOW-29), behavioral baselines, zero-trust |

### 10.3 Anomaly Detection (FOLLOW-29 Integration)

- **Model:** LSTM autoencoder trained on 6 months normal operation
- **Inputs:** All 480+ sensor streams, network traffic, PLC scan times
- **Output:** Anomaly score (0-1), alert if >0.95 for >10 s
- **Response:** Auto-isolate affected VLAN, alert SOC, log full context
- **False Positive Rate:** <0.1% (validated on 10,000 batches)

---

## 11. Operator Interface (HMI) — High-Performance Graphics

### 11.1 Display Hierarchy

| Level | Display | Refresh | Key Elements |
|-------|---------|---------|--------------|
| **L1** | Forge Overview | 1 Hz | All 8 zones sparkline, drum RPM, total power, batch %, alarms |
| **L2** | Stage Detail | 1 Hz | Zone power bars, FBG spatial map, port status, gas flows |
| **L3** | Zone Faceplate | 10 Hz | PID trend, resonance tracker, FBG table, efficiency, faults |
| **L4** | Safety Faceplate | 1 Hz | SIF status, bypass register, proof test due, SIL status |
| **L5** | Digital Twin | 10 Hz | Predicted vs actual, anomaly heat map, optimization knobs |

### 11.2 Alarm Philosophy (ISA-18.2)

| Priority | Color | Response | Examples |
|----------|-------|----------|----------|
| **Critical (SIL)** | Red flashing | Immediate, auto-action | SIF trip, over-temp, over-pressure |
| **High** | Red | <1 min acknowledgment | Zone deviation >10°C, FBG loss |
| **Medium** | Yellow | <10 min acknowledgment | Efficiency <95%, flow deviation |
| **Low** | Blue | <1 hr acknowledgment | Maintenance due, log full |
| **Info** | Gray | Logged only | Recipe change, batch complete |

**Alarm Shelving:** Max 4 hours (requires Engineer approval). All shelved alarms auto-unshelve.

### 11.3 Training Simulator

- **Platform:** Digital twin (PROD-37) in shadow mode — same models, simulated sensors
- **Scenarios:** Normal startup, feedstock variations, SIF trips, GIC event, cyber intrusion
- **Certification:** Operators must complete 40 hrs sim + 20 hrs supervised before solo
- **Recertification:** Annual (8 hrs sim + 1 emergency drill)

---

## 12. Configuration Management — GitOps for OT

### 12.1 Version Control Strategy

```
Git Repository (lol.forge-control):
├── /rtu/zone_01/...zone_08/        # RTU application code (Zephyr)
├── /plc/stage_01/...stage_08/      # PLC programs (ST/SFC)
├── /sis/sif_001/...sif_024/        # SIS logic (FPGA bitstream + config)
├── /scada/ignition/                # SCADA project (Gateway + Perspective)
├── /network/tsn/                   # TSN GCL, VLAN, PTP config
├── /recipes/stage_01/...stage_08/  # Stage recipes (XML, ISA-88)
├── /firmware/fpga/                 # FPGA bitstreams (signed)
├── /docs/                          # Architecture, interfaces, test plans
└── /ci/                            # Pipeline: lint → test → sign → package
```

### 12.2 Change Control (Management of Change — MOC)

| Change Class | Approval | Testing | Deployment |
|--------------|----------|---------|------------|
| **Emergency** | Shift Lead + Safety | Regression (1 hr) | Hotfix branch → direct |
| **Minor (config)** | Engineer + Safety | Unit + integration (4 hr) | Feature branch → PR → staging |
| **Major (logic)** | Lead Eng + Safety Mgr | Full FAT/SAT subset (1 week) | Release branch → staged rollout |
| **Architecture** | VP Eng + Safety VP | Full V&V (1 month) | Major version tag |

**Rollback:** Every deployment tagged. Rollback = `git checkout <prev-tag> && deploy` (<10 min).

### 12.3 Disaster Recovery

| Scenario | RTO | RPO | Procedure |
|----------|-----|-----|-----------|
| **SCADA server failure** | <1 min | 0 (sync) | VRRP failover to standby |
| **RTU/PLC corruption** | <10 min | 0 (FRAM) | Reflash from signed Git tag |
| **Network partition** | <50 ms | 0 | FRER path switch |
| **Ransomware (IT)** | N/A | N/A | Air-gap — OT unaffected |
| **Facility loss** | 4 hr | 24 hr | Restore from BFRP NAS + GitHub |

---

## 13. Cross-Reference Matrix

| Section | Upstream Dependencies | Downstream Dependencies |
|---------|----------------------|------------------------|
| 1. Architecture | PROD-01 (System), PROD-02 (Cascade) | PROD-24 (Thermal Model), PROD-26 (GIC) |
| 2. Field Devices | PROD-03 (Coil), PROD-04 (Drum), PROD-05 (AMLS) | PROD-23 (Self), FOLLOW-11 (FBG Embedding) |
| 3. Zone RTU | PROD-10 (Power Electronics) | PROD-24 (Thermal Model), FOLLOW-10 (GaN Thermal) |
| 4. Stage PLC | PROD-14-21 (Stage Control Specs) | PROD-29 (Operations), PROD-30 (Maintenance) |
| 5. SCADA | PROD-37 (Digital Twin), PROD-38 (Config Mgmt) | PROD-29, PROD-31 (Economics), PROD-37 |
| 6. SIS | PROD-07 (Gas), PROD-26 (GIC), IEC 61508 | PROD-26, PROD-32 (Compliance), PROD-39 (T&E) |
| 7. GIC Immunity | PROD-10 (Power Dist), PROD-26 (GIC Spec) | PROD-26, FOLLOW-27 (Rad Hardening) |
| 8. TSN Network | PROD-10 (FBG Network), IEEE 802.1 | PROD-23 (Self), FOLLOW-11 (FBG Embedding) |
| 9. PTP Sync | PROD-10 (FBG Interrogator) | PROD-23 (Self), FOLLOW-11 |
| 10. Cyber Security | PROD-36 (Cyber-Physical), IEC 62443 | PROD-36, FOLLOW-29 (ML Anomaly) |
| 11. HMI | PROD-35 (Human Factors), ISA-101 | PROD-29, PROD-34 (Training) |
| 12. Config Mgmt | PROD-38 (Config Mgmt), Git | PROD-38, PROD-39 (T&E) |

### 13.1 Detailed Interface Specifications

| Interface | From | To | Data | Rate | Protocol |
|-----------|------|----|------|------|----------|
| **FBG Data** | RTU | PLC | 48 T + health | 1 kHz | TSN (VLAN 20) |
| **Power Cmd** | PLC | RTU | Zone kW setpoint | 100 Hz | TSN (VLAN 20) |
| **SIF Status** | SIS | PLC/SCADA | Trip/bypass/health | 100 Hz | TSN (VLAN 10) |
| **Recipe** | SCADA | PLC | Stage recipe XML | Per batch | OPC-UA |
| **Batch Data** | SCADA | MES | Genealogy, yield | Per batch | OPC-UA (diode) |
| **Twin Sync** | SCADA | PROD-37 | Full state | 10 Hz | gRPC/Kafka |
| **PTP** | Grandmaster | All | Sync packets | 8 Hz | IEEE 1588v2 |

---

## Appendix A: Control System Quick-Reference Card

```
AEGIS-FORGE I — CONTROL SYSTEM FIELD REFERENCE
===============================================

HIERARCHY:
  L0 Cell (FPGA)     : 100 kHz — GaN gate, desat, ZVS
  L1 Zone RTU (8×)   : 1 kHz   — Thermal PID, Resonance PLL, FBG
  L2 Stage PLC (8×)  : 100 Hz  — Cascade, Interlocks, Recipe
  L3 Plant SCADA     : 10 Hz   — Historian, Alarms, Batch, Twin

KEY SPECS:
  Sensors:      384 FBG T, 64 FBG ε, 16 POF Level, 8 Pyro, 8 MS, 8 XRF
                16 pO₂, 24 Pressure, 32 MFC, 16 AE, 2 Encoder, 8 E-Stop
  Actuators:    16 GaN gates, 32 Varactor, 48 Cap bank, 32 MFC, 8 Port valves
                1 Carousel, 8 Flux, 16 Quench, 1 Drum drive, 4 Crane
  Network:      TSN 1 Gbps dual-ring, FRER, 1 ms cycle, 4 VLANs
  Time Sync:    PTP (IEEE 1588v2), GM GPS+OCXO, <1 μs accuracy
  Safety:       24 SIL-3 SIFs, 2oo3 voting, <50 ms response
  GIC Immunity: Floating secondary, NGR 5A, all-dielectric PMMA POF
  Cyber:        Air-gapped OT, data diode, ML anomaly (FOLLOW-29)

CONTROL CYCLES:
  Thermal PID:      1 ms (RTU) — Kp/Ki/Kd per zone (Table 3.3)
  Resonance PLL:    10 ms (RTU) — V_DS zero-cross → varactor/cap bank
  Cascade:          10 ms (PLC) — Stage setpoints + feedforward
  SCADA:            100 ms — Historian, alarms, batch, twin

CRITICAL SETPOINTS:
  Max drum T:       2200°C (FBG)
  Max vessel P:     5 bar
  Min pO₂:          10⁻¹⁵ atm (ZrO₂ probe)
  Min cooling flow: 10 L/min
  Max GIC ride:     100 A/m (indefinite on backup)
  E-stop response:  <50 ms (optical loop)

EMERGENCY:
  SIF trip    → All inverters OFF, drum coast, N₂ purge
  GIC event   → Ride-through (caps), island, LiFePO₄ backup
  Cooling loss→ Ramp to 20% power, alarm
  FBG loss    → Zone power 50%, investigate
  Cyber alert → Isolate VLAN, data diode hold, SOC notify

KEY EQUATIONS:
  PID:       u = Kp·e + Ki∫e + Kd·de/dt + FF
  PLL:       ΔV = Kp·φ_err + Ki∫φ_err
  Skin depth: δ = √(2ρ/ωμ)
  Power:     P = π²B²d²f²V/6ρ (non-mag) or πB²fV/μ (mag)
  TSN:       1 ms cycle, 4 slices (SIS/RTU/PLC/SCADA)
```

---

## Appendix B: RTU/PLC/SIS Memory Maps

### B.1 Zone RTU Memory Map (Zephyr RTOS)

| Address Range | Content | Size | Access |
|---------------|---------|------|--------|
| 0x0000_0000 - 0x000F_FFFF | Vector table + kernel | 1 MB | RO |
| 0x0010_0000 - 0x001F_FFFF | RTU application code | 1 MB | RO |
| 0x0020_0000 - 0x002F_FFFF | PID config (per zone) | 1 MB | RW |
| 0x0030_0000 - 0x003F_FFFF | PLL config + LUTs | 1 MB | RW |
| 0x0040_0000 - 0x004F_FFFF | FBG calibration data | 1 MB | RO |
| 0x0050_0000 - 0x005F_FFFF | Sensor buffers (circular) | 1 MB | RW |
| 0x0060_0000 - 0x006F_FFFF | Actuator command buffers | 1 MB | RW |
| 0x0070_0000 - 0x007F_FFFF | Logging / event buffer | 1 MB | RW |
| 0x0080_0000 - 0x008F_FFFF | TSN stack buffers | 1 MB | RW |
| 0x0090_0000 - 0x009F_FFFF | MRAM shadow (config) | 1 MB | RW |

### B.2 Stage PLC Memory Map (CODESYS)

| Address Range | Content | Size | Access |
|---------------|---------|------|--------|
| %MB0 - %MB9999 | Marker bytes (flags) | 10 KB | RW |
| %MW0 - %MW4999 | Marker words (setpoints) | 10 KB | RW |
| %MD0 - %MD2499 | Marker dwords (FBG temps) | 10 KB | RW |
| %QX0.0 - %QX7.7 | Safety outputs (SIS) | 64 bits | R (SIS writes) |
| %IX0.0 - %IX7.7 | Safety inputs (SIS) | 64 bits | R |
| Recipe memory | FRAM (non-volatile) | 64 MB | RW |

---

## Appendix C: Commissioning Test Matrix

| Test ID | Description | Level | Pass Criteria | Documentation |
|---------|-------------|-------|---------------|---------------|
| CT-01 | FBG calibration (ice/oil bath) | Component | ±0.5°C accuracy | Cal cert |
| CT-02 | RTU PID step response | Component | Settling <30s, OS <10% | Test report |
| CT-03 | PLL lock acquisition | Component | <50 ms from cold | Scope capture |
| CT-04 | SIS proof test (full) | System | All 24 SIFs <50 ms | Signed report |
| CT-05 | TSN latency/jitter | Network | <100 μs (SIS), <500 μs (RTU) | Wireshark |
| CT-06 | PTP sync accuracy | Network | <1 μs offset | PTP monitor |
| CT-07 | GIC simulation (100 A/m) | System | No trips, data intact | Test report |
| CT-08 | E-stop response | System | All inverters OFF <50 ms | Scope capture |
| CT-09 | Cyber anomaly injection | System | Detect + isolate <10 s | Log export |
| CT-10 | Full cascade dry run | System | 90 min, no faults, data OK | Batch record |

---

## Appendix D: Spare Parts & Maintenance

| Item | Criticality | Stock | Lead Time | Replacement Interval |
|------|-------------|-------|-----------|---------------------|
| GS66516T GaN | Critical | 4 (N+1) | 8 weeks | 5 years |
| FBG Interrogator | Critical | 1 | 12 weeks | 10 years |
| PMMA POF spool | Critical | 2 km | 4 weeks | 5 years |
| Zone RTU module | Critical | 1 | 6 weeks | 10 years |
| Stage PLC | Critical | 1 | 8 weeks | 10 years |
| SIS FPGA | Critical | 1 | 12 weeks | 15 years |
| PTP Grandmaster | High | 1 | 8 weeks | 10 years |
| TSN Switch | High | 1 | 4 weeks | 10 years |
| Data Diode | High | 1 | 6 weeks | 10 years |

---

*End of CSMFAB000000000123 — PROD-23 Control System Architecture*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*