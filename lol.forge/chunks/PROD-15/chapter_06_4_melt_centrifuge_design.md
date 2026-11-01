## 4. Melt Centrifuge Design

### 4.1 Centrifuge Bowl Architecture

```
MELT CENTRIFUGE BOWL — CROSS-SECTION

    ┌─────────────────────────────────────┐
    │     BFRP/Elium® OUTER CASING        │  ← 25 mm wall, filament wound ±45°/90°
    │  ┌───────────────────────────────┐  │
    │  │   ZrO₂ CERAMIC LINER (3 mm)   │  ← Anti-adhesion, thermal barrier, 3Y-TZP
    │  │  ┌─────────────────────────┐  │  │
    │  │  │   POLYMER MELT LAYER    │  │  │  ← 5-50 mm thick, rotating at 150 RPM
    │  │  │  ┌───────────────────┐  │  │  │
    │  │  │  │   VAPOR CORE      │  │  │  │  ← N₂ + volatiles, 50 mm dia
    │  │  │  └───────────────────┘  │  │  │
    │  │  └─────────────────────────┘  │  │
    │  └───────────────────────────────┘  │
    └─────────────────────────────────────┘
            │                    │
            ▼                    ▼
      [PORT 2A: Light]      [PORT 2B: Heavy]
     (PP/PE, 0.74-0.78)    (PET/PVC, 1.33-1.42)
            │                    │
            └────────┬───────────┘
                     ▼
            [BFRP MOLD CAROUSEL]
             (PROD-08)
```

### 4.2 Bowl Specifications

| Parameter | Specification | Design Margin |
|-----------|---------------|---------------|
| **Bowl Inner Diameter** | 500 mm | — |
| **Bowl Length** | 750 mm (matches drum) | — |
| **Wall Construction** | BFRP/Elium® filament wound casing (25 mm) + ZrO₂ ceramic liner (3 mm) | 2× pressure |
| **Rotation Speed** | 150 RPM (Stage 2), up to 3000 RPM (max design) | 20× operating |
| **G-Force at 150 RPM** | 12.6 G at r=250 mm | — |
| **G-Force at 3000 RPM** | 5040 G (max design for future scaling) | — |
| **Drive** | KNbO₃-BaTiO₃ ultrasonic motor (same as drum, PROD-04) | All-dielectric |
| **Bearings** | Si₃N₄ ceramic hybrid (PROD-12) | 10,000 hr L10 |
| **Seals** | ZrO₂ face seal + PEEK CF40 spring (PROD-12) | 5 bar, 450°C |
| **Operating Temperature** | 150-450°C (ZrO₂ liner protects BFRP) | BFRP Tg = 180°C, liner keeps <150°C |
| **Pressure Rating** | 5 bar (N₂ atmosphere) | 2× operating |
| **Critical Speed** | >5000 RPM (rotor dynamics) | 1.7× max design |

### 4.3 Melt Layer Formation & Stratification

At 150 RPM (12.6 G), the molten polymer forms an annular layer against the bowl wall:

**Centrifugal potential energy per unit mass:**
$$\Phi(r) = \frac{1}{2}\omega^2 r^2$$

**Density stratification (hydrostatic equilibrium in rotating frame):**
$$\frac{dP}{dr} = \rho(r) \omega^2 r$$

At steady state, polymers stratify by density:

| Annular Zone | Radial Range | Dominant Polymers | Density (g/cm³) | Thickness | Residence Time |
|--------------|--------------|-------------------|-----------------|-----------|----------------|
| **Inner (Light)** | 150-200 mm | PP, LDPE, HDPE | 0.74-0.78 | 20-30 mm | 30 min |
| **Middle** | 200-230 mm | PS, ABS, PA6, PA66 | 1.04-1.09 | 10-15 mm | 30 min |
| **Outer (Heavy)** | 230-250 mm | PET, PVC, PC, PTFE | 1.33-1.65 | 5-10 mm | 30 min |

**Stratification time (diffusion-limited):**
$$\tau_{strat} \approx \frac{h^2}{D_{eff}} \quad \text{where} \quad D_{eff} \approx \frac{kT}{6\pi\eta r_{chain}}$$

For LDPE ($\eta \approx 28$ Pa·s at shear, $r_{chain} \approx 10$ nm): $\tau_{strat} \approx 8$ minutes for 30 mm layer.
**30-minute dwell provides 3.7× safety factor.**

### 4.4 Hindered Settling & Coalescence

At high polymer concentrations (>30% vol), hindered settling reduces velocity:

$$v_h = v_0 (1 - \phi)^n \quad \text{where} \quad n \approx 4.65 \text{ (Richardson-Zaki)}$$

With $\phi \approx 0.4$ (melt volume fraction), $v_h \approx 0.04 v_0$. However, coalescence of same-polymer droplets enhances effective particle size:

$$\frac{dR}{dt} = \frac{3}{2} \frac{\gamma}{\eta} R \quad \text{(film drainage coalescence)}$$

For LDPE ($\gamma \approx 0.02$ N/m, $\eta \approx 28$ Pa·s): coalescence time for 100 µm → 1 mm ≈ 2 min. **Coalescence dominates over hindered settling.**

### 4.5 Interfacial Tension Effects

Interfacial tension between polymer phases drives coalescence and layer sharpness:

| Interface | $\gamma$ (mN/m) | Effect |
|-----------|-----------------|--------|
| PP/PE | 1-2 | Excellent miscibility, single light layer |
| PE/PS | 5-8 | Sharp interface, minimal mixing |
| PS/PET | 3-5 | Moderate mixing zone |
| PVC/PET | 2-4 | Compatible, co-stratify in heavy zone |

### 4.6 Melt Layer Stability Analysis

**Kelvin-Helmholtz instability** at polymer-polymer interfaces:

$$\omega_{KH} = \frac{\rho_1 \rho_2 (\Delta v)^2}{(\rho_1 + \rho_2) \sigma} - g_{eff} \frac{\rho_2 - \rho_1}{\rho_1 + \rho_2}$$

Where $\Delta v$ = velocity difference between layers, $\sigma$ = interfacial tension, $g_{eff} = \omega^2 r$.

At 150 RPM, $\omega = 15.7$ rad/s, r = 0.22 m: $g_{eff} = 54$ m/s². For PE/PS interface ($\rho_1=0.76$, $\rho_2=1.06$, $\sigma=0.006$ N/m):

Critical velocity difference for instability: $\Delta v_{crit} \approx 0.08$ m/s.
Actual $\Delta v$ from differential rotation < 0.01 m/s. **Stable.**

**Rayleigh-Taylor instability** (heavy over light):

$$\omega_{RT} = \sqrt{\frac{(\rho_2 - \rho_1) g_{eff} k}{\rho_1 + \rho_2} - \frac{\sigma k^3}{\rho_1 + \rho_2}}$$

For PS (1.06) over PE (0.76): $(\rho_2 - \rho_1) g_{eff} = 160$ N/m³. Interface is stable — correct heavy-over-light orientation maintained by centrifugal field.

### 4.7 Thermal Gradient Across Melt Layer

Induction heating creates radial temperature gradient:

| Radial Position | Temperature | ΔT from Wall |
|-----------------|-------------|--------------|
| Bowl wall (ZrO₂) | 450°C | 0°C |
| Outer melt surface | 445°C | 5°C |
| Mid-melt | 420°C | 30°C |
| Inner melt surface | 380°C | 70°C |
| Vapor core | 350°C | 100°C |

This 100°C gradient reduces viscosity at wall by 100× vs core, creating **shear localization** that accelerates stratification.

---
