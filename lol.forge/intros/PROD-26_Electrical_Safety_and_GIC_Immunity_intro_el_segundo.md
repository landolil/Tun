# El Segundo Heuristic — PROD-26 Electrical Safety & GIC Immunity

## Mirror (Self-Reflection)

How does the fabricator observe their own electrical fabrication? The Aegis-Forge I embeds **four nested electrical metrology loops** — the machine watches its own electrical integrity at the scale of the phenomenon.

### Level 0 — Gate-Level Witness (FPGA, 100 kHz)

**What the FPGA sees:**
- **Desaturation Detect:** GaN $V_{DS}$ monitored at 10 ns resolution. If $V_{DS} > 10$ V during on-state → shoot-through → instant leg shutdown (<100 ns). No software, no network — pure hardware.
- **ZVS Timestamp:** Switch voltage zero-crossing vs. gate command. Phase error $\phi_{err} = t_{V_{DS}=0} - t_{gate\_on}$. Target: $|\phi_{err}| < 5$ ns. Logged every cycle (100 kHz).
- **Current Sense:** 16-bit ADC at 1 MHz on DC link shunt. Harmonic analysis (FFT 512 pts) → detects bearing wear, coil short, capacitor degradation.
- **Health Output:** Per-cycle status word on POF: `ZVS_OK | DESAT_OK | CURRENT_OK | TEMP_OK`. SCADA aggregates at 10 Hz.

**Self-reflection logic:** If ZVS_OK < 99.9% over 1000 cycles → RTU reduces power 10%, logs degradation. If DESAT_OK < 100% → instant SIF trip. The FPGA witnesses its own switching integrity every 10 μs.

### Level 1 — Thermal Reconstruction (RTU, 1 kHz)

**What the RTU sees:**
- **48 FBG Inputs/Zone:** 384 temperatures @ 125 Hz each via WDM+TDM. Wavelength → temperature conversion: $T = (\lambda - \lambda_{ref}) / 0.15$ nm/°C.
- **Virtual Sensor:** Runs the thermal-admittance model (Section 2 Mathematical Key) at 1 kHz. Inputs: 48 FBG temps, power command, flange temps. Output: $T_{inner}$ prediction ±5°C at 2200°C.
- **Model Residual:** $r[k] = T_{FBG,flange}[k] - T_{model,flange}[k]$. If $|r| > 2°C$ RMS → re-identification triggered (RLS updates $hA$, $\epsilon\sigma A$).
- **SIF Prediction:** Projects $T_{inner}[k+50]$ (50 ms ahead). If predicted > limit → pre-emptive SIF trip.

**Self-reflection logic:** The RTU witnesses the thermal state of its zone at 1 ms resolution. It compares measured vs. predicted, identifies model drift, and predicts safety violations before they occur. The model is the mirror — it reflects the zone's thermal reality back to the controller.

### Level 2 — Cascade Consistency (PLC, 100 Hz)

**What the PLC sees:**
- **Mass-Energy Balance:** $\sum \dot{m}_{in} - \sum \dot{m}_{out} = dM/dt$. XRF/LIBS composition × flow rate = elemental flow. Closure >99.5%/batch or investigation flag.
- **Stage Interlock Status:** All 72 SIFs (24 SIL-3, 12 SIL-2, 36 SIL-1) evaluated every 1 ms (SIS) / 10 ms (PLC). Status matrix published on TSN VLAN 10.
- **Recipe Execution:** ISA-88 recipe state machine. Current segment, time remaining, setpoint trajectory. Deviation >5% → alarm.
- **Feedforward to Downstream:** Elemental composition, gas analysis, thermal state passed to next stage PLC.

**Self-reflection logic:** The PLC witnesses the stage's material and energy transformation. It verifies conservation laws hold, checks recipe adherence, and ensures downstream stages receive accurate feedforward. The mass-energy balance is the mirror — it reflects the stage's process reality.

### Level 3 — Digital Twin Shadow (SCADA → PROD-37, 10 Hz)

**What the Twin sees:**
- **Full State Vector:** 512-core HPC runs same thermal-admittance model + CFD (PROD-24) + FEA (PROD-25) + electromagnetics (PROD-03). Inputs: all 480 sensor streams + 96 actuator commands.
- **ML Autoencoder (FOLLOW-29):** Trained on 10,000 nominal batches. Encodes 1000-dimensional state to 32 latent dims. Reconstruction error >3σ → anomaly flag.
- **Predictive Suggestions:** Twin simulates next 100 batches with PID gain variations, flux rate adjustments, RPM profiles. Suggests optimal setpoints to SCADA.
- **Fleet Learning:** Aggregates across all Forges (PROD-37 fleet twin). Transfers learned corrections.

