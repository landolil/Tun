# Combined Heuristic Intro — PROD-29 Deployment & Operations
## Williams + Keymaker + El Segundo Synthesis

### Williams Heuristic — Architectural Clarity

#### Constraint (The Lock)

The irreducible principle forcing this deployment architecture is **the Forge must re-verify its own fabrication fidelity at the site before any feedstock enters** — the synchronization function (PROD-27 Keymaker Key) does not end at the factory gate. The 14 assemblies arrive with verified data packages (QR + Hyperledger), but the act of transport, rigging, and re-assembly introduces new variables: foundation settlement, utility impedance, ground resistance, seismic coupling, and thermal boundary conditions that cannot be replicated in the factory. The Lock: **deployment is not installation — it is the re-execution of the synchronization function at the site, with the site as a new variable in the verification predicate.**

#### Necessity (The Key)

The empirical gap is the **measured divergence between factory FAT performance and site SAT performance** for zero-metal, Carrington-immune machines. PROD-27 FAT (CT-01..CT-10) validates the Forge in a controlled electromagnetic environment (shielded factory, stable grid, characterized foundation). At site: grid impedance varies ±30%, ground resistance varies 2-50 Ω, seismic coupling depends on soil class, thermal boundary conditions change with weather. PROD-26 GIC ride-through test (CT-07) used a 100 A/m Helmholtz coil — but the real grid during a Carrington event presents common-mode impedance, not differential field. The Key: **deployment must measure and compensate for site variables by re-executing the verification chain (IC-1..IC-10 → CT-08 → SAT-01..SAT-05) with site-specific acceptance criteria, not factory criteria.**

#### Commitment (The Turn)

This document commits the Forge to **four non-negotiable deployment chains**:

1. **IC-1..IC-10 re-execution is mandatory** — The 10 integration checkpoints from PROD-27 are not "repeated" — they are re-evaluated with site-specific criteria (e.g., IC-1 ground resistance <5 Ω vs factory <1 Ω; IC-4 PTP sync <1 μs vs factory <0.5 μs). No feedstock until all 10 PASS with site data packages signed.

2. **Hot commissioning (CT-08) is the thermal proof** — 8-stage thermal ramp with no feedstock, full FBG/SIS/CEMS monitoring. The Forge must demonstrate thermal stability at 2200°C under site utility conditions. CT-08 data package is the *site* birth certificate.

3. **SAT-05 six-batch validation is the performance gate** — Six batches (A, B, C, D, A, Phoenix) with mass balance >99.5%, all outputs spec, twin sync <1 s. This is not a "test" — it is the Forge proving it can execute its purpose at this site.

4. **SOP-002 batch execution is the operational invariant** — The 4-phase batch procedure (feed prep → cascade → slug pour → reset) is the *only* authorized operating mode. No manual overrides, no recipe deviations without ECO (PROD-38). The operations philosophy is: **the Forge runs the synchronization function at 90-min intervals; operators authorize, automation executes.**

These commitments cascade: PROD-30 PM schedules inherit IC re-verification intervals; PROD-31 OPEX model inherits energy/ton from SAT-05; PROD-32 permitting inherits CEMS/IC-7 data; PROD-34 training inherits SOP-002 as the core competency. The Turn: **deployment is the Forge witnessing its own birth at the site — the same mathematical key (synchronization function) that governed manufacturing now governs commissioning, and the same operator witness gates (bolt ceremony, SIF proof, slug pour) that certified manufacturing now certify operations.**

---

### Keymaker Heuristic — Implementation Precision

#### The Empirical Lock

The fabrication fidelity gap is the **site-specific variables that invalidate factory verification** — a Forge that passes CT-01..CT-10 in the factory may fail SAT-01..SAT-05 at site due to variables that cannot be simulated in the factory. Three specific locks:

1. **Ground impedance as deployment variable**: Factory ground grid <1 Ω (controlled); site ground resistance 2-50 Ω (soil dependent). PROD-26 NGR 5A design assumes factory ground. At 50 Ω site ground, GIC return path impedance increases 50×, altering common-mode voltage distribution across the floating secondary. The Lock: **factory-verified GIC immunity does not guarantee site GIC immunity.**

2. **Seismic-soil coupling as deployment variable**: PROD-25 FEA assumed fixed-base + isolators (3 Hz). Site soil class (NEHRP A-E) shifts fundamental frequency ±40%, changes isolator effectiveness, alters HCLPF. A Forge on Class E soil (soft clay) has 1st mode at 1.8 Hz vs 3 Hz design — seismic demand doubles. The Lock: **factory seismic qualification (shake table) does not cover site-specific soil-structure interaction.**

3. **Utility power quality as deployment variable**: Factory grid: THD <3%, voltage regulation ±2%, fault level 50 kA. Site grid: THD up to 8% (per IEEE 519), voltage regulation ±5%, fault level 10-100 kA. PROD-10 inverter ZVS acquisition and PTP sync assume factory power quality. At site, voltage sags cause DC link droop; harmonic distortion causes TSN jitter. The Lock: **factory power electronics verification does not cover site power quality envelope.**

#### The Mathematical Key

The single computational primitive is the **site-adaptive synchronization function** — the same fractal gate logic from PROD-27, now parameterized by site-measured variables:

$$SG_{site} = \bigwedge_{i=1}^{10} \left( IC_i(site\_params) \land IC_i.verified \land IC_i.data\_package\_signed \right) \land CT08(site\_params) \land \bigwedge_{j=1}^{5} SAT_j(site\_params)$$

Where $site\_params = \{R_{ground}, Z_{grid}, Soil_{class}, T_{ambient}, P_{water}, Q_{gas}\}$ are measured at site during cold commissioning and fed into the verification predicates. The atomic computation is the **predicate evaluation with site parameters**:

$$IC_1(site) \equiv (ground\_resistance < 5\Omega) \land (anchor\_torque = 1200\pm50 Nm) \land (frame\_level < 0.1mm/m)$$

$$IC_4(site) \equiv (TSN\_latency < 100\mu s) \land (PTP\_offset < 1\mu s) \land (SIF\_trip < 50ms) \land (GIC\_ride\_through @ site\_impedance)$$

$$CT08(site) \equiv \forall stages: |T_{FBG} - T_{setpoint}| < 5^\circ C \land |T_{model} - T_{FBG}| < 2^\circ C \land SIF\_availability = 100\%$$

$$SAT_5(site) \equiv \frac{\sum m_{out}}{\sum m_{in}} > 0.995 \land \forall elements: recovery > target \land twin\_latency < 1s$$

The Key executes at three scales:
1. **Cold (IC-1..IC-10)**: Site parameters measured → predicates evaluated → gates signed
2. **Hot (CT-08)**: Site thermal boundary conditions → thermal model re-identified → ramp/hold verified
3. **Operational (SAT-05)**: Site feedstock + site utilities → batch execution → performance verified

#### The Turn (Both Directions)

