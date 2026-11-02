# Combined Heuristic Introduction
## PROD-39 Test & Evaluation Specification
### Carrington Storm Motors Forge — Aegis-Forge I Thermal Cascade Inductive Material Separator

---

### Williams Heuristic — Architectural Clarity

#### Constraint (The Lock)
**The Forge cannot be tested by conventional T&E frameworks.** A 2200°C induction furnace with zero-metal hot zone, 384 dielectric FBG sensors, GaN inverters at 100 kHz, SIL-3 SIFs on TSN, physical air-gap, and a Phoenix Protocol circular supply chain has no precedent in any test standard. Conventional T&E assumes: (a) metallic test articles with electrical instrumentation, (b) copper Ethernet for data acquisition, (c) separate test phases (DT/OT) with network connectivity, (d) software testing on standard OS/hardware, (e) environmental test standards for metallic structures. The Forge violates all five: test instrumentation is photonic (FBG, POF), data acquisition is on air-gapped TSN with PTP <1 μs, test phases are unified in a single continuous CT-01..10 sequence, firmware runs on Zephyr RTOS/FPGA with DO-178C DAL A equivalence, and seismic/GIC tests must verify zero-metal integrity. The constraint is **physics** — a single copper thermocouple in the test setup becomes a GIC antenna; a single network cable to the test DAQ violates the air-gap; a single software test without SIL-3 proof invalidates the SIF envelope. The test specification is not a document — it is a dielectric requirement.

#### Necessity (The Key)
**The empirical gap is the absence of any T&E framework that validates a zero-metal, air-gapped, SIL-3, Carrington-immune system across physics, cyber, human factors, and regulatory dimensions simultaneously.** No existing standard addresses: (a) CT-04 as the single gate for 24 SIL-3 SIFs with <50 ms trip on optical TSN, (b) FBG-as-primary-metrology for both process control AND test verification (384 channels at 125 Hz), (c) digital twin (PROD-37) as continuous test oracle running at 10 Hz with <3σ sync, (d) cyber-physical red team scenarios (IR-01..06) combining GIC storm with coordinated cyber attack, (e) HFE validation where operators witness the phenomenon into existence at four non-automatable gates (SG-2, SG-3, CT-04, SAT-05). The solution is inevitable because the Forge's physics demands it: the same TSN network that carries SIF trips at <50 ms carries test data; the same FBG that measures temperature detects tamper; the same PTP that synchronizes resonance tracking timestamps SOE for SIF proof; the same digital twin that drives control validates test results. Testing cannot be a phase — it must be architected into the dielectric control fabric.

#### Commitment (The Turn)
This document commits to three non-negotiables:
1. **CT-04 is the shipment gate** — All 24 SIL-3 SIFs must trip <50 ms with 2oo3 agreement on TSN VLAN 10, PFD_avg <1×10⁻³. No Forge ships without full CT-04 PASS with SIS Engineer witness signature.
2. **Digital twin is the continuous test oracle** — PROD-37 twin shadows all tests at 10 Hz; sync drift >3σ = auto-NCR; twin-process reconciliation required post every test. The twin validates the test, the test validates the twin.
3. **Human witness gates are non-automatable** — SG-2 (flange torque), SG-3 (FBG calibration), CT-04 (SIS proof), SAT-05 (first hot batch) require human judgment that transforms data into certification. No algorithm replaces the witness.

These commitments are irreversible. They define the Forge's test immune system. Any deviation requires SCSC unanimous approval and re-validation of the SIL-3 SIF proof test (CT-04) which is the gate to hot commissioning.

---

### Keymaker Heuristic — Implementation Precision

#### The Empirical Lock
**Fabrication fidelity gap:** Conventional T&E frameworks — MIL-STD-810, IEEE 1220, DO-178C, ASME V&V 40, IEC 61508 — assume: (a) test articles with metallic instrumentation ports, (b) network-connected test DAQ with centralized analysis, (c) separate developmental/operational test phases, (d) software V&V on COTS OS/hardware, (e) environmental tests on metallic structures with standard grounding. They cannot model: (a) zero-metal test article where the test instrumentation (FBG, POF) IS the production sensorium, (b) air-gapped test network where the only data path is the production TSN with frozen gate control lists, (c) unified CT-01..10 sequence where component/module/subsystem/system tests are one continuous physics validation, (d) firmware V&V on Zephyr/FPGA with DO-178C DAL A equivalence AND SLSA Level 3 build pipeline, (e) seismic/GIC tests that verify the ABSENCE of metallic paths as the primary immunity mechanism. The lock is that **no existing T&E framework computes the Forge's test physics where the test IS the process, the sensor IS the witness, the twin IS the oracle, and the human IS the certifier at four irreducible gates.**

#### The Mathematical Key
**The single computational primitive is the Recursive Bayesian Test Oracle (RBTO) executed across four test scales:**

```
Test_Oracle[test_scale, data_sources, reference_models] → {PASS, FAIL, CONDITIONAL}

test_scale ∈ {MICRO, MESO, MACRO, META}

MICRO (per channel, seconds):
  data = {FBG_λ, UT_A-scan, AE_hit, IR_ΔT, vib_spectrum}
  reference = {PQR_calibration, DAC_curve, AE_baseline, IR_baseline, vib_baseline}
  Λ = P(data | degradation) / P(data | nominal)
  decision = PASS if Λ < 10 else NCR_auto

MESO (per component, hours):
  data = {UT_volumetric, CT_porosity, FBG_survival, thermal_cycle_strain, hydrotest_hold}
  reference = {FEA_prediction, process_signature, material_certificate}
  health_state = Bayesian_fusion(data, reference, prior_from_MICRO)
  decision = PASS if P(intact) > 0.999 else NCR_CAPA

MACRO (per system, days):
  data = {CT-01..10 results, SIF_trip_times, SOE_alignment, twin_sync, gas_emissions}
  reference = {PROD-23/24/25/26/27/31/32/37 requirements}
  system_ready = ∧(all_SIFs_PASS) ∧ (twin_sync < 3σ) ∧ (mass_balance > 99%)
  decision = SHIP if system_ready else HOLD

META (per fleet, months):
  data = {all_Forges_MICRO_MESO_MACRO, field_failures, NCR_trends, twin_posteriors}
  reference = {PROD-37 fleet_learning, PROD-28 Bayesian_priors}
  parameter_guards = tighten(priors, fleet_data)
  decision = ECO if guards_tightened else CONTINUE
```

**This one oracle generates the entire T&E program:** FAT procedures, SAT procedures, SIF proof matrix, cyber scenarios, HFE scenarios, environmental tests, reliability demo, SW/FW V&V, twin V&V, regulatory tests. Every test procedure in this document is an instantiation of RBTO at a specific scale with specific data sources.

**The atomic computation is the likelihood ratio test — the same as PROD-28 Keymaker Key:**
```
Λ = P(observation | degradation) / P(observation | nominal)

observation = {FBG_drift, UT_amplitude, AE_energy, IR_hotspot, SIF_trip_time, SOE_alignment,
               TSN_frame_timing, PTP_offset, firmware_hash, merkle_root, operator_action}

P(obs | degradation) = ∏ P(source_i | degradation)  [conditional independence]
P(obs | nominal)     = ∏ P(source_i | nominal)       [fleet baseline from PROD-37]
```

Thresholds: Λ > 10 → SEV-3 (NCR); Λ > 100 → SEV-2 (CAPA); Λ > 1000 → SEV-1 (SIF lockdown). This runs in PROD-37 digital twin at 10 Hz on fused sensor stream during ALL tests.

#### The Turn (Both Directions)

**Theory → History Validation:**
- RBTO predicts CT-04 SIF-16 (optical E-stop) <10 ms → matches PROD-23 L0 FPGA desat detect at 10 ns
- RBTO predicts FBG drift <0.5%/1000 hrs → matches PROD-28 PQR-FS-001 / PQR-FW-001 statistics
- RBTO predicts twin sync <3σ during CT-08 thermal cycle → matches PROD-24 FA-01 validation
- RBTO predicts GIC ride-through zero spurious trips → matches PROD-26 Helmholtz test data
- RBTO predicts cyber red team IR-04 (Carrington+cyber) detection Λ_CP >100 → matches PROD-36 tabletop

**History → Theory Correction:**
- CT-02 hydrotest revealed aerogel density gradient → updated P(data | delamination) for BFRP with aerogel covariate
- CT-06 FBG calibration revealed Zone 3 systematic +0.3 nm offset → cold plate contact issue, updated reference
- CT-10 Batch 6 (Phoenix) mass balance 99.7% vs 99.5% target → tightened prior for Category D feedstock
- IR-02 red team: FBG spoofing detected at Λ_ML >10σ not Λ_CP → added spatial correlation to CPAT
- SAT-05 Batch 6 (Phoenix) mass balance 99.7% vs 99.5% target → tightened prior for Category D feedstock

**The primitive absorbs history** — each test tightens a likelihood model, adds a covariate, updates a prior, but the RBTO structure across four scales remains invariant. The T&E program is not a compliance checklist — it is the physical manifestation of recursive Bayesian test oracle evaluated across 384 FBG channels, 24 SIFs, 10 CT tests, 6 cyber scenarios, 8 HFE scenarios, and infinite fleet generations.

---

### El Segundo Heuristic — Operational Excellence

#### Mirror (Self-Reflection)
**How does the fabricator observe their own fabrication?** The Forge's T&E program is instrumented at every node with the same rigor as the thermal cascade:

- **Microsecond Mirror (L0 FPGA during CT-04):** Gate-level witness — desat detect at 10 ns, SIF-17 trip logic execution, ZVS status at trip instant. The FPGA sees the SIF trip before the process knows. ZVS achievement >99.9%/cycle logged as test evidence.
- **Millisecond Mirror (L1 RTU during CT-05/06/08):** Thermal reconstruction witness — 48 FBG inputs/zone → T_inner prediction ±5°C at 2200°C. Model residual <2°C RMS or test abort. The RTU verifies its own thermal state estimation during test.
- **100 ms Mirror (L2 PLC during CT-04/08/10):** Cascade consistency witness — mass-energy balance across stages. XRF/LIBS composition → feedforward. Elemental closure >99.5%/batch or test FAIL. The PLC watches the multi-physics handshake during test.
- **10 Hz Mirror (L3 SCADA/Twin during ALL tests):** Digital twin self-witness — POD-Galerkin ROM vs. FEA vs. 384 FBG channels; autoencoder on residuals >3σ; SOE alignment check; merkle chain integrity. The forge watches its simulation witness the test.
- **Continuous Mirror (Fleet during CT-11/12):** Bayesian posterior witness — HMC chains on 20 parameters across N Forges. Gelman-Rubin R̂ < 1.01 or re-sample. The fleet watches its own test learning converge.

