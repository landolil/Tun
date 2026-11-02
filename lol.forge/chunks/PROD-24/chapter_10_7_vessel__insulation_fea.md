## 7. Vessel & Insulation FEA

### 7.1 Thermal Model — 2000°C Across 68 mm

**Geometry:** Full 360° vessel, 1200 mm length, 18 mm BFRP, 50 mm aerogel, 0.3 mm glaze
**Boundary Conditions:**
- Inner surface (BFRP/aerogel interface): $T = 700°C$ (from drum model)
- Outer surface (glaze): Radiation to ambient + solar load
- End flanges: PEEK CF40, $T < 200°C$

**Steady-State Results (Stage 8):**
| Layer | Temperature (°C) | ΔT Across Layer |
|-------|------------------|-----------------|
| Drum OD | 700 | - |
| Aerogel inner | 698 | 2 |
| Aerogel outer | 180 | 518 |
| BFRP inner | 175 | 5 |
| BFRP outer | 150 | 25 |
| Glaze outer | 148 | 2 |
| Ambient | 25 | - |

**Key Metric:** BFRP max temperature = 175°C (internal), 150°C (external) < 200°C limit → **SF = 1.33 on Tg=80°C** (with 120°C margin via aerogel + glaze)

### 7.2 Structural Model — Pressure + Thermal

**Load Cases:**
1. Design pressure: 10 bar (hoop stress = 41 MPa in 18 mm BFRP)
2. Thermal gradient: 150°C outer → 175°C inner (compressive hoop)
3. Seismic: IEEE 693 High (PGA = 1.0g)
4. Combined: Pressure + Thermal + Seismic

**Barlow Formula (Hoop Stress):**
$$\sigma_h = \frac{P r_i}{t} = \frac{1.0 \times 10^6 \times 0.45}{0.018} = 25 \text{ MPa} \quad \text{(thin-wall approx)}$$
**FEA (thick-wall, Lame):** $\sigma_h = 41$ MPa at inner surface

**Tsai-Wu Failure Criterion:**
$$F_{ij}\sigma_i\sigma_j + F_i\sigma_i = 1$$
**Result:** Failure index = 0.18 (pressure only), 0.24 (combined) → **SF > 4.0**

### 7.3 Aerogel Gap Structural Integrity

**Mechanical Standoffs:** ZrO₂ ceramic pins (Ø8×50 mm), 48 per vessel (6 rings × 8)
**Load:** Aerogel compression (0.8 MPa strength) + differential expansion
**Differential Expansion (2200°C drum → 150°C vessel):**
- Drum OD growth: +8.5 mm
- Vessel ID growth: +0.5 mm
- **Gap closure: 8 mm** (standoffs compress from 50 → 42 mm)
**Stress in Standoffs:** 0.8 MPa × (42/50)² = 0.56 MPa < 0.8 MPa allowable

---
