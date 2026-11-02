# El Segundo Heuristic — PROD-23 Control System Architecture

## Mirror (Self-Reflection)

The forge observes its own fabrication through **three nested metrology loops** that let the fabricator watch the process at the scale of the phenomenon:

### Loop 1: Microsecond — FPGA Gate-Level Witness (L0)
The Artix-7 FPGA (Cell level, 100 kHz) monitors every GaN switching event:
- **Desaturation detection:** V_DS monitored at 100 MHz equivalent (10 ns resolution). If V_DS > 80% V_BUS for >200 ns → hard OFF in <500 ns. The FPGA *sees* the switch fail before it destroys itself.
- **Zero-voltage switching witness:** V_DS zero-cross timestamped vs. gate drive command. Phase error φ_err = t(V_DS=0) - t(gate_on) fed to PLL. The FPGA *watches* its own resonance lock in real time.
- **Current sense:** DC link shunt (50 mΩ, 4-terminal Kelvin) sampled at 1 MHz, averaged to 100 kHz. Over-current (>600 A) → cycle-by-cycle limit. The FPGA *feels* the instantaneous power.

**Self-reflection metric:** ZVS achievement rate >99.9% per switching cycle. Logged per zone, per second. If <99.5% → RTU reduces power, raises alarm.

### Loop 2: Millisecond — RTU Thermal Reconstruction (L1)
The Zone RTU (1 kHz) runs the thermal-admittance model (Section Keymaker: Mathematical Key) as a **virtual sensor**:
- **Inputs:** 48 FBG temperatures (flange), induction power command, drum RPM, gas flows
- **State:** T_inner (drum ID), h (convection), ρcV (thermal mass), d_char (char thickness, Stages 3+)
- **Output:** T_inner prediction ±5°C at 2200°C, updated every 1 ms

The RTU *mirrors* the drum's thermal state — not measuring it directly (impossible at 2200°C), but reconstructing it from the physics model driven by measured boundary conditions. This is the fabricator watching the drum heat from the inside out.

**Self-reflection metric:** Model residual (FBG-predicted vs. FBG-measured at flange) <2°C RMS. If >5°C → model re-identification triggered (RLS restart).

### Loop 3: 100 ms — PLC Cascade Consistency (L2)
The Stage PLC (100 Hz) enforces **cascade mass-energy balance** across stages:
- Stage N output composition (XRF/LIBS, 1 Hz) → Stage N+1 feedforward setpoints
- Drum residence time (RPM × drum geometry) → predicted stage completion
- Gas consumption (MFC integral) vs. reaction stoichiometry → leak detection

The PLC *witnesses* the material transformation — not just temperature, but the actual elemental separation progressing through the cascade. A deviation in Stage 4 indium recovery (expected 99.5%, measured 97%) back-propagates to Stage 3 pyrolysis duration adjustment.

**Self-reflection metric:** Elemental closure (Σ outputs / Σ inputs) >99.5% per batch. If <99% → batch flagged for investigation.

### Loop 4: 100 ms — Digital Twin Shadow (L3 → PROD-37)
The SCADA publishes full state (480+ sensors, 96+ actuators, all setpoints, all model states) to Kafka at 10 Hz. PROD-37 (Digital Twin) runs the same thermal-admittance model + CFD + FEA in shadow mode on 512-core HPC.
- **Comparison:** Twin prediction vs. actual at every sensor point
- **Anomaly:** ML autoencoder (FOLLOW-29) flags deviation >3σ
- **Optimization:** Twin suggests PID gain adjustments, flux rate changes, RPM profile

The SCADA *watches itself being watched* — the digital twin is a mirror that shows the forge what it looks like from the outside, enabling predictive maintenance and continuous optimization.

---

## Participation (Witness)

The inside operator witnesses the phenomenon into existence at **four cognitive checkpoints** where human judgment cannot be automated:

### Checkpoint 1: Batch Recipe Authorization (Pre-Start)
**Trigger:** Feedstock UUID scanned at shredder inlet (PROD-11). Category A–D determined by XRF presort.
**Human action:** Operator reviews feedstock composition vs. recipe library. Confirms or selects alternate recipe.
**Why not automated:** Feedstock variability (e.g., Category B with unexpected PVC >5%) requires process engineer judgment on HCl management (PROD-15 Stage 2). The recipe choice locks in thermal profile, gas atmosphere, flux strategy — wrong choice = slag formation, port blockage, weeks of downtime.

### Checkpoint 2: Stage Transition Gate (Per Stage)
**Trigger:** Stage PLC signals Stage Complete (temperature profile met, residence time satisfied, composition target hit).
**Human action:** Shift Lead reviews stage summary: energy consumed, yield %, gas analysis, SIF events, anomaly flags. Authorizes Advance to Next Stage or Hold for Investigation.
**Why not automated:** Stage 4 (Low-Temp Metals) indium-first strategy requires visual confirmation of In-rich slug at Port 4A (pyrometer + XRF). If In grade <99.9%, operator may extend dwell or adjust flux — this is a metallurgical judgment call. Stage 6 (Cu/PM) requires operator to verify H₂ concentration <4% before opening Port 6B (explosion risk).