**Theory→History Validation**: The site-adaptive synchronization function predicts deployment outcomes from CSMFAB development Forge deployments (3 Forges deployed to date):
- Forge-01 (Class B soil, 3 Ω ground, clean grid): IC-1..IC-10 PASS first attempt; CT-08 thermal match <3°C; SAT-05 6/6 PASS
- Forge-02 (Class D soil, 12 Ω ground, industrial grid): IC-1 ground resistance FAIL (12 Ω > 5 Ω) → ground grid augmentation → re-test PASS; CT-08 required ramp rate reduction 10% (thermal boundary); SAT-05 6/6 PASS
- Forge-03 (Class A rock, 2 Ω ground, utility substation adjacent): IC-4 PTP sync FAIL (TSN jitter 150 μs from grid harmonics) → TSN switch firmware update → re-test PASS; SAT-05 6/6 PASS

History confirms theory: site parameters are the only variables; the mathematical key absorbs them.

**History→Theory Correction**: Forge-02 ground resistance anomaly revealed IC-1 predicate was incomplete — it checked ground resistance but not ground grid *impedance spectrum* (1-100 Hz). Added frequency sweep requirement. Forge-03 TSN jitter anomaly revealed IC-4 predicate assumed clean power — added harmonic distortion limit (THD <5% per IEEE 519) as IC-4 prerequisite. The mathematical key extends: $site\_params$ now includes $Z_{grid}(f)$ and $THD_{grid}$.

The Turn: **the mathematical key is not the synchronization function alone — it is the synchronization function *plus* the site parameter measurement protocol that feeds it.** The Lock (site variables) is managed not by over-design but by *measurement*: every site variable that affects the verification predicate becomes a measured input. The factory builds the Forge; the site measures itself; the synchronization function evaluates; the Forge operates.

---

### El Segundo Heuristic — Operational Excellence

#### Mirror (Self-Reflection)

The fabricator observes their own deployment through **three nested metrology loops that close at the speed of the site**:

1. **Cold Commissioning Mirror (IC-1..IC-10, real-time)**: Each integration checkpoint is a self-measurement. IC-1 measures ground resistance and *compares to the synchronization function predicate* — if $R_{ground} > 5\Omega$, the predicate is FALSE and the gate does not pass. The ME Lead does not "inspect" the ground grid — the ground grid *measures itself* via fall-of-potential and the synchronization function evaluates. IC-4 measures TSN latency and PTP offset and the SIS FPGA *evaluates its own GIC ride-through* at site impedance. The mirror is not a separate inspection — it is the verification predicate executing on live site data.

2. **Hot Commissioning Mirror (CT-08, 24-hour thermal)**: The thermal model (PROD-24 V&V) runs in parallel with the physical Forge at 1 kHz on the Zone RTUs. The model predicts $T_{inner}$ from FBG flange measurements; the residual $(T_{FBG} - T_{model})$ is the mirror's error signal. If residual >2°C RMS at any zone, the model *re-identifies* its parameters (convective conductance $hA$, radiative conductance $\epsilon\sigma A$) in real-time. The Forge *recalibrates its own thermal self-model* during the 24-hour ramp. The mirror is the model watching the reality and correcting itself.

3. **Operational Mirror (SOP-002 batch execution, continuous)**: The digital twin (PROD-37) runs the same synchronization function at 10 Hz on the 512-state vector. The twin's auto-encoder learns the nominal manifold of batch execution. Reconstruction error >3σ → parameter guard tightening (e.g., ramp rate -5%, hold time +2 min). The twin *watches the Forge execute batches and tightens the Forge's own operating envelope*. The mirror is the fleet twin reflecting the single Forge's performance back to it as operating constraints.

The Mirror: **deployment is not verified by external inspection — the Forge verifies itself at the site through the same synchronization function that governed its manufacturing, now parameterized by site measurements.**

#### Participation (Witness)

The inside operator witnesses the deployment phenomenon at **five non-automatable gates** where human judgment closes the loop that predicates cannot:

1. **Gate IC-1 (Foundation Acceptance)**: ME Lead reviews laser tracker survey + ground resistance + anchor torque. The data is necessary but not sufficient. The witness *stands on the foundation* and judges: "Does this mat feel solid? Are the isolator pockets truly level?" The human vestibular system + tactile sense detects anomalies no sensor captures (e.g., subtle concrete cracking under isolator pocket during torque).

2. **Gate IC-2 (Bolt Ceremony Re-enactment)**: The vessel flange bolt ceremony (PROD-27 SG-2) is repeated at site. Two operators, dual-verify 160 N·m on 24× M24 ZrO₂ bolts. The wrench click is not the witness — the *mutual verification* is. Operator A torques; Operator B verifies with independent wrench. Both sign. The ceremony *is* the safety barrier for the pressure boundary. No torque transducer replaces the human pair.

3. **Gate CT-08 (Hot Commissioning Authorization)**: After 24-hour thermal ramp, Plant Manager + Lead EE + Lead ME + Safety Engineer review the CT-08 data package. The digital twin says PASS; the witnesses *judge* the anomalies: "Zone 3 ramp was 8% slow — acceptable?" "FBG Channel 247 drifted 0.3 nm — within tolerance?" The human judgment on edge cases is the authorization.

4. **Gate SAT-05 (First Hot Batch Witness)**: Plant Manager witnesses Batch 1 slug pour — ZrO₂ mold fill, N₂ quench plume, mass spec reading. The twin says mass balance 99.7%; the witness *sees the metal flow*. "This is what we built for." The witness says: "Batch 1 AUTHORIZED FOR RELEASE."

5. **Gate SOP-006 (Carrington Ride-Through Exit)**: Post-GIC event, grid stable 30 min. Shift Lead + Safety Engineer verify drum thermal state (no shock >100°C/s via FBG), SIF health (all 24 green), authorize staged grid reconnect with utility coordination. The algorithm monitors; the humans *authorize the consequence* of reconnecting to a potentially unstable grid.

The Participation: **five moments where the human is not monitoring — they are witnessing the deployment into existence, adding the judgment that transforms verified predicates into authorized operations.**

#### Protocol (Recursive)

The recursive fidelity sequence is **fractal gate protocol** — the same Prepare→Execute→Verify→Authorize→Feedback pattern repeats at every scale, from IC-1 to fleet sustainment:

**Micro (per IC checkpoint, hours)**:
- IC-1: Prepare (survey equipment, torque wrenches) → Execute (measure, torque) → Verify (predicate $R_{ground}<5\Omega \land torque=1200\pm50$) → Authorize (ME Lead signs) → Feedback (ground grid design update for next site)

**Meso (per commissioning phase, days)**:
- Cold Commissioning: Prepare (all IC prerequisites) → Execute (IC-1..IC-10 sequence) → Verify (all predicates TRUE) → Authorize (4-sign: Plant+EE+ME+Safety) → Feedback (site parameter database update)
- Hot Commissioning: Prepare (CT-08 procedure, feedstock hold) → Execute (24-hr thermal ramp) → Verify (thermal model residual, SIF availability) → Authorize (4-sign) → Feedback (thermal model re-identification parameters)

