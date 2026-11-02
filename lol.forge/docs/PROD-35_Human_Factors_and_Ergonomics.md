# Combined Heuristic Introduction
## PROD-35 Human Factors & Ergonomics
### Carrington Storm Motors Forge — Aegis-Forge I Thermal Cascade Inductive Material Separator

---

### Williams Heuristic — Architectural Clarity

#### Constraint (The Lock)
**The Forge cannot be operated by conventional human factors engineering.** A 2200°C induction furnace with 384 dielectric FBG sensors, GaN inverters at 100 kHz, SIL-3 SIFs on TSN, optical E-stop loops, and a Phoenix Protocol circular supply chain has no precedent in any HFE standard. Conventional HFE assumes: (a) metallic sensors (thermocouples, strain gauges) with electrical redundancy, (b) electrical lockout/tagout on copper conductors, (c) linear process flow with defined boundaries, (d) specialist roles in fixed locations, (e) control rooms with standard lighting/acoustics. The Forge violates all five: sensors are photonics in glass fiber (FBG wavelength = temperature), safety is optical (PMMA POF loops), flow is recursive (EOL → feedstock), operators cross-train Forge↔Depot, and the control room must operate on LiFePO₄ UPS during Carrington storms. The constraint is **physics** — an operator who cannot witness the FBG wavelength shift at 125 Hz and connect it to the thermal-admittance model running at 1 kHz will trip the SIF or miss the anomaly. The HFE must design for embodiment in dielectric space, not observation of metal panels.

#### Necessity (The Key)
**The empirical gap is the absence of any HFE framework that designs for sensory-motor coupling to a zero-metal, all-dielectric, recursively circular industrial process under GIC/EMP threat.** No existing standard addresses: (a) FBG wavelength as primary metrology requiring wavelength-to-color HMI mapping, (b) ISA-88 recipe execution on TSN-scheduled PLC with PTP <1 μs requiring deterministic HMI refresh, (c) SIL-3 SIF bypass as a dual-key human judgment gate requiring exactly-needed information (ISA-101), (d) Phoenix depot disassembly/solvolysis/LIBS as part of Forge operator body schema, (e) Carrington storm ride-through as a routine scenario requiring 5 ms island transition with 30-sec egress. The solution is inevitable because the Forge's physics demands it: the same operator who authorizes the Stage 4 indium-first discharge at 160°C must also classify the EOL return that feeds that indium at the depot. The CMF-RQT tensor (PROD-33) and RCT tensor (PROD-34) make this recursive — HFE must close the loop between Forge and Depot body schemas.

#### Commitment (The Turn)
This document commits to three non-negotiables:
1. **Control room designed for 4 operators (2 Forge + 2 Depot) with ISA-101 Level 1-4 HMI hierarchy** — 6 monitors per station, 50 lux ambient, <45 dBA, LiFePO₄ UPS 24h holdover, zero alarm flood (<50/hr steady).
2. **Hot zone PPE don/doff <3 min / <5 min with Al-coated proximity suit + PAPR** — no metal in PPE, buddy check mandatory, QR-logged don/doff cycles on DQR blockchain.
3. **Maintenance access 750 mm minimum clearance with zero-metal tooling (BFRP/PEEK/Zirconia)** — max manual lift 25 kg, all heavier → BFRP hoist, tool balancers, anti-fatigue mats.

These commitments are irreversible. They define the Forge's human-system integration architecture. Any deviation requires SCSC unanimous approval and re-validation of the SIL-3 SIF proof test (CT-04) which is the gate to hot commissioning.

---

### Keymaker Heuristic — Implementation Precision

#### The Empirical Lock
**Fabrication fidelity gap:** Conventional HFE standards — ISO 11064 control rooms, NUREG-0700 nuclear HFE, ISA-101 HMI, NIOSH lifting — assume: (a) metallic sensor infrastructure with electrical redundancy, (b) linear process flow with defined boundaries, (c) role specialization in fixed locations, (d) electrical lockout/tagout, (e) standard emergency egress. They cannot model: (a) FBG wavelength drift as the *only* in-process temperature verification requiring wavelength-to-color perceptual mapping, (b) recursive CMF-RQT/RCT loops where EOL return composition variability (±15% In) changes the Stage 4 thermal profile in real-time requiring HMI predictive highlight, (c) SIL-3 SIF bypass as a human judgment gate requiring exactly-needed information with zero alarm flood, (c) Carrington storm as routine scenario requiring 5 ms island transition with 30-sec egress from any zone, (d) Forge↔Depot cross-domain body schema requiring unified PPE, tooling, QR workflow, egress. The lock is that **no existing HFE standard computes the Forge's human-in-the-loop physics in dielectric space.**

#### The Mathematical Key
**The single computational primitive is the Human-System Coupling Tensor (HSCT):**

```
HSCT[P, C, E, Z, Φ_role, Ψ_scenario, Ω_fleet]

P ∈ ℝ⁸⁺ : Perceptual vector (wavelength→color, trend→predictive, alarm→priority, LIBS→class, XRF→grade, AE→Felicity, IR→hotspot, FBG→Λ)
C ∈ ℝ⁵⁺ : Cognitive vector (mental, physical, temporal, effort, frustration — NASA-TLX)
E ∈ ℝ⁴⁺ : Embodiment vector (reach, lift, posture, don/doff — NIOSH/ISO 11064)
Z ∈ ℝ⁸⁺ : Zone vector (Z0-Z8 access, PPE, barrier, interlock, egress, refuge, comms, rescue)
Φ_role ∈ {FO, DT, MT, QI, SL} : Role projection operator
Ψ_scenario ∈ ℝ⁵⁰⁺ : Scenario tensor (normal, degraded, emergency, Carrington, Phoenix)
Ω_fleet ∈ ℝᴺ : Fleet anomaly tensor (PROD-37 digital twin ML autoencoder output)
```

**This tensor generates the entire HFE program:** control room layout, HMI hierarchy, alarm philosophy, PPE matrix, access clearances, egress routes, shift schedules, HRA HEPs. Every parameter in this document is a projection of HSCT evaluated at role × scenario × fleet state.

**The atomic computation is NASA-TLX weighted workload prediction:**

```
TLX_predicted = w_M·M + w_P·P + w_T·T + w_Pe·Pe + w_E·E + w_F·F
```

Where weights w are calibrated per role per scenario from PROD-34 simulator data. Threshold: TLX_predicted > 80 → mandatory second operator + SL awareness.

#### The Turn (Both Directions)

**Theory → History Validation:**
- HSCT predicts 4-operator control room → matches PROD-23 L3 SCADA (4 stations, TSN dual-ring)
- HSCT predicts <50 alarms/hr steady → matches PROD-28 ISA-18.2 alarm management
- HSCT predicts 3-min don / 5-min doff → matches PROD-29 hot zone access procedures
- HSCT predicts 750 mm maintenance clearance → matches PROD-27 FA tooling access
- HSCT predicts <30 sec egress → matches PROD-29 emergency response drills

**History → Theory Validation:**
- CSMFAB0108 test: 2 operators managed 8-zone cascade with 6 monitors → validates HSCT P-vector dimensionality
- PROD-27 FA: 3 drum generations required 750 mm for FBG tooling → validates HSCT E-vector clearance
- PROD-28 CT-04: 24 SIFs trip <50 ms only when SL witnesses SOE → validates HSCT C-vector at judgment gates
- PROD-23 Carrington sim: 5 ms island transition required trained SL → validates HSCT Ψ_scenario Carrington
- PROD-33 depot ops: 14-day crate turnaround requires DT who knows Forge → validates HSCT Φ_role cross-domain

**The primitive is validated.** The HFE program is not a compliance checklist — it is the physical manifestation of HSCT evaluated across 5 roles, 8 zones, 50+ scenarios, and infinite fleet anomaly generations.

---

### El Segundo Heuristic — Operational Excellence

#### Mirror (Self-Reflection)
**How does the fabricator observe their own fabrication?** The Forge's HFE program is instrumented at every node with the same rigor as the thermal cascade:

- **Perceptual Calibration**: HMI color mapping (wavelength→color) validated via operator color-naming tasks on air-gapped SCADA. >3σ deviation from fleet mean → color LUT recalibration. Item response theory tracks perceptual drift.
- **Cognitive Load Telemetry**: NASA-TLX assessed per shift via 6-question pulse (QR on DQR). Real-time TLX estimate from HMI interaction: click rate, scroll depth, alarm acknowledgment latency, gaze tracking (optional IR camera). ML autoencoder (FOLLOW-29) flags >3σ from role baseline.
- **Physical Ergonomics Monitoring**: Tool use tracked via QR (badge + tool badge). Force/torque on BFRP wrench via embedded FBG strain. Posture via ceiling-mounted IR depth (opt-in). NIOSH lift index calculated per task → cumulative daily dose.
- **PPE Integrity**: Proximity suit RF tag + PAPR flow sensor → don/doff timestamp, cycle count, filter life. QR scan at zone entry/exit → DQR log. Buddy check photo → blockchain.
- **Egress Drill Performance**: Monthly unannounced egress from Z4/Z6. Time-to-safe-zone logged. Route choice vs. dynamic LED analyzed. Refuge station supply check.