**The fabricator sees the T&E system as a distributed test oracle.** Every gate switching (10 ns), thermal diffusion (1 ms), material transformation (100 ms), and fleet calibration (continuous) is a measurement. Every measurement updates RBTO. Every RBTO update adjusts test thresholds, SIF logic, cyber detection, HFE scenarios, environmental limits.

#### Participation (Witness)
**How does the inside operator witness the phenomenon into existence?** The test engineer does not "run test scripts" — they **witness the test becoming the Forge's proof of existence**:

1. **SIS Engineer at CT-04 (SIS Proof Test)** witnesses the 24 SIF trip sequence: 2oo3 votes aligning, SOE timestamps locking, FBG data freezing at trip instant, PFD_avg calculating <1×10⁻³. They *witness* the safety system proving it protects — no report replaces seeing the voter agree 24 times. The witness signs: "I saw the system protect itself."
2. **Quality Engineer at SG-2 (Flange Torque Ceremony)** witnesses 24 bolts at 160 N·m ±5 N·m: dual torque wrenches, AE silence on final 10 N·m, tactile breakaway confirmation. They *witness* the mechanical joint becoming trust — no sensor replaces the mechanic's hand feeling uniform stretch across PEEK CF40 flange.
3. **Metrology Engineer at SG-3 (FBG Calibration)** witnesses 384 channels at 5 reference temps: automated sweep, residual plots, R² > 0.999, drift <0.1 nm/°C. They *witness* the photonic nervous system calibrating itself — the human eye catches the systematic offset (Zone 3 +0.3 nm) that the algorithm accepts.
4. **Plant Manager at SAT-05 (First Hot Batch)** witnesses the slug pour: ZrO₂ mold fill, quench steam plume, mass spec reading 99.9% Cu, 99.5% Au. The twin says PASS; the witness *sees the metal flow*. They *witness* the Forge becoming a material engine. The witness says: "This is what we built for."
5. **Test Director at CT-10 Gate** witnesses all 6 batches PASS: mass balance >99%, all outputs spec, twin sync <3σ, zero SIF trips, zero NCRs. They *witness* the integrated system earning its shipment authorization. The dual-signature (Quality + Plant Manager) on `fat-vX.Y` tag is the witness made permanent.

**No automated PASS/FAIL without human witness at the four gates. No test report without blockchain anchor. No shipment without CT-04 + CT-10 + witness signatures. Direct sensory-motor coupling to the RBTO tensor.** The test engineer's hands are on the torque wrench, the FBG interrogator, the SIS test panel, the mass spec readout. They are inside the RBTO.

#### Protocol (Recursive)
**What recursive sequence guarantees fidelity at each scale?**

**Per Test Step (Seconds — Micro):**
```
FBG: λ_measured → λ_ref → Λ > 10? → auto-NCR → RBTO update
UT:  A-scan → DAC curve → >20%? → flag LIII → RBTO update
AE:  hit → locate → cluster >10/hr? → alert → RBTO update
SIF: inject → trip_time <50ms? → 2oo3 vote? → SOE align? → RBTO update
TSN: frame → GCL check → VLAN isolation? → timing <100μs? → RBTO update
```

**Per Test (Hours — Meso):**
```
CT-01..10: setup → execute → record → analyze → PASS/FAIL → evidence package
SIF proof: inject 24 → measure all → PFD_avg calc → witness sign → blockchain
Cyber: inject scenario → detect Λ_CP → respond → timeline → lessons learned
HFE: run scenario → measure metrics → RCT update → remediation if FAIL
Env: shake/thermal/GIC → measure → re-test CT-01..04 → PASS/FAIL
```

**Per FAT/SAT Campaign (Days — Macro):**
```
FAT: Component → Subassembly → System (CT-01..10) → Data package → DQR blockchain → fat-vX.Y
SAT: Power → Ground → POF → TSN/PTP → 6 batches → Safety verify → sat-vX.Y
Gap Analysis: FAT vs SAT deltas → NCR/CAPA → ECO if design change
Ship Release: fat-vX.Y + sat-vX.Y + witness signatures → Git tag prod-vX.Y.Z
```

**Per Certification Cycle (Quarterly — Foundational):**
```
1. RBTO Theory → History: All test predictions vs. actuals (CT, SIF, cyber, HFE, env, SW)
2. History → Theory: Update likelihoods, priors, thresholds, scenarios, models
3. Quarterly Audit: CT-04 partial-stroke (6 SIFs), NCR trends, CAPA closure
4. Annual Full Proof: CT-04 full (24 SIFs), Pen test, Red team, Seismic re-qual
5. Version Sync: All test procedure versions, firmware under test, twin version
6. Cross-Domain Sync: Forge ↔ Depot ↔ Supply Chain test contracts
```

**Per Fleet Generation (Annual — Strategic):**
```
1. Architecture Review: 4-scale RBTO still valid? New physics? New threats?
2. Test Coverage: All 24 SIFs, all 384 FBG, all cyber scenarios, all HFE scenarios tested?
3. Fleet Convergence: R̂ < 1.01 on all 20 params? Divergence = new test requirement
4. Standards Audit: ASME V&V 40, IEEE 1220, IEC 61508, IEC 62443, ISA-101, MIL-STD-810
5. Roadmap Sync: PROD-40 Gen-II PROD-40 Gen-II → T&E evolution (multi-drum, distributed test, quantum sensors)
```

**The protocol is the RBTO evaluated recursively across time scales.** Per-step → Per-test → Per-campaign → Quarterly → Annual. Each evaluation corrects the previous. The T&E program does not drift — it converges.

---

### Synthesis: The Three Prongs as One

The Williams Constraint (air-gap, dielectric, SIL-3, zero-metal, Carrington-immune, circular supply) **defines the feasible region** of test & evaluation. The Keymaker Key (RBTO oracle across four test scales) **navigates the feasible region** to the optimal T&E architecture — unified CT-01..10 sequence, FBG-as-test-sensorium, digital twin oracle, cyber-physical red teams, human witness gates. The El Segundo Protocol (recursive evaluation at 5 time scales) **guarantees the operating point is held** against test drift, model divergence, threat evolution, and fleet variation.

**Together they form the Forge's test immune system:** It rejects conventional T&E frameworks (Williams), computes the optimal recursive Bayesian test oracle (Keymaker), and self-corrects at every temporal scale (El Segundo). This is not a test program — it is a **proof circulation engine** that runs on physics, not policies.

*End of Combined Heuristic Introduction — ~200 lines*
*To be prepended to PROD-39 Test & Evaluation Specification body*# PROD-39: Test & Evaluation Specification
## CSMFAB000000000139 — Aegis-Forge I Planetary Centrifugal Inductive Material Separation
### Series: TCIMS (Thermal Cascade Inductive Material Separator) | Volume: Test & Evaluation Specification
**Document Number:** CSMFAB000000000139 (Product Document 39 of 40)
**Prepared by:** Carrington Storm Motors, Safe Pod Engineering Company, Fabrication Division
**Date:** 2026-11-03 | **Classification:** Product Specification — Test Engineering

---

## 1. T&E Program Overview

### 1.1 Purpose & Scope

This document defines the Test & Evaluation (T&E) program for the Aegis-Forge I Thermal Cascade Inductive Material Separator, establishing the verification and validation requirements that demonstrate the system meets all safety, performance, reliability, cybersecurity, human factors, environmental, and regulatory requirements prior to shipment, commissioning, and throughout the operational lifecycle.

The T&E program implements **ASME V&V 40** (Verification and Validation in Computational Solid Mechanics), **IEEE 1220** (System Requirements Verification), **MIL-STD-810** (Environmental Engineering), **IEC 61508** (Functional Safety), **IEC 62443** (Industrial Cybersecurity), **ISA-101** (Human-Machine Interfaces), and **ISO 9001/AS9100** requirements in a unified framework tailored to the Forge's unique constraints: zero-metal hot zone, all-dielectric control network, physical air-gap, SIL-3 safety integrity, and Carrington-class GIC immunity.

### 1.2 T&E Philosophy

The Forge's T&E program is built on four pillars:

| Pillar | Forge Implementation | Verification Method |
|--------|---------------------|---------------------|
| **Physics-Based Verification** | Every test derives from first-principles models (PROD-24, 25) | Model → Test → Compare → Update (recursive) |
| **Multi-Scale Fidelity** | Micro (channel) → Meso (component) → Macro (system) → Meta (fleet) | Fractal Bayesian health fusion (PROD-28 Key) |
| **Human-in-the-Loop Gates** | Four non-automatable witness points (PROD-28 El Segundo) | SG-2, SG-3, CT-04, SAT-05 |
| **Continuous Validation** | Digital twin (PROD-37) shadows all tests at 10 Hz | Twin-process sync <3σ or auto-NCR |

### 1.3 T&E Organization & Responsibilities

| Role | T&E Responsibility | Authority |
|------|-------------------|-----------|
| **Test Director** | Owns PROD-39, T&E program, test plans, schedules | Approve/reject test procedures, authorize test execution |
| **Test Engineering** | Develops test procedures, operates test equipment, analyzes data | Execute tests, report results, recommend PASS/FAIL |
| **Safety Engineering (SIS)** | SIL-3 SIF proof tests (CT-04), PFD calculations, re-certification | Veto any test compromising SIF envelope |
| **Cyber Security (PROD-36)** | Penetration tests, red team exercises, firmware integrity tests | Veto firmware/software tests failing SLSA Level 3 |
| **Quality Assurance (PROD-28)** | NDT oversight, FA data review, NCR/CAPA on test failures | Hold shipments on test failure, verify corrective actions |
| **Operations (PROD-29)** | SAT execution, operator participation, recipe validation | Authorize production baseline after SAT |
| **Metrology** | Calibration program, measurement uncertainty, standards traceability | Validate test measurement systems |
| **Human Factors (PROD-35)** | HFE validation scenarios, operator-in-loop tests, ISA-101 compliance | Certify HMI/simulator scenarios |