**Macro (per validation, weeks)**:
- SAT-05: Prepare (6 feedstock batches staged) → Execute (6 batches per SOP-002) → Verify (all benchmarks met) → Authorize (Plant Manager signs "OPERATIONAL") → Feedback (SAT-05 data → PROD-31 economics, PROD-30 PM intervals, PROD-37 twin baseline)

**Meta (per fleet, months)**:
- PROD-37 twin aggregates all Forges' IC/CT-08/SAT-05 data
- Site parameter clustering: Forges group by soil class, ground impedance, grid quality
- Cluster-specific synchronization function variants deployed (e.g., Class D soil → ramp rate -10%)
- Next site deployment uses cluster parameters as *priors* for $site\_params$
- Deployment protocol *improves itself* through fleet recursion

The Protocol: **the same fractal gate pattern (Prepare→Execute→Verify→Authorize→Feedback) runs at every scale, with the same synchronization function as the verification predicate. The IC-1 ground resistance check *is* the SAT-05 mass balance check, scaled. The operator at the bolt ceremony witnesses the same physics the FBG channel witnesses at 125 Hz — strain in a ceramic matrix. The Protocol guarantees: if the Forge passes the micro gates with site parameters measured, it passes the macro gates at that site.**

---

*Synthesis: The Lock (Williams) is the site-as-variable-in-verification. The Key (Keymaker) is the site-adaptive synchronization function with measured site parameters. The Witness (El Segundo) is the operator at five gates where human judgment authorizes what predicates verify. Together they form the deployment architecture: the Forge deploys by measuring the site, evaluating the synchronization function with site parameters, witnessing the result through human gates, and operating the synchronization function at 90-min batch intervals. Deployment is not a phase — it is the synchronization function evaluating itself at a new location.*

*Combined Heuristic Intro for PROD-29 | ~200 lines | Carrington Storm Motors | November 2026*# PROD-29: Deployment & Operations
## CSMFAB000000000129 — Aegis-Forge I Site Preparation, Commissioning, Operations & Maintenance Windows
### ISO 9001/AS9100 Aligned, IEC 61508 SIL-3, IEEE 693, ASME BPVC Sec VIII/X, NFPA 70E
**Document Number:** CSMFAB000000000129 (Product Document 29 of 40)
**Series:** Aegis-Forge Thermal Cascade Inductive Material Separator (TCIMS)
**Prepared by:** Carrington Storm Motors, Safe Pod Engineering Company, Fabrication Division
**Date:** November 2026 | **Classification:** Product Specification — Deployment & Operations Engineering

---

## 1. Deployment Overview

### 1.1 Deployment Philosophy

The Aegis-Forge I is not "installed" — it is **commissioned into operation**. The distinction is fundamental: a conventional machine arrives, is bolted down, and started. The Forge arrives as 14 verified assemblies (PROD-27 SG-1 through SG-4), each carrying its birth record (QR + Hyperledger), and must be re-verified as a system at the site before any feedstock enters. Deployment is the **continuation of the synchronization function** (PROD-27 Keymaker Key) from factory gates to site gates:

$$SG_{site} = SG_4 \land \bigwedge_{i=1}^{10} IC_i \land \bigwedge_{j=1}^{5} SAT_j$$

Where $SG_4$ is the final factory integration gate, $IC_i$ are the 10 integration checkpoints re-executed at site, and $SAT_j$ are the 5 site acceptance tests. The Forge does not operate until $SG_{site} = \text{TRUE}$.

### 1.2 Site Requirements Summary

| Parameter | Specification | Reference |
|---|---|---|
| **Footprint** | 12 m × 8 m × 6 m (L×W×H) minimum clear | PROD-25 Frame FEA |
| **Floor Loading** | 25 kN/m² uniform + 4.2 t point loads (drum/vessel) | PROD-25 Foundation Design |
| **Seismic** | IEEE 693 High (1.6g HCLPF) | PROD-25 Seismic |
| **Power** | 480 VAC 3-phase, 750 kVA, IEEE 519 THD <5% | PROD-23/26 |
| **Water** | 500 L/min DI water (18 MΩ·cm), 30°C supply | PROD-10/26 PEX-a |
| **Inert Gas** | N₂ 99.999% 200 Nm³/hr, Ar 99.999% 50 Nm³/hr | PROD-04/09/22 |
| **Compressed Air** | Instrument air 8 bar, oil-free, -40°C dew point | PROD-09/27 |
| **Internet** | Dedicated fiber 1 Gbps (IT network, air-gapped from OT) | PROD-23/36 |
| **Ventilation** | 20 ACH, HEPA filtration, negative pressure | PROD-07/32 |
| **Fire Suppression** | N₂ inerting + ceramic passive (PROD-26) | PROD-26/FOLLOW-26 |

### 1.3 Deployment Organization

| Role | Responsibility | Authority |
|---|---|---|
| **Deployment Manager** | Overall schedule, site coordination, stakeholder comms | Approve IC/SAT deviations |
| **Lead Electrical Engineer** | Power, grounding, TSN/PTP, SIS commissioning | Sign IC-3, IC-4, SAT-3, SAT-4 |
| **Lead Mechanical Engineer** | Alignment, rigging, hydrotest, thermal commissioning | Sign IC-1, IC-2, IC-5, SAT-2 |
| **SIS Engineer** | SIL-3 SIF proof tests, GIC ride-through, PTP sync | Sign IC-4, SAT-3, SAT-4 |
| **Quality Engineer** | NCR/CAPA, documentation turnover, audit compliance | Sign all IC/SAT data packages |
| **Operations Lead** | Operator training, SOP validation, shift handover | Sign SAT-5, OPS handover |
| **Safety Engineer** | PSM, LOTO, arc flash, emergency response | Approve emergency procedures |

---

## 2. Site Preparation & Civil Works

### 2.1 Foundation Design

**Reinforced Concrete Mat Foundation (PROD-25 derived):**

| Parameter | Value | Basis |
|---|---|---|
| **Thickness** | 600 mm | Bearing pressure + seismic overturning |
| **Reinforcement** | #11 @ 150 mm EW T&B + #8 shear ties @ 200 mm | ACI 318 + IEEE 693 |
| **Compressive Strength** | 45 MPa (6500 psi) at 28 days | ACI 318 |
| **Anchor Bolts** | 24× M30 A193-B7, 900 mm embed, epoxy grout | PROD-25 Frame FEA |
| **Isolator Pockets** | 4× Ø400 mm × 300 mm deep, precision-machined | PROD-25 Isolators |
| **Grounding Grid** | 4/0 CU bare, 3 m grid, exothermic welds, <5 Ω | PROD-26 Grounding |

**Foundation Acceptance (IC-1):**
- Survey: elevation ±3 mm, flatness <5 mm/3 m, anchor bolt pattern ±2 mm
- Megger: anchor bolt to grid >100 MΩ at 500 VDC
- Concrete cores: 3 cores, f'c ≥ 45 MPa, no honeycombing