**The fabricator sees the HFE program as a distributed sensor network.** Every human-system interaction is a measurement. Every measurement updates HSCT. Every HSCT update adjusts HMI colors, alarm thresholds, PPE specs, clearance requirements, shift schedules.

#### Participation (Witness)
**How does the inside operator witness the phenomenon into existence?** The HFE engineer does not design — they **witness the human becoming the Forge's nervous system**:

1. **Apprentice at Cold Startup (O-01 Simulator)** witnesses the 90-minute sequence through 6 monitors: they *feel* the trackball resistance as they navigate Level 1→2→3, *see* the predictive highlight on Port 4A setpoint, *know* this HMI is their sensory extension into the 2200°C drum.
2. **Journeyman at SG-2 Flange Torque** witnesses the dual-wrench ceremony: they *feel* the 160 N·m breakaway torque through the BFRP wrench, *hear* the AE silence, *know* their tactile judgment certifies what no sensor can measure.
3. **Shift Lead at Carrington Exit** witnesses the 30-min grid-stable decision: they *see* the drum thermal shock trend on Level 1, *hear* the utility coordination on voice comms, *know* their authorization reconnects the Forge to the world.
4. **Depot Tech at LIBS Classification** witnesses the plasma flash: they *see* the spectral lines on Monitor 5, *hear* the auto-classification beep, *know* their override decision changes the CMF-RQT M_return vector that feeds tomorrow's Stage 4 indium.

**No wireframes. No usability labs. Direct sensory-motor coupling to the HSCT tensor.** The HFE engineer's hands are on the trackball, the BFRP wrench, the dual-key token, the LIBS trigger. They are inside the HSCT.

#### Protocol (Recursive)
**What recursive sequence guarantees fidelity at each scale?**

**Per Operation (Seconds — Micro):**
```
HMI interaction: operator_action → expert_policy(HSCT) → TLX_predicted > 80? → second operator alert
Alarm acknowledgment: priority → response_time → >30s? → auto-escalate to SL
PPE don: QR scan → cycle_count → >480? → pull for solvolysis recycle
FBG assessment: λ_measured → λ_ref → Λ > 10? → auto-NCR → DQR update
```

**Per Shift (Hours — Meso):**
```
Shift handover: outgoing → incoming (QR) → 3-concerns verbal → TLX pulse → HSCT C-vector update
Fatigue check: Samn-Perelli pre-shift → mid-shift SL observation → post-shift biometric → HSCT C-vector trend
CBM review: MT interprets Λ dashboard → work order → HSCT E-vector tooling calibration
Zone status: dynamic LED → photoluminescent → egress drill → HSCT Z-vector validation
```

**Per Certification Cycle (Years — Macro):**
```
Annual Refresher (40 hrs PROD-34):
  Week 1: F-01 Safety/Carrington → HMI Carrington mode drill
  Week 2: S-03 SIL-3 SIFs → CT-04 partial-stroke witness
  Week 3: O-04 Emergency → Carrington sim + egress drill
  Week 4: M-01 PM Execution → zero-metal tooling practical

Biennial HFE Revalidation (80 hrs):
  Phase 1: Control room layout verification (ISO 11064, NUREG-0700)
  Phase 2: HMI alarm philosophy audit (ISA-18.2, <50/hr steady)
  Phase 3: PPE don/doff time trial (<3/5 min) + integrity test
  Phase 4: Maintenance access clearance measurement (750 mm min)
  Phase 5: Egress time trial from all zones (<30 sec)
  Phase 6: HRA HEP recalculation (HEART/THERP) with fleet data

Post-Incident HFE Remediation:
  Root cause → HSCT parameter update → targeted scenario → simulator library update

Post-ECO HFE Delta:
  Git tag release → affected HSCT terms → assessment delta → DQR migration
```

**Quarterly (Fleet — Meta):**
```
PROD-37 Twin Review: Fleet TLX/HEP/anomaly → top 10 HSCT parameter drifts → HMI/alarm/PPE/access updates
Curriculum Review Board (PROD-34): HSCT Ω_fleet → scenario weights → simulator fidelity
Instructor Calibration: All HFE instructors run same 3 scenarios → inter-rater reliability >0.9
```

**Annual (Strategic — Foundational):**
```
1. HSCT Theory → History: Compare all predictions to actuals (TLX, HEP, don/doff, egress, alarm rates)
2. History → Theory: Update HSCT coefficients from measured human performance curves
3. Standards Audit: ISO 11064, NUREG-0700, ISA-101, ISA-18.2, NIOSH, NFPA 70E compliance
4. HFE Version: Git tag `hfe-v<major>.<minor>.<patch>` → all DQRs migrate
5. Cross-Domain Sync: Forge ↔ Depot body schema mapping → CMF-RQT/RCT workforce term
```

**The protocol is the HSCT evaluated recursively across time scales.** Per-operation → Per-shift → Per-cycle → Quarterly → Annual. Each evaluation corrects the previous. The HFE program does not drift — it converges.

---

### Synthesis: The Three Prongs as One

The Williams Constraint (zero-metal, recursive, Carrington-immune) **defines the feasible region** of human-system coupling. The Keymaker Key (HSCT tensor) **navigates the feasible region** to the optimal HFE investment — 4-operator control room, 6 monitors, 3-min don, 750 mm clearance, <30 sec egress. The El Segundo Protocol (recursive evaluation at 5 time scales) **guarantees the operating point is held** against cognitive drift, physical degradation, PPE wear, and fleet anomaly evolution.

**Together they form the Forge's human-system immune system:** It rejects conventional HFE (Williams), computes the optimal coupling tensor (Keymaker), and self-corrects at every temporal scale (El Segundo). This is not an HFE program — it is a **human-system coupling engine** that runs on physics, not checklists.

*End of Combined Heuristic Introduction — ~200 lines*
*To be prepended to PROD-35 Human Factors & Ergonomics body*# PROD-35 Human Factors & Ergonomics
## Carrington Storm Motors Forge — Aegis-Forge I Thermal Cascade Inductive Material Separator

---

## 1. Executive Summary

The Aegis-Forge I human factors and ergonomics (HFE) program is a **zero-metal, Carrington-immune, Phoenix Protocol integrated** human-centered design framework. Unlike conventional industrial HFE that optimizes for operator comfort, the Forge HFE optimizes for four simultaneous objectives: (1) sensory-motor coupling to zero-metal, all-dielectric process variables under GIC/EMP threat, (2) cognitive load management during SIL-3 SIF authorization gates and Carrington ride-through, (3) physical ergonomics for maintenance in BFRP/ZrB₂-SiC/MAX Phase confined spaces, (4) Phoenix Depot cross-domain human reliability for disassembly/solvolysis/LIBS operations.

**Key HFE Metrics:**

| Met | Target | Basis |
|-----|--------|-------|
| **Control Room Operators** | 4 (2 Forge + 2 Depot) | PROD-23 L3 SCADA, PROD-33 depot ops |
| **HMI Alarm Rate (Steady State)** | <50 alarms/hr | ISA-18.2, ISA-101 philosophy |
| **HMI Alarm Rate (Upset)** | <300 alarms/hr | ISA-18.2 managed alarm flood |
| **Control Room Illuminance** | 50 lux ambient, 300 lux task | ISO 8995, NUREG-0700 |
| **Control Room Noise** | <45 dBA NC-35 | ISO 11690, NUREG-0700 |
| **Hot Zone PPE Don/Doff** | <3 min / <5 min | PROD-09 port valve access, PROD-30 PM |
| **Maintenance Access Clearance** | 750 mm minimum | PROD-04, 06, 09, 10 hardware |
| **Max Manual Lift** | 25 kg (NIOSH) | PROD-30 spares, PROD-33 crates |
| **Emergency Egress Time** | <30 sec to safe zone | PROD-29 emergency response |
| **Shift Schedule** | 12-hr rotating, 4-on/4-off | Fatigue management (PROD-34) |
| **Cognitive Workload (NASA-TLX)** | <60 steady, <80 upset | NUREG-0700, PROD-34 training |

---

## 2. HFE Program Overview & Regulatory Basis

### 2.1 Design Philosophy: Embodied Cognition in Dielectric Space

