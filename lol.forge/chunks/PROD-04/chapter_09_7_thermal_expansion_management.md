## 7. Thermal Expansion Management

### 7.1 Drum Growth at Operating Temperature

The drum operates from ambient (20°C) to 2200°C (Stage 8 peak). The **radial growth** is the primary concern for port alignment, liner attachment, and vessel gap.

**Drum body (ZrB₂-SiC) radial growth:**
$$\Delta r_{drum} = r_i \int_{20}^{2200} \alpha(T) dT$$

With piecewise CTE:
- α = 5.8×10⁻⁶/K (20-1000°C)
- α = 6.5×10⁻⁶/K (1000-2200°C)

$$\Delta r_{drum} = 300 \times [5.8 \times 10^{-6} \times 980 + 6.5 \times 10^{-6} \times 1200] = 300 \times [0.00568 + 0.00780] = \mathbf{4.04 \text{ mm}}$$

**Diameter growth:** ΔD = 2 × 4.04 = **8.08 mm** (ID grows from 600.0 → 608.1 mm)

**Axial growth:**
$$\Delta L = L \int \alpha(T) dT = 800 \times 0.01348 = \mathbf{10.8 \text{ mm}}$$

### 7.2 Liner Zone Differential Expansion

Each liner zone has different CTE, creating **differential radial growth** relative to the drum body.

| Zone | Material | CTE (×10⁻⁶/K) | Δr (mm) | Δr - Δr_drum (mm) |
|---|---|---|---|---|
| A (Si₃N₄) | 3.2 (20-1000°C) | 300 × 3.2×10⁻⁶ × 980 = 0.94 | -3.10 |
| B (ZrB₂-SiC) | 5.8/6.5 (matched) | 4.04 | 0.00 |
| C (3Y-TZP) | 10.5/11.2 | 300 × [10.5×980 + 11.2×1200]×10⁻⁶ = 7.05 | +3.01 |

**Key insight:**
- **Zone B matches drum perfectly** — zero radial mismatch (by design, same material)
- **Zone A grows LESS than drum** → liner goes into **tension** at temperature (detrimental for ceramics)
- **Zone C grows MORE than drum** → liner goes into **compression** at temperature (beneficial for ceramics)

### 7.3 Liner Attachment Pin Design — Accommodating Differential Growth

The ZrO₂ ceramic pins (Section 4) are the **compliant mechanism** that accommodates differential expansion without overstressing liners or drum.

**Pin geometry:** Ø6×20 mm (Zones A,B), Ø8×25 mm (Zone C)
**Pin material:** 3Y-TZP ZrO₂ (CTE = 10.5×10⁻⁶/K)
**Pin hole in drum:** Ø6.03/Ø8.03 mm (0.03 mm clearance at RT)
**Pin hole in liner:** Ø6.00/Ø8.00 mm (interference fit at RT)

**Thermal expansion of pin at 1000°C (Zone A max):**
ΔL_pin = 20 × 10.5×10⁻⁶ × 980 = 0.21 mm
ΔD_pin = 6 × 10.5×10⁻⁶ × 980 = 0.06 mm

**Radial displacement capacity (per pin row):**
The 4-pin circumferential row acts as a **flexible ring**. Maximum radial compliance:
$$\delta_{radial} = \frac{N \Delta L_{pin}}{2\pi} \approx \frac{4 \times 0.21}{2\pi} = 0.13 \text{ mm per row}$$
With 3 rows: **0.4 mm total compliance per zone** — sufficient for Zone A mismatch (-3.1 mm accommodated by 3 rows × 4 pins with slip).

**Zone C (higher mismatch):** Uses Ø8×25 mm pins, 3 rows × 4 pins
ΔL_pin at 2200°C = 25 × 11.2×10⁻⁶ × 2180 = 0.61 mm
Compliance = 3 × 4 × 0.61 / (2π) = **1.17 mm** — accommodates +3.01 mm mismatch via controlled pin shear.

### 7.4 Port Alignment Management

**Critical requirement:** Port axes must maintain alignment with external collection system (±0.5 mm positional tolerance at vessel flange).

