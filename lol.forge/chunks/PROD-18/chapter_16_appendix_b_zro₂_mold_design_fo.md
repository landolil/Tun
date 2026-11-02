## Appendix B: ZrO₂ Mold Design for Stage 5 (PROD-08 Integration)

### B.1 Mold Specifications

| Parameter | Wrought Molds (Pos 1-4) | Cast Molds (Pos 5-8) |
|---|---|---|
| **Material** | 3Y-TZP ZrO₂ (PROD-12) | 3Y-TZP ZrO₂ |
| **Chill Plate** | Copper (water-cooled) | None (insulated) |
| **Cooling Rate** | 500°C/s (N₂ quench -150°C) | 50°C/s (air) |
| **Mold Temp (pre-heat)** | 200°C | 300°C |
| **Capacity** | 8 kg Al | 12 kg Al |
| **Dimensions** | 150×150×300 mm | 200×200×300 mm |
| **Wall Thickness** | 15 mm | 20 mm |

### B.2 Thermal Cycling Performance

**Wrought Mold (3Y-TZP + Cu chill):**
- Thermal shock ΔT: 680°C → -150°C = 830°C in <10 s
- 3Y-TZP thermal shock resistance: ΔT_critical = 650°C (conservative)
- **Design margin: Cu chill absorbs 80% of heat flux, ZrO₂ sees ΔT ≈ 160°C** — safe
- Mold life: 500 cycles (inspected per PROD-08 schedule)

**Cast Mold (3Y-TZP insulated):**
- Thermal shock ΔT: 680°C → 25°C = 655°C in 60 s
- Well within 3Y-TZP capability
- Mold life: 2000 cycles

### B.3 Solidification Control

**Wrought (Directional Solidification):**
- Bottom chill: Copper plate at -150°C (liquid N₂ circulated)
- Heat extraction: 500 kW/m² → solidification front velocity 2 mm/s
- Columnar grain zone: 80% of height
- Equiaxed zone: 20% (top) — cropped

**Cast (Equiaxed Solidification):**
- Insulated walls: 5 mm ceramic fiber blanket
- Heat extraction: 50 kW/m² → solidification time 15 min
- Uniform equiaxed grains: 200-500 µm (target for cast alloys)
- No cropping needed — entire slug usable

### B.4 Mold Change Procedure

1. Carousel rotates to unload position (outside drum envelope)
2. Robotic arm extracts solidified slug (cooled to 200°C)
3. Mold cleaned by N₂ blast (removes oxide skin)
4. Mold pre-heated to 200/300°C (induction heater on carousel)
5. Carousel indexes to Port 5 position
6. **Cycle time: 3 minutes** — fits within 5-min temperature band

---
