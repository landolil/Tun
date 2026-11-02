## 10. Uncertainty Quantification & Sensitivity Analysis

### 10.1 Polynomial Chaos Expansion (PCE)

**Random Inputs (20 parameters, ±10% uniform):**
| Parameter | Nominal | Distribution | Sensitivity (Sobol S₁) |
|-----------|---------|--------------|------------------------|
| k_ZrB2SiC | 28 W/m·K (1500°C) | Uniform ±10% | 0.28 |
| h_conv Stage 6 | 700 W/m²·K | Uniform ±10% | 0.18 |
| ρ_Fe (liquid) | 7000 kg/m³ | Uniform ±5% | 0.12 |
| E_ZrB2SiC | 300 GPa (2000°C) | Uniform ±10% | 0.09 |
| k_aerogel | 0.010 W/m·K | Uniform ±15% | 0.08 |
| ε_drum | 0.85 | Uniform ±0.05 | 0.07 |
| T_curves_Fe | 770°C | Uniform ±10°C | 0.06 |
| c_p_Al | 1180 J/kg·K | Uniform ±5% | 0.05 |
| (12 others) | — | — | <0.05 each |

**Total Sobol Indices (S_T):** Sum = 0.93 → 7% unexplained (interactions)

### 10.2 Output Uncertainty (T_inner at Stage 8)

| Statistic | Value |
|-----------|-------|
| Mean | 2200°C |
| Std Dev | 28°C |
| 95% CI | [2145, 2255]°C |
| Skewness | +0.3 (positive tail from k uncertainty) |

**Target:** ±5°C prediction error → **Current UQ exceeds target. ROM calibration required.**

---