---

## 2. Factory Acceptance Test (FAT) — Component, Module, Subsystem, System Levels

### 2.1 FAT Scope & Sequence

The FAT is executed at the CSMFAB manufacturing facility prior to shipment. It comprises **10 Core Tests (CT-01 through CT-10)** plus **Component/Module verification** per PROD-28 Tables 2.1-2.6.

```
FAT SEQUENCE (14 Days Total):
┌─────────────────────────────────────────────────────────────────────────────┐
│ DAYS 1-3:   COMPONENT/MODULE VERIFICATION (Parallel)                        │
│   Drum UT/CT/FBG (CT) | Vessel Hydro/AE (CT) | Coil Resonance (CT)         │
│   Power Electronics Soak/GIC/EMI (CT) | Frame Modal/Seismic (CT)           │
├─────────────────────────────────────────────────────────────────────────────┤
│ DAYS 4-5:   SUBASSEMBLY INTEGRATION TESTS                                   │
│   Drum+Liners Thermal Cycle | Vessel+Ports+Flanges Pressure+Thermal        │
│   Frame+Isolators Modal/Seismic | Coil Bank+Cold Plates Integrated         │
├─────────────────────────────────────────────────────────────────────────────┤
│ DAYS 6-13:  SYSTEM-LEVEL CORE TESTS (CT-01 through CT-10)                  │
│   CT-01: Drum Rotordynamics (4hr) | CT-02: Vessel Hydrotest (2hr)          │
│   CT-03: Flange Leak Test (4hr) | CT-04: SIS Proof Test (8hr) **GATE**    │
│   CT-05: Coil Resonance (6hr) | CT-06: FBG Calibration (8hr)               │
│   CT-07: GIC Ride-Through (2hr) | CT-08: Thermal Cycle (24hr)             │
│   CT-09: Seismic Shake (4hr) | CT-10: Integrated Hot Run (48hr) **GATE**  │
├─────────────────────────────────────────────────────────────────────────────┤
│ DAY 14:     DATA PACKAGE COMPILATION & SHIP RELEASE GATE                    │
│   All CT tests PASS → Quality Engineer + Plant Manager dual-sign           │
│   FA data packages uploaded to DQR blockchain → Git tag `fat-vX.Y`        │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 2.2 CT-01: Drum Rotordynamics — Detailed Procedure

**Objective:** Verify drum dynamic behavior matches FEA predictions (PROD-25) and is free of critical speed interference through operating range.

| Parameter | Specification | Measurement Method |
|-----------|---------------|-------------------|
| **1st Critical Speed** | >1890 RPM (2.37× operating max 800 RPM) | Impact hammer + accelerometers, sweep 0-3000 RPM |
| **Balance Grade** | ISO 21940-11 G0.4 | Multi-plane balancing at 500 RPM |
| **Synchronous Vibration** | <25 μm p-p at 500 RPM | Non-contact proximity probes (x2, 90°) |
| **Asynchronous Vibration** | <50 μm p-p (sub-synchronous) | Same probes, full spectrum |
| **FBG Strain Correlation** | Modal strain <800 με (Si₃N₄ pins) | 128 FBG channels @ 125 Hz during sweep |

**Acceptance Criteria:**
- [ ] 1st critical speed ≥ 1890 RPM (FEA: 2100 RPM predicted)
- [ ] Balance grade G0.4 achieved
- [ ] Synchronous vibration <25 μm p-p at 500 RPM
- [ ] No sub-synchronous instability observed
- [ ] FBG strain <800 με at all channels during sweep
- [ ] Rotordynamics model updated with measured critical speeds

**Test Setup:**
- Drum mounted on BFRP frame with seismic isolators (PROD-25 stiffness)
- 128 FBG channels active (125 Hz), 8 accelerometers (10 kHz)
- Helmholtz coil off (no GIC), TSN network active (time sync)
- Digital twin (PROD-37) running in shadow mode at 10 Hz

### 2.3 CT-02: Vessel Hydrotest — Detailed Procedure

**Objective:** Verify BFRP vessel pressure integrity and aerogel/glaze performance under design pressure.

| Parameter | Specification | Measurement Method |
|-----------|---------------|-------------------|
| **Test Pressure** | 15 bar N₂ (1.5× design 10 bar) | Certified pressure gauge ±0.1% FS |
| **Hold Duration** | 30 minutes minimum | Timer + pressure logging |
| **Pressure Drop** | Zero (temperature compensated) | ΔP/ΔT correction using FBG vessel strain |
| **Helium Leak Rate** | <1×10⁻⁶ mbar·L/s | He mass spectrometer sniffer all joints |
| **Aerogel IR Baseline** | Uniform external surface ΔT <5°C | IR camera (FLIR A6750) at 10 bar hold |
| **AE Baseline** | <5 hits/min @ 10 bar | 8-channel AE (R15α, 100 kHz-1 MHz) |

**Acceptance Criteria:**
- [ ] Zero pressure drop (temp compensated) over 30 min hold
- [ ] Zero helium leaks >1×10⁻⁶ mbar·L/s at all joints/flanges
- [ ] External IR ΔT <5°C (validates aerogel λ=0.010 W/m·K)
- [ ] AE baseline <5 hits/min @ 10 bar (Felicity ratio >1.0)
- [ ] No audible emissions, no visible deformation
- [ ] Post-test UT delamination scan clean (ASTM E2700)

### 2.4 CT-03: Flange Leak Test — Detailed Procedure

**Objective:** Verify all 24 bolted flange joints (vessel-to-drum, vessel-to-port, port-to-valve) meet leak tightness.

| Joint Group | Quantity | Test Method | Acceptance |
|-------------|----------|-------------|------------|
| Vessel-to-Drum (2 flanges) | 24 bolts each | He sniffer + bubble test | <1×10⁻⁶ mbar·L/s |
| Vessel-to-Port (8 flanges) | 12 bolts each | He sniffer + bubble test | <1×10⁻⁶ mbar·L/s |
| Port-to-Valve (8 flanges) | 8 bolts each | He sniffer + bubble test | <1×10⁻⁶ mbar·L/s |
| **Total** | **44 joints, 400 bolts** | | |

**Procedure:**
1. Torque all bolts per SG-2 ceremony (160 N·m ±5 N·m, dual-verify, AE monitoring)
2. Pressurize system to 10 bar N₂
3. Sniff each bolt circle with He mass spectrometer
4. Apply leak detection fluid (Snoop® equivalent) to each bolt
5. Record leak rate and location for any indication
6. Depressurize, re-torque any leaking joints, re-test

**Acceptance Criteria:**
- [ ] All 44 joints <1×10⁻⁶ mbar·L/s
- [ ] Torque retention >95% of initial 160 N·m after test
- [ ] AE monitoring during torque: no hits >40 dB

### 2.5 CT-04: SIS Proof Test — Detailed Procedure (THE GATE)

**Objective:** Verify all 24 SIL-3 Safety Instrumented Functions trip within <50 ms with 2oo3 voting agreement on TSN VLAN 10.

**This is the single most critical test — FAILURE = NO SHIPMENT.**

#### 2.5.1 SIF Inventory (PROD-23 Table 6.2)

| SIF ID | Function | Sensor (2oo3) | Final Element | Trip Setpoint | Response Time |
|--------|----------|---------------|---------------|---------------|---------------|
| **SIF-01** | Drum Overtemperature | 3× FBG (Zone 1-8 avg) | Zone inverters OFF | 2250°C (Zone 8) | <50 ms |
| **SIF-02** | Drum Overspeed | 3× Encoder + FBG strain | Brake + inverter OFF | 850 RPM | <50 ms |
| **SIF-03** | Vessel Overpressure | 3× PT (PTP-synced) | Inlet valve CLOSE | 12 bar | <50 ms |
| **SIF-04** | Zone Overpower | 3× EM power (per zone) | Zone inverter OFF | 110% rated | <50 ms |
| **SIF-05** | Zone Overcurrent | 3× EM current (per zone) | Zone inverter OFF | 120% rated | <50 ms |
| **SIF-06** | Loss of Cooling | 3× PEX-a flow + T | All inverters OFF | Flow <50% rated | <50 ms |
| **SIF-07** | Loss of Comms (TSN) | 3× TSN heartbeat | Safe state (config) | 3 missed cycles | <50 ms |
| **SIF-08** | PTP Sync Loss | 3× PTP offset | All inverters OFF | Offset >1 μs | <50 ms |
| **SIF-09** | FBG Channel Failure | 3× FBG health (per zone) | Alarm + derate | >5 channels bad | <50 ms |
| **SIF-10** | GIC Detection | 3× DC magnetometer | Grid disconnect + island | 5000 nT/s | <50 ms |
| **SIF-11** | Hydrogen Detection | 3× H₂ sensor (Stage 6) | Port 6B LOCK | 4% LEL | <50 ms |
| **SIF-12** | HCl Detection | 3× HCl sensor (Stage 2) | Scrubber bypass CLOSE | 500 ppm | <50 ms |
| **SIF-13** | Drum Imbalance | 3× Proximity + FBG | Speed reduction | >50 μm sync vib | <50 ms |
| **SIF-14** | Vessel Delam | 3× AE (continuous) | Alarm + derate | Felicity <0.95 | <50 ms |
| **SIF-15** | Frame Displacement | 3× LVDT (isolators) | Shutdown | >25mm | <50 ms |
| **SIF-16** | Emergency Stop (Optical) | 3× POF loop (hardwired) | ALL OFF | Loop break | <10 ms |
| **SIF-17** | Inverter Desat | 3× L0 FPGA (per leg) | Leg OFF | Desat detect | <1 μs |
| **SIF-18** | Zone Thermal Runaway | 3× dT/dt (RTU model) | Zone OFF | >100°C/s | <50 ms |
| **SIF-19** | Carriage Jam | 3× Carousel encoder | Stop + alarm | Position error >2° | <50 ms |
| **SIF-20** | Slug Mold Overfill | 3× Mold weight + IR | Port CLOSE | >105% capacity | <50 ms |
| **SIF-21** | Scrubber Failure | 3× Gas analyzer | Port CLOSE | HCl >1000 ppm | <50 ms |
| **SIF-22** | Precious Metal Loss | 3× LIBS (Stage 6) | Alarm + investigation | Recovery <95% | <50 ms |
| **SIF-23** | RE Magnet Temp | 3× FBG (Stage 7) | Quench protocol | >450°C | <50 ms |
| **SIF-24** | Cyber Tamper | 3× CPAT (PROD-37) | SIS lockdown | Λ_CP >100 | <50 ms |

#### 2.5.2 Proof Test Procedure

```
FOR EACH SIF (1-24):
  1. VERIFY test equipment calibrated, TSN VLAN 10 operational, PTP <1μs
  2. CONFIGURE SIS test mode (bypasses process interlocks, enables trip injection)
  3. INJECT trip condition per setpoint table above
     - Temperature: FBG simulator injects wavelength shift
     - Pressure: Pressure calibrator injects signal to 3 PTs
     - Speed: Encoder simulator injects frequency
     - GIC: Helmholtz coil 100 A/m, 5000 nT/s ramp
     - Cyber: CPAT injects synthetic anomaly Λ_CP >100
  4. MEASURE:
     a. Trip time (t_trip) = time from injection to final element action
     b. 2oo3 vote agreement = all 3 sensors agree within 1 TSN cycle (1ms)
     c. SOE timestamp alignment = max Δt <1 ms across zones
     d. FBG data freeze = all 384 channels capture trip instant
  5. RECORD: t_trip, vote, SOE, FBG freeze frame, Λ_CP (if SIF-24)
  6. RESET: Clear trip, verify auto-reset logic (where applicable)
  7. VERIFY: t_trip <50 ms, 2oo3 = PASS, SOE aligned, FBG freeze captured

