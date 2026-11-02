## 2. Aluminum Melting and Separation Physics

### 2.1 The Aluminum Window — Thermodynamic Basis

The "Aluminum Window" is the 60°C interval between 660°C and 720°C where:
- **Aluminum is liquid** (MP 660.3°C for pure Al; alloys liquidus 577-652°C)
- **Magnesium is liquid but not vaporizing** (MP 650°C, BP 1091°C, significant vapor >720°C)
- **Copper is solid** (MP 1084.6°C) — 365°C margin
- **Iron is solid** (MP 1538°C) — 878°C margin
- **All Stage 4 metals (Pb, Sn, Zn, In, Bi) REMOVED** — drum cleared below 450°C

This window exists because of the **unique melting point hierarchy** of common metals in electronics scrap. No engineering adjustment can widen it — it is a thermodynamic constant.

| Metal | Melting Point (°C) | Boiling Point (°C) | State in Window |
|---|---|---|---|
| Mg | 650 | 1091 | Liquid (co-melts with Al) |
| **Al (pure)** | **660.3** | **2470** | **LIQUID** |
| Al alloys (A380) | 566-577 | 577-590 | Liquid (eutectic) |
| Al alloys (6061) | 582 | 652 | Liquid |
| Al alloys (7075) | 477 | 635 | Liquid |
| Cu | 1084.6 | 2562 | Solid |
| Fe | 1538 | 2861 | Solid |
| Ni | 1455 | 2913 | Solid |
| Cr | 1907 | 2671 | Solid |
| Ti | 1668 | 3287 | Solid |

### 2.2 Aluminum Melt Properties at 680°C

| Property | Value | Significance |
|---|---|---|
| **Density (liquid)** | 2.38 g/cm³ | Lightest structural metal — inner annulus |
| **Viscosity** | 1.3 mPa·s | Extremely fluid — flows like water |
| **Surface Tension** | 0.86 N/m | High — resists droplet formation, forms film |
| **Thermal Conductivity** | 90 W/m·K | Rapid heat distribution in melt pool |
| **Electrical Resistivity** | 4.5×10⁻⁸ Ω·m | Good induction coupling at 10 kHz |
| **Skin Depth (10 kHz)** | δ ≈ 0.9 mm | Excellent for 1-5 mm Al particles |
| **Latent Heat of Fusion** | 397 kJ/kg | Significant energy at phase change |
| **Specific Heat (liquid)** | 1.18 kJ/kg·K | Sensible heat in 60°C window: 71 kJ/kg |
| **Thermal Expansion (liquid)** | 1.3×10⁻⁴ /K | Volume change affects film thickness |
| **Vapor Pressure (720°C)** | <10⁻⁶ Pa | Negligible Al loss — unlike Mg |
| **Oxidation Rate (680°C, 1 ppm O₂)** | 0.1 µm/min | Forms protective Al₂O₃ skin |

### 2.3 Centrifugal Film Formation and Drainage

At 300 RPM (ω = 31.4 rad/s, r = 0.3 m), the molten aluminum forms a continuous annular film at the drum wall:

**Film Thickness (Nusselt falling film analogy, centrifugal):**
$$\delta = \left( \frac{3 \mu Q}{2\pi \rho \omega^2 r} \right)^{1/3}$$

For Q = 5 kg/min Al flow, μ = 1.3 mPa·s, ρ = 2380 kg/m³:
δ ≈ **0.8 mm** — thin, stable film

**Drainage Velocity:**
$$v = \frac{\rho \omega^2 r \delta^2}{3\mu} \approx 0.15 \text{ m/s}$$

**Time to traverse 800 mm drum length:** ~5 seconds — **drainage is rapid**

**Centrifugal Pressure at Port 5:**
$$\Delta P = \frac{1}{2} \rho \omega^2 (r_{wall}^2 - r_{port}^2) = \frac{1}{2} \times 2380 \times 31.4^2 \times (0.3^2 - 0.05^2) = 33 \text{ kPa}$$
Sufficient to overcome 1.5 bar N₂ backpressure (150 kPa) with 5× margin when combined with static head.

### 2.4 Melt Pool Dynamics and Wave Stability

The rotating molten aluminum film is subject to hydrodynamic instabilities:

**Kelvin-Helmholtz Instability** (gas-liquid interface):
$$\omega_{KH}^2 = \frac{(\rho_g U_g - \rho_l U_l)^2 k^2}{(\rho_g + \rho_l)^2} - \frac{(\rho_l - \rho_g)gk + \sigma k^3}{\rho_g + \rho_l}$$
At 680°C, ρ_l = 2380 kg/m³, ρ_g = 1.2 kg/m³ (N₂ at 1.5 bar), U_g ≈ 0, U_l = v = 0.15 m/s, σ = 0.86 N/m.
For film thickness δ = 0.8 mm, dominant wavelength λ ≈ 2πδ = 5 mm.
Growth rate: ω_KH ≈ 50 s⁻¹ — **waves form but are stabilized by rotation**

**Rayleigh-Taylor Instability** (centrifugal acceleration):
$$\omega_{RT}^2 = \frac{(\rho_l - \rho_g) \omega^2 r k - \sigma k^3}{\rho_l + \rho_g}$$
Centrifugal acceleration stabilizes the interface (heavy liquid outward). The 25 G field suppresses RT instability completely.

**Result:** Stable, uniform annular film with small-amplitude ripple waves (1-2 mm) that enhance heat transfer without causing droplet entrainment.

### 2.5 Heat Transfer in the Melt Pool

**Induction Heating Power Density:**
$$P_v = \frac{\pi^2 B_{peak}^2 d^2 f^2}{6 \rho_{Al} D}$$
At 10 kHz, B_peak = 0.3 T, d = 3 mm (particle size), ρ_Al = 4.5×10⁻⁸ Ω·m, D = 0.3 m (drum):
P_v ≈ 1.2 MW/m³ — **volumetric heating within Al particles**

**Thermal Diffusion Time (Al particle, 3 mm):**
$$\tau_{th} = \frac{d^2}{4\alpha} = \frac{(0.003)^2}{4 \times 7.6 \times 10^{-5}} \approx 0.03 \text{ s}$$
Al particles heat uniformly — no thermal gradients.

**Melt Pool Temperature Uniformity:**
With 384 FBG sensors (48 per zone × 8 zones), axial temperature variation <±2°C achieved through:
- Induction zone power modulation (Zones 4-5 independently controlled)
- Drum rotation distributing heat circumferentially
- High Al thermal conductivity (90 W/m·K) spreading heat axially

---
