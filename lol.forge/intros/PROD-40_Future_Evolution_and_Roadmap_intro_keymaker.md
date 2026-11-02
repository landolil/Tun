# PROD-40 Keymaker Heuristic — Implementation Precision
## Lock, Key, Turn

### The Empirical Lock

The fabrication fidelity gap this addresses is **scale translation of thermal gradient fidelity**. Gen-I (226L) maintains ±5°C zone control across 800 mm axial length with 16 FBG sensors per zone. Gen-II (2000L, 1800 mm) must maintain the same ±5°C across 2.25× the length with 4× the diameter. The heat equation does not scale linearly:

$$\frac{\partial T}{\partial t} = \alpha \nabla^2 T + \frac{P_{induction}}{\rho c_p}$$

At 2× diameter, radial thermal diffusion time scales as $r^2/\alpha$ → **4× slower**. At 2.25× length, axial conduction losses scale with surface area → **4.5× more parasitic loss**. The induction power density (kW/m³) must increase to overcome this, but coil-to-drum coupling efficiency drops with larger gap (15 mm → 25 mm for thermal expansion). The Lock is: **how to maintain zone isolation at 9× volume without 9× power or 9× sensor density.**

Compounding this: every horizon adaptation (lunar vacuum, nuclear decay heat, microgravity surface tension, ocean pre-reduced feed) perturbs the boundary conditions. The lunar drum sees 10⁻⁶ mbar (no convection cooling). The nuclear drum sees 50 kW decay heat *inside* the charge. The microgravity drum sees liquid metal spheres held by surface tension, not centrifugal pooling. Each is a different PDE boundary value problem — but all must be solved by the *same* control architecture.

### The Mathematical Key

The single computational primitive generating the solution is the **Recursive Bayesian Thermal Oracle (RBTO)** — the same primitive that powered PROD-37's Digital Twin and PROD-39's Test Oracle, now elevated to *roadmap governance*.

**Atomic computation:** At each control cycle (10 Hz), the RBTO computes:
$$\Lambda_k = \frac{P(\text{sensor data}_k | \text{thermal model } \mathcal{M}_\theta)}{P(\text{sensor data}_k | \text{nominal trajectory } \mathcal{T}_0)}$$

Where $\mathcal{M}_\theta$ is the parameterized thermal model (FEA-reduced order model, 118× speedup per PROD-37) with parameters $\theta = \{k_{eff}, h_{gap}, \epsilon_{wall}, P_{coupling}\}$, and $\mathcal{T}_0$ is the design trajectory for the current horizon/feedstock.

**Recursion:** The RBTO runs at four nested scales:
- **Micro (10 Hz):** Zone PID → MPC correction (Horizon 1)
- **Meso (1 Hz):** Batch trajectory optimization (Horizon 1-2)
- **Macro (0.01 Hz):** Feed recipe synthesis from LIBS/Raman (Horizon 3)
- **Meta (0.001 Hz):** Roadmap gate validation — does $\Lambda_{macro} > 100$ for next horizon? (Horizon 4)

**Why this is the Key:** The RBTO does not require *separate* models for lunar, nuclear, ocean, urban. It requires *one* thermal model $\mathcal{M}_\theta$ with *horizon-specific boundary condition priors*. The lunar prior sets $h_{conv} = 0$, $P_{solar} = 100$ kWth. The nuclear prior sets $Q_{decay}(t) = \sum_i \lambda_i E_i N_i(t)$. The microgravity prior sets $Bo = \rho \omega^2 r L^2 / \sigma$. The RBTO infers $\theta$ from sensor data *in situ* — the same way PROD-37 infers drum wall conductivity from FBG transients.

The Key generates the solution because **it makes horizon adaptation a parameter estimation problem, not a redesign problem**. Gen-II cluster commissioning (Section 2.2.3) is Phase 1-5 of RBTO parameter convergence. Lunar demo (Horizon 2) is Phase 6 with new priors. Nuclear facility (Horizon 3) is Phase 7. Self-replication (Horizon 4) is Phase 8 where $\theta$ includes *material production rates*.

### The Turn (Both Directions)

**Theory → History Validation:**
The RBTO predicts Gen-II cluster behavior *before* steel is cut. The 2000L segmented drum FEA (PROD-25) gives $\theta_{prior}$. The RBTO simulates 10,000 virtual commissioning batches. The predicted $\Lambda_{meso}$ distribution defines the SAT acceptance criteria (PROD-39). When Drum A hot commissioning (Phase 2) produces $\Lambda_{meso} > 10$ for 95% of batches, Theory is validated. If $\Lambda_{meso} < 3$ for >10% of batches, the FEA model has a structural error — probably at the segment joints. This is not a schedule variance; it is a model discrepancy that *must* be resolved before Drum B install.

**History → Theory Validation:**
Every horizon feeds data back to $\mathcal{M}_\theta$. Lunar regolith processing (Horizon 2) produces the first vacuum thermal cascade data — validates the $h_{conv}=0$ prior, measures actual radiative coupling $\epsilon_{wall}$ at 2400°C in vacuum. Nuclear HLW processing (Horizon 3) produces the first internal decay heat data — validates $Q_{decay}(t)$ model against FBG transients. Ocean nodule processing (Horizon 3) produces the first pre-reduced feed data — validates the Stage 7 reduction energy model. Urban mining (Horizon 3) produces the first variable-feedstock LIBS-to-recipe data — validates the Macro-scale recipe synthesis.

**The Turn closes when:** The RBTO trained on Gen-II cluster data *successfully predicts* lunar demo data without parameter retraining (only prior update). This is the **universality proof** — the thermal cascade physics is *one* model with *many* boundary conditions. At that point, the roadmap is not a plan; it is a validated simulation. The next horizon (self-replication) is just the next boundary condition: $\theta$ now includes material synthesis kinetics.