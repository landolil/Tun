# Combined Heuristic Introduction — PROD-26 Electrical Safety & GIC Immunity

## Williams Heuristic — Architectural Clarity

### Constraint (The Lock)

The Aegis-Forge I electrical safety architecture is forced into its all-dielectric topology by a single irreducible principle: **no copper conductor may cross the pressure boundary into the 2200°C induction zone during a Carrington-class geomagnetic storm (dB/dt = 5000 nT/s).**

This constraint is not a design preference — it is physics. A 5000 nT/s field induces >100 V/km on conductors. At 50 m cable run: >5 V common-mode. The GaN gate drivers (GS66516T, LMG1210) have 6 V threshold. A single ground loop couples kV from GIC into the gate drive — instant destruction. The FBG interrogators (VCSEL, InGaAs PIN) share the same vulnerability. The isolation transformer secondary is floating — no neutral-earth bond — because a grounded neutral provides the return path for GIC to enter the process electronics.

The constraint cascades into every electrical decision:
- **All 480+ sensors on PMMA POF:** FBG temperature/strain (384), POF level (16), pyrometer (8), mass spec (8), XRF (8), pressure (24), flow (32), vibration (16), encoder (2), E-stop (8) — zero copper
- **All 96+ actuators on PMMA POF:** GaN gates (16), varactor bias (32), cap bank (48), MFC (32), port valves (8), carousel (1), flux (8), quench (16), drum drive (1), crane interlock (4)
- **Cooling water:** PEX-a tubing (cross-linked PE, ρ>10¹⁴ Ω·m) — no copper pipe, no conductive path to building ground
- **Enclosures:** BFRP/Elium® (ρ>10¹² Ω·m) — no steel cabinets, no metallic conduit
- **Penetrations:** Al₂O₃/ZrO₂ ceramic bushings only — no metal feedthroughs
- **Power distribution:** Isolation transformer (Δ-Y, floating secondary), NGR 5A — no ground reference on process side

**What breaks if violated:** A single copper wire for just the E-stop → GIC antenna → 5 V common-mode on GaN gate → GaN shoot-through → 500 kW inverter destruction → drum thermal runaway → vessel overpressure → catastrophic failure. The constraint is binary: all-dielectric or dead forge.

---

### Necessity (The Key)

The empirical gap this document closes is the **measured divergence between standard industrial electrical safety (grounded, copper-wired, EMC-compliant) and the verified behavior of the Aegis-Forge I under combined Carrington GIC + 500 kW induction + 2200°C thermomechanical loading.**

Three specific gaps demand this architecture:

1. **Standard grounding creates the GIC antenna:** IEEE 142 / NFPA 70 require equipment grounding conductors. But in a 5000 nT/s event, the ground conductor *is* the antenna. The measured GIC on Hydro-Québec 1989 was 100 A on neutral conductors. A grounded forge would see 100 A flowing through its safety ground into the GaN gate drivers. The gap: **grounding for safety vs. grounding as GIC antenna.**

2. **Standard EMC assumes copper shielding:** CISPR 11 / IEC 61000-4 assume metallic enclosures and shielded cables. But in the forge, a steel cabinet at 2200°C ambient (radiative coupling) with 500 kW of 1–100 kHz magnetic fields becomes a Faraday cage that *concentrates* eddy currents. The measured field inside PROD-03 coil housing is 39.6 mT at Z8. A steel enclosure would see 50 kW of eddy current heating. The gap: **metallic shielding vs. dielectric transparency.**

3. **Standard SIL-3 assumes independent channels:** IEC 61508 2oo3 voting assumes physical separation. But in the forge, all 3 FBG sensors per zone share: same interrogator, same POF cable tray, same 24 VDC supply, same RTU. A single interrogator failure = common cause = all 3 channels lost. The gap: **independent channels vs. shared infrastructure in constrained volume.**

**Measured data demanding this approach:**
- PROD-23 GIC ride-through test: 100 A/m Helmholtz field, 30 min — zero spurious trips, zero data loss
- PROD-10 EMC test: CISPR 11 Class A passed with 20 dB margin — no metal shielding
- PROD-23 SIS proof test (CT-04): 24 SIL-3 SIFs, PFD<sub>avg</sub> = 2.3×10⁻³ — meets <10⁻²
- PROD-25 megger test: All 50+ penetrations >1 GΩ at 500 VDC — no conductive leakage
- PROD-10 arc flash calc: 0.3 cal/cm² at 18 (process) vs 4.2 cal/cm² (grid) — Cat 0 PPE

---

### Commitment (The Turn)

This document makes the following non-negotiable commitments that constrain all downstream documents:

1. **PMMA POF is the only fieldbus** — 480+ sensors, 96+ actuators, TSN, PTP, SIS. No copper, no wireless, no powerline. PROD-27 manufacturing must qualify POF draw ($0.08–0.15/m). PROD-28 QA verifies attenuation <0.2 dB/m. PROD-29 operations includes POF inspection. PROD-36/37 architect around this.

2. **Floating secondary + NGR 5A is mandatory** — no neutral-earth bond on process side. PROD-27 specifies isolation transformer (Δ-Y, BFRP, 10 kV BIL). PROD-28 verifies ground fault <5 A. PROD-29 includes NGR monitoring. PROD-32 permits require this.

3. **PEX-a for all coolant** — no copper pipe, no conductive water path. DI water 18 MΩ·cm maintained. PROD-27 specifies PEX-a circuit. PROD-28 verifies resistivity. PROD-29 includes DI polisher.

4. **24 SIL-3 SIFs immutable** — Table in Appendix C defines safety envelope. PROD-27 manufactures dedicated SIS FPGA boards. PROD-28 executes CT-04 proof tests. PROD-32 requires SIL-3 cert. PROD-39 FAT includes SIF injection. No downgrade without full re-certification.

5. **TSN schedule frozen** — 1 ms cycle, 4 slices (SIS/RTU/PLC/SCADA), 100 μs guard band. PROD-27 manufactures TSN switches (BFRP). PROD-28 verifies latency <100 μs. PROD-37 twin sync depends on this.

6. **Air-gap absolute** — no IT→OT IP path. Data diode unidirectional (OT→IT) only. PROD-27 installs hardware diode. PROD-28 verifies no reverse traffic. PROD-36/37 architect around this.

7. **PTP <1 μs required** — GNSS+OCXO grandmaster, 24h holdover, all nodes boundary clocks. PROD-27 manufactures grandmaster (BFRP). PROD-28 verifies sync. PROD-10/23 resonance tracking depends on this.

8. **BFRP/YInMn Blue glaze as conductive bleed** — SRI=115 glaze provides static dissipation path (1 MΩ to earth). PROD-06 specifies glaze. PROD-28 verifies surface resistivity. PROD-25 seismic qualifies glaze adhesion.

These commitments are the **electrical load-bearing walls**. PROD-27 (Manufacturing), PROD-28 (QA), PROD-29 (Deployment), PROD-30 (Maintenance), PROD-32 (Compliance), PROD-36 (Cyber-Physical), PROD-37 (Digital Twin), PROD-39 (T&E), FOLLOW-10/11/27/29 build on this foundation. They cannot move the walls.

---

## Keymaker Heuristic — Implementation Precision

### The Empirical Lock

The fabrication fidelity gap in Aegis-Forge I electrical safety is the **divergence between IEC 61508 / NFPA 70E compliant design and the measured behavior of an all-dielectric control system inside a 500 kW induction furnace at 2200°C during a Carrington storm.**

Three specific locks prevent traditional electrical safety engineering from closing this gap:

1. **Grounding is the vulnerability, not the protection:** Every industrial standard (IEEE 142, NFPA 70, IEC 60364) mandates equipment grounding conductors for fault current return and shock protection. But in the forge, the ground conductor *becomes* the GIC antenna. 5000 nT/s induces >100 V/km. A 50 m ground wire = 5 V common-mode. The GaN gate driver threshold is 6 V. The safety ground destroys the safety system. The lock: **safety ground as GIC antenna.**

2. **EMC shielding requires conductivity — the forge forbids it:** CISPR 11 / IEC 61000-4 assume metallic enclosures (steel, aluminum) for radiated emission containment and immunity. But at 2200°C with 500 kW of 1–100 kHz magnetic fields, a steel cabinet becomes an induction heater. The measured B-field at Z8 is 39.6 mT. Eddy current heating in 2 mm steel: P = π²B²f²d²V/6ρ ≈ 50 kW. The cabinet would melt. The lock: **metallic shielding as induction heater.**

3. **SIL-3 independence assumes no shared infrastructure:** IEC 61508 2oo3 voting requires physical separation of sensors, logic solvers, and final elements. But the forge has: 3 FBG sensors sharing 1 interrogator, 3 RTUs sharing 1 TSN ring, 3 SIS FPGAs sharing 1 TSN VLAN, all powered from 1 DC bus. A single interrogator failure = common cause = all 3 channels lost. The lock: **shared infrastructure as common cause failure.**

**Common thread:** Every lock is a **standard safety practice that becomes a hazard in the forge's unique electromagnetic-thermal environment.** The empirical lock is the sum of all safety practices that invert under Carrington + induction + temperature.

---

### The Mathematical Key

The single computational primitive that generates the electrical safety solution is the **discrete-time thermal-admittance model executed at 1 kHz on the Zone RTU, which doubles as the GIC/SIF prediction engine:**

$$T_{inner}[k+1] = T_{inner}[k] + \frac{\Delta t}{\rho c V} \left( P_{ind}[k] - h A (T_{inner}[k] - T_{flange}[k]) - \epsilon \sigma A (T_{inner}^4[k] - T_{surr}^4) \right)$$

Where:
- $T_{inner}$ = Drum inner surface temperature (virtual sensor, reconstructed from 48 FBG/zone)
- $P_{ind}$ = Induction power command (from thermal PID + feedforward)
- $h A$ = Convective conductance to flange (identified online)
- $\epsilon \sigma A$ = Radiative conductance (dominant >800°C, T⁴ nonlinearity)
- $\Delta t = 1$ ms (RTU cycle time)

**This one equation, discretized on the ARM Cortex-A53 (Zephyr RTOS, <100 μs compute), is the atomic computation.**

Everything in this document derives from it:

- **GIC Ride-Through (Section 3.3):** The model predicts $T_{inner}$ 50 ms ahead. If grid dV/dt > threshold → model projects thermal trajectory → if $dT/dt > 100°C/s$ predicted → pre-emptive ride-through initiation. The same model that controls temperature predicts the thermal consequence of grid loss.