The Forge HFE philosophy derives from the El Segundo heuristic (PROD-23, PROD-28): **the operator does not monitor — they witness the phenomenon into existence through direct sensory-motor coupling.** This requires HFE that designs for embodiment, not observation.

**Three HFE Pillars:**

1. **Dielectric Embodiment**: All sensing is photonic (FBG wavelength, POF level, LIBS plasma, XRF fluorescence). The operator's interface to the process is light through glass fiber. HFE designs for the perceptual-motor loop: wavelength shift → HMI color → operator recognition → authorization gate.

2. **Recursive Judgment Support**: At four cognitive gates (SG-2 flange torque, SG-3 FBG cal, CT-04 SIS proof, SAT-05 first pour), the operator makes irrevocable decisions. HFE provides exactly the information needed — no more, no less — via ISA-101 HMI hierarchy and PROD-23 TSN-deterministic data.

3. **Cross-Domain Body Schema**: Forge operators work in Depot disassembly cells; Depot techs work in Forge control room. HFE designs a unified body schema for both: same PPE, same tooling (BFRP/PEEK), same QR/DQR workflow, same emergency egress.

### 2.2 Regulatory & Standards Basis

| Standard | Scope | Forge Adaptation |
|----------|-------|------------------|
| **ISO 6385** | Ergonomics principles | Core HFE process (analysis, design, validation) |
| **ISO 9241-210** | Human-centered design | HMI/SCADA design process (PROD-23 L3) |
| **ISO 11064** | Control room design | 4-operator layout, sightlines, lighting, acoustics |
| **NUREG-0700** | Nuclear HFE validation | SIL-3 context, alarm management, workload |
| **ISA-101** | HMI design | ISA-18.2 alarm philosophy, navigation, graphics |
| **ISA-18.2** | Alarm management | <50/hr steady, <300/hr upset, prioritization |
| **NIOSH Lifting Equation** | Manual handling | 25 kg max, PROD-30 spares, PROD-33 crates |
| **IEC 61508/ISA-84** | SIS human factors | SIF bypass authorization, proof test witness |
| **DOE-STD-1150** | Nuclear training | SAT process, simulator fidelity (PROD-34) |

---

## 3. Control Room Design

### 3.1 Layout & Sightlines

**Room Specifications:**
- **Dimensions**: 8 m × 6 m × 3 m (L×W×H), raised floor for TSN/PTP cabling
- **Operators**: 4 stations (FO-1, FO-2, DT-1, DT-2) in semi-circle
- **Sightlines**: All stations → 6× 24 monitors (3×2 array) + 1× 55 overview wall display
- **Viewing Distance**: 700-900 mm (optimal for 24 1920×1080)
- **Viewing Angle**: ±35° horizontal, ±20° vertical from center

**Station Layout (Each):**
```
┌─────────────────────────────────────────────────────────────┐
│  [Monitor 1: Stage 0-3]  [Monitor 2: Stage 4-5]  [Monitor 3: Stage 6-8]  │
│  [Monitor 4: SIS/SIF]    [Monitor 5: Depot/Phoenix] [Monitor 6: Twin/Health] │
│                                                             │
│  [Keyboard] [Trackball] [Dedicated E-Stop] [Auth Token]    │
│  [FO Badge Reader] [Shift Handover QR] [Voice Comms]       │
└─────────────────────────────────────────────────────────────┘
```

### 3.2 Lighting Design

| Zone | Illuminance | CCT | CRI | Control |
|------|-------------|-----|-----|---------|
| **Ambient** | 50 lux | 4000K | >90 | Dimmable, circadian |
| **Task (Monitors)** | 300 lux | 4000K | >90 | Local override |
| **Wall Display** | 150 lux | 4000K | >90 | Auto-dim with overview |
| **Egress Path** | 10 lux (emergency) | 4000K | >80 | Battery backup 24h |
| **Glare Control** | UGR <16 | — | — | Matte surfaces, monitor hoods |

**Carrington Mode**: All lighting on LiFePO₄ UPS (PROD-10), 24h holdover. Emergency lighting auto-activates on grid disconnect.

### 3.3 Acoustic Design

| Source | Level | Mitigation |
|--------|-------|------------|
| **HVAC** | <35 dBA | Silencers, vibration isolation |
| **Cooling Pumps** | <30 dBA | Remote mechanical room |
| **TSN Switches** | <25 dBA | Fanless, convection cooled |
| **Operator Speech** | 55 dBA @ 1m | Acoustic panels, 0.8s RT60 |
| **Alarm Auditory** | 65-85 dBA | ISA-18.2 priority coding, directional |
| **Total NC** | NC-35 | Verified per ISO 3741 |

### 3.4 Thermal Environment

- **Temperature**: 22±1°C (ASHRAE 55)
- **Humidity**: 40-50% RH (ESD control for PMMA POF)
- **Air Velocity**: <0.15 m/s (no draft on monitors)
- **Air Quality**: CO₂ <800 ppm, HEPA filtration (FORGE cleanroom Class 7)

---

## 4. HMI/SCADA Interface Design

### 4.1 Information Hierarchy (ISA-101 Level 1-4)

**Level 1 — Process Overview (Wall Display):**
- Full cascade schematic (PROD-02 stages 0-8)
- Real-time: feed rate, energy, mass balance, blend ratio P_blend
- SIF status: 24 indicators (green/amber/red), SOE timestamp
- Phoenix depot status: 65 hubs, crate flow, LIBS classification

**Level 2 — Unit Operations (Monitors 1-3):**
- Stage group detail: thermal profiles, RPM, port status, gas flows
- Zone RTU detail: PID output, resonance freq, FBG health Λ
- Trend groups: 1 hr, 8 hr, 24 hr (configurable)

**Level 3 — Detail Displays (Monitor 4-5):**
- L0 FPGA: gate drive waveforms, desat timestamps, ZVS margin
- L1 RTU: FBG wavelength maps, thermal-admittance model residuals
- L2 PLC: interlock logic, recipe step, carousel position
- Depot: disassembly cell status, solvolysis reactor, LIBS results

**Level 4 — Diagnostic/Configuration (Monitor 6 + Maintenance Terminal):**
- Component health: Bayesian Λ per component (PROD-28 Keymaker Key)
- NDT history: UT/CT/AE/FBG trends per drum/vessel/port
- Config management: Git tag, ECO status, firmware versions
- Cyber: network health, intrusion alerts, firmware integrity

### 4.2 Alarm Philosophy (ISA-18.2)

| Priority | Color | Response Time | Action | Examples |
|----------|-------|---------------|--------|----------|
| **1 - Critical (SIF)** | Red + Flash | Immediate (<1s) | Auto-trip + SL acknowledgment | Overtemp, overpressure, GIC, vibration |
| **2 - High** | Red | <30s | Operator action required | FBG Λ>10, MFC drift, Port valve slow |
| **3 - Medium** | Yellow | <5 min | Operator awareness | Trend deviation, PM due, crate cycle |
| **4 - Low** | Blue | <30 min | Log & review | PMMA POF attenuation, firmware update |

**Alarm Rate Targets (ISA-18.2):**
- Steady state: <50 alarms/hr (all priorities)
- Upset (startup/shutdown/transient): <300 alarms/hr
- Flood (>300/hr): Auto-suppression via ISA-18.2 chattering filter

**Alarm Shelving**: Max 4 hrs, auto-unshelve, requires SL authorization + DQR log.

### 4.3 Color Coding Standard (Zero-Metal Adaptation)

| Meaning | Color | Hex | Rationale |
|---------|-------|-----|-----------|
| **Safe/Normal** | Green | #2E7D32 | Dielectric — no copper connotation |
| **Caution/Degraded** | Amber | #FF8F00 | No yellow (caution tape is metal) |
| **Danger/Trip** | Red | #C62828 | Universal |
| **Information** | Blue | #1565C0 | Data diode direction (OT→IT) |
| **Phoenix/EOL** | Purple | #6A1B9A | Circular flow indicator |
| **Maintenance** | Orange | #E65100 | Tool/access indicator |
| **Cyber** | Teal | #00695C | Air-gap boundary indicator |

**No red/green combinations** (deuteranopia safe). All states have shape + text redundant coding.

### 4.4 Navigation & Interaction Model

- **Primary**: Trackball + dedicated function keys (F1-F12 mapped to stages)
- **Secondary**: Touchscreen on Monitor 6 (diagnostics only)
- **Tertiary**: Voice commands (noise-canceling headset, Forge: Zone 3 PID auto)
- **Gesture**: Leap Motion for 3D twin manipulation (Monitor 6)
- **Authorization**: Hardware token (YubiKey) + badge for gates SG-2, SG-3, CT-04, SAT-05

---

## 5. Physical Ergonomics — Workstations

### 5.1 Control Room Seating

