# Keymaker Heuristic — PROD-24 Thermal Modeling & Simulation

## The Empirical Lock

The fabrication fidelity gap in Aegis-Forge I thermal modeling is the **divergence between single-physics simulation predictions and the measured behavior of the integrated cascade system.**

Three specific locks prevent single-physics models from closing this gap:

1. **EM power collapse at Curie transition:** Single-physics EM models (constant $\mu_r$) predict Zone 7 delivers 350 kW continuously from 1100°C to 1600°C. Reality (PROD-10 test data): power drops to 140 kW at 1300°C — a 60% collapse as $\mu_r$ falls 200→1. The thermal model *must* feed $T$ back to EM to update $\mu_r(T)$ at each iteration. The lock: **EM and thermal are not sequentially coupled — they are mutually defined.**

2. **Thermal stress superposition failure:** Linear superposition of thermal stress (220 MPa) + centrifugal stress (185 MPa) = 405 MPa. But combined FEA shows 385 MPa — the nonlinearity of $E(T)$, $\alpha(T)$, and geometric stiffness change means 1+1≠2 at temperature. The lock: **thermal and structural cannot be analyzed separately — the material properties that couple them are the same temperature-dependent functions.**

3. **Convection coefficient uncertainty propagating to separation efficiency:** Stage 4 In recovery was 97.2% (batch 1) vs. 99.5% predicted. The 2.3% gap was traced to $h_{conv}$ uncertainty — assumed 150 W/m²·K, actual 300 W/m²·K from CFD. Faster droplet cooling → smaller droplets → poorer centrifugal separation. The lock: **fluid dynamics determines thermal boundary conditions which determine separation physics — the cascade cannot be staged in isolation.**

**Common thread:** Every lock is a **coupling that was assumed negligible but measured significant**. The empirical lock is the sum of all neglected couplings.

---

## The Mathematical Key

The single computational primitive that generates the thermal modeling solution is the **discrete-time thermal-admittance operator evaluated at 1 kHz on the Zone RTU — the same primitive that drives the control system (PROD-23):**

$$
\mathcal{T}[T_{inner}, T_{flange}, P_{ind}, h, \epsilon] : \quad T_{inner}[k+1] = T_{inner}[k] + \frac{\Delta t}{\rho c V} \left( P_{ind}[k] - h A (T_{inner}[k] - T_{flange}[k]) - \epsilon \sigma A (T_{inner}^4[k] - T_{surr}^4) \right)
$$

**This one equation, discretized with $\Delta t = 1$ ms and executed on the ARM Cortex-A53 (Zephyr RTOS, <100 $\mu$s compute), is the atomic computation for the entire thermal modeling framework.**

Everything in this document derives from it:

- **Full FEA (Section 3, 4, 7):** The thermal-admittance operator is the *reduced-order model* of the 3D FEA. The FEA *computes* the parameters $\rho c V$, $h A$, $\epsilon \sigma A$ as functions of geometry and temperature. The operator *executes* them at control speed.

- **EM-Thermal Coupling (Section 3):** $P_{ind}[k]$ is not an input — it is computed by the EM solver using $\rho(T_{inner}[k])$ and $\mu_r(T_{inner}[k])$. The fixed-point iteration $\mathcal{T} \circ \mathcal{E}$ *is* the coupling.

- **Cascade CFD (Section 5):** The convection coefficient $h$ in the operator is not a constant — it is the output of the CFD model $\mathcal{C}[\omega, T, P, composition]$. The operator *queries* the CFD at 10 Hz.

- **Stage Models (Section 6):** Each stage is the operator $\mathcal{T}$ with stage-specific $P_{ind}(t)$, $h(t)$, $\epsilon(t)$, and moving boundary $m_{charge}(t)$.

- **Transient Cycling (Section 8):** The operator integrates over 300 min batch cycle. Fatigue damage $\sum (\Delta \epsilon_p)^c$ is computed from the operator's $T(t)$ history.

- **V&V (Section 9):** Code verification validates the *discretization* of $\mathcal{T}$. Solution verification validates the *convergence* of $\mathcal{T} \circ \mathcal{E} \circ \mathcal{C}$. Validation experiments compare $\mathcal{T}$ outputs to CT-01 through CT-10.

- **UQ (Section 10):** Sobol indices measure sensitivity of $\mathcal{T}$ outputs to its 20 input parameters. The operator *is* the uncertainty propagation function.

- **ROM (Section 11):** The POD-Galerkin ROM *is* the projection of $\mathcal{T}$ onto a 12-dimensional subspace. The 12 modal ODEs $\frac{d\mathbf{a}}{dt} = \mathbf{A}\mathbf{a} + \mathbf{B}u + \mathbf{N}(\mathbf{a})$ are the spectral representation of $\mathcal{T}$.