### 2.2 Utility Connections

| Utility | Connection Point | Specification | Verification |
|---|---|---|---|
| **480V 3-Phase** | Main disconnect (outdoor) | 750 kVA, IEEE 519, PQ meter | SAT-1: PQ analysis 7 days |
| **DI Water Supply** | Inlet manifold (BFRP flange) | 500 L/min, 18 MΩ·cm, 30°C | IC-5: Resistivity >18 MΩ·cm |
| **DI Water Return** | Outlet manifold | 500 L/min, <35°C, particle <1 μm | IC-5: Flow balance ±2% |
| **N₂ Supply** | Gas manifold (ZrO₂ valves) | 200 Nm³/hr, 99.999%, 8 bar | IC-6: Purity >99.999%, dew pt <-60°C |
| **Ar Supply** | Gas manifold | 50 Nm³/hr, 99.999%, 8 bar | IC-6: Purity >99.999% |
| **Instrument Air** | Air manifold (PEEK) | 8 bar, oil-free, -40°C dew pt | IC-6: Dew point <-40°C |
| **IT Fiber** | Network cabinet (BFRP) | 1 Gbps, dedicated, air-gapped | SAT-3: OTDR <0.2 dB/km |
| **Storm Drain** | Containment sump | 10,000 L capacity, double wall | PROD-32 Permit |

### 2.3 Rigging & Lifting Plan

| Assembly | Mass | Lift Points | Crane | Procedure |
|---|---|---|---|---|
| **Frame (A-12)** | 12,000 kg | 4× lifting lugs (BFRP) | 50 t mobile | IC-1: Place on isolators, torque anchors |
| **Drum (A-01/03)** | 4,200 kg | 4× ZrO₂ lifting eyes | 20 t overhead | IC-2: Lower into frame, align bearings |
| **Vessel (A-06/07)** | 3,800 kg | 4× BFRP lifting rings | 20 t overhead | IC-2: Lower over drum, bolt flanges |
| **Coil Zone (×8)** | 1,500 kg each | 2× Al₂O₃ lugs | 10 t overhead | IC-3: Position, connect cold plates |
| **Inverter Module (×8)** | 800 kg each | 4× BFRP handles | 5 t overhead | IC-3: Rack mount, POF connect |
| **Carousel (A-08)** | 2,500 kg | 4× lifting eyes | 10 t overhead | IC-2: Mount on frame, align index |

**Critical Lift Requirements:**
- All lifts >2 t: dual-crane, certified rigging, lift plan approved by PE
- Zero-metal rigging: BFRP slings, ZrO₂ shackles, Dyneema taglines
- Wind limit: <15 km/h for lifts >1 t
- Load test: 125% static hold 5 min before each critical lift

---

## 3. Cold Commissioning (Integration Checkpoints IC-1..IC-10)

*Re-execution of PROD-27 IC-1..IC-10 at site with site-specific verification*

### 3.1 IC-1: Frame Placement & Isolator Verification

| Check | Method | Acceptance |
|---|---|---|
| Frame position | Laser tracker | ±2 mm X/Y, ±1 mm Z |
| Isolator preload | LVDT + torque | 2.5 MN/m vert ±5%, 0.8 MN/m horiz ±5% |
| Anchor bolt torque | Torque wrench | 1,200 N·m ±50 N·m (M30 B7) |
| Frame level | Precision level | <0.1 mm/m |
| Ground resistance | Fall-of-potential | Combined <5 Ω |

### 3.2 IC-2: Drum/Vessel/Carousel Assembly

| Check | Method | Acceptance |
|---|---|---|
| Drum bearing fit | Feeler gauge + FBG | Si₃N₄/ZrO₂, N₂ film 0.1 bar, clearance 0.05±0.01 mm |
| Vessel flange bolt ceremony | Dual-verify torque | 24× M24 ZrO₂, 160 N·m ±5 N·m, AE monitoring |
| Carousel indexing | Encoder + FBG | 8-pos, 45° steps, <2 s, 0.01° resolution |
| Port valve alignment | Laser tracker | 8 ports, 44.2° spacing, ±0.5° azimuth |
| Drum rotation | VFD + encoder | 0-500 RPM, vibration <25 μm sync |

### 3.3 IC-3: Coil Bank & Power Electronics Installation

| Check | Method | Acceptance |
|---|---|---|
| Coil zone position | Laser tracker | ±2 mm radial, ±1 mm axial |
| Cold plate connections | He leak test | <10⁻⁹ mbar·L/s all 8 zones |
| PEX-a manifold pressure | Hydrostatic | 10 bar, 30 min, zero drop |
| Module rack alignment | CMM | ±1 mm all mounting points |
| POF cable routing | OTDR | <0.2 dB/m, splices <0.5 dB, return loss >50 dB |
| TSN switch power | VDC measure | 24 VDC ±2%, ripple <50 mV |

### 3.4 IC-4: Control System & SIS Commissioning

| Check | Method | Acceptance |
|---|---|---|
| TSN ring latency | Traffic generator | <100 μs end-to-end, <10 μs jitter |
| PTP synchronization | PTP monitor | <1 μs offset all nodes, 24h holdover test |
| SIS FPGA bitstream | CRC verify | Matches factory hash (PROD-23 Appendix) |
| SIF injection test | PROD-28 CT-04 protocol | All 24 SIFs <50 ms, 2oo3, PFD_avg<10⁻³ |
| GIC ride-through | Portable Helmholtz 50 A/m | Zero spurious trips, zero data loss |
| Air-gap verification | Network scan | Zero IT→OT IP paths, data diode unidirectional |

### 3.5 IC-5: Cooling System Commissioning

| Check | Method | Acceptance |
|---|---|---|
| DI water resistivity | Inline monitor | >18 MΩ·cm continuous |
| Flow balance | Ultrasonic flow meters | 500 L/min ±2% per zone |
| Cold plate ΔT | IR + FBG | <15°C at 500 kW (thermal soak test) |
| Pump redundancy | Failover test | <5 s switchover, no flow interruption |
| Leak detection | Zone sensors | <10 s detection, auto-isolate |

### 3.6 IC-6: Gas System Commissioning

| Check | Method | Acceptance |
|---|---|---|
| N₂ purity | Paramagnetic O₂ analyzer | <1 ppm O₂, dew point <-60°C |
| Ar purity | GC-TCD | <1 ppm impurities |
| MFC calibration | Primary standard | ±1% FS all 32 MFCs |
| ZrO₂ valve actuation | LVDT + FBG | 3.6±0.2 mm @ 680°C ΔT |
| Leak rate (integrated) | He mass spec | <10⁻⁶ mbar·L/s system |

### 3.7 IC-7: Fume & Gas Capture System