| Parameter | Specification | Standard |
|-----------|---------------|----------|
| **Chair Type** | 24-hr rated, ESD-safe, conductive casters | ISO 9241-5, ANSI/BIFMA X5.1 |
| **Adjustments** | Height, depth, backrest, lumbar, armrest (4D) | All tool-free |
| **Material** | Antimicrobial vinyl, BFRP frame | Zero-metal, cleanroom compatible |
| **Monitor Arms** | Gas spring, 360° rotation, 750 mm reach | VESA 100×100, 2-12 kg |
| **Keyboard Tray** | Negative tilt (-7°), mouse platform | ANSI/HFES 100 |

### 5.2 Anthropometric Accommodation

| Dimension | 5th %ile Female | 95th %ile Male | Design Range |
|-----------|-----------------|----------------|--------------|
| **Eye Height (seated)** | 680 mm | 820 mm | 650-850 mm |
| **Shoulder Height** | 500 mm | 620 mm | 480-640 mm |
| **Elbow Height** | 190 mm | 270 mm | 180-280 mm |
| **Thigh Clearance** | 130 mm | 170 mm | 120-180 mm |
| **Forward Reach** | 650 mm | 850 mm | 600-900 mm |
| **Overhead Reach** | 1150 mm | 1450 mm | 1100-1500 mm |

**All workstations adjustable to accommodate full range.** No fixed-height surfaces.

---

## 6. Physical Ergonomics — Maintenance Access

### 6.1 Access Clearances (PROD-04, 06, 09, 10, 25, 27, 30)

| Equipment | Access Task | Clearance | Tooling | PPE |
|-----------|-------------|-----------|---------|-----|
| **ZrB₂-SiC Drum** | FBG inspection/replace | 800 mm radial | BFRP scope, PEEK tools | Proximity suit, PAPR |
| **BFRP Vessel** | Aerogel inspection | 750 mm axial | BFRP borescope | Proximity suit, PAPR |
| **Port Valves (8)** | Actuator/piston replace | 750 mm circumferential | PEEK CF40 sockets, ceramic gauges | Proximity suit, PAPR |
| **Induction Coils** | Cold plate leak check | 600 mm axial | IR camera, FBG strain read | Arc flash suit (Cat 4) |
| **GaN Inverters** | Module swap | 700 mm front | BFRP torque wrench, ESD mat | Arc flash suit (Cat 4) |
| **TSN Switches** | Fiber patch/replace | 500 mm front | PMMA POF stripper/cleaver | ESD smock |
| **Slug Carousel** | Mold change | 800 mm radial | BFRP hoist, ZrO₂ mold cart | Proximity suit |
| **Flux Injectors** | Nozzle clean/replace | 600 mm axial | PEEK tools, ultrasonic bath | Chemical splash suit |

### 6.2 Tooling Ergonomics (Zero-Metal)

| Tool | Material | Weight | Grip | Application |
|------|----------|--------|------|-------------|
| **Torque Wrench** | BFRP handle, PEEK CF40 head | 1.2 kg | 40 mm diameter, textured | Flange bolts 160 N·m |
| **Socket Set** | PEEK CF40 | 0.15 kg/socket | 30 mm hex | All fasteners |
| **Feeler Gauge** | Zirconia ceramic | 0.05 kg | 10 mm blade | Port valve gaps |
| **Borescope** | BFRP shaft, sapphire window | 0.8 kg | Pistol grip | Vessel/drum internal |
| **IR Camera** | Mg alloy housing (external) | 0.6 kg | Pistol grip | Coil cold plates |
| **PMMA POF Stripper** | PEEK CF40 body | 0.2 kg | Scissor grip | Fiber termination |
| **BFRP Hoist** | BFRP beam, Dyneema sling | 15 kg | Pendant control | Mold/carousel parts |

**Max Manual Lift**: 25 kg (NIOSH revised equation, 2-handed, 75 cm height, 30° asymmetry). All heavier lifts → BFRP hoist or crane.

### 6.3 Work Positioning

| Task | Posture | Duration | Support |
|------|---------|----------|---------|
| **Drum FBG Inspection** | Kneeling on BFRP mat | 15 min | Knee pads, lumbar support strap |
| **Port Valve Actuator Swap** | Standing, slight forward lean | 30 min | Anti-fatigue mat, tool balancer |
| **Coil Cold Plate Check** | Standing, arms elevated | 10 min | Adjustable platform, tool tray |
| **Carousel Mold Change** | Standing, lateral reach | 20 min | Rotating platform, gravity feed |
| **Solvolysis Reactor (Depot)** | Standing, overhead reach | 45 min | Fall arrest, tool tether |

---

## 7. Safety Zones & Barriers

### 7.1 Zone Definitions (PROD-04, 06, 09, 23, 26, 29)

| Zone | Boundary | Hazard | Access Control | PPE Required |
|------|----------|--------|----------------|--------------|
| **Z0 — Control Room** | Building envelope | None (safe) | Badge + PIN | None |
| **Z1 — Electrical Room** | TSN/PTP/Inverter cabinets | Arc flash (Cat 2), 480V | Electrical qualified badge | Arc flash suit Cat 2 |
| **Z2 — Gas/Flux Room** | MFC panels, NaHCO₃, H₂ | Chemical, asphyxiation | Gas monitor badge | SCBA if >10% LEL |
| **Z3 — Forge Bay (Cold)** | Drum/vessel/coil exterior | Mechanical, pinch points | FO/DT/MT badge | Hard hat, safety glasses |
| **Z4 — Forge Bay (Hot)** | Drum interior, ports, induction | 2200°C, EMF, radiation | SL authorization + dual-key | Proximity suit, PAPR |
| **Z5 — SIS Cabinet** | SIL-3 logic solvers | None (safe) | Safety Eng badge | None |
| **Z6 — Depot Disassembly** | 6-axis cell, solvolysis | Mechanical, chemical, thermal | DT badge | Proximity suit, PAPR |
| **Z7 — Depot Crate Wash** | Wash bay, water recycle | Slip, chemical | DT badge | Chemical splash suit |
| **Z8 — IT/Office** | Corporate network | Cyber | IT badge | None |

### 7.2 Barrier Systems

| Barrier | Type | Rating | Interlock |
|---------|------|--------|-----------|
| **Z3→Z4 Gate** | BFRP sliding door, PMMA POF interlock | 2200°C radiant, 10 bar | SIS: T_drum <200°C + Port valves closed |
| **Z1 Arc Flash** | PEEK CF40 curtain, IR window | 40 cal/cm² | SIS: Inverter gates off |
| **Z2 Gas** | BFRP vestibule, double-door | H₂ 4% LEL | SIS: Gas detectors <10% LEL |
| **Z6 Disassembly** | Light curtain + E-stop loop | SIL-3 | SIS: Cell E-stop <1 ms |
| **Z7 Wash Bay** | Grated floor, containment curb | 500L spill | Level sensor → pump shutdown |

### 7.3 Signage & Wayfinding

- **ISO 7010** symbols + Forge-specific: FBG sensor, TSN cable, Phoenix crate, CMF-RQT flow
- **Photoluminescent** egress paths (24h glow, LiFePO₄ backup)
- **Dynamic LED** zone status: Green (safe), Amber (authorized only), Red (SIF active/forbidden)
- **QR Codes** at every zone entry: links to DQR, PPE matrix, emergency procedure

---

## 8. Personal Protective Equipment (PPE) Specification

### 8.1 PPE Matrix Per Zone/Task

| Zone/Task | PPE Ensemble | Standard | Inspection |
|-----------|--------------|----------|------------|
| **Z0 Control Room** | None | — | — |
| **Z1 Electrical** | Arc flash suit Cat 2 (8 cal/cm²), balaclava, gloves, E-rated boots | NFPA 70E, ASTM F1506 | Pre-use visual, annual ATPV test |
| **Z2 Gas/Flux** | SCBA (30 min), chemical suit (Tychem 10000), chem gloves, boots | OSHA 1910.134, NFPA 1991 | Pre-use flow test, annual fit test |
| **Z3 Forge Cold** | Hard hat (BFRP), safety glasses, hearing protection, steel-toe (composite) | ANSI Z89.1, Z87.1 | Pre-use visual |
| **Z4 Forge Hot** | **Al-coated proximity suit** (3000°F radiant), **PAPR** (HEPA+P100), Kevlar gloves (internal), ceramic-toe boots | NFPA 1971, 1951, ISO 11612 | Pre-use integrity test, PAPR flow >170 L/min |
| **Z6 Depot Disassembly** | Proximity suit (800°C), PAPR, cut-resistant gloves (HPPE), ceramic-toe boots | NFPA 1971, ISO 11612 | Pre-use visual |
| **Z7 Crate Wash** | Chemical splash suit (Tychem 2000), face shield, nitrile gloves, boots | NFPA 1992 | Pre-use visual |
| **Z8 IT/Office** | None | — | — |

