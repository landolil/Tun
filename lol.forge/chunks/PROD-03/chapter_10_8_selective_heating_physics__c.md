## 8. Selective Heating Physics — Conductivity & Permeability Tables

### 8.1 Fundamental Heating Mechanisms

**Eddy Current Heating (all conductors):**
$$P_{eddy} = \frac{\pi^2 B_{peak}^2 d^2 f^2}{6 \rho D} \quad \text{(cylinder, diameter d, length D)}$$

**Hysteresis Heating (ferromagnetic only):**
$$P_{hyst} = \eta_h f B_{peak}^\alpha V \quad \text{(η_h = hysteresis coeff, α ≈ 1.6-2.0)}$$

**Total heating in ferromagnetic:**
$$P_{total} = P_{eddy} + P_{hyst} \quad \text{(hysteresis dominates below Curie temp)}$$

### 8.2 Material Properties at Operating Temperatures

| Material | ρ (20°C) | ρ (700°C) | ρ (1100°C) | ρ (1500°C) | μ_r (20°C) | μ_r (700°C) | Curie T |
|---|---|---|---|---|---|---|---|
| Aluminum | 2.65×10⁻⁸ | 4.5×10⁻⁸ | 5.8×10⁻⁸ | — | 1 | 1 | — |
| Copper | 1.68×10⁻⁸ | 2.5×10⁻⁸ | 3.2×10⁻⁸ | — | 1 | 1 | — |
| Iron (pure) | 9.7×10⁻⁸ | 1.2×10⁻⁷ | 1.5×10⁻⁷ | 1.8×10⁻⁷ | 5000 | 1 | 770°C |
| Steel (C) | 1.5×10⁻⁷ | 2.0×10⁻⁷ | 2.5×10⁻⁷ | 3.0×10⁻⁷ | 2000 | 1 | 770°C |
| Nickel | 6.9×10⁻⁸ | 1.1×10⁻⁷ | 1.4×10⁻⁷ | — | 600 | 1 | 358°C |
| Cobalt | 6.2×10⁻⁸ | 1.0×10⁻⁷ | 1.3×10⁻⁷ | — | 250 | 1 | 1115°C |
| Zinc | 5.9×10⁻⁸ | 6.0×10⁻⁸ | — | — | 1 | 1 | — |
| Lead | 2.1×10⁻⁷ | 2.0×10⁻⁷ | — | — | 1 | 1 | — |
| Tin | 1.1×10⁻⁷ | 1.3×10⁻⁷ | — | — | 1 | 1 | — |
| Indium | 8.0×10⁻⁸ | 8.5×10⁻⁸ | — | — | 1 | 1 | — |
| ZrB₂-SiC | 10⁻² | 0.1 | 1.0 | 10 | 1 | 1 | — |
| BFRP | 10¹² | 10¹⁰ | 10⁸ | — | 1 | 1 | — |
| Al₂O₃ | 10¹⁴ | 10¹² | 10¹⁰ | 10⁸ | 1 | 1 | — |

**Key observations:**
- Metals: ρ increases with T → heating efficiency decreases at high T
- Ferromagnets: μ_r drops from 1000-5000 to 1 at Curie T → hysteresis heating vanishes
- Ceramics/Composites: ρ >> metals → negligible inductive heating (by design)

### 8.3 Relative Heating Power — The Selectivity Matrix

At fixed B_peak = 0.2 T, f = 10 kHz, same geometry:

| Material | State | ρ (Ω·m) | P_eddy (rel) | P_hyst (rel) | Total (rel) |
|---|---|---|---|---|---|
| Copper | Solid | 1.7×10⁻⁸ | 15.0 | 0 | 15.0 |
| Aluminum | Solid | 2.7×10⁻⁸ | 9.5 | 0 | 9.5 |
| Aluminum | Liquid | 4.5×10⁻⁸ | 5.7 | 0 | 5.7 |
| Iron | Solid (RT) | 1.0×10⁻⁷ | 2.5 | 50 | 52.5 |
| Iron | Solid (700°C) | 1.2×10⁻⁷ | 2.1 | 50 | 52.1 |
| Iron | Liquid | 1.5×10⁻⁷ | 1.7 | 0 | 1.7 |
| Nickel | Solid (RT) | 6.9×10⁻⁸ | 3.7 | 15 | 18.7 |
| Zinc | Solid | 5.9×10⁻⁸ | 4.3 | 0 | 4.3 |
| Lead | Solid | 2.1×10⁻⁷ | 1.2 | 0 | 1.2 |

**Critical insight for Stage 5 (660-720°C, 10 kHz):**
- Al (liquid): 5.7× heating
- Cu (solid): 15× heating — BUT skin depth 0.7 mm shields bulk Cu
- Fe (solid, >770°C): 1.7× heating (no hysteresis)
- **Net: Al melts, Cu/Fe stay solid**

**Critical insight for Stage 7 (1200-1600°C, 2 kHz):**
- Fe (liquid): 1.7× eddy + 0 hysteresis = 1.7×
- But Fe pieces are LARGE (10-50 mm) → full penetration at 2 kHz
- Fe (solid, <770°C): 52× total (hysteresis dominant)
- **Net: Fe heats intensely through Curie transition, then eddy current sustains**

### 8.4 Coupling Coefficient — Geometry Factor

**For a sphere in uniform field:**
$$k_{sphere} = \frac{9}{2} \frac{(\mu_r - 1)}{(\mu_r + 2)} \quad \text{(magnetic)}$$
$$k_{sphere} = \frac{3}{2} \frac{(\sigma - \sigma_0)}{(\sigma + 2\sigma_0)} \quad \text{(electric)}$$

**For a cylinder (axial field):**
$$k_{cyl} = \frac{(\mu_r - 1)}{(\mu_r + 1)} \quad \text{(magnetic)}$$

**Effect of particle size (normalized to skin depth):**
| d/δ | Eddy Current Efficiency | Notes |
|---|---|---|
| 0.1 | 0.01 | Too small — eddy currents negligible |
| 0.5 | 0.25 | Small particles |
| 1.0 | 0.63 | Optimal coupling |
| 2.0 | 0.95 | Large pieces — full coupling |
| 5.0 | 0.99 | Bulk — surface only |

**Design rule:** Target d/δ ≈ 1-2 for optimal heating. This drives frequency selection per stage.

### 8.5 Stage-by-Stage Coupling Summary

| Stage | Freq | Target | d/δ (typical) | Non-target | d/δ (typical) | Selectivity |
|---|---|---|---|---|---|---|
| 1-2 | 100 kHz | Air/N₂ | N/A | All metals | <0.1 | Indirect only |
| 3 | 50 kHz | Zn/Pb | 0.5-1 | Al/Cu/Fe | <0.1 | Onset coupling |
| 4-5 | 10 kHz | Al | 1-2 | Cu/Fe | 0.5-1 | **Al selective** |
| 6 | 5 kHz | Cu | 1-3 | Fe | 0.5-1 | Cu deep |
| 7 | 2 kHz | Fe | 2-5 (ferro) | Al/Cu | <1 | Fe max |
| 8 | 1 kHz | Minerals | Conduction | — | — | Thermal only |

---


---
