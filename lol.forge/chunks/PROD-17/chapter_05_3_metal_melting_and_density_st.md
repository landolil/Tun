## 3. Metal Melting and Density Stratification

### 3.1 Molten Metal Properties at Separation Temperatures

| Metal | Melting Point (°C) | Boiling Point (°C) | Density Liquid (g/cm³) | Density Solid (g/cm³) | Electrical Resistivity (μΩ·cm) |
|---|---|---|---|---|---|
| **Indium (In)** | 156.6 | 2072 | **7.31** | 7.31 | 8.4 |
| **Tin (Sn)** | 231.9 | 2602 | **6.99** | 7.31 | 11.5 |
| **Bismuth (Bi)** | 271.5 | 1564 | **10.05** | 9.78 | 129 |
| **Lead (Pb)** | 327.5 | 1749 | **10.66** | 11.34 | 20.6 |
| **Zinc (Zn)** | 419.5 | 907 | **6.57** | 7.14 | 5.9 |
| **Aluminum (Al)** | 660.3 | 2470 | 2.38 | 2.70 | 2.7 |

**Key Density Order (Liquid, at respective melting points):**
1. **Lead (Pb): 10.66 g/cm³** — Heaviest → outermost annulus
2. **Bismuth (Bi): 10.05 g/cm³** — Second heaviest
3. **Tin (Sn): 6.99 g/cm³** — Intermediate
4. **Indium (In): 7.31 g/cm³** — Similar to Sn, separates at 160°C before Sn melts
5. **Zinc (Zn): 6.57 g/cm³** — Lightest of the four primary metals

### 3.2 Density Stratification Physics

Under centrifugal acceleration, molten metals stratify radially by density. The equilibrium position of each liquid phase is determined by the balance of centrifugal force, interfacial tension, and viscosity.

**Centrifugal Potential:**
$$\Phi(r) = -\frac{1}{2} \omega^2 r^2$$

**Radial Force Balance at Interface:**
$$\Delta P = \Delta \rho \cdot \omega^2 \cdot r \cdot \Delta r + \frac{2\gamma}{R_{interface}}$$

Where:
- $\Delta \rho$ = density difference between adjacent liquid layers
- $\omega$ = angular velocity (rad/s)
- $r$ = radial position
- $\gamma$ = interfacial tension (typically 0.3-0.5 N/m for molten metals)
- $R_{interface}$ = radius of curvature of interface

**At 400 RPM (ω = 41.89 rad/s, r = 0.3 m):**
- Centrifugal acceleration: $a_c = \omega^2 r = 527 \text{ m/s}^2 = 53.7 \text{ G}$ (at mean radius)
- Pressure gradient in Pb: $\frac{dP}{dr} = \rho \omega^2 r = 10,660 \times 41.89^2 \times 0.3 = 5.6 \text{ MPa/m}$

**Stratification Time Estimate (Stokes settling in centrifugal field):**
$$t_{settle} \approx \frac{18 \mu}{\Delta \rho \cdot \omega^2 \cdot r \cdot d^2}$$
For 1 mm droplets, μ ~ 2 mPa·s (molten metal viscosity), Δρ ~ 3000 kg/m³:
$t_{settle} \approx 0.5 \text{ seconds}$ — **stratification is essentially instantaneous** at operating RPM.

### 3.3 Centrifuge Bowl Zones — Stage 4 Configuration

At 400 RPM during In separation, the drum interior forms three concentric liquid zones:

```
CENTRIFUGE BOWL ZONES — STAGE 4 (400 RPM, G=89.2)
════════════════════════════════════════════════════════════════════════════════

                    DRUM WALL (r = 300 mm)
                    ┌─────────────────────────┐
                    │                         │
                    │   OUTER ZONE            │  ← PORT 4C (Pb, 340°C)
                    │   Lead (Pb)             │      Density: 10.66 g/cm³
                    │   ρ = 10.66 g/cm³       │      r = 250-300 mm
                    │   Thickness: ~5-10 mm   │
                    ├─────────────────────────┤
                    │                         │
                    │   MIDDLE ZONE           │  ← PORT 4B (Sn/Bi, 200/280°C)
                    │   Tin (Sn) + Bismuth    │      Density: 6.99-10.05 g/cm³
                    │   ρ = 7-10 g/cm³        │      r = 200-250 mm
                    │   Thickness: ~10-15 mm  │
                    ├─────────────────────────┤
                    │                         │
                    │   INNER ZONE            │  ← PORT 4A (In, 160°C)
                    │   Indium (In)           │      Density: 7.31 g/cm³
                    │   ρ = 7.31 g/cm³        │      r = 150-200 mm
                    │   Thickness: ~5-10 mm   │
                    ├─────────────────────────┤
                    │                         │
                    │   SOLID MATRIX          │
                    │   Char + Al/Cu/Fe particles          │
                    │   (not molten at 160°C) │      r = 0-150 mm
                    │                         │
                    └─────────────────────────┘
                    DRUM CENTER (r = 0)

PORT MAPPING:
• Port 4A (160°C): Inner zone — In collection (r ≈ 150-200 mm)
• Port 4B (200/280°C): Middle zone — Sn/Bi collection (r ≈ 200-250 mm)
• Port 4C (340/430°C): Outer zone — Pb/Zn collection (r ≈ 250-300 mm)
```

**Zn Separation at 430°C (400 RPM):**
At 430°C, only Zn is molten (Al still solid at 660°C). Zn density 6.57 g/cm³ forms a single liquid layer at the drum wall (r = 250-300 mm), collected at Port 4C. Higher RPM (400 vs 300) increases G-force to 89.2, improving Zn collection efficiency and suppressing vapor loss (Zn boils at 907°C).

---
