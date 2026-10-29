## 19. BFRP Pressure Vessel — Filament Winding Analysis

### 19.1 Lamina Properties (Basalt Fiber / Elium®)

| Property | Value |
|---|---|
| Fiber volume fraction | 55% |
| Longitudinal tensile strength | 1800 MPa |
| Transverse tensile strength | 45 MPa |
| Longitudinal modulus | 65 GPa |
| Transverse modulus | 18 GPa |
| In-plane shear strength | 65 MPa |
| Major Poisson's ratio | 0.32 |
| Density | 2.1 g/cm³ |
| Tg (Elium®) | 120°C (dry), 80°C (wet) |

### 19.2 Layup Optimization — [±18°/90°]₄

**Hoop layer (90°):** Primary pressure containment
**Helical layers (±18°):** Axial load sharing, buckling resistance
**Total plies:** 16 (4 repeats of 4-ply sequence)
**Theoretical thickness:** 16 × 1.125 mm = 18 mm

**Barlow formula validation:**
$$\sigma_{hoop} = \frac{P \cdot r}{t} = \frac{10 \times 10^5 \cdot 0.45}{0.018} = 25 \text{ MPa}$$

**Lamina-level stresses (Classical Laminate Theory):**
- 90° ply: σ₂ = 25 MPa (transverse tension) — SF = 45/25 = 1.8×
- ±18° ply: σ₁ = 8 MPa, τ₁₂ = 2.5 MPa — SF > 10×

**Buckling analysis (Euler, simply supported):**
$$P_{cr} = \frac{2\pi^2 E_{eq} t^2}{12(1-\nu^2)L^2} = 18 \text{ bar} \text{ (axial)}$$
Design pressure 10 bar → **SF = 1.8× against buckling**

### 19.3 Hydrostatic Test Procedure

1. Fill vessel with N₂ (inert, non-condensing)
2. Pressurize to 15 bar (1.5× design) in 5 bar increments
3. Hold 30 min at 15 bar, monitor strain gauges (FBG)
4. Depressurize, inspect for delamination (ultrasonic C-scan)
5. Proof test: cycle 0→10 bar × 1000 cycles, no degradation

---