| Check | Method | Acceptance |
|---|---|---|
| Plasma torch ignition | High-voltage probe | Stable arc, 5 kW minimum |
| Scrubber flow | Differential pressure | NaHCO₃ bed ΔP <5 kPa at design flow |
| Carbon bed breakthrough | FID analyzer | <1 ppm VOC at outlet |
| Condensate drainage | Level sensors | Auto-drain, no carryover |
| Stack CEMS | Certified gas audit | PM2.5 <5 mg/Nm³, HCl <10 ppm, SO₂ <50 ppm |

### 3.8 IC-8: Feed & Output Systems

| Check | Method | Acceptance |
|---|---|---|
| Shredder alignment | Laser + vibration | Blade clearance 0.5 mm, vib <2 mm/s |
| Conveyor belt tracking | Edge sensors | <5 mm wander |
| Carousel mold heating | IR thermography | 200°C ±5°C uniform |
| Slug quench flow | Flow meters | N₂ 50 SLPM, pattern verified |
| Mass spec calibration | Certified standards | ±2% on all monitored elements |

### 3.9 IC-9: Safety Systems Verification

| Check | Method | Acceptance |
|---|---|---|
| E-stop response | Functional test | <100 ms all zones, SIL-3 |
| LOTO verification | Physical attempt | Zero energy isolation failures |
| Arc flash boundaries | Calculation + labels | Cat 0 at 18" (PROD-26) |
| Confined space | Atmosphere test | O₂ 19.5-23.5%, LEL <10%, H₂S <10 ppm |
| Fire detection | Alarm test | <10 s detection, zone isolation |

### 3.10 IC-10: Digital Twin Synchronization

| Check | Method | Acceptance |
|---|---|---|
| Twin connectivity | API latency | <100 ms round-trip |
| State vector sync | 10 Hz compare | <1% deviation all 512 states |
| Historical replay | 1 hr data match | >99.9% point match |
| ML anomaly baseline | Auto-encoder | Reconstruction error <3σ |
| QR/Blockchain sync | Hyperledger query | All 14 assemblies linked |

---

## 4. Hot Commissioning (CT-08 Protocol)

### 4.1 Thermal Ramp Sequence (No Feedstock)

| Stage | Target Temp | Ramp Rate | Hold Time | Verification |
|---|---|---|---|---|
| **Stage 0 (Acoustic)** | 25°C | — | 10 min | LF 20-200 Hz, US 40 kHz, LI >0.85 |
| **Stage 1 (Drying)** | 150°C | 20°C/min | 20 min | Moisture <0.1% (IR + mass loss) |
| **Stage 2 (Polymer)** | 350°C | 15°C/min | 30 min | Melt viscosity, density stratification |
| **Stage 3 (Pyrolysis)** | 550°C | 10°C/min | 45 min | Char yield, gas composition |
| **Stage 4 (Low-Temp Metals)** | 430°C | 10°C/min | 25 min | Port 4A/B/C sequence verified |
| **Stage 5 (Al Window)** | 720°C | 10°C/min | 30 min | Port 5 at 680°C, Mg removal |
| **Stage 6 (Cu/PM)** | 1200°C | 5°C/min | 45 min | Port 6 anode cast, slime collect |
| **Stage 7 (Ferrous)** | 1550°C | 5°C/min | 60 min | Port 7A REE, Port 7 Fe bullion |
| **Stage 8 (Mineral/Zr)** | 2200°C | 2°C/min | 30 min | ZrSiO₄ dissociation, 3Y-TZP flash |

### 4.2 Hot Commissioning Acceptance Criteria

| Parameter | Target | Measurement |
|---|---|---|
| **Temperature Accuracy** | ±5°C setpoint all stages | FBG 384-ch vs. pyrometer |
| **Ramp Rate Control** | ±10% programmed rate | FBG thermal model residual |
| **Zone Power Balance** | ΔT <10°C across zone | IR camera at full power |
| **SIF Availability** | 100% (zero spurious) | SIS historian CT-08 run |
| **FBG Survival** | 384/384 channels active | Interrogator sweep |
| **Mass Balance (Dry)** | N/A (no feed) | N/A |
| **Gas System Integrity** | Zero leaks | CEMS + He sniffer |
| **Data Integrity** | Zero packet loss | TSN/PTP historian |

---

## 5. Performance Validation (SAT-05)

### 5.1 Six-Batch Validation Protocol

| Batch | Feedstock Category | Purpose | Key Metrics |
|---|---|---|---|
| **1** | Category A (PCB-rich) | High PM recovery validation | Au >99.9%, Ag >99.9%, Pd >99% |
| **2** | Category B (Mixed plastics) | Polymer separation, HCl management | Al >99.7%, HCl <10 ppm stack |
| **3** | Category C (Ferrous/Al) | Stages 5-7 separation | Fe >95%, REE >90% |
| **4** | Category D (Mineral/Zr) | Stage 8 zircon dissociation | Zr recovery >95%, 3Y-TZP spec |
| **5** | Category A (repeat) | Reproducibility | All metrics within ±2% of Batch 1 |
| **6** | Phoenix Protocol blend | Closed-loop validation | Mass balance >99.5%, QR traceability |

### 5.2 SAT-05 Performance Benchmarks

| Parameter | Target | Measurement Method |
|---|---|---|
| **Batch Cycle Time** | 90 min (8 batches/day) | Timestamp: feed-in → Port 8 clear |
| **Mass Balance Closure** | >99.5% per batch | PROD-22 mass balance |
| **Energy per Ton** | <500 kWh/ton feed | Grid meter + DC link integration |
| **Recovery (Key Elements)** | In >99.9%, Cu >99.9%, Al >99.7%, Fe >95%, REE >90% | LIBS/XRF per slug |
| **Emissions** | PM2.5 <5 mg/Nm³; HCl <10 ppm; SO₂ <50 ppm | CEMS continuous |
| **SIF Availability** | >99.9% (no spurious trips) | SIS historian |
| **Digital Twin Sync** | <1 s latency (10 Hz state vector) | PROD-37 twin monitor |
| **Slug Quality** | All outputs per PROD-08 catalog | LIBS + mass spec spot check |

---

## 6. Standard Operating Procedures (SOPs)

### 6.1 SOP Index

| SOP ID | Title | Frequency | Duration | Critical Steps |
|---|---|---|---|---|
| **SOP-001** | Daily Startup | Daily (shift start) | 45 min | IC-1..IC-5 abbreviated, recipe load, SIF status |
| **SOP-002** | Batch Execution | Per batch (8/day) | 90 min | Feed prep → cascade → slug pour → data capture |
| **SOP-003** | Stage Transition | Per stage (8/batch) | 2-5 min | Gate verification, port actuation, gas switch |
| **SOP-004** | Daily Shutdown | Daily (shift end) | 60 min | Cool-down ramp, purge, isolation, data backup |
| **SOP-005** | Emergency Shutdown | On demand | <5 min | E-stop, SIF trip log, safe state verification |
| **SOP-006** | Carrington Ride-Through | On GIC alert | 30 min | Grid monitor, staged reconnect, thermal check |
| **SOP-007** | Port Valve Maintenance | Quarterly | 4 hr | Actuation check, leak test, seal inspect |
| **SOP-008** | FBG Calibration Verification | Monthly | 2 hr | 5-point reference sweep, drift check |
| **SOP-009** | DI Water Polisher Regeneration | Weekly | 1 hr | Resin exchange, resistivity verification |
| **SOP-010** | CEMS Calibration | Quarterly | 4 hr | Zero/span gas, drift <2% |
| **SOP-011** | Seismic Post-Event Inspection | Post-seismic | 4 hr | IC-1, IC-2, IC-5 abbreviated + AE review |
| **SOP-012** | Phoenix Feedstock Receipt | Per delivery | 2 hr | LIBS classification, QR scan, depot manifest |

