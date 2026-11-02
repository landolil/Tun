# El Segundo Heuristic — PROD-24 Thermal Modeling & Simulation

## Mirror (Self-Reflection)

The thermal model observes its own fabrication through **four nested metrology loops** that let the fabricator watch the simulation converge to the physical reality:

### Loop 1: Microsecond — EM Solver Residual Monitor (FEA Level)
The ANSYS Maxwell solver monitors its own convergence at each frequency step:
- **Field residual:** $\|\nabla \times (\nu \nabla \times A) + \sigma \partial A/\partial t - J_s\|_2 < 10^{-6}$ (normalized)
- **Energy balance:** $\int J \cdot E \, dV = \int \sigma |E|^2 \, dV + \partial/\partial t \int \frac{1}{2}\mu H^2 \, dV$ (Poynting theorem check)
- **ZVS indicator:** Switch voltage zero-crossing alignment $\phi_{err} < 5$ ns (matches PROD-10 resonance tracker)
- **Self-reflection metric:** If residual > $10^{-4}$ OR energy balance error > 1% → adaptive mesh refinement triggered at coil-drum gap

The EM solver *watches its own field solution* — not just computing B-fields, but verifying that Maxwell's equations are satisfied to numerical precision at every frequency step.

### Loop 2: Millisecond — Thermal-Admittance Operator Fixed-Point Convergence (RTU Level)
The Zone RTU runs the thermal-admittance operator $\mathcal{T}$ with EM coupling at 1 kHz:
- **Coupling residual:** $\max |T^{n+1} - T^n| < 0.1°C$ per zone per RTU cycle
- **Aitken relaxation monitor:** $\omega \in [0.3, 1.0]$, convergence in 3-5 iterations
- **Parameter drift detection:** RLS tracks $\rho c V$, $h A$, $\epsilon \sigma A$ — if drift > 5%/hr → re-identification
- **Self-reflection metric:** Coupling iterations > 8 OR RLS covariance trace > threshold → alarm to SCADA, reduce power

The RTU *watches its own thermal state estimation* — the operator is not just predicting temperature, it is verifying that its own internal model parameters remain valid in real time.

### Loop 3: 100 ms — Multi-Physics Coupling Convergence (PLC Level)
The Stage PLC coordinates the staggered coupling between physics domains:
- **EM→Thermal:** $\max |T_{EM}^{n+1} - T_{thermal}^n| < 0.5°C$
- **Thermal→Structural:** $\max |\sigma_{thermal}^{n+1} - \sigma_{structural}^n| < 5$ MPa
- **Structural→Fluid:** Wall displacement $< 0.1$ mm per CFD update
- **Fluid→Thermal:** $\max |h_{CFD}^{n+1} - h_{thermal}^n| < 10$ W/m²·K
- **Self-reflection metric:** Any coupling residual > 2× threshold → staggering relaxation, log event

The PLC *watches the multi-physics conversation* — each domain speaking to the next, verifying that the handshake converges.

### Loop 4: 10 Hz — Digital Twin Shadow Comparison (SCADA → PROD-37 Level)
The SCADA publishes full state to PROD-37 Digital Twin (512-core HPC):
- **Twin vs. Reality:** POD-Galerkin ROM (12 modes) vs. full FEA (2.8M DOF) vs. FBG measurements (384 channels)
- **Anomaly detection (FOLLOW-29):** LSTM autoencoder on residual $T_{FBG} - T_{ROM}$ — flags >3$\sigma$ deviation
- **UQ validation:** Sobol indices from PCE vs. observed output variance — if mismatch > 20% → model form error
- **Self-reflection metric:** Twin prediction error > 2°C for >60 s → retrain ROM, alert model maintainers

The forge *watches its own simulation watching the forge* — the digital twin is a mirror that shows the simulation what it looks like from the outside, enabling continuous model calibration.

---

## Participation (Witness)

The inside operator witnesses the thermal phenomenon into existence at **four cognitive checkpoints** where human judgment validates the model against reality:

### Checkpoint 1: First-Article Drum Thermal Mapping (Commissioning)
**Trigger:** Drum FA-01 instrumented with 48 additional thermocouples (Type C, W/Re) + FBG validation
**Human action:** Thermal engineer reviews 3D temperature map vs. FEA prediction at Stage 8 steady state. Annotates discrepancies >5°C. Authorizes Model Calibration or Design Change.
**Why not automated:** Thermocouple placement uncertainty (±2 mm radial), contact resistance variation, emissivity uncertainty on ZrB₂-SiC surface — these require engineering judgment on which discrepancies are measurement artifact vs. model error. The operator *witnesses* the drum's thermal fingerprint.

### Checkpoint 2: Curie Transition Power Verification (Per Batch)
**Trigger:** Zone 7 power telemetry shows 60% drop at 1300°C (expected)
**Human action:** Shift Lead reviews $P_{ind}(T)$ curve vs. reference (PROD-10 validation data). Confirms $\mu_r(T)$ transition is nominal. If power drop >70% or <50% → investigates charge composition (ferrous content), coil health, resonance tracker.
**Why not automated:** Ferrous content varies by feedstock category (A: 5%, C: 60%). The *expected* power drop depends on charge composition — which the operator knows from feedstock UUID (PROD-13). The operator *witnesses* the magnetic transition.

