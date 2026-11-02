## 3. Electromagnetic-Thermal FEA (Induction Zones)

### 3.1 EM Model Formulation

**Governing Equations (Quasi-Static Maxwell):**
$$\nabla \times (\nu \nabla \times A) + \sigma \frac{\partial A}{\partial t} = J_s$$
$$\nu = 1/\mu = 1/(\mu_0 \mu_r(T))$$

Where $A$ = magnetic vector potential, $\nu$ = reluctivity, $\sigma$ = electrical conductivity, $J_s$ = source current density.

**Boundary Conditions:**
- Outer boundary: Magnetic insulation ($\mathbf{n} \times A = 0$)
- Coil terminals: Current excitation $I(t) = I_{rms}\sqrt{2}\sin(2\pi f t)$
- Symmetry: 1/8 model (45° sector) with periodic BCs

**Mesh Strategy:**
- Air gap (15 mm): 1.5 mm max element, 3 layers normal to B-field
- Drum wall (35 mm): 2 mm elements, 10 layers through thickness
- Coil windings: 3 mm elements, explicit turn resolution
- Far field: 10 mm growing to 50 mm
- **Total DOF:** ~1.2M per zone (8 zones = 9.6M, parallelized)

### 3.2 Coil-Drum Mutual Inductance Matrix

The 8-zone coil bank is modeled as a coupled inductor system:

$$\mathbf{V} = (j\omega\mathbf{L} + \mathbf{R})\mathbf{I} + \mathbf{M}\frac{d\mathbf{I}}{dt}$$

Where $\mathbf{L}$ = self-inductance matrix (8×8), $\mathbf{M}$ = mutual inductance matrix.

| Zone Pair | Mutual Inductance (μH) | Coupling Coefficient |
|-----------|------------------------|---------------------|
| Adjacent (Z4-Z5) | 2.1 | 0.18 |
| Next-adjacent (Z4-Z6) | 0.6 | 0.05 |
| Separated (Z1-Z8) | 0.08 | 0.007 |

**Key finding:** Cross-zone coupling <5% for adjacent zones, <1% for non-adjacent. Decoupled PID control (PROD-23) is valid. Resonance tracking per zone (PROD-10) compensates for mutual loading.

### 3.3 Eddy Current Distribution & Skin Depth Validation

**Analytical Skin Depth (PROD-10):**
$$\delta = \sqrt{\frac{2\rho}{\omega\mu}}$$

**FEA Validation at Stage 6 (Cu, 5 kHz, 1085°C):**
| Location | Analytical δ | FEA δ (effective) | Error |
|----------|--------------|-------------------|-------|
| Drum inner surface | 1.0 mm | 1.05 mm | +5% |
| Drum mid-wall | 1.0 mm | 0.95 mm | -5% |
| Charge surface (Cu) | 1.0 mm | 1.1 mm | +10% |

**Temperature-Dependent Coupling:**
At Stage 7 (Fe, 2 kHz, 1200°C): $\mu_r$ drops from 200 → 1 at 770°C. FEA shows power density drops 40% at Curie transition — captured by RTU resonance tracker (PROD-23 Section 3.4).

### 3.4 EM-Thermal Coupling Iteration

**Coupling Loop (per RTU cycle, 1 ms):**
1. Thermal model provides $T(x,y,z)$ at drum wall
2. Update $\rho(T)$, $\mu_r(T)$ in EM model
3. Solve EM → $P_{ind}(x,y,z)$
4. Map $P_{ind}$ to thermal model as $Q_{gen}$
5. Solve thermal → new $T(x,y,z)$
6. Check convergence: $\max|T^{n+1} - T^n| < 0.1°C$

**Aitken Relaxation:**
$$\omega^{n+1} = -\omega^n \frac{(T^{n+1}-T^n)^T(T^n-T^{n-1})}{|T^{n+1}-T^n|^2}$$
Clamped to [0.3, 1.0]. Typical convergence: 3-5 iterations per RTU cycle.

### 3.5 Induction Power Validation (vs. PROD-10 Measurements)

| Zone | Stage | FEA Power (kW) | PROD-10 Measured (kW) | Error |
|------|-------|----------------|------------------------|-------|
| Z1 | 1 | 48 | 50 | -4% |
| Z3 | 3 | 78 | 80 | -2.5% |
| Z5 | 5 | 152 | 150 | +1.3% |
| Z7 | 7 | 342 | 350 | -2.3% |
| Z8 | 8 | 495 | 500 | -1% |

**Validation metric:** All zones within ±5% — meets ASME V&V 40 validation threshold.

---