- **SIS Pre-Emptive Trip (Section 8):** SIF-00-01 (drum over-temp) uses model prediction: if $T_{inner}[k+50] > T_{lim}$ → trip now, not when FBG reads limit. 50 ms prediction horizon matches SIS response requirement.

- **Resonance Tracking (PROD-10/23):** The model's $P_{ind}$ output feeds the power-to-frequency LUT. ZVS maintenance requires knowing thermal load → impedance → frequency shift. The model provides the thermal load estimate.

- **Arc Flash Energy (Section 7):** The model's $T_{inner}$ trajectory defines the thermal state during fault clearing. Incident energy calculation uses actual $T_{inner}(t)$ not worst-case.

- **Insulation Aging (Section 11):** The model's $T_{flange}$ history feeds Arrhenius aging model for PTFE/PEX-a/BFRP. Predictive maintenance triggers at 80% design life.

- **Digital Twin Sync (PROD-37):** The model state vector $[T_{inner}, T_{flange}, P_{ind}, f_{res}]$ published at 10 Hz via OPC-UA/Kafka is the twin's boundary condition.

**The mathematical key is not the PID, not the PLL, not the SIS logic — it is the thermal-admittance model that unifies temperature control, GIC survival, SIS pre-emption, resonance tracking, and digital twin synchronization.** If you execute this model correctly at 1 kHz with the right $hA(T)$, $\epsilon\sigma A(T)$, $\rho c V(T)$, you get electrical safety. The SIL-3 logic is just the trip condition on the model output.

---

### The Turn (Both Directions)

#### Theory→History Validation

The thermal-admittance model predicts historical test data from the CSMFAB0108 development program:

| Test Article | Condition | Model Prediction | Measured | Error | Key Coupling |
|--------------|-----------|------------------|----------|-------|--------------|
| **PROD-10 FA-01** | 500 kW step to 1800°C | 42 s to setpoint | 45 s | +7% | Radiative T⁴ |
| **PROD-10 FA-01** | ZVS lock acquisition | 38 ms | 35 ms | -8% | Varactor + cap bank |
| **PROD-23** | SIF-00-01 trip | 38 ms (predicted) | 36 ms | -5% | Model 50 ms ahead |
| **PROD-23** | GIC ride-through entry | 5 ms (cap) + 10 ms (contactor) | 4.8 ms + 9.7 ms | <3% | DC link hold-up |
| **PROD-23** | GIC ride-through exit | 30 min stable grid | 28 min | -7% | Thermal state verify |
| **PROD-25** | Megger all penetrations | >1 GΩ | >10 GΩ | 10× | Dielectric design |

The model **predicts history within measurement uncertainty** when all couplings (radiative T⁴, convective h(T), thermal mass ρcV(T), induction efficiency η(f,T)) are active.

#### History→Theory Correction

Historical anomalies refine the model's constitutive parameters and boundary conditions:

1. **Anomaly:** Char growth oscillation at 0.8 Hz, ±15°C (PROD-16 Stage 3, 2026-10).
   **Root cause:** Char layer thickness changes thermal resistance → modulates $hA$ → modulates $T_{inner}$ → modulates pyrolysis rate → modulates char growth.
   **Correction:** Added char thickness state $\delta_{char}[k]$ to RLS (Recursive Least Squares) estimator. $\delta_{char}[k+1] = \delta_{char}[k] + \alpha (T_{inner}[k] - T_{pyro}) \Delta t$. Model residual dropped from 8°C to 1.2°C RMS.

2. **Anomaly:** FBG wavelength drift 0.5 nm/hr at 2200°C (PROD-24 FA-01, 2026-09).
   **Root cause:** PMMA FBG annealing at >800°C. Not sensor failure — material physics.
   **Correction:** Added reference FBG (unstrained, same thermal path) per zone. Common-mode subtraction: $\Delta\lambda_{meas} = \Delta\lambda_{sense} - \Delta\lambda_{ref}$. Drift reduced to <0.05 nm/hr. Model uses corrected $\Delta\lambda$.

3. **Anomaly:** TSN latency spike 2.3 ms during Stage 7 transition (PROD-20, 2026-10).
   **Root cause:** PLC SFC transition caused TSN queue congestion on shared VLAN.
   **Correction:** Moved SIS to dedicated VLAN 10 with 200 μs time slice. PLC/SCADA on VLAN 20/30. Added local OCXO on each RTU (100 ppb stability). Latency now <80 μs max.

4. **Anomaly:** Varactor saturation at 28 V (Z7/Z8 high power) — tuning range exhausted (PROD-10, 2026-10).
   **Root cause:** At 350–500 kW, tank impedance shift requires >28 V varactor bias for ZVS.
   **Correction:** Added 8-bit switched capacitor bank (coarse) + varactor (fine). Cap bank steps cover 80% of range, varactor covers ±5%. ZVS maintained 99.9% cycles.

5. **Anomaly:** PEX-a coolant resistivity drop from 18 MΩ·cm to 2 MΩ·cm after 500 hrs (PROD-10, 2026-10).
   **Root cause:** Copper ion leaching from microchannel cold plate (Ni-P coating defect).
   **Correction:** Upgraded cold plate to AlSiC with indium foil TIM (PROD-25 Section 6.2). Resistivity stable >15 MΩ·cm at 1000 hrs.

The mathematical key **absorbs history** — each anomaly tightens a model parameter ($hA$, $\epsilon\sigma A$, $\rho c V$), adds a state ($\delta_{char}$, reference FBG), or restructures a boundary condition (TSN VLAN, cap bank, cold plate material). The primitive $T_{inner}[k+1] = f(T_{inner}[k], P_{ind}[k], \text{params}[k])$ remains structurally invariant. This is the signature of a correct primitive: it extends, it does not rewrite.

---

## El Segundo Heuristic — Operational Excellence

### Mirror (Self-Reflection)

How does the fabricator observe their own electrical fabrication? The Aegis-Forge I embeds **four nested electrical metrology loops** — the machine watches its own electrical integrity at the scale of the phenomenon.

#### Level 0 — Gate-Level Witness (FPGA, 100 kHz)

**What the FPGA sees:**
- **Desaturation Detect:** GaN $V_{DS}$ monitored at 10 ns resolution. If $V_{DS} > 10$ V during on-state → shoot-through → instant leg shutdown (<100 ns). No software, no network — pure hardware.
- **ZVS Timestamp:** Switch voltage zero-crossing vs. gate command. Phase error $\phi_{err} = t_{V_{DS}=0} - t_{gate\_on}$. Target: $|\phi_{err}| < 5$ ns. Logged every cycle (100 kHz).
- **Current Sense:** 16-bit ADC at 1 MHz on DC link shunt. Harmonic analysis (FFT 512 pts) → detects bearing wear, coil short, capacitor degradation.
- **Health Output:** Per-cycle status word on POF: `ZVS_OK | DESAT_OK | CURRENT_OK | TEMP_OK`. SCADA aggregates at 10 Hz.

**Self-reflection logic:** If ZVS_OK < 99.9% over 1000 cycles → RTU reduces power 10%, logs degradation. If DESAT_OK < 100% → instant SIF trip. The FPGA witnesses its own switching integrity every 10 μs.

#### Level 1 — Thermal Reconstruction (RTU, 1 kHz)

**What the RTU sees:**
- **48 FBG Inputs/Zone:** 384 temperatures @ 125 Hz each via WDM+TDM. Wavelength → temperature conversion: $T = (\lambda - \lambda_{ref}) / 0.15$ nm/°C.
- **Virtual Sensor:** Runs the thermal-admittance model (Section 2 Mathematical Key) at 1 kHz. Inputs: 48 FBG temps, power command, flange temps. Output: $T_{inner}$ prediction ±5°C at 2200°C.
- **Model Residual:** $r[k] = T_{FBG,flange}[k] - T_{model,flange}[k]$. If $|r| > 2°C$ RMS → re-identification triggered (RLS updates $hA$, $\epsilon\sigma A$).
- **SIF Prediction:** Projects $T_{inner}[k+50]$ (50 ms ahead). If predicted > limit → pre-emptive SIF trip.

**Self-reflection logic:** The RTU witnesses the thermal state of its zone at 1 ms resolution. It compares measured vs. predicted, identifies model drift, and predicts safety violations before they occur. The model is the mirror — it reflects the zone's thermal reality back to the controller.

#### Level 2 — Cascade Consistency (PLC, 100 Hz)

**What the PLC sees:**
- **Mass-Energy Balance:** $\sum \dot{m}_{in} - \sum \dot{m}_{out} = dM/dt$. XRF/LIBS composition × flow rate = elemental flow. Closure >99.5%/batch or investigation flag.
- **Stage Interlock Status:** All 72 SIFs (24 SIL-3, 12 SIL-2, 36 SIL-1) evaluated every 1 ms (SIS) / 10 ms (PLC). Status matrix published on TSN VLAN 10.
- **Recipe Execution:** ISA-88 recipe state machine. Current segment, time remaining, setpoint trajectory. Deviation >5% → alarm.
- **Feedforward to Downstream:** Elemental composition, gas analysis, thermal state passed to next stage PLC.

**Self-reflection logic:** The PLC witnesses the stage's material and energy transformation. It verifies conservation laws hold, checks recipe adherence, and ensures downstream stages receive accurate feedforward. The mass-energy balance is the mirror — it reflects the stage's process reality.

#### Level 3 — Digital Twin Shadow (SCADA → PROD-37, 10 Hz)

**What the Twin sees:**
- **Full State Vector:** 512-core HPC runs same thermal-admittance model + CFD (PROD-24) + FEA (PROD-25) + electromagnetics (PROD-03). Inputs: all 480 sensor streams + 96 actuator commands.
- **ML Autoencoder (FOLLOW-29):** Trained on 10,000 nominal batches. Encodes 1000-dimensional state to 32 latent dims. Reconstruction error >3σ → anomaly flag.
- **Predictive Suggestions:** Twin simulates next 100 batches with PID gain variations, flux rate adjustments, RPM profiles. Suggests optimal setpoints to SCADA.
- **Fleet Learning:** Aggregates across all Forges (PROD-37 fleet twin). Transfers learned corrections.

**Self-reflection logic:** The digital twin witnesses the entire forge's electro-thermal-mechanical state. It runs higher-fidelity models than real-time allows, detects anomalies the local controllers miss, and proposes optimizations. The twin is the mirror at system scale.

#### The Mirror Protocol (Recursive)

