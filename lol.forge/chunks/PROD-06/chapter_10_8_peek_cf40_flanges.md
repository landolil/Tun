## 8. PEEK CF40 Flanges

### 8.1 Flange Design Requirements

Both ends of the pressure vessel are sealed by PEEK CF40 (30% carbon fiber reinforced PEEK) flanges. These flanges must:
- Seal 10 bar N₂/Ar at 200°C continuous, 250°C peak
- Accommodate 600 mm rotating shaft with dynamic rotary seal
- Provide bolted joint with ZrO₂ gasket for zero-metal sealing
- Transfer axial pressure load to support frame
- Maintain dielectric integrity (no metal in sealing path)

### 8.2 PEEK CF40 Material Properties

| Property | Value (RT) | Value (200°C) | Test Standard |
|---|---|---|---|
| Density | 1.42 g/cm³ | — | ISO 1183 |
| Tensile strength | 170 MPa | 95 MPa | ISO 527 |
| Tensile modulus | 18 GPa | 10 GPa | ISO 527 |
| Compressive strength | 220 MPa | 130 MPa | ISO 604 |
| Flexural strength | 240 MPa | 140 MPa | ISO 178 |
| CTE (α) | 4.5 × 10⁻⁶/K | 5.2 × 10⁻⁶/K | ISO 11359 |
| Thermal conductivity | 0.85 W/m·K | 0.95 W/m·K | — |
| Max continuous service | 250°C | — | — |
| Tg (glass transition) | 143°C | — | DSC |
| Electrical resistivity | >10¹⁴ Ω·m | >10¹² Ω·m | IEC 60093 |
| Dielectric strength | 22 kV/mm | 18 kV/mm | IEC 60243 |

**Carbon fiber reinforcement:** 30% volume fraction, PAN-based carbon fiber (T700 equivalent), 7 μm diameter, 4,900 MPa tensile. Provides stiffness and strength at temperature while maintaining dielectric properties.

### 8.3 Flange Geometry

| Parameter | Value |
|---|---|
| Flange type | Integral hub with bolt circle (ASME B16.5 Class 300 equivalent) |
| Hub ID | 610 mm (matches shaft OD + seal clearance) |
| Hub OD | 936 mm (matches vessel OD) |
| Bolt circle diameter | 850 mm |
| Bolt holes | 8 × M24 (24 mm clearance) |
| Bolt pattern | 8 holes at 45° spacing (0°, 45°, 90°...) |
| Flange thickness (hub) | 60 mm |
| Flange thickness (bolt circle) | 45 mm |
| Raised face | 3 mm, 750 mm OD, 650 mm ID |
| Gasket groove | 5 mm wide × 3 mm deep, ZrO₂ gasket |

**Total flange mass (each): 42 kg**

### 8.4 Bolt Design and Preload

| Parameter | Value |
|---|---|
| Bolt material | ZrO₂ ceramic bolts (3Y-TZP, σ_ult = 800 MPa) |
| Bolt size | M24 × 3.0 pitch, 120 mm length |
| Quantity | 8 per flange (16 total) |
| Preload torque | 180 N·m (lubricated with MoS₂-free ceramic paste) |
| Preload force | 145 kN per bolt (75% of proof load) |
| Total clamp force | 1,160 kN per flange |
| Gasket seating stress | 45 MPa (ZrO₂ gasket, min 30 MPa required) |

**Why ZrO₂ bolts?** Zero metal in the pressure boundary. Ceramic bolts eliminate conductive paths, GIC coupling, and thermal expansion mismatch with PEEK CF40. Torque-tension relationship calibrated for ceramic-on-ceramic friction (μ = 0.15 with ceramic paste).

### 8.5 ZrO₂ Gasket Design

| Parameter | Value |
|---|---|
| Material | 3Y-TZP ZrO₂, 99.5% dense |
| Geometry | Flat ring, 750 mm OD × 650 mm ID × 5 mm thick |
| Surface finish | Ra < 0.8 μm (ground) |
| Seating stress | 45 MPa (operating), 80 MPa (hydrotest) |
| Leak rate | <10⁻⁸ mbar·L/s (helium) |
| Temperature limit | 1200°C (far above operating) |
| Radiation resistance | Excellent (ceramic) |

**Gasket stress verification:**
- Operating: 10 bar → hydrostatic end force = P × π × r² = 1.0×10⁶ × π × 0.45² = 636 kN
- Bolt preload (8 × 145 kN) = 1,160 kN > 636 kN × 1.5 (SF) = 954 kN ✓
- Gasket stress maintained at 45 MPa > 30 MPa minimum ✓

### 8.6 Flange-to-Vessel Joint

The PEEK CF40 flange is bonded to the BFRP vessel end during filament winding:
- Final 4 winding passes include flange transition (±45° shear plies)
- Peel ply applied on flange bond surface during winding
- Post-wind: flange hub machined to final dimensions
- Flange bonded to vessel with PEEK-based structural adhesive (3M DP460 equivalent)
- Bond line thickness: 0.2 mm controlled by glass bead shims
- Joint strength: >25 MPa lap shear at 200°C (validated)

### 8.7 Flange Thermal Protection

The flange external surface receives same thermal protection as vessel:
- YInMn Blue + CoAl₂O₄ glaze (70 μm total)
- Extended 100 mm beyond bolt circle for bolt protection
- Bolt heads coated with same glaze system
- Thermal gradient through flange: <30°C (hub to OD) due to low k = 0.85 W/m·K

### 8.8 Flange Validation Testing

| Test | Condition | Acceptance |
|---|---|---|
| Hydrostatic proof | 15 bar, 30 min, N₂ | No leak, no permanent deformation |
| Leak test | Helium, 10 bar | <10⁻⁶ mbar·L/s |
| Thermal cycle | 20 ↔ 250°C, 500 cycles | No bolt preload loss >10% |
| Bolt creep | 145 kN, 250°C, 10,000 hrs | <5% preload relaxation |
| Seal cycling | 1000 open/close (maintenance) | Leak rate <10⁻⁶ mbar·L/s |

---