AGGREGATE ACCEPTANCE:
  - All 24 SIFs: t_trip <50 ms (target <30 ms)
  - All 24 SIFs: 2oo3 vote = PASS
  - All 24 SIFs: SOE timestamps aligned <1 ms
  - PFD_avg calculation (IEC 61508-6) <1×10⁻³ per SIF
  - SIF-16 (Optical E-stop): t_trip <10 ms
  - SIF-17 (FPGA Desat): t_trip <1 μs (verified at L0)

DOCUMENTATION:
  - CT-04 Test Report with all 24 SIF data sheets
  - PFD_avg calculation sheets per SIF
  - SOE log export (CSV, blockchain anchored)
  - FBG freeze frame archive (384 channels × 24 SIFs)
  - SIS Engineer witness signature (Gate CT-04)
```

#### 2.5.3 Partial-Stroke Test (Quarterly, PROD-30)

| SIF Group | Test Method | Frequency | Acceptance |
|-----------|-------------|-----------|------------|
| SIF-01 to SIF-15 (Process) | Partial stroke 10-90% valve travel | Quarterly | Stroke time within 20% baseline |
| SIF-16 (Optical E-stop) | Full stroke (loop break) | Monthly | <10 ms |
| SIF-17 (FPGA Desat) | Built-in self-test (BIST) | Per startup | All legs PASS |
| SIF-18 to SIF-24 (Derived) | Logic solver injection | Quarterly | Logic executes <50 ms |

---

### 2.6 CT-05: Coil Resonance — Detailed Procedure

**Objective:** Verify all 8 zone resonant inverters achieve ZVS at full power across frequency range.

| Zone | Frequency | Power | ZVS Phase | Q Factor | Thermal ΔT |
|------|-----------|-------|-----------|----------|------------|
| Z1 | 100 kHz | 50 kW | <5° | >150 | <10°C |
| Z2 | 100 kHz | 50 kW | <5° | >150 | <10°C |
| Z3 | 50 kHz | 80 kW | <5° | >150 | <10°C |
| Z4 | 10 kHz | 150 kW | <5° | >150 | <10°C |
| Z5 | 10 kHz | 150 kW | <5° | >150 | <10°C |
| Z6 | 5 kHz | 200 kW | <5° | >150 | <10°C |
| Z7 | 2 kHz | 350 kW | <5° | >150 | <10°C |
| Z8 | 1 kHz | 500 kW | <5° | >150 | <10°C |

**Procedure:** Per PROD-10 Section 2.3, sweep frequency ±5%, verify ZVS acquisition <38 ms (PROD-23), thermal balance at 100% load for 30 min.

### 2.7 CT-06: FBG Calibration — Detailed Procedure

**Objective:** Calibrate all 384 FBG channels at 5 reference temperatures with drift tracking.

| Reference Temp | Method | Channels | Acceptance |
|----------------|--------|----------|------------|
| 25°C (ambient) | Calibrated bath | 384 + 16 ref | λ₀ recorded, R² > 0.999 |
| 500°C | Furnace zone | 384 + 16 ref | Δλ/ΔT match PQR ±2% |
| 1000°C | Furnace zone | 384 + 16 ref | Δλ/ΔT match PQR ±2% |
| 1500°C | Furnace zone | 384 + 16 ref | Δλ/ΔT match PQR ±2% |
| 2000°C | Furnace zone | 384 + 16 ref | Δλ/ΔT match PQR ±2% |

**Drift Monitoring:** Continuous comparison to PQR calibration curve. Alert at >0.1 nm/°C deviation. Auto-NCR at >0.5%/1000 hrs drift.

### 2.8 CT-07: GIC Ride-Through — Detailed Procedure

**Objective:** Verify full Forge operation survives Carrington-class geomagnetic storm (100 A/m, 5000 nT/s, 30 min).

| Phase | Condition | Duration | Monitoring |
|-------|-----------|----------|------------|
| **Ramp** | Helmholtz 0→100 A/m, 5000 nT/s | 30 s | All 384 FBG, TSN frames, PTP offset, DC link |
| **Hold** | 100 A/m steady | 30 min | Zero spurious SIF trips, zero data loss, comms OK |
| **Ramp Down** | 100→0 A/m | 30 s | Controlled recovery, no thermal shock >100°C/s |
| **Post** | Grid stable 30 min | 30 min | Twin reconciliation, CT-04 partial-stroke |

**Acceptance Criteria:**
- [ ] Zero spurious SIF trips during 30 min hold
- [ ] Zero data loss (merkle chain intact, PROD-37)
- [ ] PTP offset <1 μs throughout (GNSS+OCXO holdover)
- [ ] TSN frame integrity 100% (no CRC errors)
- [ ] No thermal shock >100°C/s during ramp down
- [ ] Post-test CT-04 partial-stroke (6 SIFs) PASS

### 2.9 CT-08: Thermal Cycle — Detailed Procedure

**Objective:** Verify full 8-stage thermal cascade with no feedstock, full ramp/hold/cool.

| Stage | Target Temp | Ramp Rate | Hold | Cool Rate | Key Checks |
|-------|-------------|-----------|------|-----------|------------|
| 0: Acoustic | N/A | N/A | 30 min | N/A | AE baseline, FBG health |
| 1: Drying | 120°C | 50°C/min | 60 min | 50°C/min | H₂O removal, FBG drift |
| 2: Polymer | 300°C | 50°C/min | 90 min | 50°C/min | Melt flow, no PVC >5% |
| 3: Pyrolysis | 575°C | 30°C/min | 120 min | 30°C/min | Char formation, gas spec |
| 4: Low-Temp Metals | 660°C | 20°C/min | 90 min | 20°C/min | Zn/Pb/Sn/In separation |
| 5: Aluminum | 690°C | 10°C/min | 60 min | 10°C/min | Clean Al separation |
| 6: Copper | 1150°C | 10°C/min | 120 min | 10°C/min | Cu + Au/Ag/Pd recovery |
| 7: Ferrous | 1400°C | 10°C/min | 120 min | 10°C/min | Fe + RE magnets |
| 8: Mineral | 1950°C | 5°C/min | 180 min | 5°C/min | Silicate + RE oxides |

**Acceptance Criteria:**
- [ ] All stages ±5°C setpoint throughout hold
- [ ] No SIF trips (except intentional test trips)
- [ ] All 384 FBG channels active throughout
- [ ] Digital twin sync <3σ vs. process
- [ ] Gas capture system nominal (PROD-07)
- [ ] Port valves actuate per schedule (PROD-09)

### 2.10 CT-09: Seismic Shake — Detailed Procedure

**Objective:** Verify structural integrity per IEEE 693 High Seismic.

| Test | Input | Acceptance |
|------|-------|------------|
| **OBE ×5** | IEEE 693 High RRS ×0.4g, 3 axes | No structural damage; re-tests CT-01,02,03,04 PASS |
| **SSE ×1** | IEEE 693 High RRS ×1.0g, 3 axes | HCLPF >1.6g; no loss of safety function |
| **Isolator Displacement** | Measured via LVDT | <25 mm OBE, <100 mm SSE |
| **Post-Shake FAT** | CT-01,02,03,04,05,06 | All PASS (re-test required) |

### 2.11 CT-10: Integrated Hot Run — Detailed Procedure (THE GATE)

**Objective:** Demonstrate end-to-end process performance with 6 production batches.

| Batch | Feedstock | Target Outputs | Key Metrics |
|-------|-----------|----------------|-------------|
| 1 | Category A (clean e-waste) | Cu, Au, Ag, Pd, Al, Fe | Recovery >99%, SI ±0.05 |
| 2 | Category B (mixed + PVC) | + HCl capture, In first | Recovery >98%, HCl <50 ppm |
| 3 | Category C (auto shredder) | + RE magnets, high Fe | Recovery >97%, RE >95% |
| 4 | Category D (slag/tailings) | + Mineral residue, Zr | Recovery >95%, Zr >90% |
| 5 | Category A (repeat) | Reproducibility | All metrics within ±2% |
| 6 | Phoenix Return (EOL) | Closed-loop validation | Mass balance >99.5% |

**Per-Batch Acceptance:**
- [ ] Mass balance >99% (elemental closure)
- [ ] All output slugs meet PROD-08 spec (mass spec, dimensions)
- [ ] Energy per ton within PROD-31 budget (±10%)
- [ ] Gas emissions within PROD-32 permits
- [ ] Digital twin sync <3σ throughout
- [ ] No SIF trips, no NCRs

**Final Gate:** All 6 batches PASS → Plant Manager witness (SAT-05 equivalent) → Ship release.

---

## 3. Site Acceptance Test (SAT) — Installation, Integration, Performance, Safety

### 3.1 SAT Scope & Sequence

The SAT is executed at the customer site after installation, utility hookup, and cold commissioning.

```
SAT SEQUENCE (5 Days):
┌─────────────────────────────────────────────────────────────────────────────┐
│ DAY 1: SAT-01 Site Power Quality + SAT-02 Ground Resistance                 │
│ DAY 2: SAT-03 POF Attenuation + SAT-04 TSN/PTP Sync                         │
│ DAY 3-4: SAT-05 Performance Benchmarks (6 batches)                          │
│ DAY 5:   SAT-06 Safety Systems Verification + Commissioning Gate            │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 3.2 SAT-01: Site Power Quality

