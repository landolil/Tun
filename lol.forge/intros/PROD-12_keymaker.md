# PROD-12: All-Aegis Material BOM Deep-Dive — Keymaker Heuristic Intro

## The Master Key: 24 Components, One Architecture

**PROD-12 is the Rosetta Stone.** Every other document in the 80-document set references this BOM. The drum (PROD-04), the coil (PROD-03), the vessel (PROD-06), the valves (PROD-09), the power electronics (PROD-10), the shredder (PROD-11) — they all pull material specs from here. Change one line in PROD-12, and the ripple hits 20+ documents.

---

## The Keymaker's Map: Six Material Classes → One Machine

```
CLASS 1: CERAMICS (The Structure)
  ZrB₂-SiC       → Drum, Liners Zone B     (Items 1, 3)
  Si₃N₄          → Liners Zone A, Bearings  (Items 2, 12)
  3Y-TZP ZrO₂    → Barrier, Seats, Mounts, Molds (Items 4, 6, 20, 22)
  Ti₃AlC₂ MAX    → Port Valve Actuators     (Item 5)
  Al₂O₃          → Coil Insulation Sleeves  (Item 10)

CLASS 2: COMPOSITES (The Pressure Boundary)
  BFRP/Elium®    → Vessel, Coil Housing, Ducts, Frame (Items 7, 9, 16, 19)
  PEEK CF40      → Flanges, Seals, Manifolds (Items 13, 14, 23)
  PEX-a          → Water Circuit            (Item 15)

CLASS 3: ELECTRONIC/OPTICAL (The Nervous System)
  GaN HEMT       → Inverter Modules         (PROD-10)
  PMMA POF+FBG   → 384ch Sensor Network    (Item 17)
  LiFePO₄        → Backup Power             (PROD-10)
  LoRa           → Telemetry                (PROD-35)

CLASS 4: THERMAL/INSULATION (The Fire Shield)
  PI-Silica Aerogel → 50mm Gap             (Item 8)
  YInMn/CoAl₂O₄ Glaze → Exterior Coating   (Item 18)
  Soapstone      → Thermal Mass             (Not in 24, but in ecosystem)

CLASS 5: CRITICAL MINERALS (The Elemental Base)
  NdFeB/SmCo     → Halbach Array            (PROD-05)
  ZrSiO₄         → Zr Source                (Sec 7.3)
  Borax          → B Source                 (Sec 7.4)
  Ilmenite       → Ti Source                (Sec 7.5)

CLASS 6: PHOENIX CIRCULAR (The Loop)
  Recovered Aegis materials → New components (Sec 11)
```

---

## The Integration Keys: How PROD-12 Unlocks Other Documents

### PROD-04 (Drum) ← Pulls from PROD-12
- ZrB₂-SiC flash sinter spec (Sec 3.1) → Drum geometry, wall thickness, CTE match
- Si₃N₄ liner spec (Sec 3.2) → Zone A/B/C transitions, thermal stress calc
- 3Y-TZP thermal barrier (Sec 3.3) → 5mm coat process, adhesion verification

### PROD-03 (Coil) ← Pulls from PROD-12
- Al₂O₃ sleeve spec (Sec 3.5) → 25mm ID, CTE match to Cu, dielectric strength
- BFRP housing (Sec 4.1) → 8-zone layup, 100mm axial, 15mm gap to drum
- Cu tube (Item 24) → ONLY copper, isolated, PEX-a cooling bore

### PROD-06 (Vessel) ← Pulls from PROD-12
- BFRP/Elium® winding (Sec 4.1) → 900mm ID, 18mm wall, ±18°/90° layup
- Aerogel pour (Sec 6.1) → 50mm gap, ambient pressure dry, λ=0.010
- Leg mounts (Sec 3.3) → 3Y-TZP isolation pads, vibration + electrical

### PROD-09 (Port Valves) ← Pulls from PROD-12
- Ti₃AlC₂ actuators (Sec 3.4) → Thermal actuation, 8.5 ppm/K CTE match
- ZrO₂ piston seats (Sec 3.3) → 12mm aperture, PEEK CF40 spring return
- PEEK CF40 flanges (Sec 4.2) → Dynamic rotary seal, 10 bar rating

