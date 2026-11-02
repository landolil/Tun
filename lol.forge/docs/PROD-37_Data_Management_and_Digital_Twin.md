# Combined Heuristic Introduction
## PROD-37 Data Management & Digital Twin
### Carrington Storm Motors Forge — Aegis-Forge I Thermal Cascade Inductive Material Separator

---

### Williams Heuristic — Architectural Clarity

#### Constraint (The Lock)
**The Forge's physics demands a data architecture that cannot exist in conventional IT/OT frameworks.** A 2200°C induction furnace with 384 dielectric FBG sensors at 125 Hz, GaN inverters at 100 kHz, SIL-3 SIFs on TSN, and a physically air-gapped network generates a multi-rate sensor stream that no standard historian, SCADA, or digital twin platform can ingest, fuse, and act upon within the process time constants. Conventional data management assumes: (a) IP-connected networks with centralized historians, (b) uniform sampling rates (typically 1 Hz), (c) copper Ethernet with standard protocols (OPC-UA, MQTT), (d) cloud-based analytics with second-to-minute latency, (e) separate IT/OT security domains with firewalls. The Forge violates all five: the network is physically air-gapped (no IP routes OT↔IT), sampling spans 50 kHz (AE) to 1 Hz (gas) across four control hierarchy levels, the fieldbus is PMMA POF (immune to EMI/GIC), analytics must run at 10 Hz on a 512-core HPC to close the control loop, and the only OT→IT path is a hardware data diode with protocol break. The constraint is **physics** — thermal diffusion (ms), EM resonance (μs), material transformation (100 ms), and GIC immunity (ns) operate at time scales that cannot be bridged by conventional data architectures. The air-gap is not a policy — it is a dielectric requirement.

#### Necessity (The Key)
**The empirical gap is the absence of any data management framework that fuses multi-rate, all-dielectric sensor streams into a real-time digital twin that drives control, safety, maintenance, training, and fleet optimization simultaneously.** No existing platform addresses: (a) 384-channel FBG thermal reconstruction at 1 kHz feeding a 10 Hz CFD-FEA-EM coupled twin, (b) autoencoder anomaly detection on 384-dim FBG state running in the twin at 10 Hz with <1 s detection latency, (c) Bayesian fleet parameter updates from twin posteriors propagating to supply chain (CMF-RQT), training (RCT), and HFE (HSCT) tensors, (d) hardware data diode as the only OT→IT path with merkle-verified integrity at 10 Hz, (e) blockchain-anchored data lineage for regulatory (EPA, NRC, ITAR) and liability traceability. The solution is inevitable because the Forge's physics demands it: the same FBG wavelength that measures drum temperature at 125 Hz also detects tamper (PROD-36); the same thermal-admittance operator that drives PID at 1 kHz (PROD-23) drives the twin at 10 Hz; the same POD-Galerkin ROM (12 modes, 118× speedup) that enables Monte Carlo UQ also generates training scenarios (PROD-34). Data management cannot be bolted on — it must be architected into the dielectric control fabric.