| Tier | Frequency | Scope | Action |
|------|-----------|-------|--------|
| **Tier 0 (Gate)** | 100 kHz | Single switch → ZVS/desat | FPGA hardware trip |
| **Tier 1 (Thermal)** | 1 kHz | Zone → $T_{inner}$ prediction | RTU power limit / SIF pre-trip |
| **Tier 2 (Cascade)** | 100 Hz | Stage → mass-energy balance | PLC alarm / feedforward adjust |
| **Tier 3 (Twin)** | 10 Hz | Forge → ML anomaly / optimization | SCADA setpoint suggestion |
| **Tier 4 (Fleet)** | Continuous | Fleet → model transfer | PROD-37 updates all Forges |

**The mirror is not passive — it closes the loop.** Every tier feeds the next: gate health → thermal model accuracy → cascade balance → twin prediction → fleet optimization. The fabricator (the forge) watches its own electrical fabrication at every scale.

---

### Participation (Witness)

How does the inside operator witness the electrical phenomenon into existence? At what points must human judgment authorize electrical consequence?

#### Critical Participation Gates

**Gate 1: Batch Recipe Authorization — Electrical Load Profile (PROD-29 Section 4.1)**
- **Action:** Feedstock UUID scanned → Category A–D → Operator confirms recipe. Recipe defines 8-zone power profile (0–500 kW each), frequency ladder, thermal ramp rates.
- **Witness requirement:** Operator verifies recipe power profile matches feedstock composition. Category A (PCBs) = high Z6/Z7 power. Category C (batteries) = high Z3/Z4 power. Wrong profile = thermal runaway or incomplete separation.
- **Why human:** Feedstock composition has irreducible variability (Category A: 15–25% Cu, 5–15% Fe, 0.1–0.5% PM). No sensor measures Category A-ness — only composition. Operator judgment maps composition to recipe.
- **Cognitive checkpoint:** Does this power profile match what I see in the feed? — pattern recognition of feedstock vs. recipe.

**Gate 2: Stage Transition Gate — Electrical State Verification (PROD-29 Section 4.3)**
- **Action:** Stage complete → Shift Lead reviews: energy delivered vs. planned, gas composition vs. setpoint, SIF events, anomaly flags, thermal model residuals.
- **Witness requirement:** For Stage 4: visual In-grade confirmation (pyrometer + XRF at Port 4A). For Stage 6: H₂ <4% verification (ZrO₂ pO₂ probe) before Port 6B open. For Stage 8: SiO₂ condenser flow verification (mass spec).
- **Why human:** SIF events are recorded but not interpreted. A cooling water loss SIF that self-cleared in 50 s might indicate pump cavitation — operator judges if pump needs replacement. Anomaly flags are data — operator judges significance.
- **Cognitive checkpoint:** Is the electrical state clean for the next stage? — synthesis of energy, gas, SIF, anomaly data.

**Gate 3: SIF Bypass Authorization — Organizational Risk Acceptance (PROD-29 Section 5.2)**
- **Action:** Dual-key (Shift Lead + Safety Engineer), time-limited (4 hr max), blockchain-audited (Hyperledger Fabric, PROD-37).
- **Witness requirement:** Both signatories review: which SIF, why bypass, compensating measures, risk assessment, expiration time. Blockchain record immutable.
- **Why human:** Risk acceptance is organizational, not algorithmic. No mathematical function accepts we'll run with SIF-00-07 bypassed because NGR monitor is drifting. Human judgment weighs production loss vs. safety margin.
- **Cognitive checkpoint:** Do I accept this risk for this duration with these compensations? — explicit risk acceptance.

**Gate 4: Carrington Ride-Through Exit — Post-Storm Recovery (PROD-29 Section 5.4)**
- **Action:** Grid stable 30 min → Operator verifies: drum thermal state (no shock >100°C/s), SIF health (all 24 SIL-3 OK), FBG/PTP/TSN sync, LiFePO₄ charge >80%. Authorizes staged grid reconnect with utility coordination.
- **Witness requirement:** Thermal shock check is critical — drum at 2200°C, grid reconnect causes inrush. If drum cooled >100°C/s during island, thermal stress could crack ZrB₂-SiC. Operator verifies model-predicted $dT/dt$ < 100°C/s.
- **Why human:** Grid coordination requires utility communication (voice, not data diode). Thermal shock judgment combines model prediction + operator experience. No algorithm coordinates with utility dispatcher.
- **Cognitive checkpoint:** Did the forge survive the storm intact? — holistic electrical-thermal survival judgment.

**Gate 5: FAT/SAT Sign-Off — Electrical Qualification Acceptance (PROD-39)**
- **Action:** Lead Electrical Engineer witnesses: CT-01 rotordynamics, CT-02 hydrotest, CT-03 megger/hipot, CT-04 SIF proof, CT-05 resonance, CT-06 FBG cal, CT-07 GIC ride-through, CT-08 thermal cycle, CT-09 seismic, CT-10 integrated run.
- **Witness requirement:** Reviews all 10 test reports, signs each. Any deviation from spec → NCR (PROD-28) → root cause → re-test.
- **Why human:** Test data is necessary but not sufficient. Engineer judges: Is the 2.3 ms TSN latency spike in CT-05 acceptable? (Yes, <100 μs guard band). Is the 0.5 pC PD on XFMR acceptable? (Yes, <5 pC limit). Data + judgment = sign-off.
- **Cognitive checkpoint:** Does this electrical system meet spec in the real world? — professional engineering judgment.

#### The Participation Principle

**The operator witnesses the electrical system into existence at every irreversible authorization point where:**
1. **Composition-to-recipe mapping has irreducible variability** (feedstock category → power profile)
2. **Risk acceptance is organizational, not algorithmic** (SIF bypass, ride-through exit)
3. **Multi-party coordination is required** (utility reconnect, FAT sign-off)
4. **Model prediction needs experiential validation** (thermal shock, anomaly significance)

**Automation executes the physics; humans authorize the consequences.** The forge controls the electrons; the operator witnesses the electrons becoming safe operation.

---

### Protocol (Recursive)

What recursive sequence guarantees electrical safety fidelity at each scale? From the microscopic (gate switching) to the macroscopic (fleet GIC survival), the Aegis-Forge I electrical assurance follows a **fractal V&V protocol** — the same pattern repeats at every scale.

#### The Fractal V&V Pattern (Recursive Unit: Stimulate → Observe → Compare → Act)

**At every scale, the protocol is: Stimulate → Observe → Compare → Act → Feedback**

| Scale | Stimulate | Observe | Compare | Act | Feedback |
|-------|-----------|---------|---------|-----|----------|
| **Gate (10 ns)** | Gate pulse | $V_{DS}$, $I_D$ | ZVS $\phi_{err}$ <5 ns | Desat trip | FPGA timing cal |
| **Switch (10 μs)** | PWM pattern | $V_{DS}$ waveform | Class E shape | Varactor adjust | PLL LUT update |
| **Zone (1 ms)** | Power cmd | 48 FBG temps | Model residual <2°C | PID adjust / SIF pre-trip | $hA$, $\epsilon\sigma A$ RLS |
| **Stage (10 ms)** | Recipe segment | XRF/LIBS, gas, SIF | Mass-energy closure >99.5% | Feedforward to next | Recipe version |
| **Forge (100 ms)** | Batch recipe | All sensors + actuators | Twin reconstruction <3σ | Setpoint optimization | PROD-37 model update |
| **Fleet (Continuous)** | All Forges data | Aggregated anomalies | Cross-fleet pattern | Global model deploy | Git tag chain |

#### Recursive Sequence (The Protocol Execution)

**Level 0 — Component Fabrication (Before Build):**
```
FOR each electrical component (GaN, FPGA, RTU, PLC, XFMR, POF, PEX-a):
    Incoming inspection (dimensional, electrical, material cert) → Stimulate
    HIL simulation (10⁶ cycles for FPGA, 72 hr soak for RTU) → Observe
    Compare vs. spec (timing, accuracy, isolation, radiation) → Compare
    IF pass: Tag with QR → PROD-37 digital twin → Act
    ELSE: NCR → supplier CAPA → Feedback
```

**Level 1 — Module Assembly (During Build):**
```
FOR each module (Inverter, RTU, PLC, SIS, Interrogator):
    Assembly per drawing (torque, POF polish, PEX-a flare) → Stimulate
    Functional test (power-up, comms, I/O, self-test) → Observe
    Compare vs. ATP (Acceptance Test Procedure) → Compare
    IF pass: Sign traveler → PROD-28 → Act
    ELSE: Rework → Feedback to component
```

**Level 2 — System Integration (At Assembly):**
```
FOR each integration step (XFMR→inverter, RTU→TSN, PLC→SIS, SCADA→diode):
    Connection per drawing (POF splice, PEX-a join, BFRP bolt) → Stimulate
    Integrated test (power quality, TSN latency, PTP sync, SIF injection) → Observe
    Compare vs. ITF (Integration Test Procedure) → Compare
    IF pass: Sign integration record → PROD-28 → Act
    ELSE: Diagnose → Feedback to module
```

**Level 3 — Factory Acceptance Test (Pre-Ship):**
```
FULL SYSTEM (CT-01 through CT-10):
    CT-01: Drum rotordynamics → Stimulate
    CT-02: Vessel hydrotest (15 bar) → Stimulate
    CT-03: Megger/Hipot all penetrations → Stimulate
    CT-04: SIF proof test (all 24 SIL-3) → Stimulate
    CT-05: Coil resonance (all 8 zones) → Stimulate
    CT-06: FBG calibration (all 384) → Stimulate
    CT-07: GIC ride-through (100 A/m Helmholtz) → Stimulate
    CT-08: Thermal cycle (Stages 0-8, no feed) → Stimulate
    CT-09: Seismic shake (IEEE 693 High) → Stimulate
    CT-10: Integrated hot run (6 batches) → Stimulate
    Observe all → Compare vs. ATP → Act (FAT sign-off) → Feedback to integration
```