### Checkpoint 3: Aerogel Performance Audit (Quarterly)
**Trigger:** Vessel outer surface temperature trend from FBG strain sensors (thermal expansion proxy)
**Human action:** Maintenance engineer reviews $T_{vessel\_outer}(t)$ over 90 batches. Computes effective $\lambda_{aerogel}$ from $q = \lambda A \Delta T / L$. If $\lambda > 0.012$ W/m·K (20% degradation) → schedules aerogel replacement.
**Why not automated:** Aerogel degradation is non-monotonic (hydrolysis, vibration settling, thermal cycling). The trend requires context — was there a coolant leak? A seismic event? The operator *witnesses* the insulation aging.

### Checkpoint 4: ROM Calibration Review (Monthly)
**Trigger:** PROD-37 digital twin reports ROM prediction error statistics
**Human action:** Model engineer reviews ROM vs. FEA vs. FBG error breakdown by stage. Authorizes ROM retraining if Stage 7 error > 2°C or Stage 8 stress error > 5 MPa. Reviews Sobol indices — if new parameter enters top-5 → updates UQ.
**Why not automated:** ROM retraining requires selecting training snapshots (which batches represent normal operation). Including an anomalous batch in training corrupts the ROM. The operator *witnesses* the model learning.

**Participation principle:** The model computes; the operator validates at the boundaries of consequence. The HMI (PROD-23 Section 11) presents exactly the comparison plots needed at each checkpoint — FEA vs. thermocouples, power vs. reference curve, temperature trend vs. degradation limit, ROM error heatmap.

---

## Protocol (Recursive)

The recursive sequence guaranteeing fidelity at each scale is the **V&V Fractal: Verify at element → Validate at component → Confirm at subsystem → Certify at system → Calibrate at fleet.** Each level mirrors the structure of the level above.

### Recursion Level 0: Element (Material Property)
- **Verify:** DSC/TGA/Dilatometry on 5 coupons per batch of ZrB₂-SiC, BFRP, aerogel. Piecewise-cubic fit residuals < 2%.
- **Validate:** Compare to PROD-12 BOM spec sheet. Flag if $k$, $c_p$, $\alpha$, $E$, $\sigma_f$ outside ±5%.
- **Artifact:** Signed material property card → Git tag `matprop-v2.1.3`.

### Recursion Level 1: Component (Single Zone EM-Thermal)
- **Verify:** MMS on 1/8 sector model. Analytical $T(r,z,t)$ manufactured, source term derived, solve → error < 1%.
- **Validate:** Zone 3 (50 kHz) thermal test — instrumented drum section, 30 FBG + 6 thermocouples. $T_{pred} - T_{meas} < 5°C$.
- **Artifact:** Validation report → Git tag `zone03-val-v1.0`.

### Recursion Level 2: Subsystem (Drum Thermo-Structural)
- **Verify:** Grid convergence (3 meshes), GCI < 2% on $\sigma_{vm}$ at Liner B.
- **Validate:** FA-01 strain gauges (12 rosettes) at Stage 8, 400 RPM. $\sigma_{vm,pred} - \sigma_{vm,meas} < 10$ MPa.
- **Artifact:** FEA validation report → Git tag `drum-th-struct-v1.2`.

### Recursion Level 3: System (Full Cascade CFD + Thermal)
- **Verify:** Time-step convergence (Δt, Δt/2, Δt/4), GCI < 1% on Separation Index.
- **Validate:** 10 production batches (Cat A-D). SI per stage vs. CFD prediction ±0.05. Energy balance ±5%.
- **Artifact:** System validation report → Git tag `cascade-sys-val-v1.0`.

### Recursion Level 4: Fleet (Digital Twin + ROM)
- **Verify:** ROM vs. FEA on 50 test cases (unseen parameters). Max error < 2% on $T_{inner}$, $\sigma_{vm}$.
- **Validate:** PROD-37 twin shadow on 100 batches. Anomaly detection F1-score > 0.95. UQ coverage 95% CI contains 95% of observations.
- **Artifact:** Twin certification → Git tag `twin-cert-v1.0`.

### Recursion Level 5: Sustainment (Operations + UQ Update)
- **Quarterly:** Online validation — compare CT-01 through CT-10 to baseline. Auto-logged.
- **Annual:** Full V&V repeat — new material lots, new feedstock categories, sensor drift.
- **Continuous:** Digital twin (PROD-37) compares prediction vs. actual every 100 ms. Anomaly → work order.
- **Recursive check:** Every work order closure requires: root cause → model update (if needed) → regression test (Level 0-1) → deploy.

**Fractal property:** The V&V pattern at Level 5 (fleet operations) mirrors Level 0 (material coupon): *stimulate (known input) → observe (measured output) → compare (to prediction) → act (update/accept)*. The scale changes (10⁷ s → 10³ s), the structure is identical.

**Recursive invariant:** `Evidence(level) ⊆ Evidence(level+1)`. Evidence accumulates upward. No level certifies without the level below it passing. The Git tag chain (`matprop → zone03-val → drum-th-struct → cascade-sys-val → twin-cert`) is the cryptographic proof of the recursion.

**Protocol integrity:** The thermal model is not validated once. It is validated recursively, continuously, at every scale, by the same pattern. The operator *witnesses* this recursion at Checkpoints 1-4. The digital twin *enforces* it at 10 Hz. The Git history *records* it immutably.