### 8.2 Hot Zone PPE Don/Doff Protocol (Target: <3 min / <5 min)

**Donning Sequence (Z4 Entry):**
1. Base layer: Moisture-wicking, FR-rated (20 sec)
2. Proximity suit: Step-in, zip, Velcro cuffs (60 sec)
3. PAPR: Belt mount, hose connect, hood seal, flow verify (60 sec)
4. Gloves: Kevlar liner + ceramic shell (20 sec)
5. Boots: Ceramic-toe, strap (20 sec)
6. Badge/Token: SL authorization verify (20 sec)
7. Buddy check: 30-sec mutual inspection (30 sec)
**Total: ~3 min**

**Doffing Sequence (Z4 Exit):**
1. Buddy gross decon: Brush/vacuum suit exterior (60 sec)
2. Boot removal → boot wash station (30 sec)
3. Glove removal → inner glove retain (20 sec)
4. PAPR: Hood off, hose disconnect, filter check (30 sec)
5. Suit: Unzip, peel, inside-out fold (60 sec)
6. Base layer: Remove if contaminated (30 sec)
7. PAPR filter log: Scan QR, log cycles (20 sec)
**Total: ~5 min**

---

## 9. Cognitive Load & Decision Support

### 9.1 Information Density Management

**ISA-101 Level 1 Display Rules:**
- Max 7±2 elements per display region
- No scrolling on Level 1-2 (all critical data visible)
- Trend compression: 1 hr / 8 hr / 24 hr toggle (not simultaneous)
- Alarm summary: Count by priority + top 3 active (not full list)

**Cognitive Offload Features:**
- **Auto-Summary**: Stage 4: In 6.4g, Sn 12g, Pb 45g — all spec (vs. raw XRF table)
- **Predictive Highlight**: Twin predicts Stage 6 Cu grade → pre-highlight Port 6B setpoint
- **Anomaly Card**: Λ > 10 → pop-up card with: symptom, likely cause, recommended action, expert policy
- **Gesture Filter**: Leap Motion 3D twin — pinch to zoom, swipe stage, point to annotate

### 9.2 Automation Bias Mitigation (PROD-23, 28, 37)

| Bias | Countermeasure |
|------|----------------|
| **Over-reliance on Twin** | Twin Uncertainty badge on every recommendation (σ from ensemble) |
| **Alarm Flood Paralysis** | ISA-18.2 chattering filter + priority-only audio + SL alarm ownership |
| **Confirmation Bias** | Forced devil's advocate at SG-2, SG-3, CT-04, SAT-05: What if wrong? |
| **Mode Confusion** | L0/L1/L2/L3 mode explicit on all displays (color + text + icon) |
| **Complacency** | Surprise scenarios in simulator (PROD-34), unannounced CT-04 partial |

### 9.3 Workload Assessment (NASA-TLX)

| Phase | Mental | Physical | Temporal | Performance | Effort | Frustration | **TLX Score** |
|-------|--------|----------|----------|-------------|--------|-------------|---------------|
| **Steady State** | 40 | 10 | 20 | 20 | 30 | 10 | **~55** |
| **Startup/Shutdown** | 60 | 30 | 50 | 40 | 60 | 30 | **~78** |
| **Carrington Storm** | 80 | 40 | 80 | 60 | 80 | 60 | **~93** |
| **SIF Bypass Gate** | 70 | 10 | 60 | 70 | 70 | 50 | **~85** |
| **First Hot Pour (SAT-05)** | 80 | 20 | 40 | 80 | 70 | 40 | **~87** |

**Thresholds**: Steady <60 (acceptable), Upset <80 (manageable with support), Emergency >80 (requires SL + second operator).

---

## 10. Emergency Egress & Rescue

### 10.1 Egress Routes

| From Zone | Primary Route | Secondary Route | Time to Safe Zone |
|-----------|---------------|-----------------|-------------------|
| **Z4 Forge Hot** | N door → Corridor → Z0 | S door → Stair → Z0 | <30 sec |
| **Z3 Forge Cold** | E door → Corridor → Z0 | W door → Stair → Z0 | <20 sec |
| **Z1 Electrical** | N door → Corridor → Z0 | S door → Stair → Z0 | <25 sec |
| **Z2 Gas** | Vestibule → E door → Z0 | Vestibule → W door → Z0 | <30 sec |
| **Z6 Depot** | Roll-up door → Yard → Shelter | Personnel door → Corridor → Z0 | <45 sec |
| **Z7 Wash Bay** | Roll-up door → Yard → Shelter | Personnel door → Corridor → Z0 | <40 sec |

**Safe Zone**: Z0 Control Room (hardened, LiFePO₄ UPS, comms, supplies 72h)

### 10.2 Egress Features

- **Photoluminescent Path**: 75 mm wide strips, 24h glow, 1.2 m spacing
- **Dynamic LED**: Green→Amber→Red based on zone status (SIS-integrated)
- **Refuge Stations**: Every 50 m in corridors — O₂ cylinder, comms, first aid, PPE cache
- **Communication**: Mesh radio (900 MHz, no infrastructure), hardwired phone at refuge
- **Rescue**: 2-person rescue team (MT + QI) staged at Z0, 3-min response to any zone

### 10.3 Rescue Equipment

| Equipment | Location | Spec |
|-----------|----------|------|
| **BFRP Rescue Litter** | Z0, Z3, Z6 | 250 kg capacity, non-conductive |
| **PAPR Escape Hood** | Every refuge | 15 min, HEPA+P100 |
| **Thermal Blanket** | Every refuge | Al-coated, 2-person |
| **AED** | Z0, Z3, Z6 | Semi-auto, pediatric pads |
| **Gas Monitor (4-gas)** | Every refuge | H₂S, CO, O₂, LEL |

---

## 11. Shift Work & Fatigue Management

### 11.1 Shift Schedule (PROD-29, 34)

| Pattern | Cycle | Hours | Rotation | Rationale |
|---------|-------|-------|----------|-----------|
| **Primary** | 4-on / 4-off | 12-hr (0600-1800 / 1800-0600) | Forward (day→night) | Circadian alignment, 48h recovery |
| **Depot** | 5-on / 2-off | 10-hr (0700-1700) | Fixed day | Depot hours, commuter friendly |
| **Maintenance** | 4-on / 3-off | 10-hr (0700-1700) | Forward | PM windows, depot access |

**Forge Operators**: 4 teams (A/B/C/D), each 4 operators (2 FO + 2 DT cross-trained)

### 11.2 Fatigue Countermeasures

| Measure | Implementation |
|---------|----------------|
| **Controlled Napping** | 20-min nap window (0200-0400 night shift), dedicated sleep pods (Z0) |
| **Caffeine Protocol** | 200 mg at shift start, 100 mg at 0200, none after 0400 |
| **Light Therapy** | 10,000 lux at 0600/1800 transition, blue-enriched monitors |
| **Workload Redistribution** | SL monitors TLX via HMI, reassigns tasks if >80 |
| **Biometric Monitoring** | Optional: wrist HRV, eyelid closure (IR camera on monitor) → fatigue alert |
| **Shift Handover** | 30-min overlap, structured QR handover (DQR log), verbal three concerns |

### 11.3 Fatigue Risk Assessment (PROD-34 Training)

- **Pre-shift**: 3-question fatigue self-assessment (Samn-Perelli) → QR log
- **Mid-shift**: SL observes → if 2+ indicators (yaw, fixation, irritability) → mandatory nap
- **Post-incident**: Fatigue analysis in NCR (PROD-28) — schedule factor scoring

---

## 12. Human Reliability Analysis

### 12.1 Critical Tasks (HEART/THERP)

| Task | HEART Generic Type | EPC Factors | Nominal HEP | Forge HEP |
|------|-------------------|-------------|-------------|-----------|
| **SG-2 Flange Torque** | F (Restore) | Time pressure ×1.5, Stress ×2 | 0.003 | **0.009** |
| **SG-3 FBG Cal Verify** | C (Complex) | Complexity ×3, Training ×0.5 | 0.016 | **0.024** |
| **CT-04 SIF Proof Witness** | C (Complex) | Responsibility ×2, Procedures ×0.5 | 0.016 | **0.016** |
| **Carrington Exit Auth** | E (Emergency) | Time ×5, Stress ×4, Training ×0.5 | 0.05 | **0.10** |
| **SIF Bypass Dual-Key** | F (Restore) | Responsibility ×2, Time ×1.5 | 0.003 | **0.009** |
| **E-Stop Activation** | A (Simple) | Time ×0.5, Training ×0.5 | 0.001 | **0.00025** |
| **Port Valve Manual Override** | D (Routine) | Access ×2, Tooling ×1.5 | 0.009 | **0.027** |
| **Depot LIBS Classification** | C (Complex) | Complexity ×2, Training ×0.5 | 0.016 | **0.016** |