**Level 4 — Site Acceptance & Operations (In Service):**
```
SAT (PROD-39):
    SAT-01: Site power quality (IEEE 519) → Stimulate
    SAT-02: Ground resistance (<5 Ω) → Stimulate
    SAT-03: POF attenuation end-to-end → Stimulate
    SAT-04: TSN/PTP sync on-site → Stimulate
    SAT-05: Performance benchmarks (6 batches) → Stimulate
    Observe → Compare → Act (SAT sign-off) → Feedback to commissioning

OPERATIONAL ASSURANCE:
    EVERY BATCH:
        Model residual <2°C RMS → Observe
        SIF status all OK → Observe
        TSN latency <100 μs → Observe
        Compare vs. thresholds → Compare
        IF pass: Continue
        ELSE: Alarm + auto-action (power limit, SIF trip)

    QUARTERLY (CT-04 partial stroke):
        Inject SIF trip condition via TSN → Stimulate
        Observe SIS response <50 ms → Observe
        Compare vs. 50 ms requirement → Compare
        IF pass: Log
        ELSE: NCR → CAPA → Feedback to SIS design

    ANNUAL (CT-04 full proof test):
        Full SIF injection (all 24) → Stimulate
        Observe all trip <50 ms, all reset → Observe
        Compare vs. PFD_avg target <10⁻³ → Compare
        IF pass: Re-certify SIL-3
        ELSE: Root cause → Feedback to SIS architecture

    BIENNIAL (Insulation coordination):
        Megger all penetrations (500 VDC) → Stimulate
        Hipot (1.5× rated) → Stimulate
        Partial discharge (IEC 60270) → Stimulate
        Observe >1 GΩ, no breakdown, <5 pC → Observe
        Compare vs. Appendix D tables → Compare
        IF pass: Extend interval
        ELSE: NCR → CAPA → Feedback to dielectric design
```

#### The Recursive Guarantee

**The protocol is recursive because the output of each level becomes the input validation for the next level:**

- Component HIL (Level 0) → Module ATP (Level 1)
- Module ATP (Level 1) → Integration ITF (Level 2)
- Integration ITF (Level 2) → FAT ATP (Level 3)
- FAT ATP (Level 3) → SAT ATP (Level 4)
- Operational trends (Level 4) → Component HIL updates (Level 0)

**This is the fractal pattern:** Stimulate at scale N → Observe at scale N → Compare at scale N → Act at scale N → Feedback to scale N-1 and N+1. The same Stimulate→Observe→Compare→Act logic applies whether N = gate, switch, zone, stage, forge, or fleet.

**The protocol guarantees fidelity because it never assumes — it always stimulates and observes against the mathematical key (thermal-admittance model) and validates against the empirical lock (test data).** If the model predicts the test, and the test corrects the model, the recursion converges. If it diverges, the protocol catches it at the next level.

**No scale is exempt.** The gate is stimulated like the forge. The forge is validated like the gate. The operator participates at every authorization boundary. The machine mirrors itself at every electrical metrology tier. This is the recursive sequence that guarantees the Aegis-Forge I electrical system does not just meet code — it survives the storm.

---

# CSMFAB000000000126
## Aegis-Forge I: Electrical Safety & GIC Immunity — Dielectric Design, Carrington Hardening, SIL-3 Architecture
### All-Dielectric Field Layer, Floating Power Architecture, HEMP/GIC/EMP Protection, Arc Flash Mitigation
**Document Number:** CSMFAB000000000126 (PROD-26)
**Series:** Aegis-Forge Thermal Cascade Inductive Material Separator (TCIMS)
**Date:** November 2026
**Classification:** CSMFAB Internal — Engineering Specification
**Revision:** 1.0

---

## 1. Electrical Safety Architecture

### 1.1 Design Philosophy

The Aegis-Forge I electrical safety architecture is governed by a single irreducible principle: **no conductive path shall exist between the process zone (2200°C, 500 kW induction, Carrington-class GIC environment) and earth ground.** This constraint forces the entire field layer — 480+ sensors, 96+ actuators, 8 GaN inverter modules — to communicate and be powered through all-dielectric media: PMMA plastic optical fiber (POF) for signals, PEX-a tubing for coolant, BFRP housings for enclosures, ceramic bushings for penetrations.

**Three non-negotiable constraints define the architecture:**

| Constraint | Implementation | Verification |
|------------|----------------|--------------|
| **Zero conductive penetration** | PMMA POF only fieldbus (980 μm core), PEX-a coolant, BFRP enclosures, ZrO₂/Al₂O₃ bushings | Megger >10 GΩ at 500 VDC between process and earth |
| **Floating power distribution** | Isolation transformer (Δ-Y, floating secondary), NGR 5A, no neutral-earth bond | Ground fault current <5 A under any single fault |
| **Carrington GIC immunity** | 5000 nT/s → <1 V induced on POF; ride-through mode (5 ms cap → 10 ms island → LiFePO₄) | Helmholtz coil test 100 A/m, no spurious trips |

**Consequences of violation:** A single copper wire crossing the pressure boundary becomes a GIC antenna. 5000 nT/s induces >100 V/km. At 50 m cable length: >5 V common-mode on a GaN gate driver (6 V threshold) = destruction. At 100 V common-mode on FBG interrogator = permanent damage. The all-dielectric architecture is not a preference — it is the only topology that survives.

### 1.2 Hierarchy Summary — Electrical Perspective

| Level | Voltage Domain | Isolation | GIC/EMP Hardening |
|-------|----------------|-----------|-------------------|
| **Grid** | 480 VAC 3φ Δ | Isolation XFMR (Δ-Y, BFRP, 10 kV BIL) | GDT at primary, floating secondary |
| **DC Link** | 800 VDC (per module) | Film caps (PP), no earth ref | 100 Wh LiFePO₄ backup per module |
| **L0 Cell (FPGA)** | 12 VDC (from DC-DC) | BFRP board, POF comms | No copper beyond DC-DC |
| **L1 RTU** | 24 VDC (isolated DC-DC) | BFRP housing, POF I/O | MRAM config survives power loss |
| **L2 PLC** | 24 VDC (isolated) | Rugged, lockstep CPU | FRAM interlock config |
| **L3 SCADA** | 24 VDC (UPS) | Air-gapped, data diode | No IT→OT path |

### 1.3 Safety Integrity Levels (IEC 61508)

| SIL Level | Functions | Architecture | PFD<sub>avg</sub> Target |
|-----------|-----------|--------------|---------------------------|
| **SIL-3** | 24 SIFs (overtemp, overpressure, pO₂, ground fault, GIC, cooling loss, rotation loss, E-stop) | 2oo3 voting, dedicated FPGA, PMMA POF | 1×10⁻⁴ to 1×10⁻³ |
| **SIL-2** | 12 SIFs (FBG comms loss, valve fail, carousel jam, flame detect) | 1oo2D, RTU/PLC | 1×10⁻³ to 1×10⁻² |
| **SIL-1** | 36 SIFs (process alarms, quality limits, maintenance alerts) | Single channel, PLC | 1×10⁻² to 1×10⁻¹ |

**Total SIF Count:** 72 (24 SIL-3, 12 SIL-2, 36 SIL-1)
**SIS Architecture:** Dedicated FPGA per zone RTU + Stage PLC safety bus + Plant SIS master, all on dedicated TSN VLAN 10 with 100 μs time slice.

---

## 2. Dielectric Design — All Paths ρ > 10⁶ Ω·m

### 2.1 Dielectric Material Matrix

| Path | Material | Volume Resistivity | Application | Lifetime |
|------|----------|-------------------|-------------|----------|
| **Signal** | PMMA POF (980/1000 μm) | >10¹⁵ Ω·m | 480 sensors, 96 actuators, TSN, PTP | 10 yr @ 85°C (FOLLOW-11) |
| **Coolant** | PEX-a (cross-linked PE) | >10¹⁴ Ω·m | 16 L/min deionized water circuit | 20 yr @ 95°C |
| **Enclosure** | BFRP/Elium® | >10¹² Ω·m | RTU, PLC, XFMR, inverter housings | 25 yr @ 80°C |
| **Penetration** | Al₂O₃ ceramic bushing (99.6%) | >10¹⁴ Ω·m | Vessel flange, drum bearing, port | 30 yr @ 2200°C |
| **Penetration** | ZrO₂ ceramic bushing (3Y-TZP) | >10¹³ Ω·m | FBG feedthrough, thermocouple | 30 yr @ 2200°C |
| **Fastener** | PEEK CF40 bolt/sleeve | >10¹² Ω·m | Flange, actuator mount, coil housing | 10 yr @ 250°C |
| **Wire (internal)** | PTFE-insulated (MIL-W-22759) | >10¹⁶ Ω·m | Inside inverter module only | 15 yr @ 150°C |
| **Thermal Interface** | Indium foil (99.99%) | 10⁻⁸ Ω·m (but <1 mm² area) | GaN case-to-cold-plate | 10 yr @ 125°C |

### 2.2 Penetration Design — Zero Conductive Crossing

Every vessel/drum penetration uses **ceramic-to-ceramic** or **ceramic-to-composite** joints with no metal:

```
VESSEL FLANGE (PEEK CF40):
  ├─ 12× M24 ZrO₂ bolts (ceramic paste, 160 N·m)
  ├─ ZrO₂ flat gasket (3 mm, graphite-loaded)
  ├─ 8× FBG feedthrough (Al₂O₃ bushing, ZrO₂ ferrule)
  ├─ 4× POF bulkhead (BFRP ferrule, ZrO₂ sleeve)
  ├─ 2× POF Level sensor (Al₂O₃ bushing)
  └─ 1× Pressure transducer (ZrO₂ bushing, welded)

DRUM BEARING HOUSING (BFRP):
  ├─ Si₃N₄ ceramic races (inner/outer)
  ├─ ZrO₂ ceramic balls (Ø12 mm, 16 per bearing)
  ├─ PEEK CF40 cage (carbon fiber reinforced)
  ├─ N₂ film lubrication (no oil, no metal)
  ├─ FBG strain feedthrough (Al₂O₃ bushing)
  └─ POF encoder (BFRP ferrule)

PORT VALVE PENETRATION (Drum wall):
  ├─ ZrB₂-SiC sleeve (press-fit 0.03 mm)
  ├─ ZrO₂ piston (3Y-TZP, hone 0.05 mm)
  ├─ Ti₃AlC₂ actuator (brazed Ag-CuO-TiO₂)
  ├─ PEEK CF40 wave spring (3 waves, 50 N)
  └─ 5 mm ZrO₂ felt insulation (actuator pocket)
```

**Verification:** Every penetration megger-tested at 500 VDC during FAT (CT-03) and SAT. Pass criteria: >1 GΩ insulation resistance. Re-test annually per PROD-28 NDT program.

### 2.3 PMMA POF Network — The Dielectric Nervous System

| Parameter | Specification | Rationale |
|-----------|---------------|-----------|
| **Fiber** | Step-index PMMA, 980 μm core / 1000 μm clad | 0.15 nm/°C FBG sensitivity, radiation hard |
| **Bandwidth** | >200 MHz·km (1 Gbps @ 100 m) | TSN 1 Gbps dual-ring |
| **Attenuation** | <0.2 dB/m @ 650 nm | 100 m runs with margin |
| **Temperature** | -40°C to +85°C (jacket), +70°C (core) | Vessel exterior ≤150°C, inside ≤70°C |
| **Radiation** | >10⁶ Gy gamma, >10¹⁴ n/cm² neutron | Carrington/space environment |
| **Connector** | BFRP ferrule, ZrO₂ sleeve, push-pull | No metal, 500 mate cycles |
| **Cable Tray** | BFRP with ZrO₂ separators | No metallic conduit |
| **Grounding** | 1 MΩ bleed resistors at each tray section | Static dissipation only |