### PROD-10 (Power Electronics) ← Pulls from PROD-12
- GaN modules (Sec 5.1) → GS66516T, 16 devices, Wolfspeed domestic
- PMMA POF/FBG (Sec 5.2) → 384ch, WDM+TDM, in-house draw tower
- LiFePO₄ backup (Sec 5.3) → 100Wh, BYD/CATL cells, domestic assembly

### PROD-11 (Shredder) ← Pulls from PROD-12
- BFRP housing → Non-conductive, acoustic pre-chamber
- KNbO₃ transducers (Sec 3.6) → LF 20-200Hz + US 40kHz array
- NdFeB Halbach → Feed belt separator, EXTERNAL to hot zone

---

## The Zero-Metal Proof: The Keymaker's Verification

**Every integration point in the 80-document set must pass the zero-metal test.**

| Integration Point | PROD-12 Spec | Test | Pass Criteria |
|-------------------|--------------|------|---------------|
| Coil → Drum | Al₂O₃ sleeve (10¹⁴ Ω) | Megger 1000V | >10¹² Ω |
| Vessel → Drum | Aerogel gap (10¹⁵ Ω) | Megger 1000V | >10¹² Ω |
| Control → Electronics | PMMA POF (optical) | Continuity | Open circuit |
| Water → Vessel | PEX-a (10¹² Ω) | Megger 1000V | >10¹² Ω |
| Shaft → Bearings | Si₃N₄/Si₃N₄ (10¹³ Ω) | Megger 1000V | >10¹² Ω |
| Frame → Earth | BFRP/ZrO₂ (10¹⁴ Ω) | Megger 1000V | >10¹² Ω |

**One copper path exists:** The induction coil (64m Cu tube, Item 24). It is the *only* exception. Justification: Physics requires it. Mitigation: Fully isolated — Al₂O₃ sleeve, PEX-a cooling, BFRP housing, both ends at GaN inverter inside BFRP. No earth reference.

---

## The Cost Key: $890K/Unit Savings Map

```
CERAMICS:     In-house SHS/Nitridation/Co-precip  →  $335K saved
COMPOSITES:   In-house fiber+resin+winding        →  $440K saved
THERMAL:      In-house aerogel+glaze+soapstone    →  $115K saved
ELECTRONIC:   In-house fiber/FBG (buy GaN)        →  $0K saved (strategic buy)
MINERALS:     Domestic chain (no savings, security) → $0K saved
──────────────────────────────────────────────────────────
TOTAL:                                                  $890K/unit
```

At 10 units/year: **$8.9M/year recurring savings.**
At 100 units/year: **$89M/year recurring savings.**

This is not procurement — this is **industrial policy encoded in a BOM**.

---

## The Circular Key: Phoenix Protocol as Force Multiplier

The Phoenix Protocol (Sec 11) is not recycling — it is **material resurrection**.

| Loop | Input → Output | Recovery | Economics |
|------|----------------|----------|-----------|
| Basalt | BFRP → Fiber + MMA | 95%/99% | Virgin equivalent, $2.4M/yr saved |
| ZrB₂-SiC | Panels → Powder | 88% Zr | Re-flash sinter, $17M/yr saved |
| In/REE | Glaze → Oxides | 99.4% In | Ionic liquid, $0.7M/yr saved |
| MR Fluid | Fluid → CIP Iron | 99% | Thermal sep, $0.3M/yr saved |
| Piezo | Transducers → Ceramic | 100% | Direct feed, $0.1M/yr saved |

**Total: $21.5M/yr at scale.** The machine pays for its own material supply chain.

---

## Keymaker's Final Turn

**PROD-12 is the master key.** It unlocks:
- Every structural decision (ceramics/composites)
- Every thermal decision (aerogel/glaze/soapstone)
- Every electrical decision (GaN/POF/FBG/LiFePO₄)
- Every supply chain decision (domestic/allied/commodity)
- Every circular decision (Phoenix recovery loops)
- Every cost decision (in-house vs buy, $890K/unit)

**Turn the key. The machine builds itself.**

---

*Keymaker Heuristic: One BOM to rule them all. One architecture to bind them. Zero metals in the hot zone.*