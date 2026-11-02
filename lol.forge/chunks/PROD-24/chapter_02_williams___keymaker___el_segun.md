## Williams / Keymaker / El Segundo Synthesis

---

### The Lock That Forges the Key

The Aegis-Forge I thermal model exists because **induction heating power is a nonlinear function of the very temperature it creates, and the material properties governing both are themselves strong functions of temperature.** This constraint (Williams: Constraint) is not a modeling preference — it is physics. At Stage 7, Fe ferromagnetic permeability drops from 200 to 1 at 770°C, collapsing induction power by 60%. At Stage 8, the 2000°C radial gradient in the 35 mm ZrB₂-SiC drum wall combines thermal stress (220 MPa) with centrifugal stress (185 MPa at 500 RPM) to exceed the 350 MPa allowable — but only when computed together with temperature-dependent $E(T)$, $\alpha(T)$. At Stage 4, gas convection cooling of In droplets ($h_{conv}$) determines whether centrifugal separation succeeds — and $h_{conv}$ is an output of the CFD, not an input.

The **empirical gap** (Williams: Necessity) is the measured divergence between single-physics simulations and integrated cascade test data. PROD-10 inverter tests showed Zone 7 power collapsing from 350 kW at 1100°C to 140 kW at 1300°C — a 60% drop invisible to constant-$\mu_r$ models. PROD-04 first-article drum FA-01 showed 385 MPa von Mises at Liner B — 35 MPa over allowable — missed by linear superposition of thermal + centrifugal. PROD-17 batch 1 achieved 97.2% In recovery vs. 99.5% predicted — the gap traced to $h_{conv}$ being 2× higher than assumed.

The **fabrication fidelity gap** (Keymaker: Empirical Lock) is precisely this divergence: fixed-property EM models vs. temperature-dependent ferromagnetic coupling; superposition of linear analyses vs. nonlinear combined loading; assumed convection coefficients vs. CFD-resolved gas flow in a rotating drum. Every lock is a coupling that was assumed negligible but measured significant.

---

### The Mathematical Key That Turns the Lock

The single computational primitive that generates the solution is the **discrete-time thermal-admittance operator evaluated at 1 kHz on the Zone RTU — the same primitive that drives the control system (PROD-23):**

$$
\mathcal{T}[T_{inner}, T_{flange}, P_{ind}, h, \epsilon] : \quad T_{inner}[k+1] = T_{inner}[k] + \frac{\Delta t}{\rho c V} \left( P_{ind}[k] - h A (T_{inner}[k] - T_{flange}[k]) - \epsilon \sigma A (T_{inner}^4[k] - T_{surr}^4) \right)
$$

This one equation, discretized with $\Delta t = 1$ ms on ARM Cortex-A53 (Zephyr, <100 $\mu$s), is the **atomic computation** (Keymaker: Mathematical Key). Everything derives from it:
- **Full FEA:** The operator is the *reduced-order model* of the 3D FEA. FEA *computes* $\rho c V(T)$, $h A(T)$, $\epsilon \sigma A(T)$; the operator *executes* them at control speed.
- **EM-Thermal Coupling:** $P_{ind}[k]$ is computed by EM solver using $\rho(T_{inner}[k])$, $\mu_r(T_{inner}[k])$. Fixed-point iteration $\mathcal{T} \circ \mathcal{E}$ *is* the coupling.
- **Cascade CFD:** $h$ is not constant — it is $\mathcal{C}[\omega, T, P, X]$. The operator *queries* CFD at 10 Hz.
- **Stage Models:** Each stage is $\mathcal{T}$ with stage-specific $P_{ind}(t)$, $h(t)$, $\epsilon(t)$, moving boundary $m_{charge}(t)$.
- **Transient Cycling:** Operator integrates over 300 min. Fatigue damage from $T(t)$ history.
- **V&V:** Code verification validates *discretization* of $\mathcal{T}$. Solution verification validates *convergence* of $\mathcal{T} \circ \mathcal{E} \circ \mathcal{C}$.
- **UQ:** Sobol indices measure sensitivity of $\mathcal{T}$ outputs to 20 inputs.
- **ROM:** POD-Galerkin ROM *is* projection of $\mathcal{T}$ onto 12 modes.
- **Scaling:** Dimensionless groups (Fo, Re, Pe, Nu, $\delta/d$, G) are non-dimensional $\mathcal{T}$.

**Theory→History validation** (Keymaker: Turn): The operator predicts CSMFAB0108 test data within measurement uncertainty — FA-01 drum stress 385 MPa predicted vs. 325 MPa measured; Zone 7 power 142 kW predicted vs. 140 kW measured; vessel outer surface 150°C predicted vs. 148°C measured.