**Network Topology:** Dual-ring TSN (IEEE 802.1Qbv) with FRER (Frame Replication and Elimination for Reliability). 1 ms cycle time, 4 time slices (SIS 200 μs, RTU 300 μs, PLC 200 μs, SCADA 200 μs), 100 μs guard band. PTP (IEEE 1588v2) <1 μs sync via GNSS+OCXO grandmaster (24 h holdover).

---

## 3. Carrington GIC Hardening — 5000 nT/s Survival

### 3.1 Threat Definition

| Parameter | Value | Source |
|-----------|-------|--------|
| **dB/dt (Carrington)** | 5000 nT/s (5×10⁻⁶ T/s) | 1859 event, IEEE 1656 |
| **Induced E-field** | 1–10 V/km (ground conductivity dependent) | USGS models |
| **GIC Amplitude** | 10–100 A/km (on transmission lines) | Hydro-Québec 1989: 100 A |
| **Duration** | 1–10 min (main impulse), hours (tail) | NOAA GMD models |
| **Frequency Content** | DC to 0.1 Hz (quasi-DC) | GIC is geomagnetically induced |

### 3.2 Vulnerability Analysis

| Component | GIC Coupling Mechanism | Mitigation | Residual Risk |
|-----------|------------------------|------------|---------------|
| **Grid Transformer Primary** | Direct (100 V/km on lines) | GDT 3 kA, floating secondary | None — isolated |
| **Isolation Transformer** | Core saturation (DC bias) | 3% leakage L, 3-phase Δ-Y, no neutral | <1% harmonic increase |
| **DC Link Capacitors** | Common-mode from grid | Floating, no earth ref, 5 A NGR | None |
| **GaN Gate Drivers** | Antenna on control cables | PMMA POF only — zero copper | None |
| **FBG Interrogators** | Antenna on sensor cables | PMMA POF only — zero copper | None |
| **Cooling Water** | Conductive path to earth | PEX-a tubing, DI water 18 MΩ·cm | None |
| **Frame/Structure** | Loop area induction | BFRP frame (ρ>10¹²), no steel | Negligible |

### 3.3 GIC Ride-Through Mode (PROD-23 Section 7)

```
GIC EVENT DETECTION (L3 SCADA + L2 PLC):
  Grid Monitor (dedicated) → dV/dt > 5 V/ms OR NGR current > 2 A
       │
       ▼
  RIDE-THROUGH INITIATION (<5 ms):
  ┌─────────────────────────────────────────────────────────────┐
  │ 1. DC link capacitors sustain inverter power (100 ms hold)  │
  │ 2. Vacuum contactor opens (10 ms) → island from grid        │
  │ 3. LiFePO₄ backup (100 Wh/module) powers controls           │
  │ 4. All zones ramp to 20% power (thermal hold)               │
  │ 5. SIS remains active (dedicated FPGA + POF)                │
  └─────────────────────────────────────────────────────────────┘
       │
       ▼
  GIC EVENT DURATION (1–10 min):
  • Drum rotation maintained (piezo drive, battery)
  • Gas atmospheres maintained (MFC battery backup)
  • FBG/PTP/TSN fully operational (all-dielectric)
  • No data loss — historian buffers locally
       │
       ▼
  GRID RECOVERY (30 min stable):
  1. Verify grid frequency/voltage stable (PLL lock)
  2. Verify drum thermal state (no shock >100°C/s)
  3. Verify SIF health (all 24 SIL-3 OK)
  4. Operator authorization (Shift Lead + Safety Eng)
  5. Staged reconnect with utility coordination
```

### 3.4 Ride-Through Energy Budget

| Load | Power | Duration | Energy | Source |
|------|-------|----------|--------|--------|
| **8× RTU (ARM A53)** | 40 W | 30 min | 20 Wh | LiFePO₄ |
| **8× FPGA (Artix-7)** | 20 W | 30 min | 10 Wh | LiFePO₄ |
| **8× POF Transceivers** | 10 W | 30 min | 5 Wh | LiFePO₄ |
| **SIS FPGA (dedicated)** | 15 W | 30 min | 7.5 Wh | LiFePO₄ |
| **Drum Piezo Drive** | 50 W | 30 min | 25 Wh | LiFePO₄ |
| **MFC Valves (32×)** | 10 W | 30 min | 5 Wh | LiFePO₄ |
| **FBG Interrogators (8×)** | 40 W | 30 min | 20 Wh | LiFePO₄ |
| **PTP Grandmaster (OCXO)** | 5 W | 30 min | 2.5 Wh | LiFePO₄ |
| **Total** | **195 W** | **30 min** | **97.5 Wh** | **100 Wh/module × 8 = 800 Wh** |

**Margin:** 8× headroom — supports 4-hour GIC event with single module failure.

---

## 4. HEMP E1/E2/E3 Protection — MIL-STD-1857 / IEC 61000-2-9

### 4.1 Threat Environment

| Component | E1 (Early) | E2 (Intermediate) | E3 (Late) |
|-----------|------------|-------------------|-----------|
| **Rise Time** | <1 ns | 1 μs – 1 ms | 1–100 s |
| **Peak Field** | 50 kV/m | 1–10 kV/m | 10–100 V/km |
| **Frequency** | DC – 1 GHz | 1 Hz – 100 kHz | DC – 1 Hz |
| **Energy** | 10⁻⁶ J/m² | 10⁻² J/m² | 1–10 J/m² |
| **Coupling** | Line-of-sight, antenna | Lightning-like | GIC-like |

### 4.2 E1 Protection (Fast Pulse, <1 ns)

| Path | Protection | Specification |
|------|------------|---------------|
| **Grid Interface** | Gas Discharge Tube (GDT) | 3 kA, 8/20 μs, 600 V |
| **POF Network** | Inherently immune | No conductive path |
| **Enclosure** | BFRP Faraday cage | >60 dB @ 1 GHz (YInMn Blue glaze) |
| **Internal Wiring** | PTFE, twisted pair, <10 cm | Inside BFRP housing only |

**Verification:** TEM cell test 50 kV/m, 1 ns rise — no upset on FPGA/RTU/PLC. Bit error rate <10⁻¹² on POF.

### 4.3 E2 Protection (Intermediate, Lightning-Like)

| Path | Protection | Specification |
|------|------------|---------------|
| **Grid Interface** | GDT + MOV hybrid | 20 kA, 8/20 μs, 1.2 kV |
| **DC Link** | Film capacitor (self-healing) | 1000 VDC, 500 μF |
| **Coolant** | PEX-a (no conduction) | Immune |
| **Structure** | BFRP frame, equipotential mesh | 1 MΩ bleed resistors |

**Verification:** IEC 61000-4-5 Combination Wave (1.2/50 μs – 8/20 μs) 6 kV/3 kA — no damage.

### 4.4 E3 Protection (Late, GIC-Like)

| Path | Protection | Specification |
|------|------------|---------------|
| **Grid Interface** | Same as GIC ride-through | Floating XFMR, NGR 5A |
| **DC Link** | No earth reference | Immune |
| **Control** | All-dielectric (PMMA POF) | Immune |
| **Power Supplies** | Isolated DC-DC (BFRP) | No ground loop |

**Verification:** DC injection test (0.1 Hz, 10 A) on grid side — no process-side disturbance.

---

## 5. Lightning Protection — NFPA 780 / IEC 62305

### 5.1 Lightning Protection Level (LPL)

**Selected LPL: III** (for essential industrial facility)
- Rolling sphere radius: 45 m
- Mesh size: 15 m × 15 m
- Down conductor spacing: 15 m

### 5.2 Air Terminal System

| Component | Specification | Material |
|-----------|---------------|----------|
| **Air Terminals** | 10 mm Ø, 500 mm height | BFRP rod, ZrO₂ tip |
| **Down Conductors** | 50 mm² equivalent | BFRP flat braid (carbon fiber) |
| **Grounding Electrodes** | UFER (concrete-encased) + ring | 50 m ring, 3 m depth |
| **Ground Resistance** | <5 Ω (combined) | Measured annually |
| **Equipotential Bonding** | All metallic services | Via 1 MΩ resistors (static only) |

### 5.3 Surge Protection Zones (IEC 62305-4)

| Zone | Boundary | Protection | Residual Surge |
|------|----------|------------|----------------|
| **LPZ 0ₐ** | Outside structure | Air terminals, down conductors | Direct strike |
| **LPZ 0ᵦ** | Building envelope | GDT at service entrance | 6 kV / 3 kA |
| **LPZ 1** | Process electronics room | MOV + GDT hybrid at XFMR primary | 1.5 kV |
| **LPZ 2** | Inverter modules (BFRP) | No conductive penetration | <10 V |
| **LPZ 3** | FPGA/RTU/PLC (BFRP) | POF only, DC-DC isolated | <1 V |

---

## 6. EMC / EMI Control — CISPR 11 Class A, IEC 61000-4

### 6.1 Emission Limits (CISPR 11 / EN 55011 Class A, Group 1)

| Frequency Range | Conducted (QP/AV) | Radiated (10 m) |
|-----------------|-------------------|-----------------|
| 150 kHz – 500 kHz | 79 / 66 dBμV | — |
| 500 kHz – 5 MHz | 73 / 60 dBμV | — |
| 5 MHz – 30 MHz | 73 / 60 dBμV | — |
| 30 MHz – 230 MHz | — | 40 dBμV/m |
| 230 MHz – 1 GHz | — | 47 dBμV/m |
| 1 GHz – 6 GHz | — | 56 dBμV/m (peak) |

**Margin:** BFRP enclosure + POF + PEX-a provides >20 dB margin. Verified at CT-07 (EMC test).

### 6.2 Immunity Requirements (IEC 61000-4 / IEC 61000-6-2)

| Test | Standard | Level | Criteria |
|------|----------|-------|----------|
| **ESD** | IEC 61000-4-2 | ±8 kV contact, ±15 kV air | B |
| **Radiated RF** | IEC 61000-4-3 | 10 V/m, 80 MHz–6 GHz, 80% AM | A |
| **EFT/Burst** | IEC 61000-4-4 | ±2 kV (power), ±1 kV (signal) | B |
| **Surge** | IEC 61000-4-5 | ±2 kV line-line, ±4 kV line-earth | B |
| **Conducted RF** | IEC 61000-4-6 | 10 V, 150 kHz–80 MHz | A |
| **Magnetic Field** | IEC 61000-4-8 | 30 A/m (50 Hz), 300 A/m (1 s) | A |
| **Voltage Dips** | IEC 61000-4-11 | 0% 10 ms, 40% 100 ms, 70% 500 ms | B/C |

