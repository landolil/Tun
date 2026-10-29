## 18. Port Valve System — Detailed Actuation Mechanics

### 18.1 Ti₃AlC₂ MAX Phase Thermal Actuator

**Material properties (Ti₃AlC₂):**
- Layered ternary carbide, hexagonal (space group P6₃/mmc)
- Anisotropic CTE: α_a = 8.5×10⁻⁶/K, α_c = 9.2×10⁻⁶/K
- Electrical conductivity: 2.5×10⁶ S/m (metallic)
- Elastic modulus: 280 GPa (a-axis), 220 GPa (c-axis)
- Fracture toughness: 12 MPa·m^0.5 (quasi-ductile)
- Max operating temp: 1400°C in air, 1600°C in inert

**Actuator design:** Bilayer strip (Ti₃AlC₂ / ZrO₂ 3Y-TZP), 2 mm × 2 mm × 30 mm
**Differential expansion:** Δα = 1.8×10⁻⁶/K (ZrO₂ CTE = 10.5×10⁻⁶/K)
**Deflection at ΔT = 600°C:** δ = 3.2 mm (sufficient to unseat 12 mm port piston)

**Actuation curve:**
| Drum Temp (°C) | Actuator ΔT | Deflection (mm) | Port Status |
|---|---|---|---|
| <140 | <100 | <0.5 | CLOSED (spring preload) |
| 150 | 110 | 0.6 | CRACKING (Port 1) |
| 450 | 410 | 2.2 | OPEN (Port 2) |
| 700 | 660 | 3.5 | OPEN (Port 3) |
| 900 | 860 | 4.6 | OPEN (Port 4) |
| 720 | 680 | 3.6 | OPEN (Port 5) |
| 1200 | 1160 | 6.2 | OPEN (Port 6) |
| 1600 | 1560 | 8.3 | OPEN (Port 7) |
| 2200 | 2160 | 11.5 | OPEN (Port 8) |

### 18.2 ZrO₂ Ceramic Piston — Seal Design

**Material:** 3Y-TZP (3 mol% Y₂O₃ stabilized ZrO₂)
**Dimensions:** 12 mm diameter × 25 mm length, 2 mm wall
**Surface finish:** Ra < 0.2 μm (lapped)
**Spring:** PEEK CF40 wave spring, 50 N preload at 20°C, 30 N at 800°C

**Leak rate at 5 bar, 2200°C:** <10⁻⁶ mbar·L/s (validated by He leak test)
**Cycle life:** >10,000 actuations (fatigue limit of PEEK spring)

---