### Checkpoint 3: SIF Bypass Authorization (Emergency Only)
**Trigger:** SIF trip (e.g., SIF-04-01 In over-temp >180°C) halts stage. Process cannot continue without bypass.
**Human action:** Dual-key authorization (Shift Lead + Safety Engineer). Time-limited (max 4 hr). Written justification logged. Bypass logged to blockchain-anchored audit trail.
**Why not automated:** SIL-3 SIF bypass is a risk acceptance decision. The operator *witnesses* the consequence of overriding a safety function — they own the outcome. No algorithm can accept risk on behalf of the organization.

### Checkpoint 4: Carrington Ride-Through Exit (Post-Event)
**Trigger:** GIC event detected, forge islanded, running on LiFePO₄ backup. Grid stable >30 min.
**Human action:** Operator verifies drum thermal state (no thermal shock >100°C/s), confirms all SIFs healthy, authorizes grid reconnect sequence.
**Why not automated:** Reconnecting a 500 kW induction load to a post-storm grid requires utility coordination, phase sync verification, and staged ramp. The operator *witnesses* the grid recovery and decides when the forge can safely rejoin.

**Participation principle:** Automation executes; humans authorize at the boundaries of consequence. The HMI (Section 11) presents exactly the information needed at each checkpoint — no more, no less. ISA-101 high-performance graphics ensure situation awareness without alarm flood.

---

## Protocol (Recursive)

The recursive sequence guaranteeing fidelity at each scale is the **V&V fractal: Verify at component → Validate at assembly → Confirm at system → Certify at deployment.** Each level mirrors the structure of the level above.

### Recursion Level 0: Component (FPGA Gate Drive)
- **Verify:** Unit test every VHDL module (desat detect, ZVS timestamp, PWM gen). Code coverage 100% (DO-254 DAL A).
- **Validate:** FPGA-in-the-loop (HIL) with GaN half-bridge + inductive load. 10⁶ switching cycles, zero desat failures.
- **Artifact:** Signed bitstream (SHA256), test report, coverage report → Git tag `fpga-v1.3.7`.

### Recursion Level 1: Module (Zone RTU)
- **Verify:** Zephyr RTOS application tests (PID, PLL, FBG acquisition, TSN stack). Mutation testing >90% kill rate.
- **Validate:** RTU HIL with FPGA + FBG simulator + inverter model. 72 hr soak at 1 kHz, zero deadline misses.
- **Artifact:** Signed firmware bundle, HIL report → Git tag `rtu-v2.1.4`.

### Recursion Level 2: Subsystem (Stage PLC + SIS)
- **Verify:** CODESYS project static analysis (PLCopen), SIS logic formal verification (model checking, nuXmv).
- **Validate:** Stage HIL with RTU + thermal simulator + gas analyzer. All 3 SIFs per stage tested (2oo3 injection).
- **Artifact:** Signed PLC/SIS application, proof test report → Git tag `stg04-v3.0.1`.

### Recursion Level 3: System (Full Forge TSN Network)
- **Verify:** Network calculus (TSN schedule feasibility), PTP sync analysis, FRER path diversity.
- **Validate:** Factory Acceptance Test (FAT) — 8 RTUs + 8 PLCs + SIS + SCADA on dual-ring. CT-01 through CT-10 executed.
- **Artifact:** FAT report, network capture, compliance matrix → Git tag `forge-fat-v1.0`.

### Recursion Level 4: Deployment (Site Commissioning)
- **Verify:** Site Acceptance Test (SAT) — FAT repeated at customer site with real drum, real feedstock.
- **Validate:** 10 production batches (Category A–D), all quality gates passed, zero SIF spurious trips.
- **Artifact:** SAT report, batch records, operator certification → Git tag `forge-sat-v1.0`.

### Recursion Level 5: Sustainment (Operations)
- **Quarterly:** Online partial stroke test (all 24 SIFs). Auto-logged.
- **Annual:** Full proof test (shutdown). Signed report.
- **Continuous:** Digital twin shadow (PROD-37) compares prediction vs. actual every 100 ms. Anomaly → work order.
- **Recursive check:** Every work order closure requires: root cause → model update (if needed) → regression test (Level 0–1) → deploy.

**Fractal property:** The verification pattern at Level 5 (operations) mirrors Level 0 (component): *stimulate → observe → compare → act*. The scale changes (10 μs → 10⁷ s), the structure is identical. This is the protocol that guarantees fidelity from gate drive to gigaton annual throughput.

**Recursive invariant:** `Verification_Evidence(level) ⊆ Verification_Evidence(level+1)`. Evidence accumulates upward. No level ships without the level below it passing. The Git tag chain (`fpga → rtu → stgXX → forge-fat → forge-sat`) is the cryptographic proof of the recursion.