**Criteria A:** Normal operation
**Criteria B:** Temporary degradation, self-recoverable
**Criteria C:** Temporary degradation, operator intervention

### 6.3 Internal EMI Management

| Source | Frequency | Mitigation |
|--------|-----------|------------|
| **GaN Inverters** | 1–100 kHz (switching) | LCL filter, BFRP enclosure, shielded inductor |
| **PWM Gate Drive** | 100 kHz (FPGA) | POF to FPGA, no copper |
| **Varactor Tuning** | 100 Hz (RTU) | Low frequency, POF |
| **Drum Motor** | 8.33 Hz (500 RPM) | Piezo drive, no EMI |
| **MFC Valves** | DC (battery backup) | No switching noise |

---

## 7. Arc Flash & Electrical Safety — NFPA 70E

### 7.1 Arc Flash Hazard Analysis

| Location | Voltage | Bolted Fault Current | Clearing Time | Incident Energy (18) | PPE Category |
|----------|---------|---------------------|---------------|----------------------|--------------|
| **Grid Service** | 480 V | 25 kA | 0.1 s (breaker) | 4.2 cal/cm² | Cat 2 |
| **XFMR Secondary** | 400 V | 15 kA | 0.05 s (fuse) | 1.8 cal/cm² | Cat 1 |
| **Inverter DC Link** | 800 VDC | 2 kA (cap limited) | 0.001 s (desat) | 0.3 cal/cm² | Cat 0 |
| **RTU/PLC Power** | 24 VDC | 10 A (current limit) | 0.01 s | <0.1 cal/cm² | Cat 0 |

### 7.2 Arc Flash Mitigation Features

| Feature | Implementation | Standard |
|---------|----------------|----------|
| **No exposed conductors** | All connections inside BFRP enclosures | NFPA 70E 130.5 |
| **Bolted connections only** | Torque-verified, ZrO₂ insulated sleeves | NFPA 70E 110.14 |
| **Incident energy <1.2 cal/cm²** | At working distance (18) for all process areas | NFPA 70E 130.5 |
| **PPE Category 0** | No arc-rated PPE required inside forge boundary | NFPA 70E 130.7 |
| **Arc-resistant boundaries** | BFRP vessel = arc containment | NFPA 70E 200.6 |
| **Labels** | All enclosures labeled (voltage, energy, boundary) | NFPA 70E 130.5(H) |

### 7.3 Lockout/Tagout (LOTO) Procedure

| Step | Action | Verification |
|------|--------|--------------|
| 1 | Notify affected personnel | SCADA broadcast |
| 2 | Shutdown batch (recipe complete) | Stage PLC confirmation |
| 3 | Open grid vacuum contactor | Position indicator (POF) |
| 4 | Apply LOTO to contactor | Physical lock + tag |
| 5 | Verify zero voltage (DC link) | POF voltage sensor <1 V |
| 6 | Verify zero pressure (vessel) | POF pressure sensor <0.1 bar |
| 7 | Verify temperature <50°C | FBG <50°C all zones |
| 8 | Release for maintenance | Dual-key (Shift Lead + Maint) |

---

## 8. SIL-3 Electrical SIS — 24 Safety Instrumented Functions

### 8.1 SIF Register (Electrical Subset)

| SIF Tag | Function | SIL | Sensors (2oo3) | Final Element | Response | PFD<sub>avg</sub> |
|---------|----------|-----|----------------|---------------|----------|-------------------|
| **SIF-00-01** | Drum over-temp (any zone) | 3 | 3× FBG/zone | All inverters OFF | <50 ms | 1×10⁻⁴ |
| **SIF-00-02** | Vessel over-pressure (>5 bar) | 3 | 3× Pressure | Vent + inverters OFF | <50 ms | 1×10⁻⁴ |
| **SIF-00-03** | Atmosphere breach (pO₂ >10⁻⁶) | 3 | 3× ZrO₂ pO₂ | N₂ purge + OFF | <50 ms | 1×10⁻⁴ |
| **SIF-00-04** | Cooling water loss (<10 L/min) | 3 | 3× Flow | Ramp to 20% | <100 ms | 2×10⁻⁴ |
| **SIF-00-05** | FBG comms loss (>10/zone) | 2 | RTU heartbeat | Zone limit 50% | <500 ms | 5×10⁻⁴ |
| **SIF-00-06** | Drum rotation loss (<10 RPM) | 2 | 2× Encoder | Inverters OFF | <100 ms | 2×10⁻⁴ |
| **SIF-00-07** | Ground fault (NGR >5 A) | 3 | NGR monitor | All OFF + isolate | <50 ms | 1×10⁻⁴ |
| **SIF-00-08** | GIC event (dV/dt > threshold) | 2 | Grid monitor | Ride-through mode | <10 ms | 5×10⁻⁴ |
| **SIF-00-09** | Port valve position mismatch | 2 | Valve FBG | Block stage advance | <500 ms | 5×10⁻⁴ |
| **SIF-00-10** | Carousel index timeout | 2 | Position sensor | Hold + alarm | <1 s | 1×10⁻³ |

### 8.2 SIS Architecture — Physical Independence

```
SIS HIERARCHY (DEDICATED HARDWARE):
┌─────────────────────────────────────────────────────────────────┐
│                    PLANT SIS MASTER (FPGA)                      │
│  • 24 SIL-3 SIF logic (2oo3 voting)                            │
│  • Dedicated PMMA POF ring (VLAN 10, TSN 200 μs slice)         │
│  • No shared power, CPU, memory, network with BPCS             │
│  • Proof test: CT-04 quarterly partial-stroke, annual full     │
└─────────────────────────┬───────────────────────────────────────┘
                          │
          ┌───────────────┼───────────────┐
          ▼               ▼               ▼
   ┌──────────┐     ┌──────────┐     ┌──────────┐
   │ ZONE RTU │     │ ZONE RTU │     │ ZONE RTU │   (×8)
   │  SIS FPGA│     │  SIS FPGA│     │  SIS FPGA│
   │  (Artix) │     │  (Artix) │     │  (Artix) │
   └────┬─────┘     └────┬─────┘     └────┬─────┘
        │               │               │
        ▼               ▼               ▼
   3× FBG/zone      3× FBG/zone      3× FBG/zone
   (physically separated angular positions)
```

**Common Cause Failure (β-factor) Analysis:**
- Sensor separation: 3 FBG/zone at 120° intervals → β < 0.01
- Power: Dedicated isolated DC-DC per RTU → β < 0.005
- Network: Dedicated TSN VLAN + time slice → β < 0.005
- Software: Diversity (FPGA vs. ARM vs. PLC) → β < 0.01
- **Total β < 0.03** (well below 0.1 limit for SIL-3)

### 8.3 Proof Test Schedule (CT-04)

| Test | Frequency | Method | Duration |
|------|-----------|--------|----------|
| **Partial Stroke (Online)** | Quarterly | SIF logic injection via TSN | 5 min/zone |
| **Full Function (Offline)** | Annual | Simulated trip conditions | 2 hr/zone |
| **Valve/Actuator Stroke** | Annual | Full travel, timed | 30 min/valve |
| **Sensor Calibration** | Annual | Reference source, 3-point | 1 hr/zone |
| **Communication Test** | Monthly | TSN latency, PTP sync | 10 min |

**PFD<sub>avg</sub> Calculation:** Σ(PFD<sub>sensor</sub> + PFD<sub>logic</sub> + PFD<sub>actuator</sub>) × (1-β) = 2.3×10⁻³ (meets SIL-3 system <10⁻²)

---

## 9. Grounding & Bonding — IEEE Std 142 / IEEE Std 1100

### 9.1 Grounding Philosophy

**Single-Point Ground at Substation Only.** No ground reference anywhere in the process zone. All grounding inside the forge is **equipotential bonding via 1 MΩ bleed resistors** for static dissipation only.

```
GROUNDING TOPOLOGY:
Utility Substation (Single Point)
       │
       ▼
Isolation Transformer (Δ-Y, Floating Secondary)
       │
       ▼
Neutral Grounding Resistor (5 A, 400 V) → Earth
       │
       ├──► Transformer Tank (BFRP, no metal)
       ├──► Cable Trays (BFRP, 1 MΩ bleed)
       ├──► Enclosures (BFRP, 1 MΩ bleed)
       ├──► Cooling Water (PEX-a, DI water 18 MΩ·cm)
       └──► Structure (BFRP frame, no steel)
```

### 9.2 Equipotential Bonding Network

| Component | Bonding Method | Resistance |
|-----------|----------------|------------|
| **BFRP Cable Trays** | Carbon fiber braid + 1 MΩ to earth | 1 MΩ |
| **BFRP Enclosures** | Carbon fiber lug + 1 MΩ to tray | 1 MΩ |
| **Ceramic Bushings** | No bonding (inherently insulating) | >10¹³ Ω |
| **PEX-a Pipe** | No bonding (inherently insulating) | >10¹⁴ Ω |
| **PMMA POF** | No bonding (inherently insulating) | >10¹⁵ Ω |
| **Indium Foil (TIM)** | Local to cold plate only | <1 mΩ (thermal) |

### 9.3 Static Dissipation

- **Charge Generation:** Drum rotation (500 RPM), particle flow, gas flow
- **Dissipation Path:** YInMn Blue glaze (SRI=115, conductive surface) → BFRP frame → 1 MΩ bleed → earth
- **Maximum Potential:** <100 V (verified by ESD test IEC 61000-4-2)
- **Spark Prevention:** All ports have ZrO₂ piston with 0.05 mm clearance — no spark gap

---

## 10. Power Quality — IEEE 519, IEC 61000-3-12

### 10.1 Supply Quality Requirements

| Parameter | Requirement | Verification |
|-----------|-------------|--------------|
| **Voltage** | 480 V ±10% (432–528 V) | Continuous monitor |
| **Frequency** | 60 Hz ±0.5% (59.7–60.3 Hz) | Continuous monitor |
| **THD (Voltage)** | <5% (IEEE 519) | PQ meter at XFMR primary |
| **Individual Harmonics** | 3% (5th), 2% (7th), 1.5% (11th+) | IEEE 519 Table 1 |
| **Voltage Unbalance** | <2% (NEMA MG-1) | Continuous monitor |
| **Voltage Sag Ride-Through** | 0% for 10 ms, 40% for 100 ms | DC link hold-up |
| **Voltage Swell** | 110% for 500 ms | MOV clamp |

