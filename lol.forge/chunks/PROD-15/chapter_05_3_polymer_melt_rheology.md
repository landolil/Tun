## 3. Polymer Melt Rheology

### 3.1 Viscosity-Temperature Relationships

Polymer melts are **non-Newtonian shear-thinning fluids**. The Carreau-Yasuda model captures this:

$$\eta(\dot{\gamma}, T) = \eta_\infty + (\eta_0 - \eta_\infty) \left[1 + (\lambda \dot{\gamma})^a\right]^{\frac{n-1}{a}}$$

Where:
- $\eta_0$ = zero-shear viscosity (Pa·s)
- $\eta_\infty$ = infinite-shear viscosity (Pa·s)
- $\lambda$ = relaxation time (s)
- $a$ = transition breadth parameter (typically 0.5-2.0)
- $n$ = power-law index (<1 for shear-thinning)
- $\dot{\gamma}$ = shear rate (s⁻¹)

**Temperature dependence (WLF equation for T > Tg + 50°C):**

$$\log_{10}\left(\frac{\eta(T)}{\eta(T_{ref})}\right) = \frac{-C_1 (T - T_{ref})}{C_2 + T - T_{ref}}$$

Where $C_1 \approx 17.4$, $C_2 \approx 51.6$ K for many polymers. For polyolefins, $C_1 \approx 8.86$, $C_2 \approx 101.6$ K.

**Activation Energy Form (Arrhenius):**

$$\eta_0(T) = A \exp\left(\frac{E_a}{RT}\right)$$

Where $E_a$ = activation energy for viscous flow (see Table 2.2).

### 3.2 Rheological Properties at Stage 2 Conditions

| Polymer | η₀ @ Tm+50°C (Pa·s) | η∞ (Pa·s) | n | λ (s) | a | Td (°C) | Max Residence at 450°C | Ea (kJ/mol) |
|---------|---------------------|-----------|---|-------|---|---------|------------------------|-------------|
| **LDPE** | 150 | 0.8 | 0.35 | 0.8 | 1.2 | 350 | 30 min | 28 |
| **HDPE** | 300 | 1.2 | 0.40 | 1.2 | 1.0 | 360 | 30 min | 35 |
| **PP** | 250 | 1.0 | 0.38 | 1.0 | 1.1 | 320 | 20 min | 38 |
| **PS** | 500 | 2.5 | 0.45 | 1.5 | 0.8 | 340 | 30 min | 45 |
| **ABS** | 800 | 3.0 | 0.42 | 1.8 | 0.9 | 300 | 15 min | 90 |
| **PA6** | 400 | 1.5 | 0.48 | 1.3 | 1.0 | 300 | 10 min | 75 |
| **PA66** | 600 | 2.0 | 0.50 | 2.0 | 0.9 | 310 | 10 min | 85 |
| **PET** | 1200 | 5.0 | 0.55 | 3.0 | 0.7 | 300 | 5 min | 100 |
| **PC** | 2000 | 8.0 | 0.60 | 4.0 | 0.6 | 340 | 15 min | 110 |
| **PVC** | 1000* | 4.0 | 0.50 | 2.5 | 0.8 | 210 | 2 min | 105* |
| **PEEK** | 5000 | 20.0 | 0.65 | 8.0 | 0.5 | 580 | N/A | 165 |
| **PTFE** | 10000 | 50.0 | 0.70 | 15.0 | 0.4 | 400 | N/A | 145 |

*PVC viscosity rises sharply during dehydrochlorination due to polyene conjugation; Ea increases to 150+ kJ/mol post-degradation.

### 3.3 Shear Rates in Melt Centrifuge

The centrifuge imposes a **shear rate gradient** across the melt layer:

$$\dot{\gamma}(r) = \frac{\omega r}{h} \quad \text{(Couette flow approximation)}$$

Where $\omega = 15.7$ rad/s (150 RPM), $h$ = melt layer thickness (varies 5-50 mm).

| Radial Position | r (mm) | h (mm) | $\dot{\gamma}$ (s⁻¹) | Effective Viscosity (LDPE) | Effective Viscosity (PET) |
|-----------------|--------|--------|---------------------|----------------------------|---------------------------|
| Inner (light polymers) | 150 | 50 | 47 | 85 Pa·s | 620 Pa·s |
| Mid-light | 180 | 40 | 71 | 65 Pa·s | 480 Pa·s |
| Middle | 200 | 30 | 105 | 52 Pa·s | 380 Pa·s |
| Mid-heavy | 230 | 20 | 181 | 38 Pa·s | 270 Pa·s |
| Outer (heavy polymers) | 250 | 10 | 393 | 22 Pa·s | 160 Pa·s |

**Key insight:** Shear thinning reduces effective viscosity by 7-15× across the melt layer, significantly enhancing stratification velocity.

### 3.4 Viscoelastic Effects & Normal Stresses

Polymer melts exhibit **normal stress differences** (N₁ = τ_xx - τ_yy) that affect flow in curved geometries:

**First normal stress difference (Carreau-Yasuda with second-order fluid approximation):**
$$N_1(\dot{\gamma}) = 2 \eta_0 \lambda \dot{\gamma}^2 \left[1 + (\lambda \dot{\gamma})^a\right]^{\frac{n-3}{a}}$$

For LDPE at 180°C, λ = 0.8 s: N₁ ≈ 2 × 150 × 0.8 × (1000)² × [1 + (0.8×1000)^1.2]^{-1.4} ≈ 1.2×10⁵ Pa at 1000 s⁻¹.

**Effect in centrifuge:** Normal stresses cause **rod-climbing** (Weissenberg effect) and **hoop stress** in the annular melt layer, which:
- Enhances radial migration of lower-viscosity phase (polyolefins inward)
- Stabilizes interface between polymer layers (suppresses Kelvin-Helmholtz instability)
- Creates secondary flows that improve mixing within each annular zone

**Deborah number (De = λω) at 150 RPM:**
- LDPE: De = 0.8 × 15.7 = 12.6 (highly elastic)
- PET: De = 3.0 × 15.7 = 47 (very elastic)
- PVC: De = 2.5 × 15.7 = 39 (elastic)

**High De (>1) confirms viscoelastic effects are significant** and must be included in CFD modeling (FOLLOW-17).

### 3.5 Thermal Degradation Kinetics

Degradation follows first-order kinetics:

$$\frac{d[MW]}{dt} = -k_d [MW] \quad \text{where} \quad k_d = A_d \exp\left(-\frac{E_{a,d}}{RT}\right)$$

| Polymer | Ea,d (kJ/mol) | A_d (s⁻¹) | Td,5% (30 min) | MW Loss at 450°C/30 min |
|---------|---------------|-----------|----------------|-------------------------|
| LDPE | 220 | 1×10^14 | 350°C | 40% |
| HDPE | 240 | 5×10^14 | 360°C | 35% |
| PP | 200 | 2×10^13 | 320°C | 55% |
| PS | 180 | 1×10^12 | 340°C | 25% |
| PET | 160 | 5×10^10 | 300°C | 60% |
| PVC | 110 (dehydrochlorination) | 1×10^8 | 210°C | 100% (to polyene) |

**Operating Limit:** Stage 2 max 450°C only for char-forming polymers; polymer fraction residence at peak temp limited to <5 min via rapid discharge.

---