**Self-reflection logic:** The digital twin witnesses the entire forge's electro-thermal-mechanical state. It runs higher-fidelity models than real-time allows, detects anomalies the local controllers miss, and proposes optimizations. The twin is the mirror at system scale.

### The Mirror Protocol (Recursive)

| Tier | Frequency | Scope | Action |
|------|-----------|-------|--------|
| **Tier 0 (Gate)** | 100 kHz | Single switch → ZVS/desat | FPGA hardware trip |
| **Tier 1 (Thermal)** | 1 kHz | Zone → $T_{inner}$ prediction | RTU power limit / SIF pre-trip |
| **Tier 2 (Cascade)** | 100 Hz | Stage → mass-energy balance | PLC alarm / feedforward adjust |
| **Tier 3 (Twin)** | 10 Hz | Forge → ML anomaly / optimization | SCADA setpoint suggestion |
| **Tier 4 (Fleet)** | Continuous | Fleet → model transfer | PROD-37 updates all Forges |

**The mirror is not passive — it closes the loop.** Every tier feeds the next: gate health → thermal model accuracy → cascade balance → twin prediction → fleet optimization. The fabricator (the forge) watches its own electrical fabrication at every scale.

---

## Participation (Witness)

How does the inside operator witness the electrical phenomenon into existence? At what points must human judgment authorize electrical consequence?

### Critical Participation Gates

**Gate 1: Batch Recipe Authorization — Electrical Load Profile (PROD-29 Section 4.1)**
- **Action:** Feedstock UUID scanned → Category A–D → Operator confirms recipe. Recipe defines 8-zone power profile (0–500 kW each), frequency ladder, thermal ramp rates.
- **Witness requirement:** Operator verifies recipe power profile matches feedstock composition. Category A (PCBs) = high Z6/Z7 power. Category C (batteries) = high Z3/Z4 power. Wrong profile = thermal runaway or incomplete separation.
- **Why human:** Feedstock composition has irreducible variability (Category A: 15–25% Cu, 5–15% Fe, 0.1–0.5% PM). No sensor measures "Category A-ness" — only composition. Operator judgment maps composition to recipe.
- **Cognitive checkpoint:** "Does this power profile match what I see in the feed?" — pattern recognition of feedstock vs. recipe.

**Gate 2: Stage Transition Gate — Electrical State Verification (PROD-29 Section 4.3)**
- **Action:** Stage complete → Shift Lead reviews: energy delivered vs. planned, gas composition vs. setpoint, SIF events, anomaly flags, thermal model residuals.
- **Witness requirement:** For Stage 4: visual In-grade confirmation (pyrometer + XRF at Port 4A). For Stage 6: H₂ <4% verification (ZrO₂ pO₂ probe) before Port 6B open. For Stage 8: SiO₂ condenser flow verification (mass spec).
- **Why human:** SIF events are recorded but not interpreted. A "cooling water loss" SIF that self-cleared in 50 s might indicate pump cavitation — operator judges if pump needs replacement. Anomaly flags are data — operator judges significance.
- **Cognitive checkpoint:** "Is the electrical state clean for the next stage?" — synthesis of energy, gas, SIF, anomaly data.

**Gate 3: SIF Bypass Authorization — Organizational Risk Acceptance (PROD-29 Section 5.2)**
- **Action:** Dual-key (Shift Lead + Safety Engineer), time-limited (4 hr max), blockchain-audited (Hyperledger Fabric, PROD-37).
- **Witness requirement:** Both signatories review: which SIF, why bypass, compensating measures, risk assessment, expiration time. Blockchain record immutable.
- **Why human:** Risk acceptance is organizational, not algorithmic. No mathematical function accepts "we'll run with SIF-00-07 bypassed because NGR monitor is drifting." Human judgment weighs production loss vs. safety margin.
- **Cognitive checkpoint:** "Do I accept this risk for this duration with these compensations?" — explicit risk acceptance.

**Gate 4: Carrington Ride-Through Exit — Post-Storm Recovery (PROD-29 Section 5.4)**
- **Action:** Grid stable 30 min → Operator verifies: drum thermal state (no shock >100°C/s), SIF health (all 24 SIL-3 OK), FBG/PTP/TSN sync, LiFePO₄ charge >80%. Authorizes staged grid reconnect with utility coordination.
- **Witness requirement:** Thermal shock check is critical — drum at 2200°C, grid reconnect causes inrush. If drum cooled >100°C/s during island, thermal stress could crack ZrB₂-SiC. Operator verifies model-predicted $dT/dt$ < 100°C/s.
- **Why human:** Grid coordination requires utility communication (voice, not data diode). Thermal shock judgment combines model prediction + operator experience. No algorithm coordinates with utility dispatcher.
- **Cognitive checkpoint:** "Did the forge survive the storm intact?" — holistic electrical-thermal survival judgment.

