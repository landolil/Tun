## 6. Stage 4 — Low-Temperature Metals (420-900°C): Pb, Sn, Zn, In

### 6.1 Target Metal Separation — The Indium-First Innovation

This stage spans the widest temperature range (420-900°C) because it must sequentially liberate four metals with melting points from 156°C to 420°C. The **critical CSMFAB innovation** is the *Indium-First Strategy* — exploiting indium's ultra-low melting point (156.6°C) for selective domestic recovery.

| Metal | Melting Point (°C) | Boiling Point (°C) | Typical Sources | Expected Raw Purity |
|---|---|---|---|---|
| Indium (In) | 156.6 | 2072 | ITO coatings, LCD panels, solders | 60-80% In (dilute) |
| Bismuth (Bi) | 271.5 | 1564 | Fusible alloys, cosmetics, pharmaceuticals | Variable |
| Tin (Sn) | 231.9 | 2602 | Solder (Sn60/Pb40), tin plate, PCBs | 30-60% Sn (alloyed) |
| Sn-Pb eutectic (63/37) | 183 | — | Electronic solder joints | 63% Sn / 37% Pb |
| Lead (Pb) | 327.5 | 1749 | Lead solder, batteries, wheel weights | 85-95% Pb |
| Zinc (Zn) | 419.5 | 907 | Die-cast housings, galvanized steel | 85-95% Zn |
| Zamak (Zn alloy) | 380-390 | — | Die-cast automotive, hardware | Zn/Al/Cu alloy |

**Critical separation — Indium at 156.6°C:** At its melting point, ONLY indium liquefies. All other metals (Sn 232°C, Bi 271°C, Pb 327°C, Zn 420°C, Al 660°C) remain solid. The ultra-low-temp In separation produces an indium-rich liquid at Port 4 (set to 160°C for In pass).

### 6.2 Indium First Strategy — Process Sequence

**Step 1 — In Liquefaction (155-160°C):**
- Ramp slowly: 155°C → 157°C → 160°C (1°C/min through In melting range)
- Hold at 160°C for 5 minutes
- Centrifuge at 400 RPM (G = 89.2) for 5 minutes at exact 160°C
- Port 4 opens: In-rich liquid (mixed with residual organics) discharges
- **Output:** In-rich slug (In + organics + trace Sn/Pb)

**Step 2 — Sn/Bi/Pb Eutectic Clearance (183-330°C):**
- Ramp to 200°C, hold 3 min: Sn-Pb eutectic (183°C) melts, discharges
- Ramp to 280°C, hold 3 min: Bi (271°C) + Sn (232°C) melt, discharge
- Ramp to 340°C, hold 3 min: Pb (327°C) melts, discharges
- Each sub-stage: centrifuge at 300 RPM, Port 4 opens at respective temperature

**Step 3 — Zn Separation (420-450°C):**
- Ramp to 430°C, hold 10 min: Zn (420°C) + Zamak (380°C) melt
- Centrifuge at 400 RPM, Port 4 opens at 430°C
- **Output:** Zn-rich slug (85-95% Zn)

**Step 4 — Transition to Stage 5 (450-660°C):**
- Continue ramp through 660°C (Al solidus)
- No port discharge — Al remains solid
- Zn/Pb/Sn/In fully cleared by 450°C

**Total Stage 4 time:** 25 minutes (5 + 3×3 + 10 + ramp time)

### 6.3 Downstream Refining — Indium to 99.9%

The In-rich slug from Step 1 goes to **electrodeposition refining** (CSMFAB downstream):
- Electrolyte: In₂(SO₄)₃ in H₂SO₄, 50°C
- Cathode: Stainless steel, Anode: In-rich slug
- Current density: 10-20 mA/cm²
- Product: 99.9% In cathode deposit
- **Feeds YInMn Blue production directly!**

This makes Aegis-Forge I a **domestic Indium recovery machine** — reducing critical mineral dependency for strategic materials.

### 6.4 Induction Selectivity for Stage 4 Metals

At 420-660°C (Zn melting range):
- Zinc: ρ = 5.96×10⁻⁸ Ω·m → excellent induction coupling
- Lead: ρ = 2.0×10⁻⁷ Ω·m → good induction coupling
- Aluminum: still solid (Tm = 660°C) → provides "solid matrix" for metal particle suspension

**Induction parameters (50 kHz, 80 kW, Zone 3-4):** Specifically heats Zn/Pb/Sn/In particles within the solid Al/Cu/Fe matrix. The melt pools at metal grain locations, coalesces under G-force, and drains outward.

**Skin depths at 50 kHz, 500°C:**
- Zn: δ ≈ 0.35 mm
- Pb: δ ≈ 0.65 mm
- Sn: δ ≈ 0.55 mm
- In: δ ≈ 0.60 mm
- Al (solid): δ ≈ 1.2 mm (but no eddy currents in solid state at this T)

### 6.5 Stage 4 Control Parameters

| Parameter | Setpoint | Tolerance | Sensor |
|---|---|---|---|
| Drum temperature | 160→450°C (stepped) | ±3°C (tighter for In) | FBG Zone 4 |
| Drum rotation | 400 RPM (In), 300 RPM (others) | ±10 RPM | Optical encoder |
| N₂ pressure | 1.5 bar | ±0.1 bar | Pressure transducer |
| Port 4 mass flow | Monitor per sub-stage | <1% peak = clear | Coriolis flowmeter |
| In slug composition | Target >60% In | XRF spot-check | Inline XRF (Port 4) |

---

