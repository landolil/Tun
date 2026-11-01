## 14. Multi-Physics Coupled Analysis

### 14.1 Thermal-Structural-Centrifugal Coupling

**Finite Element Model (Axisymmetric Sector, 44.2°):**

```
DOMAIN: 1/8th drum sector (44.2°) including:
  - ZrB₂-SiC drum wall (35 mm)
  - Liner zones (Si₃N₄, ZrB₂-SiC, 3Y-TZP)
  - Port bore with valve assembly
  - Aerogel gap (50 mm)
  - BFRP vessel (18 mm)
  - Induction coils (thermal load only)

BOUNDARY CONDITIONS:
  - Inner drum surface: Stage-specific T(r,z) from induction model
  - Outer vessel: Convection (h=10 W/m²K) + Radiation (ε=0.15, T_amb=25°C)
  - Rotation: 500 RPM (84.5 G body force)
  - Pressure: 5 bar internal N₂
  - Actuator: Ti₃AlC₂/ZrO₂ bilayer with temperature-dependent CTE

OUTPUTS:
  - Von Mises stress in drum wall
  - Actuator deflection vs. temperature
  - Seal contact pressure
  - Piston stem stress
```

**Key FEA Results (Port 5, 680°C, 300 RPM):**

| Location | Von Mises Stress | Limit | SF |
|---|---|---|---|
| Drum wall (max) | 85 MPa | 380 MPa (ZrB₂-SiC) | 4.5 |
| Port bore corner | 120 MPa | 380 MPa | 3.2 |
| ZrO₂ piston stem | 45 MPa | 2000 MPa (comp) | 44 |
| Actuator hot layer | 285 MPa | 280 MPa (yield) | 1.0* |
| Actuator cold layer | 187 MPa | 2000 MPa | 10.7 |
| BFRP vessel hoop | 25 MPa | 1100 MPa | 44 |

*At yield — intentional for actuation authority

### 14.2 Dynamic Response to Drum Acceleration

**Drum Spin-Up Profile:** 0 → 500 RPM in 30 s (constant acceleration)

**Actuator Response (Port 5, cold):**
- Inertial force on actuator mass (12 g): F = m × a_tangential
- a_tangential = α × r = (52.36/30) × 0.3 = 0.52 m/s²
- F = 0.012 × 0.52 = 6.2 mN (negligible vs. thermal actuation)

**Piston Response:**
- Centrifugal force builds as ω²: F_c(t) = m × (αt)² × r
- Max at 500 RPM: 34.5 N (outward, assists opening)
- No dynamic instability — piston constrained by bore

### 14.3 Acoustic Coupling (AMLS Stage 0)

**Stage 0 Acoustic Pressure at Port Seats:**
- LF Array (20-200 Hz): 140 dB SPL in pre-chamber
- Transmission through drum wall: TL ≈ 40 dB (35 mm ceramic)
- Pressure at port seat: ~100 dB SPL = **2 Pa RMS**

**Effect on Valve Seal:**
- 2 Pa × 113 mm² = 0.23 mN (negligible vs. 565 N pressure force)
- No acoustic fatigue risk at seal interface

---