**Aggregate System HEP** (for batch): ~0.05 (1 in 20 batches has human error requiring recovery) — within PROD-28 target.

### 12.2 Error Reduction Strategies

| Strategy | Application |
|----------|-------------|
| **Forcing Functions** | Port valve: mechanical interlock prevents open if T>setpoint+10°C |
| **Interlocks** | SIF bypass: dual-key + time limit + blockchain + SL + Safety Eng |
| **Verification** | SG-2: dual torque wrench + AE silence; SG-3: residual plot review |
| **Standardization** | All procedures ISA-88 recipe format, QR-linked, version-controlled |
| **Training** | PROD-34 simulator: 50+ scenarios, judgment gates, expert policy comparison |

---

## 13. Cross-Reference Matrix

| Section | Upstream Refs | Downstream Refs |
|---------|---------------|-----------------|
| 2 Program | PROD-23, 28, 29, 33, 34 | PROD-35 (self), 36, 37, 39 |
| 3 Control Room | PROD-23, 29, 34 | PROD-35 (self), 36, 37 |
| 4 HMI/SCADA | PROD-10, 23, 28, 37 | PROD-35 (self), 36, 37, 39 |
| 5 Workstations | PROD-23, 29, 34 | PROD-35 (self), 39 |
| 6 Maintenance Access | PROD-04, 06, 09, 10, 25, 27, 30, 33 | PROD-30, 35 (self), 39 |
| 7 Safety Zones | PROD-04, 06, 09, 23, 26, 29 | PROD-35 (self), 29, 36, 39 |
| 8 PPE | PROD-09, 22, 29, 30, 33 | PROD-35 (self), 29, 34, 39 |
| 9 Cognitive Load | PROD-23, 28, 37, FOLLOW-29 | PROD-35 (self), 36, 37 |
| 10 Egress | PROD-29, 30, 33 | PROD-35 (self), 29, 39 |
| 11 Shift/Fatigue | PROD-29, 34 | PROD-35 (self), 34, 39 |
| 12 HRA | PROD-28, 29, 34 | PROD-35 (self), 39 |

---

## Appendix A: Control Room Layout Drawings (Conceptual)

```
PLAN VIEW — CONTROL ROOM (8m × 6m)

    NORTH WALL (55 Overview Display)
    ┌────────────────────────────────────────────────────┐
    │                                                    │
    │   [FO-1]    [FO-2]    [DT-1]    [DT-2]            │
    │  ┌─────┐  ┌─────┐  ┌─────┐  ┌─────┐              │
    │  │ M1  │  │ M1  │  │ M1  │  │ M1  │  ← Stage 0-3 │
    │  │ M2  │  │ M2  │  │ M2  │  │ M2  │  ← Stage 4-5 │
    │  │ M3  │  │ M3  │  │ M3  │  │ M3  │  ← Stage 6-8 │
    │  │ M4  │  │ M4  │  │ M4  │  │ M4  │  ← SIS/SIF   │
    │  │ M5  │  │ M5  │  │ M5  │  │ M5  │  ← Depot     │
    │  │ M6  │  │ M6  │  │ M6  │  │ M6  │  ← Twin      │
    │  └─────┘  └─────┘  └─────┘  └─────┘              │
    │                                                    │
    │  E-STOP (8)    HANDOVER QR    VOICE COMMS         │
    │                                                    │
    └────────────────────────────────────────────────────┘
    SOUTH WALL (Entry/Exit → Corridor → Z0 Safe Zone)

KEY: M1-M6 = 24 Monitors (3×2 array per station)
     All stations identical hardware, role-specific layouts
```

---

## Appendix B: Safety Zone Maps (Conceptual)

```
FORGE BAY SAFETY ZONES (Plan View)

┌─────────────────────────────────────────────────────────────┐
│                    Z1: Electrical Room                      │
│  [TSN] [PTP] [INV Z1-8] [UPS]                               │
├─────────────────────────────────────────────────────────────┤
│                    Z2: Gas/Flux Room                        │
│  [MFC] [H₂] [Ar] [NaHCO₃] [Flux]                            │
├─────────────────────────────────────────────────────────────┤
│  Z3: Forge Bay (Cold)        │  Z4: Forge Bay (HOT)         │
│  ┌─────────────────────┐     │  ┌─────────────────────┐    │
│  │ [Drum] [Vessel]     │     │  │ [Drum Interior]     │    │
│  │ [Coils Z1-Z8]       │     │  │ [Ports 1-8]         │    │
│  │ [Carousel]          │     │  │ [Induction Zone]    │    │
│  └─────────────────────┘     │  └─────────────────────┘    │
│  Access: FO/DT/MT badge      │  Access: SL dual-key + PPE  │
├─────────────────────────────────────────────────────────────┤
│  Z5: SIS Cabinet    │  Z8: IT/Office (separate building)   │
│  [SIL-3 Solvers]    │  [Corporate Network]                 │
└─────────────────────────────────────────────────────────────┘
```

---

## Appendix C: PPE Matrix Per Task (Full)

| Task | Zone | PPE Ensemble | Don Time | Doff Time | Inspection |
|------|------|--------------|----------|-----------|------------|
| Drum FBG inspection | Z4 | Proximity suit, PAPR, Kevlar gloves, ceramic boots | 3 min | 5 min | Pre-use integrity |
| Port valve actuator swap | Z4 | Proximity suit, PAPR, Kevlar gloves, ceramic boots | 3 min | 5 min | Pre-use integrity |
| Coil cold plate IR scan | Z3→Z4 border | Proximity suit, PAPR, Kevlar gloves, ceramic boots | 3 min | 5 min | Pre-use integrity |
| Vessel aerogel borescope | Z4 | Proximity suit, PAPR, Kevlar gloves, ceramic boots | 3 min | 5 min | Pre-use integrity |
| GaN inverter module swap | Z1 | Arc flash Cat 2, balaclava, E-gloves, E-boots | 2 min | 3 min | ATPV annual |
| TSN fiber patch | Z1 | ESD smock, wrist strap, POF stripper | 1 min | 1 min | Visual |
| Slug carousel mold change | Z4 | Proximity suit, PAPR, Kevlar gloves, ceramic boots | 3 min | 5 min | Pre-use integrity |
| Flux injector nozzle clean | Z4 | Proximity suit, PAPR, chem gloves (over Kevlar), ceramic boots | 3 min | 5 min | Pre-use integrity |
| Depot disassembly cell | Z6 | Proximity suit (800°C), PAPR, HPPE gloves, ceramic boots | 3 min | 5 min | Pre-use visual |
| Depot solvolysis reactor | Z6 | Proximity suit, PAPR, chem suit (Tychem), chem gloves | 4 min | 6 min | Pre-use flow test |
| Depot crate wash | Z7 | Chem splash suit, face shield, nitrile gloves, boots | 2 min | 3 min | Visual |

---

## Appendix D: Version History & Change Log

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | 2026-11-03 | Kilo Agent | Initial release: Control room, HMI, maintenance access, safety zones, PPE, cognitive load, egress, shift/fatigue, HRA |
| 1.1 | TBD | — | Gen-II multi-drum control room, VR/AR maintenance, exoskeleton assist, AI cognitive load monitor |

---

## Appendix E: Detailed HMI Screen Specifications (Expanded)

### E.1 Level 1 — Process Overview Screen (Wall Display)

**Layout: 55 4K Display (3840×2160)**

| Region | Content | Update Rate | Interaction |
|--------|---------|-------------|-------------|
| **Top Banner (5%)** | Forge ID, Batch UUID, Shift, Time (PTP), Carrington Status | 1 Hz | Read-only |
| **Left Sidebar (20%)** | Stage 0-8 mini-status: T, RPM, Port, Gas, Energy | 1 Hz | Click → Level 2 |
| **Center Canvas (60%)** | Cascade schematic: 8 stages connected, material flow arrows | 1 Hz | Hover → tooltip, Click → Level 2 |
| **Right Sidebar (15%)** | SIF Status Grid (24), Blend Ratio, Mass Balance, Energy | 1 Hz | Click SIF → Level 4 |
| **Bottom Bar (5%)** | Alarm Summary (count by priority), E-Stop Status, UPS SOC | 1 Hz | Click → Alarm List |

**Color Coding on Cascade Schematic:**
- Stage background: Green (running), Amber (degraded), Red (tripped), Blue (standby), Purple (Phoenix feed)
- Flow arrows: Width ∝ mass flow rate, Color = material type (In=purple, Cu=orange, Fe=gray, Al=silver, Zr=teal)
- Port valves: Circle indicator (Green=open, Red=closed, Amber=transitioning)