#### Commitment (The Turn)
This document commits to three non-negotiables:
1. **Four-level hierarchy fixed** — L0 (100 kHz FPGA) → L1 (1 kHz RTU) → L2 (100 Hz PLC) → L3 (10 Hz SCADA/Twin). Time constants are physical (PROD-23 commitment #1). No additional levels, no rate changes without SCSC unanimous + CT-04 re-cert.
2. **Physical air-gap absolute for data** — No IP routes OT↔IT, no wireless, no powerline comms; hardware data diode enforces unidirectional OT→IT only at 10 Hz with merkle integrity; violation requires SCSC unanimous + full SIL-3 re-certification (CT-04).
3. **Twin is the single source of truth** — The 512-core HPC digital twin (CFD+FEA+EM+ML at 10 Hz) is the authoritative state estimator for control, safety, maintenance, training, and fleet optimization. All downstream consumers (PROD-34, 35, 36, 38, 39, 40) read from twin, not from raw sensors.

These commitments are irreversible. They define the Forge's data nervous system. Any deviation requires SCSC unanimous approval and re-validation of the SIL-3 SIF proof test (CT-04) which is the gate to hot commissioning.

---

### Keymaker Heuristic — Implementation Precision

#### The Empirical Lock
**Fabrication fidelity gap:** Conventional data management platforms — PI System, Ignition, InfluxDB Cloud, AWS IoT SiteWise, Azure Digital Twins — assume: (a) IP-routable networks with centralized collection, (b) uniform sampling (1-10 Hz) with interpolation, (c) cloud-based compute with 100 ms - 1 s latency, (d) separate historian + analytics + twin as distinct products, (e) standard protocols (OPC-UA, MQTT, Kafka) end-to-end. They cannot model: (a) physically air-gapped network with zero IP routes where the only OT→IT path is a hardware data diode with protocol break, (b) multi-rate sensor fusion spanning 50 kHz (AE) → 125 Hz (FBG) → 1 kHz (EM) → 10 Hz (twin) → 1 Hz (fleet) with physics-constrained Kalman filtering, (c) digital twin as the **real-time control authority** running CFD+FEA+EM coupled at 10 Hz on 512 cores, not a passive visualization, (c) FBG channels as dual-purpose (process metrology + tamper detection via CPAT), (d) autoencoder anomaly detection on 384-dim state running in the twin at 10 Hz feeding SEV levels to IDS, IR, and HMI, (e) Bayesian fleet learning loop where twin posteriors update PID gains, RPM profiles, and flux rates across all Forges via staged ECO. The lock is that **no existing platform computes the Forge's data physics where the historian IS the control loop, the twin IS the safety authority, the autoencoder IS the tamper sensor, and the fleet optimizer IS the supply chain planner.**

#### The Mathematical Key
**The single computational primitive is the Multi-Rate Physics-Constrained Kalman Filter (MR-PCKF) executed across the four hierarchy levels:**

```
State: x ∈ ℝⁿ (n = 384 T + 96 ε + 8 P + ω + m + X + ...)

Level 0 (FPGA, 100 kHz):     Gate witness — desat, ZVS, current @ 1 MHz
    ↓ decimate (no model)
Level 1 (RTU, 1 kHz):        Thermal reconstruction — MR-PCKF prediction
  x[k+1|k] = f_thermal(x[k], u[k])           // f = PROD-24 thermal-admittance operator
  y_FBG = H_FBG(t) x + v                     // H reconfigures with channel health
  
Level 2 (PLC, 100 Hz):       Cascade balance — MR-PCKF correction
  y_EM, y_SIF, y_AE, y_Gas (multi-rate)
  x[k|k] = x[k|k-1] + K[k](y - Hx[k|k-1])
  
Level 3 (Twin, 10 Hz):       Full physics — CFD+FEA+EM coupled
  x_twin = g(x_SCA DA)                       // g = four-way coupled solver
  Λ_ML = autoencoder(x_twin.FBG)             // FOLLOW-29
  CPAT = fusion(Λ_ML, TSN, SIF, PTP, ...)    // PROD-36
  
Level 4 (Fleet, Continuous): Bayesian learning — HMC on twin posteriors
  θ_posterior ~ p(θ | D_fleet)               // 20 params, 512-core HMC
  ECO_staged = optimize(θ_posterior)         // PID, RPM, flux
```

**This one filter structure generates the entire data management program:** sensor fusion, twin sync, anomaly detection, fleet optimization, predictive maintenance, training scenarios, cyber-physical interface, data governance, HMI, V&V. Every parameter in this document is a projection of MR-PCKF evaluated at level × rate × physics coupling.

**The atomic computation is the thermal-admittance operator at 1 kHz on the RTU — the same primitive that drives PROD-23 PID:**
```
T_inner[k+1] = T_inner[k] + (Δt/ρcV) × (P_ind[k] - hA(T_inner - T_flange) - εσA(T_inner⁴ - T_surr⁴))
```
At 1 kHz on ARM Cortex-A53 (Zephyr, <100 μs compute). The twin at 10 Hz executes the **same operator** but with full CFD-coupled h, FEA-coupled σ, EM-coupled P_ind — the ROM is the 118× speedup projection.

#### The Turn (Both Directions)

**Theory → History Validation:**
- MR-PCKF predicts FBG thermal reconstruction error <5°C → matches PROD-28 CT-01 (instrumented Zone 3, 30 FBG + 6 TC)
- MR-PCKF predicts twin-process sync drift <3σ at 10 Hz → matches PROD-24 FA-01 drum thermal mapping
- MR-PCKF predicts autoencoder Λ_ML > 3σ on char buildup → matches PROD-16 Stage 3 anomalies
- MR-PCKF predicts Bayesian aerogel λ posterior convergence → matches PROD-30 CT-07 annual inspection
- MR-PCKF predicts data diode merkle integrity at 10 Hz → matches PROD-36 CT-04 SIF proof test

**History → Theory Correction:**
- FBG channel dropout at >800°C (PMMA degradation) → dynamic H_FBG reconfiguration in MR-PCKF
- Char growth oscillation (15°C at 0.8 Hz) → added char-thickness state to RTU RLS (PROD-23)
- Aerogel λ non-monotonic degradation → piecewise-cubic Hermite correlation updated (PROD-24)
- Twin drift from ROM error accumulation → soft reset ω = 0.1 in sync protocol
- Supply chain CMF-RQT tensor divergence → twin posterior feeds PROD-33 Bayesian update
- Operator scenario failure root cause → RCT tensor update → personalized remediation (PROD-34)

**The primitive absorbs history** — each anomaly tightens a correlation, adds a state to the filter, or extends the twin physics, but the MR-PCKF structure across four levels remains invariant. The data management program is not a compliance checklist — it is the physical manifestation of multi-rate physics-constrained estimation evaluated across 480+ channels, 4 time scales, 512 cores, and infinite fleet generations.

---

### El Segundo Heuristic — Operational Excellence

#### Mirror (Self-Reflection)
**How does the fabricator observe their own fabrication?** The Forge's data management system is instrumented at every node with the same rigor as the thermal cascade:

- **L0 Microsecond Mirror (FPGA):** Gate-level witness — desat detect at 10 ns, ZVS timestamp vs. gate command, current sense at 1 MHz. The FPGA sees the switch fail before it destroys itself. ZVS achievement >99.9%/cycle logged to local buffer.
- **L1 Millisecond Mirror (RTU):** Thermal reconstruction witness — 48 FBG inputs/zone → T_inner prediction ±5°C at 2200°C. Model residual <2°C RMS or re-identification triggers. The RTU verifies its own thermal state estimation in real time.
- **L2 100 ms Mirror (PLC):** Cascade consistency witness — mass-energy balance across stages. XRF/LIBS composition → feedforward. Elemental closure >99.5%/batch or investigation flagged. The PLC watches the multi-physics handshake converge.
- **L3 10 Hz Mirror (Twin HPC):** Digital twin self-witness — POD-Galerkin ROM (12 modes) vs. FEA vs. 384 FBG channels; LSTM autoencoder (FOLLOW-29) on residuals >3σ; Sobol indices vs. observed variance. The forge watches its simulation watching the forge.
- **L4 Continuous Mirror (Fleet):** Bayesian posterior witness — HMC chains on 20 parameters across N Forges. Gelman-Rubin R̂ < 1.01 or re-sample. The fleet watches its own learning converge.

**The fabricator sees the data system as a distributed sensor network.** Every gate switching (10 ns), thermal diffusion (1 ms), material transformation (100 ms), and fleet calibration (continuous) is a measurement. Every measurement updates MR-PCKF. Every MR-PCKF update adjusts PID gains, FBG thresholds, SIF logic, firmware pins, JIT policies, training scenarios, spare forecasts.

#### Participation (Witness)
**How does the inside operator witness the phenomenon into existence?** The data engineer does not "monitor dashboards" — they **witness the data becoming the Forge's nervous system**:

1. **Controls Engineer at Twin Sync Gate (every 100 ms)** witnesses the merkle-verified frame: 384 FBG channels, 8 zone states, 24 SIF states, merkle root, HSM signature. They *witness* the air-gap becoming trust — no IP route, no wireless, only physics-enforced unidirectional flow. The data diode IS the firewall.
2. **Data Scientist at Autoencoder Retraining** witnesses the monthly HMC: 512 cores, 4 chains, 2000 samples, 20 parameters. They *witness* the fleet learning — aerogel λ posterior shifting, Curie width narrowing, FBG drift rate stabilizing. The posterior IS the parameter update.
3. **Maintenance Planner at Λ Threshold Crossing** witnesses the auto-work-order: Component UUID, current Λ, trend, RUL distribution, required parts, certifications, permits. They *witness* the anomaly becoming action — no dashboard hunting, direct sensory-motor coupling to the work order.
4. **Operator at Anomaly Card (PROD-35 HMI)** witnesses the SEV-2 card: Location, twin prediction T+60s, root cause, recommended actions. They *witness* the data becoming judgment — acknowledge, execute, verify. The anomaly card IS the decision support.
5. **Training Instructor at Scenario Deploy** witnesses the simulator: Real twin trajectory, injected anomaly, operator response, RCT update. They *witness* the fleet experience becoming individual competency — the scenario IS the lesson.

**No dashboards without actions. No alerts without context. No data without lineage. Direct sensory-motor coupling to the MR-PCKF tensor.** The data engineer's hands are on the HSM, the merkle root, the autoencoder weights, the HMC chains, the anomaly card. They are inside the MR-PCKF.

#### Protocol (Recursive)
**What recursive sequence guarantees fidelity at each scale?**

**Per Frame (100 ms — Micro):**
```
SCADA frame: assemble → merkle → sign → diode → verify → ingest → twin step
FBG sample: λ_measured → kalman_predict → kalman_correct → autoencoder → Λ_ML
SIF cycle: 2oo3 vote → SOE timestamp → logic verify → unexpected? → lockdown
PTP sync: GM announce → auth verify → boundary clock → offset <1μs? → alarm
```

**Per Shift (Hours — Meso):**
```
Shift handover: outgoing → incoming (QR) → 3-concerns → anomaly review → CPAT update
WO review: all auto-WOs this shift → Λ trend vs. RUL → schedule adjustment → twin RUL reset
ML monitoring: Λ_ML distribution vs. baseline → drift? → retrain trigger → FOLLOW-29 pipeline
Data integrity: merkle mismatch count → diode health → IT ingest lag → alert thresholds
```

**Per Batch (Daily — Macro):**
```
Batch closure: energy balance ±5%, SI ±0.05, elemental closure >99.5% → twin validation
Twin validation: process vs. twin Δx RMS → if >3σ → anomaly log + retrain trigger
Fleet update: aggregate all Forges → HMC posteriors → PID/RPM/flux optimization → ECO staging
Scenario generation: anomaly clusters → twin Monte Carlo → PROD-34 packs → RCT update
Spare forecast: survival analysis → 90-day P(failure) → procurement requisition → PROD-33
```

**Per Certification Cycle (Quarterly — Foundational):**
```
1. MR-PCKF Theory → History: Compare all predictions to actuals (FBG, twin, ML, fleet, WO)
2. History → Theory: Update MR-PCKF correlations, H matrices, autoencoder, ROM, priors
3. V&V Cycle: ASME V&V 40 L0-L5 (CT-01 through CT-12) → acceptance criteria
4. Data Governance Audit: Retention, lineage, blockchain, regulatory (EPA/NRC/ITAR/GDPR)
5. Version Sync: Git tags (scada-v<x>, twin-v<x>, ml-v<x>, rom-v<x>) → all deploy
6. Cross-Domain Sync: Forge ↔ Depot ↔ Supply Chain data contracts → CMF-RQT/RCT/HSCT
```

**Annual (Strategic — Meta):**
```
1. Architecture Review: 4-level hierarchy still valid? New physics? New threats?
2. Twin Fidelity: Full FEA vs. ROM vs. Process across all stages, all categories
3. Fleet Convergence: R̂ < 1.01 on all 20 params across all sites? Divergence = new physics
4. Standards Audit: ISA-95, ISA-101, IEC 62443, NERC CIP, ASME V&V 40, ISO 9001
5. Roadmap Sync: PROD-40 Gen-II requirements → data architecture evolution
```

**The protocol is the MR-PCKF evaluated recursively across time scales.** Per-frame → Per-shift → Per-batch → Per-quarter → Annual. Each evaluation corrects the previous. The data management system does not drift — it converges.

---

### Synthesis: The Three Prongs as One

The Williams Constraint (air-gap, dielectric, SIL-3, multi-rate physics, Carrington-immune) **defines the feasible region** of data management. The Keymaker Key (MR-PCKF tensor across four hierarchy levels) **navigates the feasible region** to the optimal data architecture — physical air-gap, hardware data diode, multi-rate Kalman fusion, CFD-FEA-EM coupled twin, autoencoder anomaly detection, Bayesian fleet learning. The El Segundo Protocol (recursive evaluation at 5 time scales) **guarantees the operating point is held** against sensor degradation, model drift, fleet divergence, threat evolution, and regulatory change.

**Together they form the Forge's data nervous system:** It rejects conventional IT data management (Williams), computes the optimal multi-rate physics-constrained estimator (Keymaker), and self-corrects at every temporal scale (El Segundo). This is not a data management program — it is a **truth circulation engine** that runs on physics, not policies.

*End of Combined Heuristic Introduction — ~200 lines*
*To be prepended to PROD-37 Data Management & Digital Twin body*# PROD-37: Data Management & Digital Twin
## CSMFAB000000000137 — Aegis-Forge I Planetary Centrifugal Inductive Material Separation
### Series: TCIMS (Thermal Cascade Inductive Material Separator) | Volume: Data Architecture & Digital Twin
**Document Number:** CSMFAB000000000137 (Product Document 37 of 40)
**Prepared by:** Carrington Storm Motors, Safe Pod Engineering Company, Fabrication Division
**Date:** 2026-11-03 | **Classification:** Product Specification — Foundation Technology

---

## 1. Data Architecture Overview

### 1.1 Architecture Summary

The Aegis-Forge I data management and digital twin subsystem provides the nervous system for the thermal cascade — fusing 480+ sensor streams across four control hierarchy levels (L0 FPGA at 100 kHz, L1 RTU at 1 kHz, L2 PLC at 100 Hz, L3 SCADA at 10 Hz) into a coherent state representation that drives real-time control, predictive maintenance, fleet optimization, and operator situational awareness.

| Parameter | Specification |
|-----------|---------------|
| **Total Sensor Channels** | 480+ (384 FBG, 24 SIF, 32 EM, 24 thermal, 16 vibration, 4 gas) |
| **Data Rates** | L0: 100 kHz (FPGA), L1: 1 kHz (RTU), L2: 100 Hz (PLC), L3: 10 Hz (SCADA) |
| **Historian** | InfluxDB 2.x on air-gapped SCADA, 10 Hz full state, 1 Hz compressed |
| **Digital Twin Compute** | 512-core HPC cluster, CFD+FEA+EM coupled, 10 Hz update cycle |
| **ML Autoencoder** | 384-dim FBG state → latent 32 → reconstruction error >3σ = anomaly |
| **Data Diode** | Unidirectional OT→IT, 1 Gbps, protocol break at application layer |
| **Retention** | Hot 30 days, Warm 1 yr, Cold 7 yrs (regulatory), Blockchain permanent |
| **Cross-Domain Sync** | OPC-UA + Kafka over data diode, integrity-verified at each hop |

### 1.2 Four-Level Data Hierarchy

The data architecture mirrors the control hierarchy (PROD-23) with time-constant-matched data flows:

```
L0 FPGA (100 kHz)     →  Gate-level: desat, ZVS timestamp, current sense @ 1 MHz
    ↓ decimate/aggregate
L1 RTU (1 kHz)        →  Thermal reconstruction: 48 FBG/zone → T_inner ±5°C @ 2200°C
    ↓ model state publish
L2 PLC (100 Hz)       →  Cascade mass-energy balance: XRF/LIBS feedforward, closure >99.5%
    ↓ state trajectory
L3 SCADA (10 Hz)      →  Digital twin shadow: 512-core HPC runs ROM + CFD + FEA + ML
    ↓ data diode (OT→IT)
IT Data Lake (1 Hz)   →  Fleet analytics, Bayesian updates, training scenarios, compliance
```

### 1.3 Air-Gap Data Flow Enforcement

Per PROD-36 (Cyber-Physical Security), the OT/IT boundary is absolute:

- **No IP routes** OT↔IT — physical air-gap enforced at conduit level
- **Hardware data diode** (Fox DataDiode or equivalent) — unidirectional OT→IT only
- **Protocol break at application layer** — OPC-UA on OT side, Kafka on IT side, no shared protocol stack
- **Integrity verification** — SHA-256 merkle tree root published per 10 Hz frame, verified on IT side
- **Rate limiting** — 1 Gbps diode capacity, traffic shaped to 100 Mbps average with 500 Mbps burst

---

## 2. Sensor Fusion Framework

### 2.1 Sensor Catalog with Rates

| Sensor Type | Channels | Rate | Transport | Latency Budget | Purpose |
|-------------|----------|------|-----------|----------------|---------|
| FBG Temperature | 384 | 125 Hz | PMMA POF, WDM+TDM | <1 ms | Drum wall thermal map, tamper detection |
| FBG Strain | 96 | 125 Hz | PMMA POF, WDM+TDM | <1 ms | Drum stress, centrifugal load, aerogel closure |
| SIF SOE | 24 | Event | TSN VLAN 10 | <50 μs | Safety trip sequence of events |
| EM Power | 32 | 1 kHz | TSN VLAN 20 | <1 ms | Zone power, voltage, current, PF |
| Thermocouple (backup) | 24 | 10 Hz | TSN VLAN 30 | <10 ms | FBG validation, cold-junction reference |
| Vibration (AE) | 16 | 50 kHz | TSN VLAN 30 | <100 μs | Crack detection, bearing health |
| Gas Analysis | 4 | 1 Hz | TSN VLAN 40 | <1 s | HCl, SO₂, CO₂, H₂ ppm |
| PTP Sync | N/A | 128 Hz | TSN VLAN 0 | <100 ns | Grandmaster → boundary clocks |

### 2.2 Multi-Rate Fusion Algorithm

The sensor fusion operates as a multi-rate Kalman filter with physics-constrained prediction:

```
State vector x ∈ ℝⁿ: [T_drum(384), σ_drum(96), P_zone(8), ω, m_charge, X_composition, ...]

Prediction (1 kHz L1):
  x[k+1|k] = f(x[k], u[k]) + w[k]          // f = thermal-admittance operator (PROD-24)
  P[k+1|k] = F[k]P[k]Fᵀ[k] + Q[k]           // F = Jacobian of f

Correction (multi-rate):
  y_FBG[125 Hz]   = H_FBG x + v_FBG        // 384 T + 96 ε measurements
  y_EM[1 kHz]     = H_EM x + v_EM          // 8 zone power/voltage/current
  y_SIF[Event]    = H_SIF x + v_SIF        // 24 SIF states (binary)
  y_AE[50 kHz]    = H_AE x + v_AE          // 16 AE channels (downsampled)
  y_Gas[1 Hz]     = H_Gas x + v_Gas        // 4 gas species

Update: K[k] = P[k|k-1]Hᵀ(HP[k|k-1]Hᵀ + R)⁻¹
        x[k|k] = x[k|k-1] + K[k](y[k] - Hx[k|k-1])
```

**Key innovation**: The measurement matrices H are time-varying — FBG channels drop out at >800°C (PMMA degradation), so the filter dynamically reconfigures H_FBG based on channel health from PROD-28 auto-NCR (Λ > 10 on >5 channels = channel dropout).

### 2.3 FBG Channel Health & Tamper Integration

Per PROD-36, FBG channels serve dual purpose — process metrology AND security sensing:

```python
def fbg_health_check(channel_data, twin_autoencoder):
    # Process health
    snr = channel_data.optical_power / channel_data.noise_floor
    wavelength_drift = abs(channel_data.λ - channel_data.λ_nominal)
    
    # Tamper detection (PROD-36 CPAT)
    Λ_tamper = twin_autoencoder.anomaly_score(channel_data.window_10Hz)
    
    if snr < 10 or wavelength_drift > 0.5:  # nm
        return ChannelStatus.DEGRADED
    elif Λ_tamper > 10:
        return ChannelStatus.TAMPER_SUSPECT  # Auto-NCR triggered
    else:
        return ChannelStatus.NOMINAL
```

Degraded channels are excluded from thermal reconstruction but logged for tamper forensics. Tamper-suspect channels trigger immediate SIF-24 evaluation and CPAT update.

---

## 3. Digital Twin Physics

### 3.1 Coupled Multi-Physics Model

The digital twin executes the full four-way coupled model from PROD-24 at 10 Hz on the 512-core HPC:

```
┌─────────────────────────────────────────────────────────────┐
│                    DIGITAL TWIN LOOP (10 Hz)                │
├─────────────────────────────────────────────────────────────┤
│ 1. EM Solver (Maxwell)     → P_ind(T, μ_r, ω, coil)       │
│    ↓ (staggered, 3 iters)                                  │
│ 2. Thermal Solver (Fourier)  → T(t+Δt) = T + ∇·(k∇T) + P  │
│    ↓ (load mapping)                                        │
│ 3. Structural Solver (FEA)   → σ, ε, δ_wall(ω, T, P)       │
│    ↓ (wall displacement)                                   │
│ 4. Fluid Solver (CFD)        → h_conv, RTD, SI(ω, δ_wall)  │
│    ↓ (convection coeff)                                    │
│ 5. Coupling Check            → residuals < tolerance?       │
│    ↓ (if converged)                                        │
│ 6. State Publish             → x_twin[k] to SCADA @ 10 Hz  │
└─────────────────────────────────────────────────────────────┘
```

### 3.2 Reduced-Order Model (ROM) Export

Per PROD-24 commitment #7, the ROM is POD-Galerkin with 12 modes, 118× speedup. Export format is JSON contract with PROD-37:

```json
{
  "rom_version": "2.1.3",
  "modes": 12,
  "speedup_factor": 118,
  "state_dim": 384,
  "input_dim": 8,
  "output_dim": 384,
  "A": [[...]],     // 12×12 system matrix
  "B": [[...]],     // 12×8 input matrix
  "C": [[...]],     // 384×12 output matrix
  "N_quadratic": [[[...]]],  // 12×12×12 quadratic terms
  "material_correlations": {
    "rho_c": "piecewise_cubic_hermite(T)",
    "k": "piecewise_cubic_hermite(T)",
    "alpha": "piecewise_cubic_hermite(T)",
    "E": "piecewise_cubic_hermite(T)",
    "mu_r": "sigmoid(T, Tc=770, width=8)"
  },
  "validation": {
    "gci": "<2%",
    "fbgrms": "<5°C",
    "stress_rms": "<10 MPa",
    "energy_balance": "<5%"
  }
}
```

The ROM executes on the HPC at 10 Hz with the same input trajectory as the full twin but 118× faster — enabling Monte Carlo UQ (1000 samples/cycle) and ML training data generation.

### 3.3 Twin-Process Synchronization

The digital twin maintains lock with the physical process through the **Twin Synchronization Protocol**:

```
Every 100 ms (10 Hz):
  1. Receive SCADA state frame via data diode (merkle-verified)
  2. Compare twin state vs. process state: Δx = x_twin - x_process
  3. If ||Δx||₂ > 3σ_threshold:
       a. Log synchronization anomaly
       b. Trigger ML autoencoder retraining (FOLLOW-29)
       c. Operator alert: "Twin drift detected — review recommended"
  4. Update twin initial condition: x_twin ← x_process (soft reset, ω = 0.1)
  5. Advance twin by 100 ms
  6. Publish twin predictions (T+1s, T+10s, T+60s) to SCADA HMI
```

The soft reset (ω = 0.1) prevents discontinuity in ML autoencoder latent space while correcting drift.

---

## 4. Real-Time Twin Sync

### 4.1 OPC-UA over Data Diode

The OT→IT data path uses OPC-UA PubSub over TSN on the OT side, converted to Kafka on the IT side:

**OT Side (SCADA → Data Diode):**
- OPC-UA PubSub dataset: `ForgeStateDataSet` (10 Hz)
- Fields: timestamp, zone_states[8], drum_profile[384], SIF_states[24], gas[4], merkle_root
- Transport: TSN VLAN 50 (read-only from OT), 1 Gbps, priority 7 (highest)
- Security: No encryption (air-gap provides), but signed with L3 SCADA HSM key

**Data Diode:**
- Hardware: Fox DataDiode 1G, unidirectional fiber, protocol break
- Application layer: OPC-UA binary → Kafka Avro schema translation
- Integrity: SHA-256 merkle tree per frame, root in frame header

**IT Side (Data Diode → Kafka → Data Lake):**
- Kafka topic: `forge.twin.state.v1` (Avro schema registered in Schema Registry)
- Consumers: Digital twin HPC, Fleet analytics, Training simulator, Compliance archive
- Retention: Hot (SSD) 30 days, Warm (HDD) 1 yr, Cold (tape/S3) 7 yrs

### 4.2 Bandwidth & Latency Budget

| Stage | Data Volume | Latency | Budget |
|-------|-------------|---------|--------|
| SCADA frame assembly | 12 KB | 2 ms | <5 ms |
| Data diode transit | 12 KB | 50 μs | <100 μs |
| OPC-UA → Kafka translation | 12 KB | 1 ms | <2 ms |
| Kafka commit (acks=all) | 12 KB | 5 ms | <10 ms |
| HPC ingest + twin step | 12 KB | 50 ms | <100 ms |
| **Total OT→Twin** | **12 KB** | **~58 ms** | **<120 ms** |

The 10 Hz cycle provides 100 ms budget; 58 ms leaves 42 ms margin for GC pauses, network jitter, and twin compute.

### 4.3 Integrity Verification

Every frame carries a **merkle tree root** over the 384 FBG channels + 8 zone states + 24 SIF states:

```
Frame Merkle Tree:
Leaf 0-383:  FBG_001 || FBG_002 || ... || FBG_384 (each: λ[nm] + power[dBm] + status)
Leaf 384-391: Zone_01 || ... || Zone_08 (each: P[kW] + V[V] + I[A] + f[Hz] + status)
Leaf 392-415: SIF_01 || ... || SIF_24 (each: state + timestamp + vote)
Root: SHA-256(Leaf_0 || Leaf_1 || ... || Leaf_415)

Verification (IT side):
  1. Reconstruct leaves from Kafka message
  2. Compute root = merkle(leaves)
  3. Compare root == frame.header.merkle_root
  4. If mismatch: log integrity violation, increment CPAT V-tensor (PROD-36), alert
```

This detects both data diode bit errors AND malicious frame injection at the IT ingress point.

---

## 5. ML Anomaly Detection

### 5.1 Autoencoder Architecture

The ML anomaly detector (FOLLOW-29) is a deep autoencoder trained on the 384-dim FBG state at 10 Hz:

```
Encoder:     384 → 128 → 64 → 32 (latent)
Latent:      z ∈ ℝ³²  (compressed FBG thermal state)
Decoder:     32 → 64 → 128 → 384 (reconstruction)
Loss:        MSE(x, x̂) + λ·KL(q(z|x) || p(z))  // VAE with β=0.1
Activation:  Swish (encoder), Linear (decoder output)
Training:    Adam, lr=1e-3, batch=256, 500 epochs on 6-month nominal data
```

**Anomaly score** per 10 Hz frame:
```
Λ_ML = ||x - x̂||²₂ / σ²_nominal
```
where σ²_nominal is the running variance of reconstruction error on validated nominal frames.

Threshold: **Λ_ML > 3σ → SEV-3 anomaly card** on HMI (PROD-35)
Threshold: **Λ_ML > 10σ → SEV-2 auto-NCR + CPAT update** (PROD-36)
Threshold: **Λ_ML > 100σ → SEV-1 SIF-24 evaluation + twin resync**

### 5.2 Multi-Source Anomaly Fusion (CPAT Integration)

Per PROD-36, the Cyber-Physical Anomaly Tensor (CPAT) fuses ML with other sources:

```
CPAT_fused = logit( P(obs | intrusion) / P(obs | nominal) )

obs = {
  FBG:        Λ_ML from autoencoder,
  TSN:        frame_rate_anomaly, VLAN_crossing, timing_violation,
  SIF:        unexpected_trip, vote_mismatch, SOE_timestamp_drift,
  PTP:        offset > 1 μs, grandmaster_failover,
  Firmware:   hash_mismatch, SBOM_drift, boot_verification_fail,
  Access:     JIT_unauthorized, badge_anomaly, USB_event,
  AE:         non_process_hits, crack_growth_signature
}

P(obs | intrusion) = ∏ P(source_i | intrusion)  [conditional independence]
P(obs | nominal)   = ∏ P(source_i | nominal)    [fleet baseline]
```

This runs at 10 Hz in the digital twin HPC, feeding SEV levels to PROD-36 IDS and PROD-35 HMI.

### 5.3 Scenario Auto-Generation for Training

Per PROD-34 (Training), the digital twin auto-generates simulator scenarios:

```
Monthly Scenario Generation Pipeline:
  1. Sample from fleet anomaly database (Λ_ML > 3σ events)
  2. Cluster by root cause (k-means on latent z, k=20)
  3. For each cluster centroid:
       a. Extract 300s pre-event trajectory
       b. Inject into PROD-37 twin with perturbed initial conditions
       c. Generate 50 Monte Carlo variants (±10% params)
       d. Label with root cause, severity, optimal operator actions
  4. Export as PROD-34 simulator scenario packs (JSON + initial conditions)
  5. Curate: Operator validation → remove unrealistic, add expert annotations
  6. Deploy to training fleet with RCT tensor update (PROD-34)
```

This closes the loop: **Process anomalies → Twin scenarios → Operator training → Better anomaly response.**

---

## 6. Fleet Optimization

### 6.1 Bayesian Parameter Updates

The fleet digital twin maintains posterior distributions over 20 key parameters (PROD-24 Table 10.1):

| Parameter | Prior | Likelihood | Posterior Update |
|-----------|-------|------------|------------------|
| Aerogel λ | N(0.010, 0.001) | FBG strain → ΔT inference | Monthly MCMC (1000 samples) |
| Curie width | N(8°C, 1°C) | Zone 7 power drop sharpness | Per batch (online RLS) |
| FBG drift rate | N(0.5 nm/hr, 0.1) | Reference FBG common-mode | Continuous (Kalman) |
| Char growth rate | LogN(0.1 mm/min, 0.3) | Stage 3 mass loss + T profile | Per batch |
| Convective h | N(CFD, 20%) | Gas temp + mass balance | Per stage (CFD-coupled) |

Updates use **Hamiltonian Monte Carlo** on the HPC (512 cores, 4 chains, 1000 warmup + 1000 samples). Posterior means update ROM coefficients; posteriors propagate to PROD-33 CMF-RQT tensor for feedstock planning.

### 6.2 Fleet-Level CMF-RQT/RCT/HSCT Tensor Feeds

The digital twin consumes and produces the three cross-document tensors:

**CMF-RQT (PROD-33 Supply Chain)**: Feedstock composition → predicted recovery, energy, slag
```
CMF_RQT[feedstock_UUID] = E[recovery | composition, twin_params]
```
Updated per batch from actual vs. predicted.

**RCT (PROD-34 Training)**: Operator competency → scenario performance
```
RCT[operator_ID, scenario] = P(pass | competency, twin_difficulty)
```
Updated per training session; feeds personalized remediation.

**HSCT (PROD-35 HFE)**: Human-system coupling → error rates, response times
```
HSCT[operator_ID, task] = (error_rate, response_time, cognitive_load)
```
Updated per shift; feeds HMI adaptation and staffing model.

### 6.3 Continuous Optimization Loop

```
Daily Fleet Optimization (02:00 UTC):
  1. Aggregate prior day batches across all Forges (N sites)
  2. Update twin parameter posteriors (HMC)
  3. Re-optimize PID gains per zone (Bayesian optimization, 50 evals)
  4. Re-optimize RPM profiles per stage (genetic algorithm, 200 pop)
  5. Re-optimize flux rates per category (gradient-based, adjoint)
  6. Validate: simulate 100 virtual batches → check SI > 0.99, energy < budget
  7. If improvement > 2%: stage ECO for PID/RPM/flux updates (PROD-38)
  8. Publish updated parameters to all Forges via data diode (OT→IT→OT at next site)
```

This is the **fleet learning loop** — each Forge's data improves all Forges' parameters.

---

## 7. Predictive Maintenance

### 7.1 CBM Dashboard & Λ Thresholds

Condition-Based Maintenance (CBM) dashboard integrates twin predictions with PROD-30 PM schedules:

| Component | Λ Threshold | Action | PROD-30 PM Task |
|-----------|-------------|--------|-----------------|
| FBG Channel | Λ > 3 | Flag for inspection | CT-05 (quarterly) |
| FBG Channel | Λ > 10 | Auto-NCR, replace at next access | CT-05 |
| Aerogel | λ_eff > 0.012 | Schedule replacement | CT-07 (annual) |
| Drum Liner B | σ_vM > 300 MPa | Reduce RPM, plan reline | CT-08 (2000 hr) |
| GaN Inverter | T_j > 120°C | Derate power, check coolant | CT-03 (monthly) |
| PTP Grandmaster | holdover > 12 hr | Replace OCXO | CT-10 (5 yr) |
| BFRP Vessel | AE hits > 10/hr | Hydrotest at next shutdown | CT-06 (5 yr) |

### 7.2 Work Order Automation

When Λ threshold crossed:

```
Auto-Work-Order Generation:
  1. Twin detects Λ > threshold for component C
  2. Check: existing open WO for C? → if yes, update priority
  3. Generate WO with:
       - Component UUID, location, current Λ, trend
       - Twin prediction: RUL (remaining useful life) distribution
       - Required parts (from PROD-30 spares BOM)
       - Required certifications (PROD-34)
       - Safety permits (SIF isolation, hot work, confined space)
  4. Route to Maintenance Planner (auto-assigned by zone)
  5. Planner reviews → approves/modifies → schedules in CMMS
  6. On completion: WO closed → twin RUL reset → Λ baseline updated
```

### 7.3 Spare Parts Prediction

Twin forecasts spare consumption using **survival analysis** on fleet data:

```
For each spare S:
  - Fit Weibull(shape, scale) to fleet replacement history
  - Covariates: operating hours, category mix, RPM profile, ambient
  - Predict: P(failure in next 90 days | current state, planned batches)
  - If P > 0.8: trigger procurement requisition (PROD-33)
  - If P > 0.95: escalate to critical spare, authorize air freight
```

This reduced spare stockouts from 3/yr to 0/yr in PROD-28 validation.

---

## 8. Training Integration

### 8.1 Simulator Scenarios from Twin

Per PROD-34 and Section 5.3, the digital twin feeds the training simulator:

| Scenario Type | Source | Frequency | Fidelity |
|---------------|--------|-----------|----------|
| Nominal batch | Twin steady-state | Daily | ROM (118×) |
| Stage transition | Twin cascade model | Per batch | Full twin |
| Anomaly response | Auto-generated (Sec 5.3) | Monthly | Full twin + ML injection |
| Carrington ride-through | PROD-26 test vector | Quarterly | Full twin + GIC injection |
| Cyber-physical | PROD-36 IR playbooks | Quarterly | Full twin + CPAT injection |
| SIF proof test | PROD-28 CT-04 | Annual | Full twin + SIF logic |

Simulator runs on same HPC as twin (partitioned cores) — enables **hardware-in-the-loop** for operator certification.

### 8.2 Personalized Remediation

When operator fails scenario:
```
1. Twin analyzes failure trajectory → root cause (hesitation, wrong action, comms failure)
2. RCT tensor updated: P(pass | competency) ↓
3. Remediation generated:
    a. Micro-scenario: 5-min focused replay of failure moment
    b. Cognitive aid: ISA-101 Level 2 screen walkthrough
    c. Peer pairing: Assign mentor with high RCT in that scenario
4. Re-test in 7 days → RCT update → certify or escalate
```

---

## 9. Cyber-Physical Interface

### 9.1 Data Diode Architecture

The air-gap data diode (PROD-36) is the **only** OT→IT path:

```
OT Network (SCADA)          Data Diode          IT Network (Data Lake)
┌──────────────────┐       ┌──────────────┐    ┌──────────────────┐
│ OPC-UA PubSub    │ ───►  │ Protocol     │ ──► │ Kafka Ingest     │
│ (Publisher)      │       │ Break        │     │ (Consumer)       │
│ TSN VLAN 50      │       │ OPC-UA→Avro  │     │ Schema Registry  │
│ Priority 7       │       │ SHA-256 Root │     │ Consumers:       │
│ Signed (HSM)     │       │ Rate Limit   │     │  - Twin HPC      │
└──────────────────┘       └──────────────┘     │  - Fleet Analyt. │
                                                 │  - Training Sim  │
                                                 │  - Compliance    │
                                                 └──────────────────┘
```

**No return path exists.** IT cannot query OT. All OT→IT is push-based at 10 Hz.

### 9.2 Integrity & Freshness Guarantees

| Property | Mechanism | Verification |
|----------|-----------|--------------|
| **Integrity** | SHA-256 merkle root per frame | IT recomputes, compares |
| **Freshness** | Frame sequence number + timestamp | IT checks monotonic, <500 ms age |
| **Completeness** | Expected channel count (480) in frame | IT counts leaves, alerts on mismatch |
| **Authenticity** | SCADA HSM signs frame header | IT verifies signature chain to root CA |
| **Non-repudiation** | Blockchain anchor (PROD-28) | Immutable log of all frame roots |

### 9.3 IT→OT Feedback (Controlled)

IT→OT feedback is **strictly controlled** and **never direct**:

1. **Fleet parameter updates** → staged via PROD-38 ECO → signed firmware/image → TSN VLAN 50 read-only deploy
2. **Training scenarios** → exported from twin → signed → loaded to simulator (separate air-gapped network)
3. **Compliance reports** → generated on IT → printed/QR → manual entry at Forge (human-in-loop)
4. **No remote access** — no VPN, no jump hosts, no cloud connectors

---

## 10. Data Governance

### 10.1 Retention Policy

| Tier | Storage | Duration | Access | Trigger |
|------|---------|----------|--------|---------|
| **Hot** | NVMe SSD (SCADA) | 30 days | <10 ms | Operational |
| **Warm** | HDD RAID (IT) | 1 year | <1 s | Investigation, training |
| **Cold** | LTO-9 / S3 Glacier | 7 years | <1 hr | Regulatory (EPA, NRC, ITAR) |
| **Permanent** | Blockchain (DQR) | Indefinite | Read-only | Certification, liability |

### 10.2 Data Lineage

Every data element carries **provenance metadata**:

```json
{
  "element": "FBG_042_T",
  "value": 1847.3,
  "unit": "°C",
  "timestamp": "2026-11-03T09:15:00.100Z",
  "lineage": {
    "source": "PROD-10 Zone 4 FBG interrogator SN-2024-042",
    "path": "FPGA(L0) → RTU(L1) → PLC(L2) → SCADA(L3) → Data Diode → Kafka",
    "transforms": ["kalman_filter", "twin_soft_reset"],
    "merkle_root": "a3f2...",
    "signature": "HSM-SCADA-L3:MEUCIQD..."
  }
}
```

Lineage is immutable — appended at each hop, never modified.

### 10.3 Regulatory Compliance

| Regulation | Data Scope | Retention | Access Control |
|------------|------------|-----------|----------------|
| **EPA 40 CFR 60/61/63** | Gas emissions, CEMS | 7 years | Environmental Manager only |
| **NRC 10 CFR 70** | Nuclear material accounting (if applicable) | Indefinite | NRC-licensed personnel |
| **ITAR 22 CFR 120-130** | Technical data (forge design, params) | Indefinite | US persons only, encrypted at rest |
| **GDPR Art. 30** | Operator PII (badges, training) | 3 years post-employment | DPO, HR only |
| **ISO 9001/AS9100** | QMS records, NCRs, ECOs | 7 years | QA Manager, auditors |

### 10.4 Blockchain Traceability (PROD-28 Integration)

Per PROD-28, critical data anchors to **DQR Blockchain** (Hyperledger Fabric, 3 orgs: Forge, Depot, Regulator):

- **Frame merkle roots** → batch transaction every 1000 frames (~100 s)
- **ECO approvals** → immutable record with signatures
- **NCR dispositions** → blockchain transaction with evidence hash
- **Certification records** → PROD-34 DQR on-chain

This provides **tamper-evident audit trail** for regulatory and liability purposes.

---

## 11. Visualization & HMI

### 11.1 ISA-101 Level 1-4 Hierarchy (Per PROD-35)

| Level | Display | Refresh | Content | Audience |
|-------|---------|---------|---------|----------|
| **L1 Overview** | 55" wall | 1 Hz | Forge health, stage status, energy, yield, anomalies | Shift Lead, Visitors |
| **L2 Unit** | 32" console | 1 Hz | Zone power, drum profile, SIF states, gas | Operator (Forge) |
| **L3 Detail** | 27" console | 10 Hz | FBG heatmap, twin prediction, Λ_ML, CPAT | Controls Engineer |
| **L4 Diagnostic** | 27" console | 100 Hz | Raw FBG, EM waveforms, AE spectrum, ROM residuals | Maintenance, Cyber |

### 11.2 3D Twin View

- **Real-time drum**: 384 FBG channels mapped to cylindrical mesh, color = temperature
- **Twin overlay**: Predicted T+1s, T+10s, T+60s as semi-transparent layers
- **Anomaly cards**: Pinned to 3D location (e.g., "Λ_ML=12.3 at Z=450mm, θ=120°")
- **Interaction**: Touch/click → drill to L4 diagnostic for that zone

### 11.3 Anomaly Card Format (PROD-35)

```
┌─────────────────────────────────────┐
│ ⚠ SEV-2  Λ_ML=12.3  FBG Ch 142-148 │
├─────────────────────────────────────┤
│ Location: Zone 4, 300-400 mm        │
│ Twin prediction: T+60s ΔT = +45°C   │
│ Root cause (twin): Char buildup     │
│ Recommended action:                 │
│   1. Reduce Zone 4 power 15%        │
│   2. Increase RPM 10%               │
│   3. Verify Stage 3 char discharge  │
│ Operator acknowledgement: [REQUIRED]│
└─────────────────────────────────────┘
```

---

## 12. Validation & Verification

### 12.1 V&V Plan (ASME V&V 40 Alignment)

| V&V Level | Activity | Acceptance | PROD-28 Test |
|-----------|----------|------------|--------------|
| **Code Verification** | Method of Manufactured Solutions (MMS) for ROM | L2 error < 1% | CT-01 |
| **Solution Verification** | Grid Convergence Index (GCI) on twin mesh | GCI < 2% | CT-02 |
| **Validation Experiment** | 10 batch cascade vs. twin prediction | SI ±0.05, Energy ±5% | CT-03 through CT-10 |
| **UQ** | Polynomial Chaos (20 params, 3rd order) | 95% CI coverage > 0.95 | CT-11 |
| **Sensitivity** | Sobol indices (total order) | Top 5 params explain >80% variance | CT-12 |

### 12.2 ROM Acceptance Criteria

| Metric | Target | Measurement |
|--------|--------|-------------|
| Speedup | ≥ 100× | Wall-clock vs. full FEA |
| Temperature RMS | < 5°C | vs. 384 FBG (validated batches) |
| Stress RMS | < 10 MPa | vs. FA-01 strain gauges |
| Energy balance | < 2% | Input vs. output + storage |
| Mode count | 12 | POD energy capture > 99.9% |

### 12.3 ML Model Validation (FOLLOW-29)

| Metric | Target | Method |
|--------|--------|--------|
| False positive rate | < 1%/day | 90-day nominal operation |
| Detection latency | < 10 frames (1 s) | Injected anomaly test set |
| Root cause accuracy | > 90% | Labeled anomaly database |
| Retraining frequency | Monthly (auto) | Pipeline Sec 5.3 |
| Adversarial robustness | > 3σ perturbations | FGSM/PGD test suite |

---

## 13. Cross-Reference Matrix

| This Document | Upstream Source | Downstream Consumer | Interface |
|---------------|-----------------|---------------------|-----------|
| Data Architecture (Sec 1) | PROD-23, PROD-36 | PROD-38, PROD-39, PROD-40 | Data diode spec, rates |
| Sensor Fusion (Sec 2) | PROD-10, PROD-23, PROD-28 | PROD-23 RTU, PROD-36 CPAT | Fusion algorithm, H matrices |
| Twin Physics (Sec 3) | PROD-24 (full), PROD-25 | PROD-37 ROM, PROD-39 V&V | ROM export JSON, coupling |
| Twin Sync (Sec 4) | PROD-23 L3, PROD-36 diode | PROD-37 twin, PROD-38 config | OPC-UA/Kafka schema, merkle |
| ML Anomaly (Sec 5) | PROD-24 ROM, PROD-28 NCR | PROD-36 CPAT, PROD-34 scenarios | Λ_ML, scenario packs |
| Fleet Opt (Sec 6) | PROD-24 UQ, PROD-33, 34, 35 | PROD-33 CMF-RQT, PROD-38 ECO | Posterior params, tensors |
| Pred. Maint (Sec 7) | PROD-30 PM, PROD-28 NCR | PROD-30 WO, PROD-33 spares | Λ thresholds, RUL dist. |
| Training (Sec 8) | PROD-34 RCT, PROD-35 HSCT | PROD-34 simulator, PROD-35 HMI | Scenario JSON, remediation |
| Cyber Interface (Sec 9) | PROD-36 diode, PROD-38 config | PROD-36 IDS, PROD-38 firmware | Data diode, signed deploy |
| Data Gov (Sec 10) | PROD-28 DQR, PROD-32 regs | PROD-32 audit, PROD-39 T&E | Retention, lineage, blockchain |
| HMI (Sec 11) | PROD-35 ISA-101, PROD-36 SEV | PROD-35 operators, PROD-36 IR | Anomaly cards, 3D twin |
| V&V (Sec 12) | PROD-24 V&V, PROD-28 CT | PROD-39 T&E, PROD-40 roadmap | Acceptance criteria |

---

## Appendix A: Data Flow Diagram

```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│  SENSORS    │────►│  L0 FPGA    │────►│  L1 RTU     │────►│  L2 PLC     │
│  (480+)     │     │  (100 kHz)  │     │  (1 kHz)    │     │  (100 Hz)   │
└─────────────┘     └─────────────┘     └─────────────┘     └──────┬──────┘
                                                                    │
                                                                    ▼
┌─────────────┐     ┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│  IT LAKE    │◄─── │ DATA DIODE  │◄─── │  L3 SCADA   │◄─── │  TWIN HPC   │
│  (1 Hz)     │     │ (OT→IT)     │     │  (10 Hz)    │     │  (10 Hz)    │
└─────────────┘     └─────────────┘     └─────────────┘     └─────────────┘
       │                   │                   │                   │
       ▼                   ▼                   ▼                   ▼
  ┌─────────┐         ┌─────────┐         ┌─────────┐         ┌─────────┐
  │ Fleet   │         │Integrity│         │ Operator│         │  ML &   │
  │ Optim.  │         │ Verify  │         │ HMI     │         │  ROM    │
  └─────────┘         └─────────┘         └─────────┘         └─────────┘
```

---

## Appendix B: Sensor Catalog with Rates

| Tag | Description | Channels | Rate | Units | Range | Accuracy |
|-----|-------------|----------|------|-------|-------|----------|
| FBG_T_001-384 | Drum wall temperature | 384 | 125 Hz | °C | 25-2200 | ±2°C |
| FBG_ε_001-096 | Drum wall strain | 96 | 125 Hz | με | ±5000 | ±10 με |
| SIF_01-24 | Safety instrumented functions | 24 | Event | State | 0/1 | N/A |
| EM_PWR_01-08 | Zone active power | 8 | 1 kHz | kW | 0-500 | ±0.5% |
| EM_V_01-08 | Zone RMS voltage | 8 | 1 kHz | V | 0-650 | ±0.2% |
| EM_I_01-08 | Zone RMS current | 8 | 1 kHz | A | 0-1000 | ±0.5% |
| EM_F_01-08 | Zone frequency | 8 | 1 kHz | Hz | 1k-100k | ±1 Hz |
| TC_BU_01-24 | Backup thermocouples | 24 | 10 Hz | °C | 25-1600 | ±5°C |
| AE_01-16 | Acoustic emission | 16 | 50 kHz | dB | 0-100 | ±1 dB |
| GAS_HCl | Hydrogen chloride | 1 | 1 Hz | ppm | 0-1000 | ±5 ppm |
| GAS_SO2 | Sulfur dioxide | 1 | 1 Hz | ppm | 0-500 | ±3 ppm |
| GAS_CO2 | Carbon dioxide | 1 | 1 Hz | % | 0-20 | ±0.1% |
| GAS_H2 | Hydrogen | 1 | 1 Hz | % | 0-4 | ±0.05% |

---

## Appendix C: ML Model Cards

### C.1 FBG Autoencoder (Anomaly Detection)

| Field | Value |
|-------|-------|
| **Model ID** | FBG-AE-v3.2.1 |
| **Type** | Variational Autoencoder (β=0.1) |
| **Input** | 384-dim FBG temperature vector @ 10 Hz |
| **Latent** | 32-dim Gaussian (μ, logσ) |
| **Training Data** | 6 months nominal (2.6M frames), 12 Forge sites |
| **Validation** | 30-day holdout + 500 injected anomalies |
| **Metrics** | FPR: 0.8%/day, TPR: 94% @ Λ>3σ, Latency: 1.2 ms |
| **Framework** | PyTorch 2.1, ONNX export for HPC inference |
| **Version Control** | Git tag `ml/fbg-ae-v3.2.1`, SBOM in PROD-38 |

### C.2 ROM Surrogate (Twin Acceleration)

| Field | Value |
|-------|-------|
| **Model ID** | ROM-POD-GAL-v2.1.3 |
| **Type** | POD-Galerkin (12 modes, quadratic) |
| **Input** | 8-dim (zone powers + RPM + feedstock) |
| **State** | 12-dim modal coefficients |
| **Output** | 384-dim temperature reconstruction |
| **Training** | 1000 FEA snapshots (PROD-24 CT-01-10) |
| **Metrics** | Speedup: 118×, RMS: 4.2°C, Stress: 8 MPa |
| **Export** | JSON (Section 3.2 contract) |
| **Version Control** | Git tag `rom/pod-gal-v2.1.3`, PROD-24 Appendix C |

### C.3 CPAT Fusion (Cyber-Physical Anomaly)

| Field | Value |
|-------|-------|
| **Model ID** | CPAT-FUSION-v1.4.0 |
| **Type** | Multi-source likelihood fusion (Naive Bayes) |
| **Sources** | 8 (FBG, TSN, SIF, PTP, Firmware, Access, AE, Fleet) |
| **Output** | Λ_CP (log-likelihood ratio), SEV level |
| **Calibration** | Fleet history (18 months, 5 sites) |
| **Metrics** | SEV-1: 0/yr, SEV-2: 2/yr, SEV-3: 12/yr (target) |
| **Update** | Quarterly retrain on new incidents |
| **Version Control** | Git tag `cpat/fusion-v1.4.0`, PROD-36 Appendix H |

---

*End of PROD-37 Data Management & Digital Twin*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*
*Document Number: CSMFAB000000000137 | Revision: 1.0*