**Port radial position at temperature:**
- Port centerline radius at RT: 317.5 mm (mid-wall)
- Port centerline radius at 2200°C: 317.5 + Δr(r=317.5) = 317.5 + 4.3 = 321.8 mm
- **Radial shift:** +4.3 mm outward

**Port circumferential position:**
- Drum circumference growth: π × 8.08 = 25.4 mm total
- Per port spacing: 25.4 / 8 = **3.17 mm circumferential growth per port**
- Port angular position maintained (rigid body rotation) — no relative shift between ports

**External compensation:** Collection nozzles on vessel flange use **slotted bolt holes** (±5 mm radial, ±4 mm circumferential) to accommodate drum growth. Vessel is stationary (max 200°C, ΔD < 1 mm).

### 7.5 Drum-to-Vessel Gap Control

**Nominal gap (RT):** (900 - 670) / 2 = 115 mm radial
**Gap at Stage 8:**
- Drum OD: 670 + 8.1 = 678.1 mm
- Vessel ID: 900 + 0.9 = 900.9 mm (BFRP at 200°C, α ≈ 10×10⁻⁶/K)
- **Gap at temperature:** (900.9 - 678.1) / 2 = **111.4 mm**

**Gap reduction:** 115 → 111.4 mm = **3.6 mm reduction** (3% of gap)
**Aerogel thickness:** 50 mm nominal → 46.4 mm at temperature (compressed)
**Aerogel compressive strain:** 3.6/50 = 7.2% — well within 10% elastic limit of polyimide-silica aerogel.

### 7.6 Thermal Gradient Stress (Radial)

During thermal ramp, radial temperature gradient creates transient stress.

**Maximum gradient (conservative):** 50°C/mm (limited by induction zone control, 8 zones × 100 mm)
**Thermal stress (plane strain, thick cylinder):**
$$\sigma_{thermal}(r) = \frac{E \alpha}{1-\nu} \left[ \frac{1}{r_o^2 - r_i^2} \int_{r_i}^{r_o} T(r) r dr - T(r) \right]$$

For linear gradient T(r) = T_i + (T_o - T_i)(r - r_i)/(r_o - r_i):
- At inner surface (r = r_i): σ_thermal = +180 MPa (tensile)
- At outer surface (r = r_o): σ_thermal = -180 MPa (compressive)

**Combined with centrifugal (Section 6):**
- Peak von Mises at ID: 225 MPa (Section 6.5)
- Safety factor at 2000°C: 350/225 = **1.55×**

### 7.7 Axial Expansion Constraint

**Drum axial growth:** 10.8 mm (free)
**Constraint:** Drum ends attached to PEEK CF40 flanges via Si₃N₄ ceramic bearings (Section 9). Flanges mounted to BFRP vessel (fixed).

**PEEK CF40 properties at 200°C:**
- CTE: 30×10⁻⁶/K (axial)
- E: 8 GPa
- Compressive yield: 150 MPa

**Flanges expand more than drum:** ΔL_flange = 1200 × 30×10⁻⁶ × 180 = 6.5 mm (vessel length 1200 mm at 200°C)
**Drum expands 10.8 mm, flanges expand 6.5 mm** → **Drum pushes flanges apart by 4.3 mm**

**Bearing accommodation:** Si₃N₄ bearing outer race floats axially in PEEK CF40 housing (0.5 mm clearance + PEEK compliance). Total axial compliance: 5 mm — **sufficient for 4.3 mm differential**.

### 7.8 Thermal Cycle Durability

**Cycle profile:** 20°C → 2200°C → 20°C in 4.5 hours (6 cycles/day)
**Thermal strain range (ID):** Δε = α_avg × ΔT = 6.5×10⁻⁶ × 2180 = 0.0142 (1.42%)
**Thermal stress range:** Δσ = E × Δε = 300 GPa × 0.0142 = 4.26 GPa (theoretical, limited by creep)

**Actual stress range (with creep relaxation):** ~225 MPa (Section 6.5)
**Fatigue life (Section 6.7):** >10⁷ cycles at ΔK = 3 MPa·m⁰·⁵
**Design life:** 60,000 cycles (10,000 hrs) — **SF > 160× on cycles**

---
