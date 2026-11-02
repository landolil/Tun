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
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*