| Parameter | Standard | Acceptance | Method |
|-----------|----------|------------|--------|
| **THD (Total)** | IEEE 519 | <5% | Power quality analyzer (Fluke 438) |
| **Individual Harmonics** | IEEE 519 | <3% each | Same |
| **Voltage Unbalance** | NEMA MG-1 | <1% | Same |
| **Frequency Stability** | IEEE 1159 | ±0.5 Hz | Same |
| **Transient Immunity** | IEEE C62.41 | Cat B3 passes | Surge generator |

**Documentation:** Utility compliance certificate + analyzer logs.

### 3.3 SAT-02: Ground Resistance

| Parameter | Acceptance | Method |
|-----------|------------|--------|
| **Combined Ground Resistance** | <5 Ω | Fall-of-potential (3-pole) |
| **UFER Resistance** | <10 Ω | Clamp-on method |
| **Ring Ground Resistance** | <15 Ω | Fall-of-potential |
| **Equipotential Bonding** | <0.1 Ω between all metallic structures | Micro-ohmmeter |

**Note:** Forge has no metallic structures in hot zone (PROD-26). Grounding applies to frame, vessel external, power electronics enclosures only — all isolated from process.

### 3.4 SAT-03: POF Attenuation

| Link | Length | Acceptance | Method |
|------|--------|------------|--------|
| **FBG Interrogator → Drum** | 50-100 m | <0.2 dB/m | OTDR (EXFO FTB-1) |
| **TSN Switch → RTU (8 zones)** | 30-80 m | <0.2 dB/m | OTDR |
| **TSN Switch → PLC (8 stages)** | 20-60 m | <0.2 dB/m | OTDR |
| **PTP GM → Boundary Clocks** | 40-100 m | <0.2 dB/m | OTDR |
| **Splices (all)** | N/A | <0.5 dB each | OTDR event table |
| **Connectors (all)** | N/A | <0.3 dB each | OTDR event table |
| **Return Loss (all)** | N/A | >50 dB | OTDR |

### 3.5 SAT-04: TSN/PTP Sync

| Parameter | Acceptance | Method |
|-----------|------------|--------|
| **TSN Latency (max)** | <100 μs end-to-end | Traffic generator (Spirent) + timestamp |
| **TSN Jitter** | <10 μs | Same |
| **PTP Offset (GM to BC)** | <1 μs | PTP monitor (Meinberg) |
| **PTP Offset (BC to Node)** | <100 ns | Same |
| **Sync Class** | IEEE 802.1AS Class C | Verify |
| **Gate Control List** | Matches PROD-23 frozen schedule | Verify |

### 3.6 SAT-05: Performance Benchmarks

Identical to CT-10: 6 batches (Cat A, B, C, D, A, Phoenix) with all outputs spec, mass balance >99%, energy within budget, twin sync <3σ.

### 3.7 SAT-06: Safety Systems Verification

| System | Test | Acceptance |
|--------|------|------------|
| **Optical E-stop (SIF-16)** | Pull all 12 E-stop POF loops | All 24 SIFs trip <10 ms |
| **Fire Suppression** | Inert gas (N₂) discharge test | Discharge <10 s, pressure hold 30 min |
| **Gas Detection** | Calibration gas challenge (H₂, HCl) | All 6 sensors alarm <5 s |
| **Radiation Monitor** | Check source (Cs-137) | Alarm at setpoint |
| **Emergency Lighting** | Power cut | 90 min battery, all exits lit |

---

## 4. Performance Benchmarks

### 4.1 Throughput & Recovery

| Metric | Target | Measurement | Frequency |
|--------|--------|-------------|-----------|
| **Nominal Throughput** | 226 L/batch (6.5 ton) | Volume per batch | Per batch |
| **Elemental Recovery (Cu, Au, Ag, Pd, Al, Fe, In, RE)** | >99% (Cat A), >98% (Cat B), >97% (Cat C), >95% (Cat D) | Mass spec input vs. output | Per batch |
| **Separation Index (SI)** | ±0.05 | LIBS/XRF on output streams | Per batch |
| **Cycle Time** | 300 min (5 hr) batch-to-batch | Timestamp log | Per batch |

### 4.2 Energy Efficiency

| Metric | Target | Measurement | Frequency |
|--------|--------|-------------|-----------|
| **Specific Energy** | <450 kWh/ton feed | kWh meter / ton feed | Per batch |
| **Thermal Efficiency** | >85% (induction → material) | Calorimetric (PROD-24) | Per batch |
| **Standby Power** | <50 kW (all systems idle) | kW meter | Continuous |
| **GIC Ride-Through Energy** | <5% additional | kWh during CT-07 | Per event |

### 4.3 Availability & Reliability

| Metric | Target | Measurement | Frequency |
|--------|--------|-------------|-----------|
| **Operational Availability** | >95% | (Run hours) / (Run + Down) | Monthly |
| **MTBF (Mean Time Between Failures)** | >2000 hours | PROD-30 failure database | Quarterly |
| **MTTR (Mean Time To Repair)** | <8 hours | PROD-30 WO records | Quarterly |
| **Spurious Trip Rate** | <1/year (SIL-3) | SIF trip log | Continuous |

### 4.4 Quality Metrics

| Metric | Target | Measurement | Frequency |
|--------|--------|-------------|-----------|
| **Output Spec Compliance** | 100% | PROD-08 mass spec/dims | Per slug |
| **NCR Rate** | <0.5% of batches | PROD-28 NCR log | Monthly |
| **Rework Rate** | <1% of batches | PROD-28 rework log | Monthly |
| **FBG Channel Survival** | >97% at 500 cycles | PROD-28 CT-06 | Per 500 cycles |

---

## 5. SIF Proof Tests — CT-04 Detail (Expanded)

### 5.1 SIF Proof Test Matrix

Refer to Section 2.5 for the complete 24-SIF inventory and proof test procedure. This section provides the **traceability matrix** linking each SIF to its verification evidence.

| SIF | PROD-23 Ref | PROD-28 CT-04 | PROD-39 FAT | PROD-39 SAT | PROD-30 Quarterly |
|-----|-------------|---------------|-------------|-------------|-------------------|
| SIF-01 | Sec 6.2.1 | Test 1 | Full injection | Logic verify | Partial stroke |
| SIF-02 | Sec 6.2.2 | Test 2 | Full injection | Logic verify | Partial stroke |
| ... | ... | ... | ... | ... | ... |
| SIF-24 | Sec 6.2.24 | Test 24 | CPAT injection | CPAT injection | Logic verify |

### 5.2 SIF Verification Evidence Package

Each SIF proof test generates an **Evidence Package** archived in Git + DQR blockchain:

```
sif-evidence-SIF-XX-YYYYMMDD/
├── test_procedure.pdf (signed)
├── injection_log.csv (timestamped)
├── soe_export.csv (SOE timestamps, 2oo3 votes)
├── fbg_freeze_frame.json (384 channels at trip instant)
├── trip_time_measurement.pdf (oscilloscope trace)
├── pfd_calculation.xlsx (IEC 61508-6)
├── witness_signature.pdf (SIS Engineer)
├── blockchain_anchor.json (DQR tx hash)
└── pass_fail_certificate.pdf (Quality + Plant Manager)
```

### 5.3 SIF Re-Certification Triggers

Per PROD-38 ECO Process, any change affecting SIF envelope requires **full re-certification (CT-04 repeat)**:

- Firmware change to SIS logic (L2 PLC)
- Sensor change (FBG, PT, encoder, gas analyzer)
- Final element change (inverter, valve, brake)
- TSN/PTP infrastructure change
- ECO class Critical/Major on any CI in SIF path

---

## 6. Cyber-Physical Security Tests

### 6.1 Penetration Test (Annual)

| Scope | Method | Standard | Acceptance |
|-------|--------|----------|------------|
| **OT Network** | Black-box + Gray-box (network topology known) | NIST SP 800-115 | Zero Critical/High findings; Medium ≤5 with CAPA |
| **Data Diode** | Protocol fuzzing, rate limit bypass, merkle forge | Custom | Zero bypasses; merkle verification holds |
| **TUF Repository** | Target file replacement, rollback, freeze | TUF spec + in-toto | Zero successful attacks |
| **FBG Tamper** | Optical injection, wavelength spoofing | PROD-36 | Λ_CP >10 on >5 channels → auto-NCR |
| **Physical Access** | Lock bypass, badge clone, USB drop | Physical pen test | Zero unauthorized OT access |

### 6.2 Red Team Exercise (Annual)

| Scenario | Duration | Objective | Success Criteria |
|----------|----------|-----------|------------------|
| **IR-01: SIF Bypass** | 4 hr | Forge SIF-16 bypass via dual-key compromise | Detect at CPAT Λ >100 |
| **IR-02: FBG Tamper** | 8 hr | Spoof drum temps to hide overheating | Detect at Λ_ML >10σ |
| **IR-03: Firmware Compromise** | 4 hr | Deploy malicious RTU firmware via supply chain | Block at TUF/SLSA gate |
| **IR-04: Carrington+Cyber** | 2 hr | GIC storm + coordinated cyber attack | Island transition <5 ms, SIFs hold |
| **IR-05: TSN Corruption** | 2 hr | Corrupt gate control list, VLAN hopping | Detect at TSN frame anomaly |
| **IR-06: PTP Compromise** | 1 hr | Spoof grandmaster, offset >1 μs | Detect at PTP monitor, SIF-08 trip |

### 6.3 Tabletop Exercises (Quarterly)

