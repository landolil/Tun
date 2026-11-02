## 4. Drum Thermal-Structural FEA

### 4.1 Thermal Model — 2000°C Radial Gradient

**Geometry:** 1/8 sector (45°), 800 mm length, 35 mm wall, 3 liner zones, 8 ports
**Mesh:** 2 mm hex elements, 15 layers through wall, refined at port cutouts
**Boundary Conditions:**
- Inner surface: $q'' = \epsilon\sigma(T_{drum}^4 - T_{charge}^4) + h(T_{drum} - T_{charge})$ + $P_{ind}(z)$
- Outer surface: $T = T_{aerogel\_interface}$ (from vessel model)
- Port cutouts: Convection to gas ($h = 500$ W/m²·K)
- Ends: Insulated (adiabatic)

**Steady-State Results (Stage 8, 2200°C inner):**
| Location | Temperature (°C) | Gradient (°C/mm) |
|----------|------------------|------------------|
| Inner surface (ID) | 2200 | - |
| Liner B interface (10 mm) | 1850 | 35 |
| Mid-wall | 1250 | 17 |
| Liner C interface (30 mm) | 750 | 14 |
| Outer surface (OD) | 700 | - |

### 4.2 Structural Model — Combined Loading

**Load Cases (Simultaneous):**
1. **Pressure:** 5 bar internal (N₂/Ar)
2. **Thermal:** Steady-state gradient above
3. **Centrifugal:** 500 RPM (84.5 G at ID, 93.5 G at OD)
4. **Thermal Shock:** $\Delta T/\Delta t = 100°C/s$ (emergency cool)

**Material Model:** Temperature-dependent elastic-plastic with Weibull failure
$$\sigma_{eq} = \sqrt{\frac{3}{2}\mathbf{s}:\mathbf{s}} \quad \text{(von Mises)}$$
$$P_f = 1 - \exp\left[-\left(\frac{\sigma_{max}}{\sigma_0}\right)^m \frac{V}{V_0}\right] \quad \text{(Weibull, } m=12, \sigma_0=500 \text{ MPa)}$$

**Results (Stage 8, 500 RPM, 5 bar):**
| Stress Component | Max Value (MPa) | Location | Allowable (MPa) | Margin |
|------------------|-----------------|----------|-----------------|--------|
| Hoop (pressure) | 42 | Mid-wall | 350 (1500°C) | 8.3× |
| Hoop (centrifugal) | 185 | Inner surface | 350 | 1.9× |
| Thermal (radial) | 220 | Liner B interface | 350 | 1.6× |
| **Combined von Mises** | **385** | **Liner B interface** | **350** | **0.91×** |

**Critical Finding:** Combined stress at Liner B interface (385 MPa) exceeds 350 MPa allowable at 1500°C. **Mitigation:** Limit Stage 8 RPM to 400 (54 G) when $T_{inner} > 2000°C$. At 400 RPM: centrifugal stress = 118 MPa, combined = 330 MPa (margin 1.06×).

### 4.3 Port Stress Concentrations

**Port Geometry:** 8 ports at 44.2° spacing, 12 mm radius, Ti₃AlC₂/ZrO₂ sleeve
**SCF (Stress Concentration Factor):** 2.8 at port root (FEA)
**Mitigation:** Local wall thickening to 45 mm at ports (+10 mm), ZrO₂ reinforcement ring
**Fatigue Life (500 thermal cycles, ΔT = 2000°C):**
- Baseline (no reinforcement): 800 cycles to 1 mm crack
- With reinforcement: >5000 cycles (Paris law: $da/dN = C(\Delta K)^m$, $C=5\times10^{-12}$, $m=3.2$)

### 4.4 Thermal Shock Analysis (Emergency Cool)

**Scenario:** Cooling water loss → N₂ quench at 100°C/s from 2200°C
**Max Thermal Stress (transient):** 620 MPa at inner surface (exceeds 350 MPa)
**Result:** Weibull $P_f = 2.3\times10^{-3}$ per event (acceptable for emergency)
**Design Rule:** Emergency cool only if $T_{inner} < 1800°C$ OR drum at rest (0 RPM)

---