### 10.2 Harmonic Mitigation

| Source | Harmonics Generated | Mitigation |
|--------|---------------------|------------|
| **8× Class E Inverters** | Switching (1–100 kHz) + harmonics | LCL filter per module (40 dB) |
| **Rectifier (if any)** | 5th, 7th, 11th, 13th | 18-pulse or active front end |
| **VFD (auxiliary)** | 6-pulse | 12-pulse or active filter |
| **DC Link Charging** | Inrush current | Pre-charge resistor + contactor |

**Aggregate THD at PCC:** <3% (verified at CT-07)

### 10.3 Uninterruptible Power for Controls

| Load | UPS Capacity | Battery | Autonomy |
|------|--------------|---------|----------|
| **L3 SCADA (2× workstation)** | 3 kVA | LiFePO₄ 10 kWh | 2 hr |
| **L2 PLCs (8×)** | 2 kVA | LiFePO₄ 5 kWh | 2 hr |
| **L1 RTUs (8×)** | 1 kVA | LiFePO₄ 2 kWh | 2 hr |
| **L0 FPGAs (8×)** | 500 VA | LiFePO₄ 1 kWh | 2 hr |
| **PTP Grandmaster** | 200 VA | LiFePO₄ 500 Wh | 2 hr |
| **FBG Interrogators** | 500 VA | LiFePO₄ 1 kWh | 2 hr |
| **SIS (dedicated)** | 500 VA | LiFePO₄ 1 kWh | 2 hr |

**Total UPS:** 8 kVA / 21 kWh — supports graceful shutdown + ride-through overlap.

---

## 11. Insulation Coordination — IEC 60664 / IEC 61865

### 11.1 Pollution Degree & Overvoltage Category

| Location | Pollution Degree | Overvoltage Category | Rationale |
|----------|------------------|----------------------|-----------|
| **Grid Side** | 3 (conductive dust) | III (fixed installation) | Outdoor/industrial |
| **XFMR Primary** | 3 | III | Grid-connected |
| **XFMR Secondary** | 2 (BFRP enclosure) | II (isolated) | Floating, no earth |
| **Inverter Module** | 1 (sealed BFRP) | I (SELV-like) | 800 VDC, no earth ref |
| **RTU/PLC/FPGA** | 1 (sealed BFRP) | I (SELV) | 24 VDC, isolated |

### 11.2 Clearance & Creepage Distances (IEC 60664-1)

| Working Voltage | Pollution Deg 1 | Pollution Deg 2 | Pollution Deg 3 |
|-----------------|-----------------|-----------------|-----------------|
| | Clearance / Creepage | Clearance / Creepage | Clearance / Creepage |
| **50 V** | 0.08 / 0.6 mm | 0.6 / 1.2 mm | 1.5 / 2.5 mm |
| **150 V** | 0.5 / 1.2 mm | 1.5 / 2.5 mm | 3.0 / 4.0 mm |
| **400 V** | 1.0 / 2.5 mm | 3.0 / 5.0 mm | 5.5 / 8.0 mm |
| **800 V** | 1.8 / 4.0 mm | 5.5 / 8.0 mm | 11 / 16 mm |
| **1000 V** | 2.4 / 5.0 mm | 7.5 / 10 mm | 15 / 22 mm |

**Applied Clearances (worst case Pollution Deg 3, Cat III):**
- Grid side (480 V): 5.5 mm clearance, 8.0 mm creepage
- DC link (800 V): 11 mm clearance, 16 mm creepage
- RTU/PLC (24 V): 1.5 mm clearance, 2.5 mm creepage

### 11.3 Partial Discharge Requirements

| Component | Test Voltage | PD Limit | Method |
|-----------|--------------|----------|--------|
| **Isolation XFMR** | 1.5× rated (600 VAC) | <5 pC | IEC 60270 |
| **Inverter DC Link Caps** | 1.5× rated (1200 VDC) | <10 pC | IEC 61865 |
| **GaN Module** | 1.5× rated (600 V) | <5 pC | IEC 60747-8 |
| **POF Connectors** | N/A (dielectric) | N/A | N/A |

---

## 12. Cyber-Physical Electrical Security — IEC 62443, Air-Gap

### 12.1 Security Level Target

**SL-3 (IEC 62443-3-3)** — Protection against intentional violation using sophisticated means with moderate resources, generic skills, low motivation.

### 12.2 Architecture — Absolute Air Gap

```
┌─────────────────────────────────────────────────────────────────┐
│                        IT NETWORK (Enterprise)                   │
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────────────────┐  │
│  │ Email/Web   │  │ ERP/MES     │  │ Historian (Read-Only)   │  │
│  │ Domain      │  │ Domain      │  │ (InfluxDB Mirror)       │  │
│  └─────────────┘  └─────────────┘  └─────────────────────────┘  │
└─────────────────────────────────────────────────────────────────┘
                              │
                    ┌─────────▼─────────┐
                    │   DATA DIODE      │  (Unidirectional: OT → IT)
                    │   (Hardware)      │  Optical, no return path
                    │   1 Gbps          │  STANAG 5066 / OPC-UA
                    └─────────┬─────────┘
                              │
┌─────────────────────────────────────────────────────────────────┐
│                        OT NETWORK (Air-Gapped)                   │
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────────────────┐  │
│  │ SCADA (L3)  │  │ PLCs (L2)   │  │ RTUs (L1) + SIS (FPGA)  │  │
│  │ Historian   │  │ Interlocks  │  │ PID, PLL, FBG, TSN      │  │
│  │ OPC-UA Srv  │  │ Recipes     │  │ (All PMMA POF)          │  │
│  └─────────────┘  └─────────────┘  └─────────────────────────┘  │
└─────────────────────────────────────────────────────────────────┘
```

### 12.3 Security Controls (IEC 62443-3-3 SL-3)

| Control | Implementation | Verification |
|---------|----------------|--------------|
| **Network Segmentation** | Air gap + data diode (OT→IT only) | Penetration test quarterly |
| **Access Control** | Dual-factor (badge + biometric) for SCADA | Audit log review weekly |
| **Malware Protection** | Application whitelisting (no AV) | Hash verification at boot |
| **Patch Management** | Offline staging, signed images, MOC | PROD-38 config mgmt |
| **Incident Response** | 4-hour containment, 24-hr recovery | Tabletop exercise quarterly |
| **Supply Chain** | Signed firmware, SBOM, vendor audit | PROD-27 supplier qual |
| **ML Anomaly Detection** | FOLLOW-29 (autoencoder on twin data) | Continuous, <3σ alert |

### 12.4 Secure Boot Chain

```
FPGA/RTU/PLC BOOT SEQUENCE:
1. Hardware Root of Trust (eFuse) → Verify Stage 1 Bootloader (RSA-2048)
2. Stage 1 → Verify Stage 2 Firmware (ECDSA-P256)
3. Stage 2 → Verify Config (FRAM/MRAM, SHA256 + HMAC)
4. Stage 2 → Verify Application (Git tag hash, SHA256)
5. All stages → Measure into TPM 2.0 (PCR 0-7)
6. Remote Attestation → SCADA verifies PCR values at startup
```

**Key Management:** HSM (FIPS 140-2 Level 3) at SCADA. Keys rotated annually. Root key offline.

---

## 13. Cross-Reference Matrix

| Section | Upstream Dependencies | Downstream Dependencies | Interface |
|---------|----------------------|------------------------|-----------|
| 1. Architecture | PROD-01, PROD-23 | All | Hierarchy, isolation |
| 2. Dielectric Design | PROD-04, 06, 09, 23 | PROD-27, 28, 30 | Penetrations, materials |
| 3. GIC Hardening | PROD-10, 23, IEEE 1656 | PROD-27, 32, 39 | Ride-through, test |
| 4. HEMP Protection | PROD-10, MIL-STD-1857 | PROD-27, 36, 39 | Surge, TEM cell test |
| 5. Lightning | NFPA 780, IEC 62305 | PROD-27, 29, 32 | Air terminals, grounding |
| 6. EMC/EMI | PROD-03, 10, CISPR 11 | PROD-27, 28, 39 | Emissions, immunity |
| 7. Arc Flash | NFPA 70E, PROD-10 | PROD-27, 29, 34, 35 | Labels, LOTO, PPE |
| 8. SIL-3 SIS | PROD-23, IEC 61508 | PROD-27, 28, 32, 39 | SIF register, proof test |
| 9. Grounding | IEEE 142, 1100 | PROD-27, 29, 30 | Bonding, static |
| 10. Power Quality | IEEE 519, PROD-10 | PROD-27, 29, 31 | Harmonics, UPS |
| 11. Insulation | IEC 60664, PROD-25 | PROD-27, 28, 39 | Clearance, PD test |
| 12. Cyber-Physical | PROD-23, 36, IEC 62443 | PROD-27, 29, 36, 37 | Air gap, diode, ML |

---

## Appendix A: Quick-Reference Card

```
AEGIS-FORGE I — ELECTRICAL SAFETY & GIC IMMUNITY QUICK REFERENCE
===================================================================

DIELECTRIC ARCHITECTURE:
  Signal: PMMA POF (980/1000μm) — 480 sensors, 96 actuators
  Coolant: PEX-a (DI water 18 MΩ·cm) — 16 L/min
  Enclosures: BFRP/Elium® — all housings, trays, structure
  Penetrations: Al₂O₃/ZrO₂ ceramic bushings — zero metal

Carrington GIC (5000 nT/s):
  Floating XFMR (Δ-Y) + NGR 5A = no GIC path
  Ride-through: 5ms cap → 10ms contactor → LiFePO₄ 100 Wh/module
  All-dielectric control = zero antenna

HEMP E1/E2/E3:
  E1: GDT 3kA @ grid, BFRP Faraday >60dB @ 1GHz
  E2: GDT+MOV 20kA @ grid, PEX-a immune
  E3: Same as GIC — floating architecture

LIGHTNING (LPL III):
  BFRP air terminals, carbon down conductors
  UFER + ring ground <5Ω
  SPD zones: LPZ0→LPZ3 (POF immune in LPZ3)

ARC FLASH (NFPA 70E):
  Max incident energy: 4.2 cal/cm² @ grid, 0.3 @ process
  PPE Cat 0 inside forge boundary
  No exposed conductors, all bolted + ZrO₂ sleeves
  LOTO: Grid contactor + DC link verify + pressure/temp verify

SIL-3 SIS (24 SIFs):
  2oo3 voting on dedicated FPGA + POF (VLAN 10)
  PFD_avg = 2.3×10⁻³ (system <10⁻²)
  Proof test: CT-04 quarterly partial, annual full

GROUNDING:
  Single point at substation ONLY
  Forge: Equipotential bonding via 1 MΩ bleed resistors
  No conductive path process-to-earth

POWER QUALITY:
  480V ±10%, 60Hz ±0.5%, THD <5%, sag ride-through 10ms
  UPS: 8 kVA / 21 kWh for 2hr control autonomy

INSULATION (IEC 60664):
  PD3/CatIII: 480V→5.5mm cl/8mm cr, 800V→11mm cl/16mm cr
  PD test: XFMR <5pC, DC link <10pC, GaN <5pC

CYBER (IEC 62443 SL-3):
  Absolute air gap + data diode (OT→IT only)
  Secure boot: eFuse → RSA2048 → ECDSA256 → SHA256+HMAC → TPM
  ML anomaly: FOLLOW-29 autoencoder on digital twin

KEY EQUATIONS:
  GIC: V_ind = -dΦ/dt = -A·dB/dt (A=loop area)
  Ride-through: E_cap = ½CV² = 100 Wh/module
  Skin depth: δ = √(2ρ/ωμ)
  Arc flash: IE = k·E·t/D² (NFPA 70E)
  SIL: PFD = λ·TI/2 (per channel), 2oo3 = 3λ²TI²/2
```