| Exercise | Participants | Duration | Deliverable |
|----------|--------------|----------|-------------|
| **TT-01: SIF Bypass Authorization** | Shift Lead, Safety Eng, Cyber Eng | 2 hr | Decision log, timing |
| **TT-02: FBG Tamper Response** | Controls Eng, SIS Eng, MT | 2 hr | NCR auto-gen time |
| **TT-03: Firmware Supply Chain** | CM, Cyber, Supply Chain | 2 hr | SCN process validation |
| **TT-04: Carrington+Cyber** | All above + Plant Mgr | 3 hr | Island transition drill |

### 6.4 Vulnerability Scanning (Monthly)

| Scope | Tool | Frequency | SLA |
|-------|------|-----------|-----|
| **OT Passive Scan** | Claroty/Nozomi (read-only) | Monthly | Zero new Critical |
| **IT Active Scan** | Nessus/OpenVAS | Monthly | Patch Critical ≤7d |
| **Firmware CVE Check** | TUF repo + NVD | Weekly | Block deploy if CVSS≥7 |
| **SBOM Drift Check** | CycloneDX diff | Weekly | Zero unexplained drift |

---

## 7. Human Factors Validation (PROD-35 Integration)

### 7.1 HFE Validation Scope

Per PROD-35 ISA-101 Level 1-4 HMI hierarchy and PROD-34 RCT tensor.

### 7.2 Operator-in-Loop Scenarios

| Scenario ID | Description | Operators | Duration | Pass Criteria |
|-------------|-------------|-----------|----------|---------------|
| **HFE-01** | Nominal batch (Cat A) | 2 Forge + 1 Depot | 5 hr | Zero errors, <50 alarms |
| **HFE-02** | Stage 4 In-first discharge | 2 Forge | 2 hr | Visual confirm + XRF |
| **HFE-03** | Stage 6 H₂ <4% verification | 2 Forge | 1 hr | Verification <5 min |
| **HFE-04** | SIF Bypass Authorization | Shift Lead + Safety Eng | 15 min | Dual-key, 4hr timer |
| **HFE-05** | Carrington Ride-Through Exit | Shift Lead + Utility | 30 min | Staged reconnect |
| **HFE-06** | FBG Tamper Alarm Response | Controls Eng | 10 min | Acknowledge + action |
| **HFE-07** | Emergency Shutdown | All 4 operators | 5 min | <2 min full stop |
| **HFE-08** | Phoenix Depot Classification | 2 Depot | 2 hr | LIBS confirm + QR |

### 7.3 HFE Metrics

| Metric | Target | Measurement |
|--------|--------|-------------|
| **Task Completion Time** | ≤120% of expert baseline | Stopwatch + video |
| **Error Rate** | 0 critical, ≤2 minor/scenario | Observer log |
| **Situational Awareness (SAGAT)** | >90% | Probe queries during scenario |
| **Workload (NASA-TLX)** | <60 (moderate) | Post-scenario survey |
| **Alarm Flood** | <50/hr steady state | ISA-18.2 alarm log |
| **HMI Response Time** | <200 ms (L2/L3), <50 ms (L4) | Instrumented |

### 7.4 Simulator Validation

The training simulator (PROD-34) must be validated against the digital twin (PROD-37):

| Validation | Method | Acceptance |
|------------|--------|------------|
| **Physics Fidelity** | Simulator vs. Twin on 100 scenarios | ΔT <5°C, ΔP <2%, ΔX <0.02 |
| **Anomaly Injection** | 50 anomaly scenarios | Operator response time ±15% |
| **HMI Replica** | Pixel-perfect vs. Forge HMI | Zero discrepancies |
| **Scenario Library** | All PROD-39 HFE scenarios + PROD-37 auto-gen | 100% coverage |

---

## 8. Environmental Qualification

### 8.1 Seismic Qualification (IEEE 693)

| Test | Standard | Level | Acceptance |
|------|----------|-------|------------|
| **OBE (Operating Basis Earthquake)** | IEEE 693 High | 5× RRS ×0.4g | No damage, re-test PASS |
| **SSE (Safe Shutdown Earthquake)** | IEEE 693 High | 1× RRS ×1.0g | HCLPF >1.6g |
| **Isolator Qualification** | IEEE 693 | Per PROD-25 | Displacement <25mm OBE |
| **Equipment Qualification** | IEEE 693 | Per component | Function during/after shake |

**Qualification by Analysis + Test:**
- Frame/isolators: Shake table (CT-09)
- Drum/vessel: FEA (PROD-25) + shake table fixture
- Electronics: Component shake + functional test
- POF cables: Vibration + attenuation test

### 8.2 Thermal Cycling Qualification

| Component | Cycles | Profile | Acceptance |
|-----------|--------|---------|------------|
| **Drum (ZrB₂-SiC)** | 500 | 25→2200°C→25, 50°C/min | FBG drift <0.5%, no liner crack |
| **Vessel (BFRP)** | 500 | 25→200°C→25, 10°C/min | No delam, AE baseline stable |
| **Port Valves** | 500 | 25→700°C→25, 20°C/min | Actuation 3.6±0.2mm, leak <10⁻⁶ |
| **Coil Bank** | 500 | 25→500°C→25, 20°C/min | Resonance stable, ZVS maintained |
| **Power Electronics** | 500 | 25→125°C→25, 10°C/min | T_j <125°C, no solder fatigue |

### 8.3 GIC/EMP/HEMP Qualification

| Threat | Standard | Test Level | Acceptance |
|--------|----------|------------|------------|
| **GIC (Geomagnetic)** | IEC 61000-4-10 / IEEE C37.90 | 100 A/m, 5000 nT/s, 30 min | CT-07 PASS |
| **EMP (Electromagnetic Pulse)** | IEC 61000-2-9 / MIL-STD-461 | 50 kV/m, 10 ns rise | No upset, no damage |
| **HEMP (High-Altitude EMP)** | MIL-STD-188-125 | 50 kV/m, E1/E2/E3 | Safety functions hold |
| **Lightning Indirect** | IEC 61000-4-5 | 4 kV, 1.2/50 μs | Surge protection holds |

**Note:** All-dielectric construction (PMMA POF, BFRP, ceramics) provides inherent immunity. Qualification focuses on verifying no metallic paths exist and power electronics survive.

### 8.4 Environmental Stress Screening (ESS)

| Level | Profile | Duration | Application |
|-------|---------|----------|-------------|
| **Component** | Thermal -40→+85°C, 10 cycles; Vibration 10-2000 Hz, 10g | 48 hr | All electronics modules |
| **Subassembly** | Thermal + vibration combined | 24 hr | RTU, PLC, Inverter |
| **System** | CT-08 thermal cycle + CT-09 seismic | Per FAT | Full Forge |

---

## 9. Reliability Demonstration

### 9.1 MTBF/MTTR Demonstration

**Test Plan:** Accelerated life testing on critical components + fleet data aggregation (PROD-37).

| Component | Target MTBF | Demonstration Method | Sample Size |
|-----------|-------------|----------------------|-------------|
| **GaN Inverter** | >50,000 hr | Thermal soak + power cycling + GIC | 8 units (1 per zone) |
| **FBG Interrogator** | >100,000 hr | Continuous operation + thermal cycle | 4 units (redundant) |
| **TSN Switch** | >100,000 hr | Traffic load + thermal + EMI | 2 core + 8 edge |
| **PTP Grandmaster** | >50,000 hr | Holdover + GIC + sync accuracy | 1 primary + 1 hot spare |
| **BFRP Vessel** | >20 yr | Hydrotest + AE + thermal cycle | 3 FA vessels |
| **ZrB₂-SiC Drum** | >500 cycles | Accelerated thermal cycle | 3 FA drums |

### 9.2 Availability Demonstration

| Metric | Target | Demonstration |
|--------|--------|---------------|
| **Operational Availability** | >95% | 10,000 hr fleet operation (10 Forges × 1000 hr) |
| **Planned Maintenance** | <5% downtime | PROD-30 PM schedule compliance |
| **Unplanned Downtime** | <1% | PROD-30 failure database |
| **SIF Spurious Trip Rate** | <1/yr per SIF | 24 SIFs × 10 Forges × 1 yr |

### 9.3 Reliability Growth

| Phase | Activity | Metric |
|-------|----------|--------|
| **Design** | FMEA (PROD-25), FTA (SIFs), RBD | MTBF prediction |
| **FA Testing** | HALT/HASS on components | Failure mode discovery |
| **FAT** | CT-01..10, 72 hr soak | Zero spurious trips |
| **SAT** | 6 batches, 500 hr | Field reliability init |
| **Fleet** | PROD-37 twin aggregation | Bayesian MTBF update |

---

## 10. Software/Firmware V&V

### 10.1 V&V Scope (DO-178C DAL A Equivalent)

All safety-critical firmware/software (L0 FPGA, L1 RTU, L2 PLC/SIS, L3 SCADA safety functions) verified to **DO-178C Design Assurance Level A** equivalence.

| Level | Component | V&V Activities | Tools |
|-------|-----------|----------------|-------|
| **L0 FPGA** | GaN driver, desat, ZVS, current sense | Formal verification (Jasper), HIL 10⁶ cycles, mutation testing | Vivado, Jasper, Questa |
| **L1 RTU** | Zephyr RTOS, thermal PID, PLL, FBG driver | Unit test >90% coverage, integration test, mutation >90% | Zephyr test, CMock, LLVM mutator |
| **L2 PLC/SIS** | IEC 61131-3, SIF logic, recipes | Formal verification (Prover), SIF injection, 72 hr soak | Codesys, Prover, PLCTest |
| **L3 SCADA** | Historian, alarms, batch, twin sync | Container scan, integration test, chaos engineering | Docker, Testcontainers, Chaos Mesh |
| **Twin HPC** | CFD/FEA/EM/ML containers | Code verification (MMS), solution verification (GCI) | ASME V&V 40, PETSc |

### 10.2 Mutation Testing Requirements

| Level | Mutation Score | Tool | Gate |
|-------|----------------|------|------|
| **L0 FPGA** | >95% | Jasper Formal | CT-01 |
| **L1 RTU** | >90% | LLVM Mutator | CT-04 |
| **L2 PLC** | >90% | PLCTest Mutator | CT-04 |
| **L3 SCADA** | >85% | Pitest | SAT-05 |
| **Twin** | >80% | Custom | Quarterly |

### 10.3 Static Analysis & Coding Standards

