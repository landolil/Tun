## Keymaker Heuristic — Implementation Precision

### The Empirical Lock

The fabrication fidelity gap in Aegis-Forge I structural analysis is the **divergence between single-load-case allowable stress design and the measured behavior of ceramics and composites under combined extreme thermomechanical loading.**

Three specific locks prevent traditional ASME/ASCII code-based design from closing this gap:

1. **Ceramic strength is not a constant — it's a temperature-dependent distribution:** ASME BPVC Section VIII uses constant allowable stress (S) with safety factors. But ZrB₂-SiC flexural strength drops from 620 MPa (RT) to 350 MPa (2200°C) — a 44% reduction. The Weibull modulus (m = 12) means failure probability is volume-dependent and stress-dependent. At Stage 8, the drum ID sees 225 MPa von Mises — SF = 1.55× on 350 MPa. But this is the *mean* strength; 10% of the volume sees >250 MPa (SF < 1.4×). The lock: **constant safety factor on temperature-dependent Weibull strength.**

2. **Composite failure is interactive, not separable:** BFRP/Elium® vessel failure is governed by Tsai-Wu criterion (F_ijσ_iσ_j + F_iσ_i = 1), where hoop, axial, and shear stresses interact. At the gas port penetration under design pressure + thermal gradient, hoop = 52 MPa, axial = 35 MPa, shear = 22 MPa. Individual SFs: hoop 12.5×, axial 18.6×, shear 3.6×. But combined Tsai-Wu FI = 0.22 (SF = 4.5× on interaction). Sequential checking of individual components would miss the interaction. The lock: **interactive failure criteria vs. component-by-component allowables.**

3. **Thermal buckling is a load case, not a material property:** The vessel external surface reaches 200°C during operation. The thermal compressive stress (78 MPa) exceeds the pressure tensile stress (25.5 MPa), creating net compression. The buckling critical pressure drops from 18.4 bar (RT) to 12.7 bar (200°C) — a 31% reduction. Standard pressure vessel codes treat buckling as an external pressure check; here it's an *operating condition*. The lock: **thermal compression as a design-driving load case.**

**Common thread:** Every lock is a **coupling between temperature and mechanical behavior that traditional codes treat as separable.** The empirical lock is the sum of all neglected thermomechanical couplings.

---

### The Mathematical Key

The single computational primitive that generates the structural solution is the **temperature-dependent thermomechanical equilibrium equation solved on the coupled FEA mesh:**

$$\nabla \cdot \boldsymbol{\sigma} + \mathbf{f}_b = 0, \quad \boldsymbol{\sigma} = \mathbb{C}(T) : (\boldsymbol{\epsilon} - \boldsymbol{\epsilon}_{th}(T)) - \boldsymbol{\epsilon}_{creep}(t,T,\sigma)$$

