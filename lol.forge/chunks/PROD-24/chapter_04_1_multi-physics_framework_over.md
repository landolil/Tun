## 1. Multi-Physics Framework Overview

### 1.1 Design Philosophy

The Aegis-Forge I thermal model is a **four-way coupled multi-physics framework** that resolves the simultaneous electromagnetic, thermal, structural, and fluid dynamics phenomena governing the 8-stage thermal cascade. This is not a collection of separate analyses — it is a single computational primitive that captures the irreducible coupling between induction heating and material transformation.

**Irreducible Couplings (The Lock):**
- **EM → Thermal:** Induction power $P_{ind} = \frac{\pi^2 B^2 d^2 f^2 V}{6\rho}$ (non-mag) or $\frac{\pi B^2 f V}{\mu}$ (ferromagnetic) depends on temperature-dependent $\rho(T)$ and $\mu_r(T)$
- **Thermal → EM:** $\rho(T)$ increases 3-5× from RT to melting; $\mu_r$ drops from 200→1 at 770°C Curie transition
- **Thermal → Structural:** 2000°C radial gradient → 400 MPa thermal stress in 35 mm ZrB₂-SiC drum wall
- **Structural → Fluid:** Drum rotation (0-500 RPM) + centrifugal stratification → phase separation physics
- **Fluid → Thermal:** Gas convection coefficients $h(T, v, P)$ depend on flow regime in rotating drum

**The Single Computational Primitive (The Key):**
```
T_inner[k+1] = T_inner[k] + (Δt/ρcV) × (P_ind[k] - hA(T_inner[k] - T_flange[k]) - εσA(T_inner⁴[k] - T_surr⁴))
```
Discretized at Δt = 1 ms on Zone RTU (PROD-23). This is the atomic computation — all FEA, CFD, and ROM derive from it.

### 1.2 Physics Domains & Coupling Strategy

| Domain | Governing Equations | Solver | Coupling Variables | Update Rate |
|--------|---------------------|--------|-------------------|-------------|
| **EM (Induction)** | Maxwell's equations (quasi-static) + Circuit | ANSYS Maxwell 3D / Custom FEA | $P_{ind}(x,y,z,t)$, $B(x,y,z,t)$ | 100 Hz (RTU) |
| **Thermal (Transient)** | $\rho c_p \frac{\partial T}{\partial t} = \nabla \cdot (k \nabla T) + Q_{gen}$ | ANSYS Transient Thermal / Custom | $T(x,y,z,t)$, $h_{eff}(t)$ | 1 kHz (RTU) |
| **Structural (Thermo-Mechanical)** | $\nabla \cdot \sigma + f = 0$, $\sigma = C : (\epsilon - \alpha \Delta T)$ | ANSYS Mechanical | $\sigma(x,y,z,t)$, $\epsilon(x,y,z,t)$ | 100 Hz (PLC) |
| **Fluid (Gas-Solid CFD)** | Navier-Stokes + Lagrangian particle tracking | ANSYS Fluent / OpenFOAM | $v(x,y,z,t)$, $h_{conv}(t)$, RTD | 10 Hz (SCADA) |

**Coupling Strategy:**
- **Weak coupling (EM ↔ Thermal):** Staggered iteration with Aitken relaxation (ω = 0.7). Converged when $|T^{n+1} - T^n| < 0.1°C$ per zone
- **One-way coupling (Thermal → Structural):** Thermal load mapped to structural mesh at 100 Hz
- **Weak coupling (Structural → Fluid):** Drum deformation updates CFD wall boundary at 10 Hz
- **One-way coupling (Fluid → Thermal):** Convection coefficients $h_{conv}$ mapped to thermal mesh at 10 Hz

### 1.3 Time Scale Separation

| Process | Time Constant | Model Fidelity | Application |
|---------|---------------|----------------|-------------|
| EM wave propagation | 10 ns | Quasi-static (1 kHz RTU) | Inverter resonance |
| Thermal diffusion (drum wall) | 1-10 s | 1D transient (1 kHz RTU) | PID control |
| Thermal diffusion (charge) | 10-300 s | 2D axisymmetric (100 Hz PLC) | Stage cascade |
| Structural response | 10 ms | Linear elastic (100 Hz PLC) | Stress limits |
| Gas convection | 1-10 s | RANS (10 Hz SCADA) | Atmosphere control |
| Particle settling | 10-100 s | Lagrangian (10 Hz SCADA) | Separation efficiency |
| Batch cycle | 3.5-5 hr | Reduced-order (10 Hz SCADA) | Digital twin |

---