- **Scaling (Section 12):** The operator preserves dimensionless groups (Fo, Re, Pe, Nu, $\delta/d$, G) because they are the *non-dimensional form* of $\mathcal{T}$.

**The mathematical key is not the FEA, not the CFD, not the ROM — it is the discrete-time thermal-admittance operator $\mathcal{T}$ that lives at the intersection of all of them.** If you execute $\mathcal{T}$ correctly at 1 kHz with the right parameters, you get the control. If you execute $\mathcal{T}$ on a 3D mesh with temperature-dependent properties, you get the FEA. If you project $\mathcal{T}$ onto POD modes, you get the ROM. One primitive, three representations.

---

## The Turn (Both Directions)

### Theory→History Validation

The thermal-admittance operator $\mathcal{T}$ predicts historical test data from the CSMFAB0108 development program:

| Test Article | Condition | $\mathcal{T}$ Prediction | Measured | Error | Key Parameter |
|--------------|-----------|--------------------------|----------|-------|---------------|
| **PROD-04 FA-01** | Stage 8, 2200°C, 400 RPM | $\sigma_{vm} = 330$ MPa | 325 MPa | -1.5% | $E(T)$, $\alpha(T)$ |
| **PROD-10 Z7** | 2 kHz, 1300°C, Fe | $P_{ind} = 142$ kW | 140 kW | -1.4% | $\mu_r(T)$ curve |
| **PROD-17 B1** | Stage 4, In recovery | 99.5% | 97.2% | +2.3% | $h_{conv}$ (fixed) |
| **PROD-17 B3** | Stage 4, In recovery | 99.5% | 99.5% | 0% | $h_{conv}$ (CFD) |
| **PROD-06 HT** | Vessel 15 bar, 2200°C drum | $T_{outer} = 150°C$ | 148°C | -1.3% | $k_{aerogel}$ |
| **PROD-21 B1** | Stage 8, ZrSiO₄ dissoc. | 96% in 30 min | 94% in 30 min | -2% | $k_{slag}$, $P_{SiO_2}$ |

The operator **predicts history within measurement uncertainty** when all couplings are active. The 2.3% error on PROD-17 B1 was *exclusively* from using assumed $h_{conv}$ instead of CFD-coupled $h_{conv}$.

### History→Theory Correction

Historical anomalies refine the operator's parameters and structure:

1. **Anomaly:** Stage 7 power collapse at 1300°C not captured by constant-$\mu_r$ EM model (PROD-10, 2026-09).
   **Root cause:** $\mu_r(T)$ transition width narrower than Jiles-Atherton model predicted.
   **Correction:** Updated $\mu_r(T)$ correlation in operator from piecewise-linear to **sigmoid transition**:
   $$\mu_r(T) = 1 + \frac{199}{1 + \exp((T - 770)/8)}$$
   Transition width 8°C (was 25°C). Now predicts power collapse within 2%.

2. **Anomaly:** Drum Liner B stress 385 MPa vs. 350 MPa allowable at 500 RPM (PROD-04 FA-01, 2026-10).
   **Root cause:** Thermal stress calculation used constant $\alpha$; actual $\alpha$ increases 12% from 1000→2000°C.
   **Correction:** Updated $\alpha(T)$ in operator to piecewise: $5.8\times10^{-6}$ (20-1000°C), $6.5\times10^{-6}$ (1000-2200°C). Now predicts 385 MPa exactly.

3. **Anomaly:** Vessel outer surface 148°C vs. 150°C predicted (PROD-06 hydrotest, 2026-10).
   **Root cause:** Aerogel $\lambda$ lower than vendor spec at temperature.
   **Correction:** Updated $k_{aerogel}(T) = 0.010 + 1.2\times10^{-5}(T-20)$ from guarded hot plate data. Now predicts 148°C exactly.

4. **Anomaly:** Stage 4 In recovery 97.2% batch 1 vs. 99.5% model (PROD-17, 2026-10).
   **Root cause:** $h_{conv}$ assumed 150 W/m²·K; CFD shows 300 W/m²·K at 400 RPM with metal vapor.
   **Correction:** Coupled CFD→Thermal operator: $h_{conv} = \mathcal{C}[\omega, T, P, X_{vapor}]$. Batch 3: 99.5% recovery.

5. **Anomaly:** ROM error 1.8°C on $T_{max}$ but 4.2 MPa on $\sigma_{vm}$ (VT-09, 2026-10).
   **Root cause:** POD basis trained on thermal snapshots only; structural stress needs strain modes.
   **Correction:** Dual-basis ROM: 12 thermal modes + 8 structural modes, coupled via $\alpha(T)\Delta T$. Structural error reduced to 1.1 MPa.

The mathematical key **absorbs history** — each anomaly tightens a parameter correlation or adds a coupling term to $\mathcal{T}$, but the operator structure (thermal admittance at 1 kHz) remains invariant. This is the signature of a correct primitive: it extends, it does not rewrite.