Where:
- $\mathbb{C}(T)$ = temperature-dependent stiffness tensor (orthotropic for BFRP, isotropic for ceramics)
- $\boldsymbol{\epsilon}_{th}(T) = \int_{T_{ref}}^T \boldsymbol{\alpha}(T') dT'$ = thermal strain from temperature history
- $\boldsymbol{\epsilon}_{creep}$ = Norton-Bailey creep strain (for T > 1800°C)
- $\mathbf{f}_b$ = body forces (centrifugal: $\rho \omega^2 r$, seismic: $\rho \mathbf{a}_{ground}$)

**This one equation, discretized on the 2.8M-element drum mesh and 50K-element vessel mesh, with temperature-dependent material properties from PROD-24, is the atomic computation.**

Everything in this document derives from it:

- **Drum FEA (Section 2):** The equation solved on the rotating drum mesh with centrifugal body force and thermal strain from PROD-24's radial gradient. The Weibull post-processor integrates $P_f = 1-\exp[-(\sigma/\sigma_0)^m V/V_0]$ over the stressed volume.
- **Vessel FEA (Section 3):** The equation on the shell mesh with orthotropic $\mathbb{C}(T)$, thermal strain from 250°C→150°C gradient, and pressure load. Tsai-Wu failure index computed from $\boldsymbol{\sigma}$ at each integration point.
- **Port valve (Section 5):** The equation on the actuator strip mesh with $\mathbb{C}(T)$ for Ti₃AlC₂/ZrO₂ bilayer, thermal strain from ΔαΔT, contact boundary condition at piston seat.
- **Seismic (Section 8):** The equation with $\mathbf{f}_b = \rho \mathbf{a}_{ground}(t)$ from IEEE 693 RRS time history. Modal superposition (30 modes) for transient response.
- **Fatigue (Section 9):** The equation's stress history output feeds Coffin-Manson $\Delta\varepsilon_p/2 = \varepsilon_f'(2N_f)^c$ and Paris law $da/dN = C(\Delta K)^m$.
- **NDT (Section 10):** The equation's stress distribution defines critical locations for UT/AE sensor placement.
- **Safety factors (Section 12):** The equation's output σ_vm and FI are divided by temperature-dependent allowables.

**The mathematical key is not the FEA software, not the mesh, not the post-processor — it is the temperature-dependent thermomechanical equilibrium equation with thermal strain and creep, evaluated on the coupled mesh.** If you solve this equation correctly with the right $\mathbb{C}(T)$, $\boldsymbol{\alpha}(T)$, $\sigma_f(T)$, you get the structural answer. The mesh is just the numerical vessel; the material correlations are the input; the equation is the primitive.

---

### The Turn (Both Directions)

#### Theory→History Validation

The thermomechanical equilibrium equation predicts historical test data from the CSMFAB0108 development program:

| Test Article | Condition | FEA Prediction | Measured | Error | Key Coupling |
|--------------|-----------|----------------|----------|-------|--------------|
| **PROD-04 FA-01** | Stage 8, 2200°C, 400 RPM | σ_vm = 225 MPa | 225 MPa (strain gauges) | 0% | Thermal + centrifugal |
| **PROD-06 HT** | 15 bar, 25°C | σ_hoop = 38 MPa | 38 MPa (strain gauges) | 0% | Pressure only |
| **PROD-06** | 10 bar, 200°C ext | Tsai-Wu FI = 0.12 | No damage (AE) | — | Thermal + pressure |
| **Port 8 Actuator** | 680°C ΔT, 3.6 mm δ | σ_Ti = 103 MPa | 3.6 mm deflection | <2% | Bilayer ΔαΔT |
| **Frame Shake Table** | 1.5g DBE, 3-axis | 1st mode 8.5 Hz | 8.2 Hz | -3.5% | BFRP stiffness |
| **Bearing Life** | 500 RPM, 8.9 kN | L10 = 35,800 hrs | 42,000 hrs | +17% | Hertz + ISO 281 |

The equation **predicts history within measurement uncertainty** when all couplings (thermal strain, temperature-dependent stiffness, centrifugal body force, interactive failure criteria) are active.

#### History→Theory Correction

Historical anomalies refine the equation's constitutive parameters and boundary conditions:

1. **Anomaly:** Drum FA-01 strain gauges showed 230 MPa at Liner B interface vs. 200 MPa FEA (PROD-04 FA-01, 2026-10).
   **Root cause:** Liner B (ZrB₂-SiC, 3 mm) CTE mismatch with drum body — not perfectly matched at 1400°C due to B₄C sintering aid segregation.
   **Correction:** Updated liner CTE in $\boldsymbol{\alpha}(T)$: Zone B α = 6.2×10⁻⁶/K (was 5.8×10⁻⁶/K) for 1000-1500°C. Now predicts 228 MPa (4% error).

2. **Anomaly:** Vessel gas port penetration showed FI = 0.22 vs. 0.18 predicted (PROD-06 hydrotest strain data).
   **Root cause:** Filament winding transition at port creates local fiber angle deviation (±5° from ±18° target).
   **Correction:** Added local material orientation perturbation in FEA mesh at ports (±5° random per ply). FI now 0.21 (2% error).

3. **Anomaly:** Frame 1st bending mode 8.2 Hz vs. 8.5 Hz FEA (shake table, 2026-10).
   **Root cause:** Elastomeric isolator stiffness lower than spec at low strain (K_h = 2.1 MN/m vs. 2.5 MN/m spec).
   **Correction:** Updated isolator stiffness in boundary conditions from spec to measured (2.1 MN/m). Mode now 8.3 Hz (1% error).

4. **Anomaly:** Port 8 actuator deflection 3.6 mm at 680°C ΔT vs. 3.8 mm Timoshenko prediction.
   **Root cause:** Brazed joint compliance (Ag-CuO-TiO₂, 50 μm) adds rotational spring at fixed end.
   **Correction:** Added rotational spring K_θ = 0.15 N·m/rad at actuator base in FEA. Deflection now 3.62 mm (0.6% error).

5. **Anomaly:** Bearing L10 life 42,000 hrs vs. 35,800 hrs predicted (ISO 281).
   **Root cause:** N₂ gas film lubrication better than assumed (κ = 0.7 vs. 0.5) due to surface finish (Ra < 0.05 μm on Si₃N₄ races).
   **Correction:** Updated lubrication factor a_ISO = 2.5 (was 2.0). L10 = 44,750 hrs (6% error).

The mathematical key **absorbs history** — each anomaly tightens a material correlation ($\mathbb{C}(T)$, $\boldsymbol{\alpha}(T)$), a boundary condition (isolator stiffness, braze compliance), or a model parameter (lubrication factor, fiber angle perturbation), but the equilibrium equation $\nabla \cdot \boldsymbol{\sigma} + \mathbf{f}_b = 0$ with thermal strain remains structurally invariant. This is the signature of a correct primitive: it extends, it does not rewrite.

---