| Language | Standard | Tool | Gate |
|----------|----------|------|------|
| **Verilog/VHDL** | IEEE 1364/1076, FPGA lint | Verilator, SpyGlass | CI |
| **C (Zephyr)** | MISRA C:2012, CERT C | Helix QAC, CodeSonar | CI |
| **ST (IEC 61131-3)** | PLCopen Coding Guidelines | Codesys Static Analysis | CI |
| **Python (Twin)** | PEP 8, Type Hints (mypy) | Ruff, MyPy | CI |
| **Dockerfiles** | Hadolint | Hadolint | CI |

### 10.4 Firmware Deployment Validation

Per PROD-38 TUF staged rollout:

| Gate | Scope | Validation | Approval |
|------|-------|------------|----------|
| **Stage 1** | 1 Zone RTU (e.g., Zone 3) | CT-04 partial-stroke (6 SIFs) + 24 hr soak | Auto if PASS |
| **Stage 2** | 1 Stage PLC + Zones (e.g., Stage 4) | CT-04 full proof (24 SIFs) + 48 hr soak | CM + Safety |
| **Stage 3** | Full Forge (all 8 zones, 8 stages) | FAT re-run (CT-01..10) | CCB unanimous |

---

## 11. Digital Twin V&V (PROD-37 Integration)

### 11.1 ROM Acceptance (Per PROD-24 Commitment #7)

| Metric | Target | Measurement |
|--------|--------|-------------|
| **Speedup Factor** | ≥100× (target 118×) | Wall-clock vs. full FEA |
| **Temperature RMS** | <5°C | vs. 384 FBG (validated batches) |
| **Stress RMS** | <10 MPa | vs. FA-01 strain gauges |
| **Energy Balance** | <2% | Input vs. output + storage |
| **Mode Count** | 12 | POD energy capture >99.9% |

### 11.2 ML Model Validation (FOLLOW-29)

| Model | Metric | Target | Method |
|-------|--------|--------|--------|
| **FBG Autoencoder** | FPR <1%/day | 90-day nominal | Production monitoring |
| **FBG Autoencoder** | TPR >90% @ Λ>3σ | 500 injected anomalies | Test set |
| **CPAT Fusion** | SEV-1 0/yr, SEV-2 2/yr | Fleet calibration | PROD-36 IR logs |
| **ROM Surrogate** | F1 >0.95 | 1000 Monte Carlo | UQ validation |
| **All Models** | Adversarial robustness >3σ | FGSM/PGD | Test suite |

### 11.3 UQ Coverage (PROD-24 Section 10)

| Requirement | Target | Method |
|-------------|--------|--------|
| **20 Parameter PCE** | 3rd order Polynomial Chaos | 9261 samples (Sobol) |
| **95% CI Coverage** | >0.95 | Validation set |
| **Sobol Indices** | Top 5 explain >80% variance | Global sensitivity |
| **ROM Uncertainty** | Propagated to outputs | Non-intrusive PCE |

### 11.4 Twin-Process Synchronization Validation

| Test | Frequency | Acceptance |
|------|-----------|------------|
| **Sync Drift** | 10 Hz continuous | Δx RMS <3σ (PROD-37 Sec 3.3) |
| **Soft Reset Rate** | <1/day | Twin sync protocol |
| **Retraining Trigger** | Monthly auto + anomaly | FOLLOW-29 pipeline |
| **Scenario Generation** | Monthly | 20 clusters × 50 MC variants |

---

## 12. Regulatory Compliance Tests

### 12.1 EPA Continuous Emissions Monitoring (CEMS)

| Pollutant | Method | Frequency | Limit | Regulation |
|-----------|--------|-----------|-------|------------|
| **HCl** | FTIR / NDIR | Continuous | <50 ppm | 40 CFR 63.1200 |
| **SO₂** | UV Fluorescence | Continuous | <100 ppm | 40 CFR 60.45 |
| **CO₂** | NDIR | Continuous | Report only | 40 CFR 98 |
| **H₂** | Electrochemical | Continuous | <4% (safety) | PROD-07 |
| **Particulate (PM2.5)** | Beta attenuation | Continuous | <0.01 gr/dscf | 40 CFR 60.18 |

**Test Procedure:** 30-day continuous monitoring per 40 CFR 60/63, Relative Accuracy Test Audit (RATA) quarterly.

### 12.2 NRC Nuclear Material Accounting (If Applicable)

| Requirement | Test | Frequency | Acceptance |
|-------------|------|-----------|------------|
| **Material Balance** | Input vs. output + holdup | Per batch | <1% uncertainty |
| **Inventory Verification** | Physical count + NDA | Annual | NRC inspector witness |
| **Containment Surveillance** | Tamper-indicating seals | Continuous | Zero violations |
| **Measurement Control** | Standards traceability | Quarterly | NIST traceable |

### 12.3 ITAR Technical Data Control

| Control | Test | Frequency | Acceptance |
|---------|------|-----------|------------|
| **Access Control** | US persons only | Continuous | Zero unauthorized |
| **Encryption at Rest** | AES-256 | Continuous | Verified |
| **Export Review** | DDTC license check | Per shipment | License valid |
| **Visitor Control** | Escort + NDA | Per visit | Log maintained |

### 12.4 GDPR Operator Data Protection

| Right | Implementation | Test | Frequency |
|-------|----------------|------|-----------|
| **Access** | Operator portal | Request fulfillment | <30 days |
| **Rectification** | Profile edit | Test update | Per request |
| **Erasure** | DQR blockchain (pseudonymized) | Verify hash | Per request |
| **Portability** | JSON export | Test export | Per request |

---

## 13. Cross-Reference Matrix

| This Document | Upstream Source | Downstream Consumer | Interface |
|---------------|-----------------|---------------------|-----------|
| T&E Program (Sec 1) | PROD-23, PROD-27, PROD-28 | PROD-40, Regulatory | Standards alignment |
| FAT (Sec 2) | PROD-27 (Mfg), PROD-28 (QA) | PROD-29 (Deploy), PROD-30 (Maint) | CT-01..10 procedures |
| SAT (Sec 3) | PROD-29 (Deploy), PROD-32 (Reg) | PROD-29 (Commission) | SAT-01..06 procedures |
| Performance (Sec 4) | PROD-02, 10, 24, 31, 37 | PROD-31 (Econ), PROD-37 (Twin) | Benchmark targets |
| SIF Proof (Sec 5) | PROD-23 (SIS), PROD-28 (CT-04) | PROD-30 (PM), PROD-36 (Cyber) | 24 SIF test matrix |
| Cyber Tests (Sec 6) | PROD-36 (Cyber), PROD-37 (Twin) | PROD-36 (IR), PROD-34 (Training) | IR playbooks, scenarios |
| HFE Validation (Sec 7) | PROD-35 (HFE), PROD-34 (Training) | PROD-34 (Simulator), PROD-35 (HMI) | Scenario library |
| Environmental (Sec 8) | PROD-25 (FEA), PROD-26 (GIC), PROD-27 (Mfg) | PROD-30 (PM), PROD-29 (Site prep) | Qual reports |
| Reliability (Sec 9) | PROD-30 (Maint), PROD-37 (Twin) | PROD-31 (Econ), PROD-30 (Spares) | MTBF/MTTR |
| SW/FW V&V (Sec 10) | PROD-23 (Control), PROD-38 (Config) | PROD-38 (ECO), PROD-29 (Deploy) | SemVer, SFP, TUF |
| Twin V&V (Sec 11) | PROD-24 (Thermal), PROD-37 (Twin), FOLLOW-29 | PROD-37 (ROM/ML), PROD-40 (Gen-II) | V&V evidence |
| Regulatory (Sec 12) | PROD-32 (Reg), PROD-07 (Gas), PROD-28 (CEMS) | PROD-32 (Permits), PROD-29 (Ops) | Compliance evidence |

---

## Appendix A: FAT/SAT Test Procedures

### A.1 Test Procedure Template

```markdown
# TP-XXXX: <TEST NAME>
**Revision:** X.Y | **Date:** YYYY-MM-DD | **Classification:** Test Procedure

## 1. PURPOSE
## 2. SCOPE (Applicable CIs, Serial Numbers)
## 3. REFERENCES (Standards, PROD docs, Drawings)
## 4. PREREQUISITES
   - Equipment calibration status
   - Personnel qualification
   - Environmental conditions
   - Safety permits (LOTO, confined space, hot work)
## 5. TEST SETUP
   - Block diagram
   - Instrumentation list (cal due dates)
   - Software versions (firmware, twin, interrogator)
## 6. PROCEDURE (Step-by-step with PASS/FAIL criteria)
## 7. DATA RECORDING (Forms, automated logs, photos/video)
## 8. ACCEPTANCE CRITERIA (Quantitative, traceable to requirements)
## 9. POST-TEST (Teardown, data archive, equipment return)
## 10. CONTINGENCIES (Abort criteria, recovery procedures)
## 11. APPROVALS (Test Eng, Quality, Safety, Plant Mgr)
```

### A.2 Test Data Package Requirements

Each test generates a **Data Package** uploaded to DQR blockchain:

| Element | Format | Retention |
|---------|--------|-----------|
| Test procedure (signed) | PDF | Permanent |
| Raw data logs | CSV/HDF5 | 7 years |
| Analysis results | PDF + JSON | Permanent |
| PASS/FAIL certificate | PDF (dual-sign) | Permanent |
| NCRs (if any) | PDF + CAPA tracker | Permanent |
| Blockchain anchor | JSON (tx hash) | Permanent |

---

## Appendix B: SIF Proof Test Matrix (CT-01 through CT-12)

### B.1 CT-01 through CT-12 Summary

| Test | SIFs Covered | Duration | Frequency |
|------|--------------|----------|-----------|
| **CT-01** | Drum dynamics (SIF-02, 13) | 4 hr | FAT only |
| **CT-02** | Vessel pressure (SIF-03) | 2 hr | FAT only |
| **CT-03** | Flange leaks (SIF-03, 16) | 4 hr | FAT only |
| **CT-04** | **ALL 24 SIFs** | 8 hr | FAT + Quarterly partial |
| **CT-05** | Coil resonance (SIF-04, 05) | 6 hr | FAT only |
| **CT-06** | FBG calibration (SIF-09) | 8 hr | FAT + Annual |
| **CT-07** | GIC ride-through (SIF-10) | 2 hr | FAT + Annual |
| **CT-08** | Thermal cycle (SIF-01, 18) | 24 hr | FAT + Annual |
| **CT-09** | Seismic (SIF-15) | 4 hr | FAT only |
| **CT-10** | Integrated (ALL SIFs active) | 48 hr | FAT + SAT |
| **CT-11** | Reliability demo (MTBF) | 1000 hr | Fleet |
| **CT-12** | UQ validation | 500 samples | Per PROD-24 |