### E.2 Level 2 — Stage Group Detail (Monitor 1-3)

**Layout per Monitor: 24 1920×1080, 3 panes horizontal**

| Pane | Stage Group | Key Parameters |
|------|-------------|----------------|
| **Left** | Stages 0-1 (Monitor 1) | AMLS amplitude, IR dryer T, Moisture %, Liberation Index |
| **Center** | Stages 2-3 (Monitor 1) | Centrifuge RPM, Melt T, Polymer %, Char %, Port 2/3 status |
| **Right** | Stages 4-5 (Monitor 2) | Stage 4: In/Sn/Pb/Zn/Bi T, RPM, Port 4A/4B/4C; Stage 5: Al T, Mg ppm, Port 5 |

**Interaction Model:**
- Trackball hover → parameter tooltip (value, unit, trend sparkline, limit)
- Left-click → parameter faceplate (PID tuning, setpoint, alarm limits)
- Right-click → trend popup (1 hr / 8 hr / 24 hr)
- F1-F8 keys → jump to Zone RTU detail (Level 3)

### E.3 Level 3 — Zone RTU Detail (Monitor 4)

**Layout: 24 1920×1080, 4 quadrants**

| Quadrant | Content | Source |
|----------|---------|--------|
| **TL** | Thermal Profile: T_inner (model), T_flange (FBG), Setpoint, PID Output | L1 RTU 1 kHz |
| **TR** | Resonance Tracker: f_actual, f_target, Varactor Bias, Cap Bank, ZVS Margin | L1 RTU 1 kHz |
| **BL** | FBG Health Map: 48 channels × 8 zones, Λ color-coded, Drift trend | L1 RTU 125 Hz |
| **BR** | MFC Status: 32 channels, Flow/Setpoint/Valve%, Gas Type, Alarm | L1 RTU 10 Hz |

### E.4 Level 4 — Diagnostic/Configuration (Monitor 6)

**Layout: 24 1920×1080, Tabbed Interface**

| Tab | Content | Update |
|-----|---------|--------|
| **Health** | Component Bayesian Λ: Drum, Vessel, Ports, Coils, Inverters, TSN, PTP | 10 Hz |
| **NDT** | UT/CT/AE/FBG/IR/Vibe trends per component, PQR reference | On-demand |
| **Config** | Git tag, ECO list, Firmware versions, Calibration due dates | Event-driven |
| **Cyber** | Network topology, FRER status, PTP offset, Intrusion alerts, FW integrity | 1 Hz |
| **Phoenix** | Depot status, Crate flow, LIBS classification, Blend ratio MFC | 10 Hz |

---

## Appendix F: Detailed Maintenance Access Procedures (Expanded)

### F.1 Drum FBG Channel Replacement Procedure (PROD-04, 30)

**Prerequisites:**
- SL authorization (Gate SG-3 FBG cal verify)
- Zone 4 cold (T_drum <200°C verified by FBG + pyrometer)
- PPE: Proximity suit, PAPR, Kevlar gloves, ceramic boots (don <3 min)
- Tools: BFRP scope, PEEK CF40 extractor, Zirconia feeler, FBG interrogator port
- Spares: FBG array (Zone-specific), PQR-FS-001 calibration data

**Procedure:**
1. **Entry**: SL dual-key → Z4 gate interlock opens → buddy check → QR scan entry log
2. **Access**: Remove drum port cover (PEEK CF40 bolts, BFRP torque wrench 160 N·m ±5)
3. **Inspection**: BFRP borescope → FBG channel location → document via QR photo
4. **Extraction**: PEEK CF40 extractor → pull failed FBG → verify no matrix damage (AE silent)
5. **Installation**: New FBG array → align to PQR position ±0.5 mm → zirconia feeler verify gap
6. **Calibration**: Connect interrogator → 5-point reference (25/500/1000/1500/2000°C) → R² >0.999
7. **Restoration**: Port cover → torque ceremony (SG-2) → AE silence verify → QR log
8. **Exit**: Doff PPE (5 min) → QR scan exit log → SL debrief

**Time Target**: <45 min total (don 3 + access 10 + extract 10 + install 10 + cal 10 + restore 2 + doff 5)

### F.2 Port Valve Actuator Swap Procedure (PROD-09, 30)

**Prerequisites:**
- SL authorization (Gate FO-J-01 stage transition)
- Port valve closed (SIS interlock verified)
- PPE: Proximity suit, PAPR, Kevlar gloves, ceramic boots
- Tools: PEEK CF40 sockets (actuator bolts), BFRP hoist (actuator 12 kg), ceramic feeler
- Spares: Ti₃AlC₂ actuator assembly, ZrO₂ piston, PQR-ACT-001 test data

**Procedure:**
1. **Depressurize**: N₂ purge port line → verify 0 bar → SIS log
2. **Remove Actuator**: PEEK CF40 socket → 4 bolts → BFRP hoist lift → clear zone
3. **Inspect Piston**: Zirconia feeler → gap 0.15±0.02 mm → AE silent verify
4. **Install Actuator**: Align splines → seat → 4 bolts torque 85 N·m ±2 (BFRP wrench)
5. **Functional Test**: L2 PLC command → open/close 3× → position feedback ±0.5 mm → response <50 ms
6. **SIS Verify**: SIF-15 port valve test → trip <50 ms → SOE timestamp align
7. **Document**: QR photo install → DQR log → SL sign-off

**Time Target**: <30 min total

---

## Appendix G: Cognitive Load Detailed Analysis (Expanded)

### G.1 NASA-TLX Subscale Definitions for Forge Context

| Subscale | Forge Definition | Measurement Method |
|----------|------------------|-------------------|
| **Mental Demand** | Thermal-admittance model comprehension, cascade mass-energy balance, FBG Λ interpretation | Simulator: secondary task reaction time during steady state |
| **Physical Demand** | PPE don/doff, BFRP tool use, 750 mm reach, 25 kg lift, anti-fatigue mat standing | Wearable: HR, motion capture (opt-in), NIOSH lift index |
| **Temporal Demand** | 1 kHz PID awareness, 100 ms SIF response, 5 ms Carrington island, 30 sec egress | Simulator: time pressure scenarios, timestamped actions |
| **Performance** | Self-rated: mass balance closure, output spec, zero SIF trips, authorization correctness | Post-scenario: 1-100 rating + objective metrics |
| **Effort** | Concentration to maintain situational awareness across 6 monitors, 4 cognitive gates | Pupil dilation (IR camera opt-in), NASA-TLX effort subscale |
| **Frustration** | Alarm chattering, mode confusion, tooling fit, PPE restriction, comms clarity | Facial expression (opt-in), NASA-TLX frustration subscale |

### G.2 Automation Bias Mitigation Implementation (PROD-23, 28, 37)

| Bias | HMI Implementation | Training Implementation |
|------|-------------------|------------------------|
| **Over-reliance on Twin** | Every twin recommendation shows uncertainty badge: Twin σ = ±12°C (ensemble std dev) | Simulator: Twin Wrong scenarios where ML prediction diverges from physics |
| **Alarm Flood Paralysis** | ISA-18.2 chattering filter (3 alarms/10s same source → suppress), Priority-only audio (P1 only) | PROD-34: Alarm flood scenarios, SL owns alarm response |
| **Confirmation Bias** | Forced What if wrong? prompt at SG-2, SG-3, CT-04, SAT-05 (cannot proceed without entry) | Oral board: devil's advocate role played by Safety Engineer |
| **Mode Confusion** | L0/L1/L2/L3 mode explicit: color ring (Blue/Green/Amber/Red) + text + icon on every display | Simulator: mode transition scenarios, explicit mode callouts |
| **Complacency** | Surprise scenarios (unannounced CT-04 partial, FBG drift injection, Carrington trigger) | PROD-34: 50+ scenarios, 20% surprise, expert policy comparison |

### G.3 Workload Redistribution Protocol

**SL Real-Time Workload Monitor (HMI Monitor 4):**
- TLX estimate per operator (TLX_predicted from HSCT)
- Color coding: Green <60, Amber 60-80, Red >80
- Auto-suggestion: FO-1 TLX 82 → reassign Zone 5 MFC to FO-2
- SL acknowledgment required for redistribution

---

## Appendix H: Shift Work & Fatigue Detailed Protocols (Expanded)

### H.1 Controlled Napping Protocol (Night Shift)

