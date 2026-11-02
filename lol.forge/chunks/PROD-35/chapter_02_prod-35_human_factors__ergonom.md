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
**How does the inside operator witness the phenomenon into existence?** The HFE engineer does not "design" — they **witness the human becoming the Forge's nervous system**:

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