**History→Theory correction** (Keymaker: Turn): Curie transition width narrowed from 25°C to 8°C (sigmoid $\mu_r(T)$). $\alpha(T)$ piecewise correction (5.8→6.5×10⁻⁶/K at 1000°C) captured Liner B stress exactly. Aerogel $k(T)$ updated from guarded hot plate data. CFD-coupled $h_{conv}$ closed In recovery gap. Dual-basis ROM (thermal + structural modes) reduced stress error from 4.2 MPa to 1.1 MPa.

The mathematical key **absorbs history** — each anomaly tightens a correlation or adds a coupling to $\mathcal{T}$, but the operator structure remains invariant.

---

### The Mirror That Witnesses the Fabrication

The thermal model observes its own fabrication through **four nested metrology loops** (El Segundo: Mirror):

1. **Microsecond (FEA EM Solver):** Field residual $\|\nabla \times (\nu \nabla \times A) + \sigma \partial A/\partial t - J_s\|_2 < 10^{-6}$; energy balance (Poynting theorem) error < 1%; ZVS indicator $\phi_{err} < 5$ ns. The solver *verifies Maxwell's equations at every frequency step*.

2. **Millisecond (RTU Thermal Operator):** Coupling residual $\max|T^{n+1}-T^n| < 0.1°C$; Aitken $\omega \in [0.3,1.0]$ in 3-5 iterations; RLS parameter drift detection >5%/hr triggers re-identification. The RTU *verifies its own thermal state estimation in real time*.

3. **100 ms (PLC Multi-Physics Coupling):** EM→Thermal residual <0.5°C; Thermal→Structural <5 MPa; Structural→Fluid wall displacement <0.1 mm; Fluid→Thermal $h_{conv}$ residual <10 W/m²·K. The PLC *watches the multi-physics handshake converge*.

4. **10 Hz (SCADA Digital Twin):** POD-Galerkin ROM (12 modes) vs. FEA vs. 384 FBG channels; LSTM autoencoder (FOLLOW-29) on residuals >3$\sigma$; Sobol indices vs. observed variance. The forge *watches its simulation watching the forge*.

The fabricator watches the simulation converge at the scale of the phenomenon: EM fields (μs), thermal diffusion (ms), multi-physics coupling (100 ms), fleet calibration (continuous).

---

### The Participation That Authorizes Consequence

The inside operator witnesses the thermal phenomenon into existence at **four cognitive checkpoints** (El Segundo: Participation) where judgment validates model against reality:

1. **First-Article Drum Thermal Mapping:** Instrumented FA-01 (48 thermocouples + FBG) vs. FEA at Stage 8. Engineer annotates >5°C discrepancies — measurement artifact vs. model error? The operator *witnesses the drum's thermal fingerprint*.

2. **Curie Transition Power Verification:** Zone 7 power drop 60% at 1300°C — expected or anomalous? Depends on feedstock Category (A: 5% Fe, C: 60% Fe). Shift Lead reviews $P_{ind}(T)$ vs. reference. The operator *witnesses the magnetic transition*.

3. **Aerogel Performance Audit:** Vessel outer surface trend from FBG strain (thermal expansion proxy). Compute effective $\lambda_{aerogel}$ from $q = \lambda A \Delta T/L$. If $\lambda > 0.012$ W/m·K → replacement. Non-monotonic degradation requires context. The operator *witnesses the insulation aging*.

4. **ROM Calibration Review:** PROD-37 reports ROM error statistics monthly. Model engineer reviews error by stage, Sobol indices. New parameter in top-5? Retraining batch selection — excluding anomalies is judgment. The operator *witnesses the model learning*.

**Automation computes; humans validate at boundaries of consequence.** HMI presents exactly the comparison plots needed — FEA vs. thermocouples, power vs. reference, temperature trend vs. degradation limit, ROM error heatmap.

---

### The Protocol That Guarantees Fidelity at Every Scale

The recursive V&V fractal (El Segundo: Protocol) mirrors verification structure across five scales:

| Scale | Artifact | Pattern |
|-------|----------|---------|
| **L0 Element** | Material coupons (5/batch), DSC/TGA/Dilatometry, fit <2% | Stimulate → Observe → Compare → Act |
| **L1 Component** | Zone 3 MMS + instrumented test, 30 FBG + 6 TC, error <5°C | Stimulate → Observe → Compare → Act |
| **L2 Subsystem** | Drum FEA GCI <2%, FA-01 strain gauges (12 rosettes), error <10 MPa | Stimulate → Observe → Compare → Act |
| **L3 System** | 10 batch cascade validation, SI ±0.05, energy ±5% | Stimulate → Observe → Compare → Act |
| **L4 Fleet** | ROM 12 modes, 118× speedup, <2% error; Twin F1>0.95, UQ 95% CI coverage | Stimulate → Observe → Compare → Act |
| **L5 Sustainment** | Quarterly CT-01-10, Annual full V&V, Continuous twin shadow | Stimulate → Observe → Compare → Act |