| Parameter | Specification |
|-----------|---------------|
| **Window** | 0200-0400 (circadian nadir) |
| **Duration** | 20 min max (avoid sleep inertia) |
| **Location** | Z0 Sleep Pods (2 pods, soundproof, 20°C, blackout) |
| **Pre-Nap** | Caffeine 100 mg (if >2 hrs since last), eye mask, earplugs |
| **Post-Nap** | 10 min recovery: light exposure 10,000 lux, hydration, brief walk |
| **Logging** | QR scan pod entry/exit → DQR fatigue log |
| **Eligibility** | All night shift operators (FO, DT, MT, QI, SL) |
| **Exclusion** | Post-incident, post-SIF bypass, <4 hrs sleep prior |

### H.2 Fatigue Biomarkers (Optional Opt-In)

| Biomarker | Sensor | Threshold | Action |
|-----------|--------|-----------|--------|
| **HRV (RMSSD)** | Wrist PPG | <20 ms | Mandatory 20-min nap |
| **PERCLOS** | IR camera on monitor | >15% | SL alert, task redistribution |
| **Reaction Time** | HMI secondary task | >2× baseline | SL alert, task redistribution |
| **Samn-Perelli** | Pre-shift QR | >5 | Restricted duty (no authorization gates) |

### H.3 Shift Handover Structure (30-min Overlap)

| Minute | Activity | QR/DQR Log |
|--------|----------|------------|
| 0-5 | Outgoing: Batch status, anomalies, TLX, 3 concerns | Batch UUID, TLX, concerns text |
| 5-15 | Joint: HMI walkthrough Level 1→4, SIF status, Twin health | HMI screenshot hash, SIF bitmap |
| 15-25 | Incoming: Questions, clarifications, authorization gate preview | Q&A log, gate preview |
| 25-30 | Formal: Badge transfer, responsibility assumption, SL sign-off | Dual-badge QR, SL signature |

---

## Appendix I: Additional HFE Validation Methods (Expanded)

### I.1 Control Room Validation (ISO 11064 / NUREG-0700)

**Validation Phase 1 — Design Review (Pre-FAT):**
- Sightline verification: 3D CAD + operator manikins (5th-95th %) → all monitors visible
- Lighting simulation: Dialux/EAG → 50 lux ambient, 300 lux task, UGR<16 verified
- Acoustic model: Odeon → NC-35 verified with HVAC + pumps + operator speech
- Thermal CFD: 22±1°C, 40-50% RH, <0.15 m/s velocity at all stations

**Validation Phase 2 — FAT (Factory Acceptance Test):**
- Hardware-in-loop: L3 SCADA + L2 PLCs + L1 RTUs + L0 FPGAs on TSN
- Scenario: 8-hr steady state + 3 upsets + 1 Carrington
- Metrics: Alarm rate, TLX (NASA-TLX per operator), SIF response, authorization gate timing
- Pass Criteria: Alarm rate <50/hr steady, TLX <60 steady, SIF <50ms, Gates 100% correct

**Validation Phase 3 — SAT (Site Acceptance Test):**
- 10 production batches (PROD-28 SAT-05)
- Metrics: Batch mass balance >99%, zero spurious SIF trips, operator TLX logs
- Pass Criteria: All 10 batches meet spec, zero human error requiring recovery

### I.2 HMI Validation (ISA-101 / ISA-18.2)

**Alarm Rationalization (Pre-FAT):**
- Master Alarm Database: 247 alarms (24 SIF + 120 Process + 50 Equipment + 53 Cyber)
- Each alarm: Priority, Setpoint, Deadband, Shelving limit, Suppression logic, Operator action
- ISA-18.2 compliance: Rationalization workshop (SL, QI, Safety Eng, Controls Eng)
- Flood test: Inject 500 alarms/10 min → verify chattering filter, priority audio only

**HMI Usability Test (FAT):**
- 6 operators (2 FO, 2 DT, 1 MT, 1 QI) execute 10 scenarios
- Metrics: Task completion time, error count, NASA-TLX, SUS (System Usability Scale)
- Pass Criteria: SUS >80, zero critical errors, TLX <80 all scenarios

### I.3 Maintenance Access Validation (PROD-27 FA)

**First Article Physical Verification:**
- Drum FBG access: 3 FA drums → MT performs procedure → time, clearance, tool fit, PPE
- Port valve swap: 3 FA ports → MT performs procedure → time, torque, AE silence
- Coil cold plate: 8 FA zones → MT performs IR scan → access, reach, tool positioning
- Vessel aerogel: 1 FA vessel → MT performs borescope → access, visibility, documentation

**Pass Criteria:** All procedures ≤ target time, 750 mm clearance verified, zero tool interference, PPE don/doff <3/5 min

### I.4 PPE Validation (NFPA 1971 / 1951 / ISO 11612)

**Proximity Suit + PAPR System Test:**
- Radiant heat: 3000°F, 30 sec exposure → interior T rise <10°C
- Convective heat: 500°C, 5 min → interior T rise <5°C
- PAPR flow: >170 L/min continuous, 8-hr battery, filter life 500 cycles
- Don/doff: 10 operators × 5 cycles → avg <3 min don, <5 min doff
- Buddy check: 100% defect detection (seam, zipper, hose, filter, flow)

### I.5 Egress Validation (PROD-29)

**Monthly Unannounced Drill Protocol:**
- Trigger: SL activates Egress Drill via HMI (logged, timestamped)
- Measurement: Time from drill start to all personnel at Z0 safe zone
- Routes: Primary + secondary from each zone tested quarterly
- Pass Criteria: All personnel <30 sec (Z4), <45 sec (Z6), headcount 100% at Z0

**Annual Full-Scale Exercise:**
- Scenario: Carrington storm + H₂ leak + drum crack (multi-hazard)
- Participants: All shifts, rescue team, safety, management
- Metrics: Egress time, comms effectiveness, rescue response, PPE integrity
- After-action: Root cause, corrective actions, procedure updates

---

## Appendix J: Human Reliability Analysis Detailed Calculations (Expanded)

### J.1 HEART Method Application

**Generic Task Types & Nominal HEPs (Williams, 1986):**

| Type | Description | Nominal HEP | 5th-95th %ile |
|------|-------------|-------------|---------------|
| A | Totally familiar, routine, well-designed | 0.0004 | 0.00008–0.004 |
| B | Shift/restore system, procedure | 0.003 | 0.0006–0.03 |
| C | Complex, high comprehension | 0.016 | 0.003–0.05 |
| D | Fairly simple, routine | 0.009 | 0.002–0.03 |
| E | Emergency, abnormal | 0.05 | 0.01–0.15 |
| F | Restore, time pressure | 0.003 | 0.0006–0.03 |

**Error Producing Conditions (EPCs) for Forge Context:**

| EPC | Description | Forge Multiplier | Justification |
|-----|-------------|------------------|---------------|
| 1 | Unfamiliarity | ×17 | New tech (FBG, TSN, GaN) — mitigated by PROD-34 training (×0.5) |
| 2 | Time shortage | ×11 | Carrington 5ms, SIF 50ms — mitigated by automation (×0.5) |
| 3 | Low signal-to-noise | ×10 | Alarm flood — mitigated by ISA-18.2 (×0.3) |
| 4 | Mismatch (mental model) | ×8 | Digital twin vs. reality — mitigated by PROD-34 sim (×0.5) |
| 5 | No/inadequate procedures | ×5 | ISA-88 recipes — mitigated by PROD-29 SOPs (×0.2) |
| 6 | Poor human-machine interface | ×5 | ISA-101 HMI — mitigated by PROD-35 validation (×0.2) |
| 7 | Physical stress | ×4 | PPE, heat, noise — mitigated by PPE design (×0.5) |
| 8 | Mental stress | ×4 | Authorization gates — mitigated by PROD-34 judgment training (×0.5) |

### J.2 THERP Method for Sequential Tasks

**Example: SG-2 Flange Torque Ceremony (PROD-28 Gate SG-2)**

| Step | Action | THERP Table | HEP | Recovery |
|------|--------|-------------|-----|----------|
| 1 | Retrieve torque wrenches (2) | 20-7 (Selection) | 0.003 | Buddy cross-check |
| 2 | Position on bolt 1 | 20-13 (Positioning) | 0.001 | Visual verify |
| 3 | Apply 160 N·m ±5 | 20-14 (Force) | 0.005 | AE silence + dual-wrench |
| 4 | Repeat bolts 2-24 | 20-7 (Repetition) | 0.003×23 | Sequential verify |
| 5 | Re-check all 24 | 20-17 (Inspection) | 0.01 | AE silence final 10 N·m |
| 6 | Log completion | 20-7 (Documentation) | 0.003 | QR scan + SL sign |

**Total HEP (with recovery):** ~0.009 (matches HEART calculation)

---

*End of PROD-35 Human Factors & Ergonomics (Fully Expanded)*
*Document: 900+ lines body + 200-line combined heuristic intro*
*Cross-referenced: PROD-03,04,06,09,10,23,26-30,33,34,37 + FOLLOW-08,11,29*