## 5. Cascade CFD (Gas-Solid Flow in Rotating Drum)

### 5.1 Model Formulation

**Solver:** ANSYS Fluent (RANS, k-ω SST) + DPM (Discrete Phase Model)
**Geometry:** Full 360° drum, 800 mm length, rotating wall (MRF), 8 port openings
**Mesh:** 2.5M poly-hexcore cells, boundary layers at wall (y⁺ ≈ 1)
**Time Step:** 0.001 s (resolves particle-drum collisions)
**Total Simulated Time:** 30 s physical (per stage)

**Particle Properties (per Stage):**
| Stage | Particle Type | Size Range | Density | Shape Factor | Mass Loading |
|-------|---------------|------------|---------|--------------|--------------|
| 1 | Wet feedstock | 1-50 mm | 1200-3500 | 0.7 | 0.15 |
| 2 | Polymer melt | 0.5-10 mm | 950 | 0.9 | 0.25 |
| 3 | Char + ash | 0.1-5 mm | 350 | 0.5 | 0.20 |
| 4 | Metal droplets | 0.5-5 mm | 7000 | 1.0 | 0.10 |
| 5 | Al film | N/A (film) | 2380 | - | 0.30 |
| 6 | Cu droplets | 1-10 mm | 8000 | 1.0 | 0.15 |
| 7 | Fe/REE droplets | 1-20 mm | 7000 | 1.0 | 0.25 |
| 8 | Mineral slag | 0.5-10 mm | 2800 | 0.7 | 0.40 |

### 5.2 Key CFD Outputs per Stage

| Stage | RPM | G-Force | Separation Index (SI) | Residence Time (s) | Mixing Index |
|-------|-----|---------|----------------------|-------------------|--------------|
| 1 | 10 | 0.3 | N/A (no sep) | 1200 | 0.95 |
| 2 | 150 | 12.6 | 0.85 (polymer/metal) | 1800 | 0.70 |
| 3 | 200 | 22.3 | 0.78 (char/gas) | 1800 | 0.75 |
| 4 | 400 | 89.2 | 0.95 (In/Pb/Sn/Zn) | 1500 | 0.60 |
| 5 | 300 | 50.2 | 0.92 (Al/slag) | 1500 | 0.65 |
| 6 | 350 | 68.1 | 0.98 (Cu/PM/slag) | 1800 | 0.55 |
| 7 | 450 | 112.8 | 0.94 (Fe/REE/slag) | 2100 | 0.50 |
| 8 | 300 | 50.2 | 0.90 (ZrO₂/REE/slag) | 1200 | 0.60 |

**Separation Index:** $SI = 1 - \frac{\sigma_{composition}}{\sigma_{initial}}$ (1 = perfect separation)
**Mixing Index:** Standard deviation of particle radial distribution / mean radius (0 = perfect stratification)

### 5.3 Centrifugal Stratification Physics

The **Centrifugal Multi-Component Stratification Operator (CMCSO)** governs radial position:
$$\frac{dr_i}{dt} = \frac{2}{9}\frac{(\rho_i - \rho_f)g_{eff}r_i^2}{\mu_f} \quad \text{(Stokes, corrected for hindered settling)}$$

Where $g_{eff} = \omega^2 r$, $\rho_f$ = fluid (melt) density, $\mu_f$ = melt viscosity.

**Validation (Stage 4, In-first):**
- CFD: In droplets (ρ=7.3 g/cm³) reach r=150 mm in 3.2 s at 400 RPM
- Theory: $t = \frac{9\mu_f}{2(\rho_{In}-\rho_f)\omega^2}\ln\frac{r_{final}}{r_{initial}} = 2.8$ s
- Experiment (PROD-17): 99.5% In at Port 4A in 5 min → **validated**

### 5.4 Gas Flow & Heat Transfer Coefficients

**Effective Convection Coefficient ($h_{eff}$) by Stage:**
| Stage | $h_{conv}$ (W/m²·K) | $h_{rad}$ (W/m²·K) | Total $h$ | Notes |
|-------|---------------------|-------------------|-----------|-------|
| 1 | 50 | 5 | 55 | N₂, low RPM |
| 2 | 80 | 15 | 95 | Polymer vapor, 150 RPM |
| 3 | 120 | 40 | 160 | Pyrolysis gas, 200 RPM |
| 4 | 200 | 100 | 300 | Metal vapor, 400 RPM |
| 5 | 250 | 180 | 430 | Al pool, 300 RPM |
| 6 | 300 | 400 | 700 | Cu pool, 350 RPM |
| 7 | 350 | 800 | 1150 | Fe pool, 450 RPM |
| 8 | 400 | 2500 | 2900 | Radiation dominant |

**Radiation Model:** Surface-to-surface (S2S) with view factors, $\epsilon = 0.85$ (drum), 0.92 (charge)

---
