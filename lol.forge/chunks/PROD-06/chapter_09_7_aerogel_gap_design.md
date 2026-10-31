## 7. Aerogel Gap Design

### 7.1 Gap Geometry and Function

The 50 mm radial gap between drum OD (670 mm) and vessel ID (900 mm - 2×50 mm = 800 mm effective) serves as the primary thermal insulation layer. Filled with polyimide-silica hybrid aerogel (λ = 0.010 W/m·K), it reduces conductive/convective heat transfer to negligible levels.

| Parameter | Value |
|---|---|
| Radial gap | 50 mm (drum OD 670 mm → aerogel outer surface 770 mm) |
| Aerogel type | Polyimide-silica hybrid (V2.0 spec, Aspen Pyrogel® XT-E equivalent) |
| Thermal conductivity (λ) | 0.010 W/m·K (at 300°C mean temp) |
| Density | 180–220 kg/m³ |
| Maximum service temperature | 650°C (polyimide reinforcement) |
| Thickness | 50 mm (single layer blanket, wrapped) |
| Installation | Blanket wrapped on drum, held by ZrO₂ standoffs |

### 7.2 Thermal Performance Calculation

**Conductive heat transfer through aerogel (cylindrical):**
$$q_{cond} = \frac{2 \pi L k (T_{drum} - T_{aerogel,outer})}{\ln(r_{aerogel,outer}/r_{drum})}$$

With L = 1.2 m, k = 0.010 W/m·K, T_drum = 2200°C, r_drum = 0.335 m, r_aerogel_outer = 0.385 m:
$$q_{cond} = \frac{2 \pi \times 1.2 \times 0.010 \times (2200 - T_{outer})}{\ln(0.385/0.335)} = \textbf{0.94 × (2200 - T_{outer}) W}$$

**Radiative heat transfer across aerogel (with opacifier):**
Aerogel includes carbon opacifier (2 wt%) reducing radiative conductivity to <0.002 W/m·K at 600°C.
$$q_{rad,aerogel} \approx \textbf{50 W} \text{ (negligible)}$$

**Convective suppression:** Aerogel pore size <50 nm suppresses gas convection (Knudsen effect). At 5 bar N₂, residual convection <5 W/m².

**Total heat flux through aerogel at steady state:**
$$q_{total} \approx q_{cond} + q_{rad} \approx \textbf{1.5 kW/m}^2$$

At vessel inner surface (ID = 900 mm), this flux enters the BFRP wall.

### 7.3 BFRP Wall Conduction

**Conduction through 18 mm BFRP wall (k = 0.45 W/m·K at RT, 0.52 at 200°C):**
$$\Delta T_{BFRP} = \frac{q \cdot t}{k} = \frac{1500 \times 0.018}{0.52} = \textbf{52°C}$$

So vessel outer surface temperature = T_aerogel_outer + 52°C.

**Outer surface radiative/convective cooling (with YInMn Blue, ε = 0.15):**
$$q_{cool} = \epsilon \sigma (T_{surf}^4 - T_{amb}^4) + h (T_{surf} - T_{amb})$$
With h = 10 W/m²·K (natural convection), T_amb = 25°C:
At T_surf = 200°C: q_cool = 0.15 × 5.67×10⁻⁸ × (473⁴ - 298⁴) + 10 × (473 - 298) = 560 + 1,750 = **2,310 W/m²**

**Energy balance at steady state:**
q_in (through aerogel + BFRP) = q_out (radiation + convection)
1,500 W/m² ≈ 2,310 W/m² → **System stabilizes at ~150°C outer surface** (well below 200°C limit)

### 7.4 Aerogel Mechanical Standoffs

To maintain the 50 mm gap during drum thermal expansion (8.5 mm radial growth at 2200°C) and rotation:

| Feature | Specification |
|---|---|
| Standoff material | 3Y-TZP ZrO₂ (CTE = 10.5×10⁻⁶/K, k = 2.2 W/m·K) |
| Standoff geometry | 12 mm diameter × 50 mm tall, hollow (8 mm ID) |
| Quantity | 24 standoffs (4 rings × 6 per ring at 60° spacing) |
| Attachment | ZrO₂ pins bonded to drum liner Zone C, aerogel compressed between |
| Spring rate | 500 N/mm per standoff (allows drum expansion) |
| Thermal bridging | <0.5% of total heat flux (calculated) |

**Standoff thermal bridge calculation:**
Each standoff cross-section: A = π(6² - 4²) = 62.8 mm² = 6.28×10⁻⁵ m²
24 standoffs: A_total = 1.51×10⁻³ m²
Heat flux through standoffs: q_standoff = k A ΔT / L = 2.2 × 1.51×10⁻³ × (2200-200) / 0.05 = 1,325 W
Total drum area: A_drum = 2π × 0.335 × 1.2 = 2.52 m²
**Bridging fraction: 1,325 / (1,500 × 2.52) = 0.35%** — negligible

### 7.5 Aerogel Installation Procedure

1. **Drum preparation:** Zone C liner (3Y-TZP) cleaned, ZrO₂ standoff pins bonded with ceramic adhesive (ZrO₂-based, 1600°C service)
2. **Aerogel blanket cutting:** Pyrogel® XT-E cut to 1200 mm × 2100 mm (circumference + 50 mm overlap)
3. **Wrap and secure:** Blanket wrapped on drum, overlap sealed with ceramic tape (Al₂O₃-silica)
4. **Compression verification:** Gap measured at 4 azimuthal × 3 axial positions — 50 ± 2 mm
5. **Vessel lowering:** BFRP vessel lowered over drum-aerogel assembly (crane, alignment pins)
6. **Final check:** Aerogel compression uniform, no gaps >2 mm at overlaps

### 7.6 Aerogel Degradation & Replacement

- **Thermal degradation:** Polyimide-silica stable to 650°C. At vessel inner surface (~250°C), lifetime >20 years
- **Mechanical degradation:** Vibration from drum rotation (500 RPM) — aerogel blanket pre-compressed to 15% strain, no settlement observed in 10,000 hr testing
- **Moisture ingress:** Siloxane hydrophobization + N₂ purge maintains <1% moisture content
- **Replacement interval:** 5 years (inspection) / 10 years (full replacement) — aerogel blanket removable without drum removal

---