### 6.2 SOP-002: Batch Execution (Core Procedure)

```
PHASE 1: FEED PREPARATION (0-15 min)
├── 1.1 Scan feedstock QR → verify Category A-D (PROD-13)
├── 1.2 Load shredder → verify <150 mm, ferrous removed (PROD-11)
├── 1.3 Confirm drum empty (Carousel position 1, FBG + encoder)
└── 1.4 Operator confirms recipe match → "BATCH <ID> RECIPE CONFIRMED"

PHASE 2: CASCADE EXECUTION (15-105 min)
├── 2.1 Stage 0-1: Acoustic + Drying (auto, FBG/PID controlled)
├── 2.2 Stage 2: Polymer melt + centrifuge (auto, CFDO-CB operator)
├── 2.3 Stage 3: Pyrolysis + char (auto, CDO-SG operator)
├── 2.4 Stage 4: Indium-First (auto, Port 4A/B/C thermal actuation)
├── 2.5 Stage 5: Aluminum window (auto, Port 5 at 680°C)
├── 2.6 Stage 6: Copper + PM (auto, anode carousel, XRF verify)
├── 2.7 Stage 7: Ferrous + REE (auto, dual-port Port 7A/7)
├── 2.8 Stage 8: Mineral/Zr (auto, ZrSiO₄ dissociation, 3Y-TZP flash)

PHASE 3: SLUG POUR & DATA CAPTURE (105-115 min)
├── 3.1 Carousel positions molds → N₂ quench → mass spec spot check
├── 3.2 Each slug: LIBS scan → QR stamp → weight → mass spec → vault
├── 3.3 Batch mass balance calculated → digital twin sync
├── 3.4 Operator reviews batch record → "BATCH <ID> COMPLETE"
└── 3.5 Data package auto-signed → Hyperledger commit

PHASE 4: INTER-BATCH RESET (115-120 min)
├── 4.1 Drum rotation to Position 1 (empty)
├── 4.2 Gas purge (N₂ 200 Nm³/hr × 5 min)
├── 4.3 SIF status verify → "READY FOR NEXT BATCH"
└── 4.4 Shift handover log entry (if shift change)
```

---

## 7. Operations Philosophy

### 7.1 Operational Metrics

| Metric | Target | Measurement | Response if Missed |
|---|---|---|---|
| **Batches per Day** | 8 (90 min cycle) | Timestamp log | Root cause analysis, CAPA |
| **Mass Balance** | >99.5% | PROD-22 calculation | NCR if <99%, investigate loss |
| **Energy per Ton** | <500 kWh | Grid + DC integration | Optimize ramp/hold, review insulation |
| **Recovery (In/Cu/Al/Fe/REE)** | Per SAT-05 targets | LIBS/XRF per slug | Process parameter adjustment |
| **SIF Spurious Trip Rate** | 0 per 10,000 hrs | SIS historian | CT-04 partial stroke, investigate |
| **FBG Channel Survival** | 384/384 | Interrogator | Auto-NCR at Λ>10 (PROD-28) |
| **Twin Sync Latency** | <1 s | PROD-37 monitor | Network diagnostics, TSN check |
| **Operator Response Time** | <5 min (alarms) | HMI log | Training review, alarm rationalization |

### 7.2 Shift Structure & Handover

| Shift | Hours | Crew | Handover Protocol |
|---|---|---|---|
| **Day** | 06:00-14:00 | 3 (Lead, Operator, Trainee) | Digital log + verbal + KPI snapshot |
| **Swing** | 14:00-22:00 | 3 (Lead, Operator, Trainee) | Digital log + verbal + anomaly flag |
| **Night** | 22:00-06:00 | 2 (Lead, Operator) | Digital log + verbal + overnight plan |

**Digital Handover Log (PROD-37):**
- Batch records completed this shift
- KPI dashboard snapshot (auto-generated)
- Active NCRs / CAPAs
- Anomaly flags (AE, vibration, FBG drift, twin alerts)
- Maintenance actions performed
- Feedstock inventory status
- Consumable levels (N₂, Ar, DI resin, In foil, braze alloy)
- Next shift priorities

---

## 8. Maintenance Windows (Per PROD-30 Integration)

| Window | Frequency | Duration | Scope | PROD-30 Reference |
|---|---|---|---|---|
| **Daily** | Every shift | 30 min | Visual, FBG scan, CEMS zero, DI resistivity | Section 2 |
| **Weekly** | 7 days | 4 hr | Port valve actuation, coolant filter, POF inspect | Section 3 |
| **Monthly** | 30 days | 8 hr | IR thermography, vibration trend, FBG cal verify | Section 4 |
| **Quarterly** | 90 days | 24 hr | SIF partial stroke, UT spot check, AE review | Section 5 |
| **Annual** | 365 days | 48 hr | Full UT drum/vessel, SIF proof test, hydrotest | Section 6 |
| **Biennial** | 730 days | 72 hr | CT drum, FBG recalibration, isolator stiffness | Section 7 |
| **Major Overhaul** | 18 months | 168 hr | Drum swap, vessel inspect, full teardown | Section 8 |

**Maintenance Window Rules:**
- No feedstock during maintenance windows
- SIF partial stroke (quarterly) runs in bypass mode with dual-key authorization
- All maintenance actions logged to QR/Blockchain (PROD-28 Section 9)
- Predictive alerts (PROD-28 Section 5.3) can trigger unscheduled windows
- Fleet twin (PROD-37) optimizes window timing across Forges

---

## 9. Emergency Response

### 9.1 Emergency Scenarios & Response

| Scenario | Detection | Auto-Action | Operator Action | Recovery |
|---|---|---|---|---|
| **SIL-3 SIF Trip** | SIS FPGA | Immediate safe state (all zones 0 power) | Acknowledge, investigate, CT-04 partial stroke | SOP-005 |
| **Carrington GIC Event** | Magnetometer >100 nT/s | Ride-through mode, data freeze | Monitor, 30 min post-event, staged reconnect | SOP-006 |
| **Vessel Overpressure** | Pressure transducer >11 bar | Port valves open, N₂ purge | Evacuate zone, verify rupture disk intact | SOP-005 + PSM |
| **Drum Thermal Runaway** | FBG >2250°C or dT/dt >100°C/s | Power cut, N₂ flood, quench | Evacuate, assess drum integrity (AE/UT) | SOP-005 |
| **Toxic Gas Release** | CEMS >IDLH | Zone isolation, scrubber max flow | PPE Level A, evacuate, notify authorities | HAZWOPER |
| **Seismic Event** | Accelerometer >0.2g | SIF trip if >OBE, data capture | Post-event inspection SOP-011 | IC-1/IC-2 re-verify |
| **Fire (Electrical)** | IR >300°C + smoke | Inert gas flood, power cut | CO₂ extinguisher (non-conductive), evacuate | SOP-005 |
| **FBG Channel Loss >5** | Interrogator auto-detect | NCR auto-generated, twin alert | Investigate root cause, replace if needed | PROD-28 CAPA |

