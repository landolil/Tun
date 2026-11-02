## 4. Aluminum Alloy Fractionation

### 4.1 Fractionation Strategy

The Stage 5 output is a **mixed aluminum alloy slug** (85-97% Al, 1-8% Si, 0.5-3% Cu, 0.3-1.5% Mg). Downstream refining (PROD-112, FOLLOW-20) separates this into two primary product streams:

| Product Stream | Target Composition | Source Alloys | Application |
|---|---|---|---|
| **Wrought Al (Remelt)** | Al >99.7%, Si <0.15%, Fe <0.2%, Mg <0.1%, Cu <0.05% | 1xxx, 3xxx, 5xxx, 6061 (low Cu), clean 6063 | Extrusion billet, rolling slab, wire rod |
| **Cast Al (Secondary)** | Al 88-92%, Si 5-12%, Cu 1-3%, Mg 0.3-0.5% | A380, A356, 319, 7075 (high Si/Cu) | Die-casting, sand casting, tooling |

**Fractionation Method:** **Sequential Port 5 Collection by Temperature Ramp**
- 660-680°C: Early melt = lowest liquidus alloys (A380, A356, 5xxx) — higher Si/Mg
- 680-700°C: Mid-range = 6061, 6063, 3xxx — moderate Mg/Si
- 700-720°C: Late melt = pure Al, 1xxx, clean 6063 — highest purity
- **Each 5-minute temperature band collected to separate ZrO₂ mold position**

### 4.2 Wrought vs Cast Separation Logic

| Criterion | Wrought Stream | Cast Stream |
|---|---|---|
| **Si content** | <0.15% | 5-12% |
| **Fe content** | <0.20% | 0.2-0.8% |
| **Cu content** | <0.05% | 0.5-3% |
| **Mg content** | <0.10% | 0.3-0.5% |
| **Primary source** | Extrusions, wire, foil, sheet | Die-cast, engine parts, housings |
| **Downstream** | Homogenize → DC cast → extrude | Direct remelt → die-cast/sand cast |
| **Value** | $2.50-3.00/kg | $1.80-2.20/kg |

**Separation Control:**
- Inline XRF at Port 5 exit — real-time Si, Fe, Cu, Mg
- Temperature band assignment logged per mold position
- Post-batch assay of each slug confirms fractionation

### 4.3 Thermodynamic Basis for Fractionation

The sequential melting of Al alloys follows their **liquidus temperatures**:

| Alloy | Liquidus (°C) | Collection Window | Mold Position |
|---|---|---|---|
| A380 (Si 8.5%, Cu 3.5%) | 577 | 660-670°C (early) | 1-2 |
| A356 (Si 7%, Mg 0.35%) | 613 | 665-675°C | 2 |
| 5xxx (Mg 3-5%) | 630-650 | 670-680°C | 2-3 |
| 6061 (Mg 1%, Si 0.6%) | 652 | 675-685°C | 3 |
| 6063 (Mg 0.7%, Si 0.4%) | 655 | 680-690°C | 3-4 |
| 1xxx (pure Al) | 660 | 685-700°C | 4 |
| 3xxx (Mn 1%) | 655-660 | 690-705°C | 4-5 |
| 7075 (Zn 5.6%, Mg 2.5%, Cu 1.6%) | 635 | 670-680°C (but Zn removed) | — |

**Note:** 7075 and other Zn-containing alloys have Zn removed in Stage 4, so their liquidus shifts. The remaining Al-Cu-Mg system melts in the 670-690°C range.

### 4.4 Fractionation by Impurity Segregation

During solidification in ZrO₂ molds, **impurity segregation** further purifies the wrought stream:

**Scheil Equation (non-equilibrium solidification):**
$$C_s = k C_0 (1 - f_s)^{k-1}$$
Where C_s = solid composition, C_0 = initial composition, f_s = fraction solidified, k = partition coefficient.

| Impurity | Partition Coefficient (k) | Segregation Behavior |
|---|---|---|
| Si | 0.12 | Strongly rejected to liquid — last 10% of solid has 8× bulk Si |
| Fe | 0.03 | Extremely rejected — forms FeAl₃ in interdendritic regions |
| Cu | 0.17 | Rejected — enriches in last-to-freeze zones |
| Mg | 0.35 | Moderately rejected |
| Mn | 0.45 | Mildly rejected |

**Practical Application:** Wrought slugs (Positions 4-5) are cast with **directional solidification** (bottom chill plate at -150°C N₂ quench). The first 80% of solidification produces Al with <0.05% Si, <0.1% Fe, <0.02% Cu. The last 20% (high-impurity zone) is cropped and recycled to cast stream.

### 4.5 Real-Time Fractionation Control Algorithm

```
FOR each 5-min temperature band in [660-665, 665-670, 670-675, 675-680, 
                                     680-685, 685-690, 690-695, 695-700, 
                                     700-705, 705-710, 710-715, 715-720]:
    1. READ XRF (Si, Fe, Cu, Mg, Mn)
    2. CALCULATE predicted final composition after solidification
       (using Scheil model with measured cooling rate)
    3. ASSIGN mold position:
       IF Si_pred < 0.15% AND Fe_pred < 0.2% AND Cu_pred < 0.05%:
           Position = NEXT_WROUGHT_POSITION
       ELSE:
           Position = NEXT_CAST_POSITION
    4. LOG assignment (timestamp, temperature, XRF, prediction)
    5. DIVERT Port 5 flow to assigned ZrO₂ mold (rotary carousel)
ENDFOR

WROUGHT_POSITIONS = [1, 2, 3, 4]   # 4 molds for wrought
CAST_POSITIONS = [5, 6, 7, 8]      # 4 molds for cast
```

### 4.6 Downstream Refining Requirements

| Stream | Refining Step | Purpose | Energy |
|---|---|---|---|
| **Wrought** | Homogenization (550°C, 8h) | Eliminate microsegregation | 50 kWh/ton |
|  | DC Casting | Produce 200 mm billets | 80 kWh/ton |
|  | Scalping/Hot Rolling | Remove surface defects | 120 kWh/ton |
| **Cast** | Remelt + Flux | Remove oxides, adjust Si | 30 kWh/ton |
|  | Die/Sand Casting | Near-net shape parts | 40 kWh/ton |
|  | Heat Treat (T5/T6) | Mechanical properties | 60 kWh/ton |

**Total downstream energy: ~250 kWh/ton Al** — still 75% less than primary Al (1000+ kWh/ton)

---