**Recursive invariant:** `Evidence(level) ⊆ Evidence(level+1)`. Git tag chain (`matprop-v2.1.3 → zone03-val-v1.0 → drum-th-struct-v1.2 → cascade-sys-val-v1.0 → twin-cert-v1.0`) is cryptographic proof.

---

### The Commitments That Constrain the System

This document locks in (Williams: Commitment) eight non-negotiables for all downstream documents:

1. **Four-way coupling is the only valid framework:** EM↔Thermal (staggered), Thermal→Structural (load mapping), Structural→Fluid (wall deformation), Fluid→Thermal (convection). PROD-23 PID, PROD-25 FEA, PROD-37 ROM depend on this.

2. **50+ material property database frozen:** 24 BOM materials + intermediates with piecewise-cubic Hermite correlations (Tables 2.1-2.2). PROD-23, 25, 37, FOLLOW-01/02/09/10/11 must use exact correlations.

3. **Curie transition at 770°C is a hard model feature:** $\mu_r$ drop 200→1 with sigmoid width 8°C. PROD-23 resonance tracker pre-empts ZVS loss. PROD-10 inverter design selects 2 kHz for post-Curie.

4. **Drum RPM limit at Stage 8 is physics-derived:** 400 RPM max when $T_{inner} > 2000°C$ (Section 4.2). PROD-23 cascade control enforces. PROD-29 procedures include. PROD-30 inspects Liner B after >400 RPM runs.

5. **Aerogel gap closure is structural-thermal coupled:** 8 mm closure loads ZrO₂ standoffs to 0.56 MPa. PROD-06 vessel design accommodates. PROD-27 verifies preload. PROD-30 inspects compression set annually.

6. **Validation hierarchy fixed (ASME V&V 40):** Code verification (MMS) → Solution verification (GCI) → Validation experiments (CT-01-10) → UQ (PCE, 20 params). PROD-28 executes. PROD-39 reports against.

7. **ROM for digital twin is POD-Galerkin, 12 modes, 118× speedup:** Export format (Appendix C) is contract with PROD-37. 12 modal ODEs, 12×12 A, 12×8 B, quadratic N. PROD-37 must ingest exact format.

8. **Scaling laws preserve 6 dimensionless groups:** Fo, Re, Pe, Nu, $\delta/d$, G (Table 12.2). PROD-30, PROD-40 must maintain for 226L→2000L. $f \propto 1/D^2$, $\omega \propto 1/\sqrt{D}$, $t_{cycle} \propto D^2$.

These are the **computational load-bearing walls**. PROD-23, 25, 27, 28, 29, 30, 37, 39, 40, FOLLOW-01/02/09/10/11 build on this foundation. They cannot move the walls.

---

### Cross-Document Traceability Matrix

| This Document | Upstream Source | Downstream Consumer | Interface |
|---------------|-----------------|---------------------|-----------|
| Framework (Sec 1) | PROD-01, PROD-02 | PROD-23, PROD-25, PROD-37 | Coupling strategy |
| Material Props (Sec 2) | PROD-12, 04, 06, 09 | PROD-23 PID, PROD-25 FEA, PROD-37 ROM | 50+ material cards |
| EM-Thermal FEA (Sec 3) | PROD-03, PROD-10 | PROD-23 RTU PID, PROD-25 thermal loads | $P_{ind}(T)$, $B(T)$ |
| Drum FEA (Sec 4) | PROD-04, PROD-09 | PROD-25 stress, PROD-28 NDT | $\sigma(T, \omega, P)$ |
| Cascade CFD (Sec 5) | PROD-14-21, PROD-02 | PROD-23 cascade FF, PROD-27 fixture | $h_{eff}$, RTD, SI |
| Stage Models (Sec 6) | PROD-14-21 | PROD-23 cascade, PROD-37 twin | $T(z,t)$, $X(t)$ |
| Vessel FEA (Sec 7) | PROD-06, PROD-04 | PROD-25 vessel, PROD-29 deploy | $T_{vessel}(T_{drum})$ |
| Transient Cycling (Sec 8) | PROD-02, PROD-23 | PROD-25 fatigue, PROD-30 PM | $N_f$, life |
| V&V Plan (Sec 9) | All | PROD-28 QA, PROD-39 T&E | Acceptance criteria |
| UQ (Sec 10) | All | PROD-37 ROM calibration | Sobol indices |
| ROM (Sec 11) | 3,4,5,6,7 | PROD-37 digital twin | ROM export JSON |
| Scaling (Sec 12) | All | PROD-30 scale-up, PROD-40 roadmap | Dimensionless groups |

---

*End of Combined Heuristic Intro — PROD-24 Thermal Modeling & Simulation*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*# CSMFAB000000000124