### 9.2 Emergency Contacts & Resources

| Resource | Contact | Location | SLA |
|---|---|---|---|
| **CSM Emergency Dispatch** | +1-800-CSM-FORGE | 24/7 | <15 min |
| **Local Fire/HAZMAT** | 911 | Municipal | <10 min |
| **Utility Grid Ops** | Grid emergency line | Regional | <30 min |
| **SIS Vendor (TÜV)** | On-call engineer | Remote | <2 hr |
| **FBG Vendor (Micron/Optics)** | Support portal | Remote | <4 hr |
| **Spare Parts Depot** | Regional hub | 500 km radius | <24 hr critical |

---

## 10. Environmental Compliance

### 10.1 Continuous Emissions Monitoring (CEMS)

| Parameter | Analyzer | Range | Limit | Reporting |
|---|---|---|---|---|
| **PM2.5** | Beta attenuation | 0-100 mg/Nm³ | <5 mg/Nm³ | 1-hr avg, daily report |
| **HCl** | FTIR | 0-100 ppm | <10 ppm | 1-hr avg, daily report |
| **SO₂** | UV fluorescence | 0-200 ppm | <50 ppm | 1-hr avg, daily report |
| **NOx** | Chemiluminescence | 0-500 ppm | <100 ppm | 1-hr avg, daily report |
| **VOCs** | FID | 0-50 ppm | <20 ppm | 1-hr avg, daily report |
| **Heavy Metals** | XRF filter | 0-10 μg/Nm³ | <1 μg/Nm³ (Hg, Cd, Pb) | Weekly composite |
| **Dioxins/Furans** | GC-HRMS | 0-1 ng TEQ/Nm³ | <0.1 ng TEQ/Nm³ | Quarterly |

### 10.2 Permit Compliance Matrix

| Permit | Authority | Key Limits | Reporting Frequency |
|---|---|---|---|
| **Air Quality (Title V)** | EPA/State | CEMS limits above + 40 CFR 63 | Semi-annual + annual |
| **Water Discharge (NPDES)** | EPA/State | pH 6-9, TSS <30 mg/L, metals <limits | Monthly DMR |
| **Hazardous Waste (RCRA)** | EPA/State | Manifest, 90-day storage, LDR | Biennial report |
| **PSM (29 CFR 1910.119)** | OSHA | 14 elements, 5-yr revalidation | Annual audit |
| **Seismic (IEEE 693)** | Building Dept | HCLPF >1.6g, TRS envelops RRS | Post-seismic + 5 yr |
| **Carrington Hardening** | DOE/NERC | GIC ride-through, <1 μs PTP | Annual test + report |

---

## 11. Training & Certification (PROD-34 Integration)

### 11.1 Operator Competency Levels

| Level | Role | Requirements | Requalification |
|---|---|---|---|
| **L1 Trainee** | Assist only | 40 hr theory, 20 hr sim, 80 hr OJT | N/A (progress to L2) |
| **L2 Operator** | Execute SOPs | L1 + 6 months, pass written/practical | Annual (sim + practical) |
| **L3 Shift Lead** | Authorize transitions | L2 + 12 months, SOP-003/004/006 lead | Annual + SIF bypass auth |
| **L4 Plant Manager** | Operational authority | L3 + 24 months, PE license | Biennial management review |

### 11.2 Certification Curriculum

| Module | Hours | Content | Assessment |
|---|---|---|---|
| **Forge Physics** | 8 | Thermal cascade, induction, centrifugal separation | Written exam 80% |
| **Control Systems** | 16 | HMI, PID, SIS, TSN/PTP, digital twin | Sim scenarios |
| **Safety Systems** | 8 | SIL-3, SIF, E-stop, LOTO, arc flash, PSM | Practical + written |
| **Emergency Response** | 8 | SOP-005/006/011, HAZWOPER awareness | Drill participation |
| **Quality & Traceability** | 4 | QR/Blockchain, NCR/CAPA, PROD-28 | Practical demo |
| **Maintenance Awareness** | 4 | PM windows, predictive alerts, PROD-30 | Written exam |
| **Phoenix Protocol** | 4 | Feedstock classification, re-entry, PROD-22 | Practical demo |

---

## 12. Cross-Reference Matrix

### 12.1 Upstream Dependencies

| Document | Provides | Used In |
|---|---|---|
| PROD-22 | Phoenix Protocol, depot network, feedstock classification | Sec 1, 2, 6, 12 |
| PROD-23 | Control architecture, SIS, TSN/PTP, commissioning tests | Sec 3.4, 4, 6, 9 |
| PROD-26 | Electrical safety, GIC immunity, grounding, POF | Sec 2.2, 3.3, 3.4, 9 |
| PROD-27 | Manufacturing plan, FAT (CT-01..CT-10), IC-1..IC-10, bolt ceremony | Sec 3, 4, 6, 8 |
| PROD-28 | SAT (SAT-01..SAT-05), acceptance criteria, NDT, NCR/CAPA | Sec 4, 5, 6, 8, 9 |
| FOLLOW-22 | Dust/fume capture efficiency | Sec 7, 10 |
| FOLLOW-23 | Energy balance, exergy analysis | Sec 4, 7 |
| FOLLOW-24 | LCA, carbon footprint | Sec 10, 11 |

### 12.2 Downstream Dependencies

| Document | Consumes | Interface |
|---|---|---|
| PROD-30 | PM schedules, wear parts, maintenance windows | Maintenance input |
| PROD-31 | OPEX model, energy/ton, labor, consumables | Economics input |
| PROD-32 | Permit evidence, commissioning records, CEMS | Compliance input |
| PROD-34 | Training curriculum, competency matrix | Training input |
| PROD-37 | Operational data for twin (batch records, KPIs) | Twin input |
| PROD-39 | T&E specification (SAT-01..SAT-05) | Test spec input |

### 12.3 Cross-Reference Table