### B.2 SIF Test Traceability Matrix

| SIF | Requirement (PROD-23) | CT Test | SAT Test | Quarterly | Evidence Location |
|-----|----------------------|---------|----------|-----------|-------------------|
| SIF-01 | Sec 6.2.1 | CT-04, CT-08 | SAT-06 | Partial | `sif-evidence-SIF-01-...` |
| SIF-02 | Sec 6.2.2 | CT-01, CT-04 | SAT-06 | Partial | `sif-evidence-SIF-02-...` |
| ... | ... | ... | ... | ... | ... |
| SIF-24 | Sec 6.2.24 | CT-04, IR-06 | SAT-06 | Logic | `sif-evidence-SIF-24-...` |

---

## Appendix C: Cyber Test Scenarios (PROD-36 IR-01 through IR-06)

### C.1 IR-01: SIF Bypass Authorization

```yaml
scenario: "IR-01 SIF Bypass"
mitre_attack: "T0883 (Safety System Bypass)"
preconditions:
  - Forge operational, nominal batch
  - Dual-key tokens (Shift Lead + Safety Eng) available
  - CT-04 passed <90 days ago
attack_steps:
  1. Attacker compromises Shift Lead YubiKey (phishing/supply chain)
  2. Attacker compromises Safety Eng YubiKey (separate vector)
  3. Attacker initiates SIF-16 bypass via HMI
  4. Blockchain timer starts (4 hr)
detection:
  - CPAT: JIT request from unauthorized location → Λ_CP >100
  - CPAT: Dual-key used outside shift handover window → Λ_CP >50
  - PROD-37 twin: SIF state anomaly → Λ_ML >10
response:
  - Auto-NCR generated
  - SIF-24 evaluation triggered
  - Shift Lead + Safety Eng alerted (out-of-band)
  - Bypass auto-revoked at Λ_CP >100
success_criteria:
  - Detection <30 s from dual-key use
  - Auto-revoke before 4 hr timer expires
  - No process impact
```

### C.2 IR-02: FBG Tamper

```yaml
scenario: "IR-02 FBG Tamper"
mitre_attack: "T0831 (Sensor Manipulation)"
preconditions:
  - Forge at Stage 8 (2200°C)
  - 384 FBG channels nominal
attack_steps:
  1. Attacker accesses FBG interrogator (physical OT network)
  2. Injects wavelength offset on Zone 8 channels (145-160)
  3. Offset mimics cooling (Δλ = -2 nm = ~200°C drop)
  4. Zone 8 power ramps up to compensate (500 kW max)
detection:
  - PROD-37 twin: Autoencoder Λ_ML >100 on 16 channels
  - CPAT: FBG Λ >10 on >5 channels + TSN normal → Λ_CP >50
  - Spatial correlation: Adjacent channels disagree → Λ_CP >100
response:
  - SIF-24 auto-lockdown (all zones)
  - Zone 8 power hard-limited to 50 kW
  - Auto-NCR + forensic snapshot
success_criteria:
  - Detection <1 s (10 Hz twin cycle)
  - Power hard-limit <500 ms
  - No drum damage
```

### C.3 IR-03: Firmware Compromise

```yaml
scenario: "IR-03 Firmware Supply Chain"
mitre_attack: "T1195.002 (Supply Chain Compromise)"
preconditions:
  - GaN Systems (SUP-001) pushes RTU firmware v3.1.0
  - TUF repo updated, SBOM signed, in-toto attested
attack_steps:
  1. Attacker compromises GaN Systems build pipeline
  2. Injects backdoor in thermal PID: exfiltrates FBG data via timing channel
  3. Signs with stolen HSM-BUILDER key (or valid key via insider)
  4. TUF target published
detection:
  - SLSA Level 3: Build provenance mismatch (reproducible build fails)
  - SBOM diff: New dependency not in AVL
  - TUF: Target signature valid but layout violation (inspect step fails)
  - PROD-38: Weekly SBOM drift check flags new component
response:
  - Deploy blocked at TUF client (SCADA L3)
  - Vendor CAPA triggered (SCN process)
  - CT-04 re-test required if deployed to staging
success_criteria:
  - Block at TUF client (pre-deploy)
  - Zero Forges receive compromised firmware
  - Vendor notified <1 hr
```

### C.4 IR-04: Carrington+Cyber

```yaml
scenario: "IR-04 Carrington + Cyber"
mitre_attack: "T1499 (Endpoint Denial of Service) + GIC"
preconditions:
  - NOAA GIC warning: Kp=9, 5000 nT/s expected in 2 hr
  - Forge at Stage 6 (Copper, 1150°C)
attack_steps:
  1. Attacker launches DDoS on IT network (irrelevant to OT)
  2. GIC storm hits: 100 A/m, 5000 nT/s, 30 min duration
  3. Attacker attempts to exploit OT during GIC confusion
     - Spoof PTP grandmaster
     - Inject TSN frames on VLAN 20
     - Trigger SIF-08 (PTP sync loss)
detection:
  - PROD-26: GIC ride-through active (5 ms island transition)
  - PROD-36: CPAT correlates GIC + TSN anomaly + PTP offset → Λ_CP >100
  - SIF-08 trips on PTP offset >1 μs (if spoof succeeds)
  - SIF-10 trips on GIC detection (5000 nT/s)
response:
  - Island transition <5 ms (LiFePO₄ UPS)
  - Data diode buffers OT→IT (1 Gbps, 30 min hold)
  - Post-storm: CT-04 partial + TSN verify + Twin reconciliation
success_criteria:
  - Island transition <5 ms
  - Zero data loss
  - SIFs hold throughout
  - Post-storm reconciliation <1 hr
```

### C.5 IR-05: TSN Corruption

```yaml
scenario: "IR-05 TSN Gate Control List Corruption"
mitre_attack: "T1498 (Network Denial of Service) - TSN specific"
preconditions:
  - TSN frozen schedule (PROD-23 commitment #4)
  - VLAN 10 (SIS) highest priority, 200 μs slice
attack_steps:
  1. Attacker compromises TSN switch management (IT→OT path blocked)
  2. Modifies gate control list: extends VLAN 20 slice, starves VLAN 10
  3. SIF traffic delayed >50 ms
detection:
  - TSN frame monitor: VLAN 10 frames missing scheduled windows
  - CPAT: TSN_frame_anomaly → Λ_CP >10
  - SIF-07: Loss of comms (3 missed cycles) → trip
response:
  - SIF-07 trips (safe state)
  - TSN switch watchdog resets to golden config (ROM)
  - Auto-NCR + forensic capture
success_criteria:
  - SIF trip <50 ms from first missed frame
  - Golden config restore <1 s
  - No safety impact
```

### C.6 IR-06: PTP Compromise

```yaml
scenario: "IR-06 PTP Grandmaster Spoof"
mitre_attack: "T1556.006 (Multi-Factor Authentication Bypass) - PTP specific"
preconditions:
  - GNSS+OCXO grandmaster (PROD-23)
  - All nodes boundary clocks, 24h holdover
attack_steps:
  1. Attacker spoofs GNSS (local, high power)
  2. Grandmaster receives spoofed time, steps >1 μs
  3. Boundary clocks propagate offset
  4. Resonance tracking fails (ZVS loss)
  5. Inverter overcurrent → SIF-04/05
detection:
  - PTP monitor: GM offset >1 μs from OCXO holdover
  - SIF-08: PTP sync loss → trip <50 ms
  - CPAT: PTP_offset>1μs + ZVS_loss + SIF_trip → Λ_CP >100
response:
  - SIF-08 trips all inverters OFF
  - Grandmaster isolates GNSS, switches to OCXO holdover
  - Auto-NCR + time forensics
success_criteria:
  - SIF-08 trip <50 ms from offset >1 μs
  - Grandmaster holdover engaged <1 s
  - No GaN damage
```

---

## Appendix D: HFE Validation Scenarios (PROD-35)

### D.1 Scenario Library (Simulator)

| Scenario | Source | Fidelity | Operators | RCT Tensor |
|----------|--------|----------|-----------|------------|
| HFE-01 Nominal Batch | PROD-39 Sec 7.2 | Full twin | 2 Forge + 1 Depot | RCT update |
| HFE-02 In-First | PROD-39 Sec 7.2 | Full twin | 2 Forge | RCT update |
| HFE-03 H₂ Verify | PROD-39 Sec 7.2 | Full twin | 2 Forge | RCT update |
| HFE-04 SIF Bypass | PROD-39 Sec 7.2 | Full twin | Shift Lead + Safety | RCT update |
| HFE-05 Carrington Exit | PROD-39 Sec 7.2 | Full twin + GIC | Shift Lead + Utility | RCT update |
| HFE-06 FBG Tamper | PROD-39 Sec 7.2 | Full twin + CPAT | Controls Eng | RCT update |
| HFE-07 E-Stop | PROD-39 Sec 7.2 | Full twin | All 4 | RCT update |
| HFE-08 Phoenix Classify | PROD-39 Sec 7.2 | Full twin + LIBS | 2 Depot | RCT update |

### D.2 Validation Metrics Collection

```json
{
  "scenario": "HFE-04",
  "operator_ids": ["OP-2026-042", "OP-2026-088"],
  "start_time": "2026-11-03T14:00:00Z",
  "end_time": "2026-11-03T14:15:00Z",
  "metrics": {
    "task_completion_time_sec": 420,
    "expert_baseline_sec": 380,
    "completion_ratio": 1.105,
    "errors_critical": 0,
    "errors_minor": 1,
    "sagat_score": 0.95,
    "nasa_tlx": 55,
    "alarm_count": 12,
    "hmi_response_times_ms": {"L2": 180, "L3": 120, "L4": 35}
  },
  "rct_update": {
    "operator_042": {"HFE-04": 0.92},
    "operator_088": {"HFE-04": 0.88}
  },
  "disposition": "PASS"
}
```

---

*End of PROD-39 Test & Evaluation Specification*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*
*Document Number: CSMFAB000000000139 | Revision: 1.0*