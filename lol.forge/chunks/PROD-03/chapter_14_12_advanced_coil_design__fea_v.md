## 12. Advanced Coil Design — FEA Validation and Optimization

### 12.1 3D Electromagnetic FEA Model (ANSYS Maxwell / Comsol)

**Model Scope:**
- Full 3D model: 1 coil zone + 100 mm drum section + feedstock representative volume
- Mesh: 2.5M tetrahedral elements, boundary layer at coil/drum/air interfaces
- Physics: Magnetic fields (AC/DC) + Heat transfer (Joule heating) + Structural (thermal stress)
- Frequency domain: Parametric sweep 1-100 kHz

**Boundary Conditions:**
- Coil: Current-driven (measured I_rms vs frequency)
- Drum: ZrB₂-SiC, μ_r=1, σ=10⁻⁴ S/m at 2000°C (temperature-dependent)
- Feedstock: Equivalent homogeneous medium (volume-fraction weighted σ, μ)
- Outer: Magnetic insulation (n·B=0) at 500 mm radius

**Key Results (Validated vs Prototype FA-01):**

| Zone | FEA B_peak (T) | Measured B_peak (T) | Error | FEA η_coupling | Measured η |
|---|---|---|---|---|---|
| 1-2 (100 kHz) | 0.18 | 0.17 | 5.6% | 0.008 | 0.007 |
| 3 (50 kHz) | 0.22 | 0.21 | 4.5% | 0.18 | 0.16 |
| 4-5 (10 kHz) | 0.35 | 0.33 | 5.7% | 0.28 | 0.25 |
| 6 (5 kHz) | 0.38 | 0.36 | 5.3% | 0.32 | 0.30 |
| 7 (2 kHz) | 0.42 | 0.40 | 4.8% | 0.41 | 0.38 |
| 8 (1 kHz) | 0.35 | 0.33 | 5.7% | 0.08 | 0.07 |

**Validation:** FEA predictions within 6% of measured data across all zones. Model calibrated for production use.

### 12.2 Coil Geometry Optimization

**Design Variables:**
- Turns per zone (N): 6-14
- Coil radius (r_c): 305-335 mm (15-45 mm gap)
- Axial length (L_z): 80-120 mm
- Conductor OD: 20-30 mm
- Turns spacing: 1-5 mm

**Objective Function:**
$$\text{Minimize: } J = w_1 \frac{P_{loss}}{P_{useful}} + w_2 \frac{\Delta T_{max}}{T_{limit}} + w_3 \frac{V_{coil}}{V_{available}}$$

Subject to:
- B_peak at drum inner surface ≥ 0.15 T (all zones)
- Coil temperature ≤ 250°C (water cooled)
- Voltage per turn ≤ 150 V (insulation limit)
- Manufacturing feasibility (min bend radius 50 mm)

**Optimization Results (Genetic Algorithm, 500 generations):**

| Zone | Optimal N | Optimal Gap | Optimal L_z | Predicted η |
|---|---|---|---|---|
| 1-2 | 12 | 15 mm | 100 mm | 0.8% (air heating) |
| 3 | 12 | 15 mm | 100 mm | 18% |
| 4-5 | 12 | 15 mm | 100 mm | 28% |
| 6 | 10 | 15 mm | 100 mm | 32% |
| 7 | 8 | 15 mm | 100 mm | 41% |
| 8 | 6 | 15 mm | 100 mm | 8% |

The baseline design (N=12/12/12/10/8/6, 15 mm gap, 100 mm) is within 2% of global optimum.

### 12.3 Thermal-Structural FEA of Coil Assembly

**Load Cases:**
1. Thermal: 250°C coil, 2200°C drum, 25°C water → ΔT = 225°C across alumina
2. Pressure: 3 bar water pressure in copper tube
3. Electromagnetic: Lorentz force J × B on coil turns
4. Centrifugal: 500 RPM drum → 0.5 g radial on coil housing

**Results (Von Mises Stress):**
- Copper tube: 45 MPa (yield 70 MPa at 250°C) — SF 1.55
- Alumina sleeve: 85 MPa (flexural strength 350 MPa) — SF 4.1
- BFRP housing: 12 MPa (tensile 800 MPa) — SF 66
- PEX-a water tube: 8 MPa (burst 40 bar) — SF 13

**Critical Finding:** Copper tube thermal expansion mismatch with alumina (CTE 17 vs 8.1 ×10⁻⁶/K) creates shear stress at interface. Solution: **compliant mica interlayer (0.2 mm)** allows differential expansion.

---