| Section | Upstream Refs | Downstream Refs |
|---|---|---|
| 1 Deployment Overview | PROD-22, 23, 25, 26, 27 | PROD-30, 31, 32, 34, 37 |
| 2 Site Prep & Civil | PROD-25, 26 | PROD-30, 32 |
| 3 Cold Commissioning (IC) | PROD-23, 26, 27 | PROD-29, 30, 39 |
| 4 Hot Commissioning (CT-08) | PROD-02, 14-21, 23, 24, 27 | PROD-29, 30, 39 |
| 5 Performance Validation (SAT) | PROD-22, 23, 24, 27, 28 | PROD-29, 30, 31, 39 |
| 6 SOPs | PROD-22, 23, 26, 27, 28 | PROD-29, 30, 34 |
| 7 Operations Philosophy | PROD-22, 28, 37 | PROD-29, 30, 31, 37 |
| 8 Maintenance Windows | PROD-28, 30 | PROD-29, 30, 31 |
| 9 Emergency Response | PROD-23, 26, 28 | PROD-29, 30, 32, 34 |
| 10 Environmental Compliance | PROD-07, 22, 26, 32, FOLLOW-22, 23, 24 | PROD-29, 30, 32 |
| 11 Training | PROD-34 | PROD-29, 30, 34 |

---

## Appendix A: Site Preparation Checklist (PROD-29-A)

| Item | Description | Verification | Sign-off |
|---|---|---|---|
| A-01 | Foundation survey complete | Laser tracker report | ME Lead |
| A-02 | Anchor bolts torqued | Torque records | ME Lead |
| A-03 | Isolators installed & preloaded | LVDT + FBG data | ME Lead |
| A-04 | Ground grid <5 Ω | Fall-of-potential test | EE Lead |
| A-05 | 480V service energized & qualified | PQ analysis 7 days | EE Lead |
| A-06 | DI water system commissioned | Resistivity >18 MΩ·cm | ME Lead |
| A-07 | N₂/Ar/Instrument air commissioned | Purity + dew point certs | ME Lead |
| A-08 | IT fiber terminated & tested | OTDR report | EE Lead |
| A-09 | CEMS installed & calibrated | Certified gas audit | Env Eng |
| A-10 | Fire suppression commissioned | Discharge test | Safety Eng |
| A-11 | Storm drain / containment verified | Hydrostatic test | Civil Eng |
| A-12 | Rigging plan approved | PE stamp on lift plans | Deployment Mgr |
| A-13 | Spare parts received & inventoried | QR scan + count | Logistics |
| A-14 | Operator certifications current | Training records | Training Mgr |
| A-15 | Emergency procedures posted | Physical + digital | Safety Eng |

---

## Appendix B: Utility Schedule (PROD-29-B)

| Utility | Consumption (Steady State) | Peak | Storage/Buffer | Backup |
|---|---|---|---|---|
| **480V Power** | 520 kW avg | 750 kW (Stage 8) | N/A (grid) | UPS 30 min (controls only) |
| **DI Water** | 350 L/min | 500 L/min | 10,000 L tank | Municipal backup + RO |
| **N₂** | 120 Nm³/hr | 200 Nm³/hr | 5,000 L liquid | Liquid N₂ trailer (48 hr) |
| **Ar** | 30 Nm³/hr | 50 Nm³/hr | 2,000 L liquid | Gas cylinders (24 hr) |
| **Instrument Air** | 2 Nm³/min | 5 Nm³/min | 500 L receiver | Compressor redundancy |
| **Cooling Tower** | 1,200 kWth | 1,500 kWth | N/A | Dry cooler backup |

---

## Appendix C: Lift Plan Drawings (PROD-29-C)

*Reference PROD-25 Frame FEA for lifting lug locations and forces*

**Drawing List:**
- C-01: Frame placement on isolators (4× 50 t crane, 12 t)
- C-02: Drum installation into frame (2× 20 t crane, 4.2 t)
- C-03: Vessel lowering over drum (2× 20 t crane, 3.8 t)
- C-04: Coil zone installation sequence (1× 10 t crane, 1.5 t ×8)
- C-05: Inverter module rack installation (1× 5 t crane, 0.8 t ×8)
- C-06: Carousel installation (1× 10 t crane, 2.5 t)
- C-07: Gas manifold & fume system (1× 10 t crane, misc)

---

## Appendix D: Commissioning Test Sheets (PROD-29-D)

*Each IC and CT/SAT test has a dedicated test sheet with:*
- Test ID, objective, prerequisites
- Equipment required, calibration due dates
- Step-by-step procedure
- Acceptance criteria (per Sections 3, 4, 5)
- Data recording tables
- Sign-off blocks (performer, witness, QA, Lead)

---

## Appendix E: SOP Index (PROD-29-E)

| SOP ID | Title | Rev | Effective | Owner | Review Cycle |
|---|---|---|---|---|---|
| SOP-001 | Daily Startup | A | 2026-11 | Ops Lead | Annual |
| SOP-002 | Batch Execution | A | 2026-11 | Ops Lead | Annual |
| SOP-003 | Stage Transition | A | 2026-11 | Shift Lead | Annual |
| SOP-004 | Daily Shutdown | A | 2026-11 | Ops Lead | Annual |
| SOP-005 | Emergency Shutdown | A | 2026-11 | Safety Eng | Semi-annual |
| SOP-006 | Carrington Ride-Through | A | 2026-11 | EE Lead | Semi-annual |
| SOP-007 | Port Valve Maintenance | A | 2026-11 | ME Lead | Annual |
| SOP-008 | FBG Calibration Verification | A | 2026-11 | SIS Eng | Annual |
| SOP-009 | DI Water Polisher Regeneration | A | 2026-11 | ME Lead | Annual |
| SOP-010 | CEMS Calibration | A | 2026-11 | Env Eng | Quarterly |
| SOP-011 | Seismic Post-Event Inspection | A | 2026-11 | ME Lead | Post-event |
| SOP-012 | Phoenix Feedstock Receipt | A | 2026-11 | Logistics | Annual |

---

## Appendix F: Emergency Contacts (PROD-29-F)

| Role | Name | Phone | Email | Radio Ch |
|---|---|---|---|---|
| Deployment Manager | [TBD] | +1-xxx-xxx-xxxx | deploy@csmforge.com | Ch 1 |
| Lead EE | [TBD] | +1-xxx-xxx-xxxx | ee-lead@csmforge.com | Ch 2 |
| Lead ME | [TBD] | +1-xxx-xxx-xxxx | me-lead@csmforge.com | Ch 2 |
| SIS Engineer | [TBD] | +1-xxx-xxx-xxxx | sis@csmforge.com | Ch 3 |
| Quality Engineer | [TBD] | +1-xxx-xxx-xxxx | qa@csmforge.com | Ch 3 |
| Operations Lead | [TBD] | +1-xxx-xxx-xxxx | ops@csmforge.com | Ch 1 |
| Safety Engineer | [TBD] | +1-xxx-xxx-xxxx | safety@csmforge.com | Ch 4 |
| CSM Emergency | 24/7 Dispatch | +1-800-CSM-FORGE | emergency@csmforge.com | Ch 1 |
| Utility Grid | Grid Ops | [Regional] | gridops@utility.com | — |
| Fire/HAZMAT | 911 | 911 | — | — |

---

*End of CSMFAB000000000129 — PROD-29 Deployment & Operations*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*