---

## Appendix B: GIC/EMP Test Plan

**Test Facility:** CSMFAB EMC Laboratory (TEM cell, Helmholtz coil, GIC simulator, lightning simulator)
**Test Article:** Full Forge power electronics + control (S/N FA-01)
**Schedule:** 2 weeks (setup, E1, E2, E3, GIC, lightning, EMC, reporting)

### Day 1-2: Setup & Baseline
- Install test article on isolated ground plane
- Install 64 POF sensors, 32 current probes, 16 voltage probes
- Verify PTP sync <1 μs, TSN latency <100 μs
- Baseline functional test (all zones 100 kW, 1 hr)

### Day 3-4: E1 HEMP (MIL-STD-1857)
- TEM cell, 50 kV/m, 1 ns rise, 200 ps FWHM
- 3 polarizations × 3 pulse counts
- Monitor: FPGA upset, POF BER, SIF trip
- Pass: No latch-up, BER <10⁻¹², no SIF trip

### Day 5-6: E2 HEMP (IEC 61000-4-5)
- Combination wave 1.2/50 μs – 8/20 μs, 6 kV/3 kA
- 5 surges per mode (L-L, L-G, L-PE)
- Monitor: DC link voltage, MOV/GDT operation, insulation
- Pass: No damage, insulation >1 GΩ

### Day 7-8: E3 / GIC (IEEE 1656 / IEC 61000-2-9)
- GIC Simulator: 0.1 Hz, 10 A/phase DC injection on grid side
- Duration: 30 min (extended to 4 hr for margin)
- Monitor: Ride-through trigger, LiFePO₄ voltage, drum temp, SIS health
- Pass: Ride-through clean, controls operational, no thermal shock

### Day 9: Lightning (IEC 62305)
- Direct strike simulation: 200 kA, 10/350 μs on down conductor
- Indirect: 6 kV/3 kA on service entrance
- Monitor: SPD operation, internal surge, data integrity
- Pass: No internal surge >10 V, no data loss

### Day 10: EMC (CISPR 11 / IEC 61000-4)
- Conducted emissions (150 kHz–30 MHz) — LISN
- Radiated emissions (30 MHz–6 GHz) — 10 m chamber
- Immunity: ESD, RF, EFT, Surge, Conducted RF, Mag field
- Pass: Class A limits, Criteria A/B per table

### Day 11-12: Insulation Coordination
- Megger all penetrations (500 VDC) — >1 GΩ
- Hipot (1.5× rated) — no breakdown
- Partial discharge (IEC 60270) — <5 pC XFMR, <10 pC caps

### Day 13-14: Reporting
- Test report with all waveforms, pass/fail, deviations
- Signed by PE (Professional Engineer)
- Update SIF register with as-tested PFD values

---

## Appendix C: SIL-3 SIF Register (Complete 24 SIFs)

| SIF Tag | Description | SIL | Sensors | Actuators | Response | Proof Test |
|---------|-------------|-----|---------|-----------|----------|------------|
| SIF-00-01 | Drum over-temp (any FBG > T_lim) | 3 | 3× FBG/zone (120° sep) | All zone inverters OFF | <50 ms | CT-04 |
| SIF-00-02 | Vessel over-pressure (>5 bar) | 3 | 3× Pressure (diff loc) | Emergency vent + OFF | <50 ms | CT-04 |
| SIF-00-03 | Atmosphere breach (pO₂ >10⁻⁶ atm) | 3 | 3× ZrO₂ pO₂ | N₂ purge + OFF | <50 ms | CT-04 |
| SIF-00-04 | Cooling water loss (<10 L/min) | 3 | 3× Flow (ultrasonic) | Ramp to 20% | <100 ms | CT-04 |
| SIF-00-05 | FBG comms loss (>10/zone) | 2 | RTU heartbeat (TSN) | Zone limit 50% | <500 ms | CT-04 |
| SIF-00-06 | Drum rotation loss (<10 RPM) | 2 | 2× Encoder (FBG) | Inverters OFF | <100 ms | CT-04 |
| SIF-00-07 | Ground fault (NGR >5 A) | 3 | NGR monitor (residual) | All OFF + isolate | <50 ms | CT-04 |
| SIF-00-08 | GIC event (grid dV/dt >5 V/ms) | 2 | Grid monitor (PMU) | Ride-through mode | <10 ms | CT-04 |
| SIF-00-09 | Port valve position mismatch | 2 | Valve FBG (open/closed) | Block stage advance | <500 ms | CT-04 |
| SIF-00-10 | Carousel index timeout | 2 | Position sensor (POF) | Hold + alarm | <1 s | CT-04 |
| SIF-00-11 | Inverter over-current (desat) | 3 | GaN desat detect (FPGA) | Leg OFF (hardware) | <10 μs | CT-04 |
| SIF-00-12 | Inverter over-voltage (DC link) | 3 | DC link voltage (ISO amp) | Shunt dump + OFF | <100 μs | CT-04 |
| SIF-00-13 | DC link capacitor over-temp | 2 | FBG on cold plate | Ramp down zone | <1 s | CT-04 |
| SIF-00-14 | Varactor bias fault (open/short) | 2 | RTU DAC feedback | Cap bank only mode | <10 ms | CT-04 |
| SIF-00-15 | MFC flow deviation (>20%) | 2 | MFC feedback (POF) | Alarm + hold | <100 ms | CT-04 |
| SIF-00-16 | Gas pressure high (>1.5× set) | 2 | Pressure transducer | Vent + alarm | <100 ms | CT-04 |
| SIF-00-17 | Flux injector jam | 2 | Motor current + encoder | Alarm + hold | <500 ms | CT-04 |
| SIF-00-18 | Quench nozzle pressure loss | 2 | Pressure transducer | Alarm + hold | <100 ms | CT-04 |
| SIF-00-19 | FBG interrogator failure | 2 | SNR <20 dB or missing ch | Zone limit 50% | <500 ms | CT-04 |
| SIF-00-20 | PTP sync loss (>1 μs) | 2 | PTP offset monitor | Local OCXO holdover | <100 ms | CT-04 |
| SIF-00-21 | TSN communication loss | 2 | TSN heartbeat (VLAN 10) | SIS local trip | <50 ms | CT-04 |
| SIF-00-22 | Optical E-stop activated | 3 | POF loop break (8×) | All OFF (hardware) | <1 ms | CT-04 |
| SIF-00-23 | Crane interlock breach | 3 | POF interlock (4×) | Zone OFF + hold | <50 ms | CT-04 |
| SIF-00-24 | Fire detection (IR/UV) | 3 | 4× IR + 2× UV (POF) | Suppression + OFF | <50 ms | CT-04 |

**Total PFD<sub>avg</sub> (SIL-3 subset):** 2.3×10⁻³ (meets <10⁻² system requirement)

---

## Appendix D: Insulation Coordination Tables

### D.1 Clearance & Creepage by Voltage (IEC 60664-1, PD3, Cat III)

| Working Voltage (V) | Clearance (mm) | Creepage (mm) | Material Group |
|---------------------|----------------|---------------|----------------|
| ≤50 | 1.5 | 2.5 | IIIa |
| 150 | 3.0 | 4.0 | IIIa |
| 300 | 4.0 | 6.3 | IIIa |
| 400 | 5.5 | 8.0 | IIIa |
| 500 | 7.0 | 10.0 | IIIa |
| 600 | 8.0 | 12.5 | IIIa |
| 800 | 11.0 | 16.0 | IIIa |
| 1000 | 15.0 | 22.0 | IIIa |

### D.2 Applied Clearances in Aegis-Forge I

| Assembly | Voltage | Pollution Deg | Clearance (mm) | Creepage (mm) | Verification |
|----------|---------|---------------|----------------|---------------|--------------|
| Grid inlet | 480 VAC | 3 | 6.0 | 10.0 | CT-07 |
| Isolation XFMR primary | 480 VAC | 3 | 6.0 | 10.0 | CT-07 |
| Isolation XFMR secondary | 400 VAC | 2 | 3.0 | 5.0 | CT-07 |
| DC Link (inverter) | 800 VDC | 1 | 11.0 | 16.0 | CT-07 |
| GaN gate drive | 12 VDC | 1 | 1.5 | 2.5 | CT-07 |
| RTU/PLC power | 24 VDC | 1 | 1.5 | 2.5 | CT-07 |
| FBG interrogator | 12 VDC | 1 | 1.5 | 2.5 | CT-07 |
| Ceramic bushing | 400 VAC | 3 | 5.5 | 8.0 | CT-03 |

### D.3 Material Group Classification (IEC 60664-1)

| Material | CTI (Comparative Tracking Index) | Group |
|----------|----------------------------------|-------|
| BFRP/Elium® | >600 | I |
| PMMA POF | >600 | I |
| PEEK CF40 | >600 | I |
| Al₂O₃ (99.6%) | >600 | I |
| ZrO₂ (3Y-TZP) | >600 | I |
| PTFE | >600 | I |
| Indium foil | N/A (metal, <1 mm²) | — |

**All organic materials Group I (CTI >600) — most favorable for creepage.**

---

*End of CSMFAB000000000126 — PROD-26 Electrical Safety & GIC Immunity*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*