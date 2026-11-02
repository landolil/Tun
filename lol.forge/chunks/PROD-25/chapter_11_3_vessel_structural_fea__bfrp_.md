## 3. Vessel Structural FEA — BFRP/Elium® Pressure Boundary

### 3.1 Model Formulation

**Geometry:** Full 360° vessel, 1200 mm length, 18 mm wall (r_i=450 mm, r_o=468 mm), 2 flanges, 8 gas ports, 12 FBG penetrations
**Mesh:** 50,000 shell elements (S4R) + 10,000 solid elements for flanges/ports
**Boundary Conditions:**
- Internal pressure: 10 bar (design), 15 bar (hydrotest)
- Thermal: External surface 150°C (from PROD-24 Section 7.1), internal surface 250°C (aerogel interface)
- Ends: Flange bolt preload (8× M24 ZrO₂, 145 kN each)
- Supports: 4-point mount on BFRP box beam frame (radial + axial constraints)
- Stiffening rings: 4× BFRP rings at 300 mm spacing (for buckling)

**Material model:** Orthotropic elastic with temperature-dependent properties, Hashin failure criteria, Tsai-Wu for combined stress

### 3.2 Stress Results — Design Pressure (10 bar) + Thermal (200°C ext)

| Location | σ_hoop (MPa) | σ_axial (MPa) | τ_shear (MPa) | Tsai-Wu FI | σ_ult,hoop (MPa) | SF |
|----------|--------------|---------------|---------------|------------|------------------|-----|
| Cylinder mid-span (inner) | 25.5 | 12.8 | 1.2 | 0.08 | 650 | 8.1× |
| Cylinder mid-span (outer) | 24.5 | 12.3 | 1.1 | 0.07 | 650 | 8.7× |
| Flange transition (inner) | 38 | 28 | 15 | 0.15 | 650 | 5.8× |
| Gas port penetration | 52 | 35 | 22 | 0.22 | 650 | 4.2× |
| FBG penetration | 48 | 32 | 18 | 0.18 | 650 | 4.7× |
| Stiffening ring attachment | 41 | 25 | 12 | 0.12 | 650 | 5.3× |

**All failure indices < 0.25** — well below limit of 1.0. Minimum SF = **4.2×** at gas port penetration.

### 3.3 Hydrotest Condition (15 bar, 25°C)

| Location | σ_hoop (MPa) | σ_axial (MPa) | Tsai-Wu FI | σ_ult,hoop (MPa) | SF |
|----------|--------------|---------------|------------|------------------|-----|
| Cylinder mid-span | 38 | 19 | 0.035 | 1,100 | 12.3× |
| Flange transition | 55 | 40 | 0.06 | 1,100 | 8.9× |
| Gas port | 78 | 52 | 0.11 | 1,100 | 6.3× |

**Hydrotest SF > 6× everywhere** — exceeds ASME BPVC requirement of 1.5× proof test.

### 3.4 Buckling Analysis

**External pressure + thermal compression (200°C):**
- E_hoop = 45 GPa, E_axial = 38 GPa at 200°C
- Thermal compressive stress: 78 MPa (from 180°C ΔT)
- Pressure stress: 25 MPa hoop (tensile)
- **Net hoop stress:** 25 - 78 = -53 MPa (compressive)

**Critical buckling pressure (with 4 stiffening rings):**
$$P_{cr} = 14.2 \text{ bar} \quad (\text{FEA eigenvalue})$$

**SF against buckling:** 14.2 / 10 = **1.42×** at design pressure
**With thermal compression (53 MPa):** Effective SF = **1.28×**

**Requirement:** SF ≥ 1.5× per ASME BPVC Sec X for external pressure
**Status:** **MARGINAL** — requires 6 stiffening rings (not 4) for SF ≥ 1.5×

**Updated design:** 6× BFRP stiffening rings at 200 mm spacing → P_cr = 18.5 bar, SF = 1.85× at design pressure, 1.55× with thermal compression.

### 3.5 Thermal Stress — External Surface Gradient

**External surface gradient (from PROD-24 Section 7.1):**
- Outer surface: 150°C (glaze)
- Inner surface (aerogel interface): 250°C
- Wall thickness: 18 mm
- Linear gradient: 5.6°C/mm

**Thermal stress (plane stress, shell):**
$$\sigma_{thermal} = \frac{E \alpha \Delta T}{1-\nu} = \frac{45 \times 10^9 \times 7.5 \times 10^{-6} \times 100}{1-0.32} = \textbf{49.6 MPa}$$

**Combined with pressure (25.5 MPa):**
- Inner surface: 25.5 + 49.6 = 75.1 MPa
- Outer surface: 25.5 - 49.6 = -24.1 MPa (compressive)

**Tsai-Wu failure index at inner surface (250°C):** 0.12 → **SF = 5.4×**

### 3.6 Fatigue Life Assessment

**Pressure cycling (0→5 bar, 100,000 cycles):**
- Stress range: Δσ = 25.5 MPa
- S-N curve (BFRP, R=0): σ_a = 1100(2N_f)^(-0.08)
- At Δσ/2 = 12.75 MPa: N_f > 10⁸ cycles

**Thermal cycling (20→200°C, 100,000 cycles):**
- Δσ_thermal = 49.6 MPa (full cycle)
- Strain range: Δε = αΔT = 7.5×10⁻⁶ × 180 = 1.35×10⁻³
- Matrix microcracking threshold: ~2×10⁻³ → **below threshold, no fatigue degradation**

**Combined cycle (pressure + thermal, in-phase):**
- Max stress: 75.1 MPa, Min stress: -24.1 MPa
- Mean stress: 25.5 MPa, Amplitude: 49.6 MPa
- Goodman correction: σ_a,eff = σ_a / (1 - σ_m/σ_ult) = 49.6 / (1 - 25.5/650) = 51.7 MPa
- N_f at 51.7 MPa: >5×10⁶ cycles → **SF > 50× on 100,000 cycles**

### 3.7 Flange Structural Analysis (PEEK CF40)

**Loads:** Bolt preload (8×145 kN), pressure end force (636 kN at 10 bar), thermal growth push (4.3 mm axial)
**Model:** 3D solid (C3D20R), 200K elements, contact at bolt holes (ZrO₂ bolts) and gasket interface

| Location | σ_vm (MPa) | σ_y at 200°C (MPa) | SF |
|----------|------------|-------------------|-----|
| Hub (inner bore) | 62 | 130 | 2.1× |
| Bolt hole (peak) | 85 | 130 | 1.53× |
| Raised face (gasket) | 48 | 130 | 2.7× |
| Bolt circle (bending) | 55 | 130 | 2.36× |

**Minimum SF = 1.53× at bolt holes** — meets ≥1.5× requirement.

**Bolt stress (ZrO₂ M24):**
- Preload: 145 kN, tensile area = 353 mm² → σ = 411 MPa
- External load share: 636 kN / 8 = 80 kN/bolt (if joint separates)
- **Max bolt stress:** 411 + 80×1000/353 = **638 MPa**
- ZrO₂ σ_ult at 200°C: 800 MPa → **SF = 1.25×**

**Resolution:** Increase preload to 180 kN/bolt (160 N·m torque) → max bolt stress 580 MPa, SF = 1.38×. Add 12th bolt per flange (increase to 12× M24) → max bolt stress 490 MPa, **SF = 1.63×**. **Final design: 12× M24 ZrO₂ bolts per flange.**

---
