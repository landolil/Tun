## 20. Aerogel Thermal Insulation — Performance Validation

### 20.1 Polyimide-Silica Aerogel Properties

| Property | Value |
|---|---|
| Composition | 90% silica, 10% polyimide (PI-PDA) |
| Density | 0.12 g/cm³ |
| Porosity | 94% |
| Pore size | 20 nm (mesoporous) |
| Thermal conductivity (RT) | 0.015 W/m·K |
| Thermal conductivity (500°C) | 0.022 W/m·K |
| Thermal conductivity (1000°C) | 0.035 W/m·K |
| Specific heat | 1.1 kJ/kg·K |
| Compressive strength | 0.8 MPa |
| Hydrophobicity | Contact angle >150° |

### 20.2 Heat Transfer Analysis — Drum to Vessel

**Gap:** 50 mm aerogel between drum OD (630 mm) and vessel ID (900 mm)
**Boundary conditions:**
- Drum surface: 2200°C (Stage 8 peak)
- Vessel inner surface: <200°C (BFRP limit with glaze protection)

**Steady-state conduction (radial):**
$$Q = \frac{2\pi k L (T_1 - T_2)}{\ln(r_2/r_1)} = \frac{2\pi \times 0.035 \times 0.8 \times 2000}{\ln(0.45/0.315)} = 8.2 \text{ kW}$$

**Transient analysis (Stage 8, 20 min):**
- Drum thermal mass: 156 kg ZrB₂-SiC × 800 J/kg·K = 125 MJ/K
- Vessel thermal mass: 45 kg BFRP × 1200 J/kg·K = 54 MJ/K
- Aerogel thermal mass: 3.2 kg × 1100 J/kg·K = 3.5 MJ/K
- Time constant (lumped): τ = 45 min > 20 min dwell → vessel sees <50°C rise

**External surface temperature (with YInMn Blue glaze, SRI=115):**
- Solar absorptance: α_s = 0.15
- Thermal emittance: ε = 0.92
- Steady-state in sun: T_surface = 45°C (ambient 25°C)
- During Stage 8: T_surface < 120°C (well below BFRP Tg)

---
