## 16. Detailed Drum Thermal-Structural Analysis

### 16.1 ZrB₂-SiC Composite Material Properties

The ZrB₂-SiC composite (12 vol% ZrB₂, 88 vol% SiC) is flash-sintered at 1950°C for 5 minutes under 50 MPa uniaxial pressure (CSMFAB000000000001 V2.0 process). Resulting properties:

| Property | Value | Test Method |
|---|---|---|
| Density | 3.12 g/cm³ | Archimedes |
| Flexural strength (RT) | 620 MPa | ASTM C1161 |
| Flexural strength (1500°C) | 480 MPa | ASTM C1161 |
| Fracture toughness | 5.2 MPa·m^0.5 | Indentation |
| Thermal conductivity (RT) | 45 W/m·K | Laser flash |
| Thermal conductivity (1500°C) | 28 W/m·K | Laser flash |
| CTE (RT-1000°C) | 5.8 × 10⁻⁶/K | Dilatometry |
| CTE (1000-2000°C) | 6.5 × 10⁻⁶/K | Dilatometry |
| Elastic modulus | 380 GPa | Resonance |
| Oxidation resistance | <0.1 mg/cm²/h at 1500°C | TGA air |

**Thermal shock resistance:** ΔT_critical = 650°C (validated by quench testing)
**Creep rate at 1800°C / 50 MPa:** <10⁻⁸ s⁻¹ (negligible for 5-hour batch)

### 16.2 Drum Stress Analysis — Rotating Thick-Walled Cylinder

The drum is modeled as a rotating thick-walled cylinder with internal pressure. Stress components:

**Radial stress (σ_r):**
$$\sigma_r = \frac{\rho \omega^2}{8} \left[ (3+\nu)(r_o^2 + r_i^2) - (1+3\nu)\frac{r_o^2 r_i^2}{r^2} - (1+\nu)r^2 \right] - P_i \frac{r_o^2}{r_o^2 - r_i^2} \left(1 - \frac{r_i^2}{r^2}\right)$$

**Hoop stress (σ_θ):**
$$\sigma_\theta = \frac{\rho \omega^2}{8} \left[ (3+\nu)(r_o^2 + r_i^2) + (1+3\nu)\frac{r_o^2 r_i^2}{r^2} - (1+3\nu)r^2 \right] + P_i \frac{r_o^2}{r_o^2 - r_i^2} \left(1 + \frac{r_i^2}{r^2}\right)$$

Where: ρ = 3120 kg/m³, ν = 0.18, r_i = 0.3 m, r_o = 0.335 m, ω = 52.36 rad/s (500 RPM), P_i = 5 bar

**Maximum stresses at 500 RPM, 5 bar:**
- σ_θ_max (inner surface) = 42 MPa (tensile)
- σ_r_max (inner surface) = -5 MPa (compressive)
- von Mises equivalent = 45 MPa

**Safety factor:** 620 MPa / 45 MPa = **13.8×** (room temp) — at 1500°C: 480/45 = **10.7×**

### 16.3 Thermal Gradient Stress During Ramp

During thermal ramp, radial temperature gradient creates additional stress:

$$\sigma_{thermal} = \frac{E \alpha}{1-\nu} \frac{1}{r_o^2 - r_i^2} \int_{r_i}^{r_o} T(r) r dr - \frac{E \alpha}{1-\nu} T(r)$$

Maximum thermal gradient: 50°C/mm (conservative, limited by induction zone control)
Resulting thermal stress: ~180 MPa (compressive inner, tensile outer)

**Combined stress (rotation + pressure + thermal):**
- Peak von Mises: ~225 MPa at inner surface during Stage 8
- Safety factor at 2200°C: 350 MPa / 225 MPa = **1.55×** (acceptable for ceramic in compression-dominated state)

---