**Gate 5: FAT/SAT Sign-Off — Electrical Qualification Acceptance (PROD-39)**
- **Action:** Lead Electrical Engineer witnesses: CT-01 rotordynamics, CT-02 hydrotest, CT-03 megger/hipot, CT-04 SIF proof, CT-05 resonance, CT-06 FBG cal, CT-07 GIC ride-through, CT-08 thermal cycle, CT-09 seismic, CT-10 integrated run.
- **Witness requirement:** Reviews all 10 test reports, signs each. Any deviation from spec → NCR (PROD-28) → root cause → re-test.
- **Why human:** Test data is necessary but not sufficient. Engineer judges: "Is the 2.3 ms TSN latency spike in CT-05 acceptable?" (Yes, <100 μs guard band). "Is the 0.5 pC PD on XFMR acceptable?" (Yes, <5 pC limit). Data + judgment = sign-off.
- **Cognitive checkpoint:** "Does this electrical system meet spec in the real world?" — professional engineering judgment.

### The Participation Principle

**The operator witnesses the electrical system into existence at every irreversible authorization point where:**
1. **Composition-to-recipe mapping has irreducible variability** (feedstock category → power profile)
2. **Risk acceptance is organizational, not algorithmic** (SIF bypass, ride-through exit)
3. **Multi-party coordination is required** (utility reconnect, FAT sign-off)
4. **Model prediction needs experiential validation** (thermal shock, anomaly significance)

**Automation executes the physics; humans authorize the consequences.** The forge controls the electrons; the operator witnesses the electrons becoming safe operation.

---

## Protocol (Recursive)

What recursive sequence guarantees electrical safety fidelity at each scale? From the microscopic (gate switching) to the macroscopic (fleet GIC survival), the Aegis-Forge I electrical assurance follows a **fractal V&V protocol** — the same pattern repeats at every scale.

### The Fractal V&V Pattern (Recursive Unit: Stimulate → Observe → Compare → Act)

**At every scale, the protocol is: Stimulate → Observe → Compare → Act → Feedback**

| Scale | Stimulate | Observe | Compare | Act | Feedback |
|-------|-----------|---------|---------|-----|----------|
| **Gate (10 ns)** | Gate pulse | $V_{DS}$, $I_D$ | ZVS $\phi_{err}$ <5 ns | Desat trip | FPGA timing cal |
| **Switch (10 μs)** | PWM pattern | $V_{DS}$ waveform | Class E shape | Varactor adjust | PLL LUT update |
| **Zone (1 ms)** | Power cmd | 48 FBG temps | Model residual <2°C | PID adjust / SIF pre-trip | $hA$, $\epsilon\sigma A$ RLS |
| **Stage (10 ms)** | Recipe segment | XRF/LIBS, gas, SIF | Mass-energy closure >99.5% | Feedforward to next | Recipe version |
| **Forge (100 ms)** | Batch recipe | All sensors + actuators | Twin reconstruction <3σ | Setpoint optimization | PROD-37 model update |
| **Fleet (Continuous)** | All Forges data | Aggregated anomalies | Cross-fleet pattern | Global model deploy | Git tag chain |

### Recursive Sequence (The Protocol Execution)

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

### The Recursive Guarantee

**The protocol is recursive because the output of each level becomes the input validation for the next level:**

- Component HIL (Level 0) → Module ATP (Level 1)
- Module ATP (Level 1) → Integration ITF (Level 2)
- Integration ITF (Level 2) → FAT ATP (Level 3)
- FAT ATP (Level 3) → SAT ATP (Level 4)
- Operational trends (Level 4) → Component HIL updates (Level 0)

**This is the fractal pattern:** Stimulate at scale N → Observe at scale N → Compare at scale N → Act at scale N → Feedback to scale N-1 and N+1. The same Stimulate→Observe→Compare→Act logic applies whether N = gate, switch, zone, stage, forge, or fleet.

**The protocol guarantees fidelity because it never assumes — it always stimulates and observes against the mathematical key (thermal-admittance model) and validates against the empirical lock (test data).** If the model predicts the test, and the test corrects the model, the recursion converges. If it diverges, the protocol catches it at the next level.

**No scale is exempt.** The gate is stimulated like the forge. The forge is validated like the gate. The operator participates at every authorization boundary. The machine mirrors itself at every electrical metrology tier. This is the recursive sequence that guarantees the Aegis-Forge I electrical system does not just meet code — it survives the storm.