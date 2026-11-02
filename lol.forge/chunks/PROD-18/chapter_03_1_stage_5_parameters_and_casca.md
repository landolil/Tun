## 1. Stage 5 Parameters and Cascade Context

### 1.1 Stage Parameters Table

| Parameter | Value | Tolerance | Notes |
|---|---|---|---|
| **Stage Number** | 5 (Aluminum Window) | — | Follows Stage 4 Low-Temp Metals (420-900°C) |
| **Temperature Range** | 660-720°C | ±2°C | Narrow 60°C window — avoid Mg vaporization >720°C |
| **Duration** | 30 minutes total | ±2 min | Includes ramp, dwell, transition |
| **Drum Rotation** | 300 RPM (G = 25.1 at r=300mm) | ±5 RPM | Optimal for Al melt viscosity 1.3 mPa·s |
| **Centrifugal G-Force** | 25.1 G | — | Sufficient for Al film drainage to Port 5 |
| **Atmosphere** | N₂ at 1.5 bar | ±0.1 bar | Inert — prevents Al oxidation, HCl from residual PVC |
| **Induction Frequency** | 10 kHz (Zones 4-5) | — | Optimal skin depth for Al pieces (δ ≈ 0.9 mm at 700°C) |
| **Induction Power** | 80-150 kW/zone (Zones 4-5) | ±10 kW | Selective Al heating; Cu/Fe remain solid |
| **Port Configuration** | Port 5 (12 mm aperture, 300 mm radius) | — | Thermal-actuated Ti₃AlC₂/ZrO₂ valve, opens at 720°C |
| **Feedstock Input** | ~50 kg/batch (Stage 4 output: Al matrix + residual minerals) | ±5 kg | Al particles embedded in char/slag from PROD-13 Categories A-D |
| **Primary Outputs** | Al alloy slugs (wrought/cast fractions), dross/salt slag to Stage 7 | — | Downstream: commercial scrap, tooling, FOLLOW-20 |
| **Safety Class** | SIL-2 (Al fines explosion, HCl, thermal) | — | N₂ inerting, HEPA, continuous monitoring |

### 1.2 Stage 5 in Cascade Context

```
THERMAL CASCADE — STAGE 5 POSITION
════════════════════════════════════════════════════════════════════════════════

STAGE 4 (PROD-17)                          STAGE 5 (THIS DOCUMENT)                    STAGE 6 (PROD-19)
Low-Temp Metals (Pb/Sn/Zn/In)              Aluminum Window (660-720°C)                Copper & Precious Metals
420-900°C, 25 min                          660-720°C, 30 min                            1085-1200°C, 45 min
                                              ▼                                              ▼
         ┌─────────────────────────────────────────────────────────────────────────────┐
         │                                                                             │
         │    FEEDSTOCK FROM STAGE 4:                                                  │
         │    • Al particles (foil, wire, castings, extrusions) — now ONLY metal melt │
         │    • Char residue (activated carbon, consumed as Stage 4 flux)             │
         │    • Slag/minerals (CaO, SiO₂, glass fibers, REE oxides) — solid           │
         │    • Ferrous/Cu particles — solid (Fe Tm=1538°C, Cu Tm=1085°C)             │
         │    • All Pb, Sn, Zn, In, Bi REMOVED in Stage 4                             │
         │                                                                             │
         │    STAGE 5 PROCESS:                                                         │
         │    ┌─────────────────────────────────────────────────────────────────────┐  │
         │    │ RAMP: 450 → 660 → 680°C (5°C/min through 660°C solidus)            │  │
         │    │ DWELL: 680°C for 25 minutes at 300 RPM                              │  │
         │    │ FLUX: NaCl/KCl (50/50) + 5% Na₃AlF₆ (cryolite) injection for Mg   │  │
         │    │ PORT 5: Opens at 720°C — continuous Al stream to ZrO₂ molds        │  │
         │    │ DROSS: Mg/Al₂O₃/AlN surface layer skimmed → salt slag to Stage 7   │  │
         │    │ TRANSITION: Ramp to 1085°C (Stage 6) — Al fully cleared             │  │
         │    └─────────────────────────────────────────────────────────────────────┘  │
         │                                                                             │
         │    OUTPUTS:                                                                 │
         │    • Wrought Al slugs (6xxx, 5xxx series) — low Si/Fe, >99.7% Al         │
         │    • Cast Al slugs (A356, A380 equivalents) — 5-12% Si, for tooling      │
         │    • Dross/salt slag (MgO, Al₂O₃, NaCl, KCl, AlN) → Stage 7 (PROD-20)     │
         │    • Residual char/minerals → Stage 7                                       │
         │                                                                             │
         └─────────────────────────────────────────────────────────────────────────────┘

PHYSICAL SEPARATION PRINCIPLE:
• The "Aluminum Window": 660°C (pure Al MP) to 720°C (Mg vaporization onset)
• At 660°C: Al melts, Cu (1085°C) and Fe (1538°C) remain solid
• At 720°C: Mg vapor pressure becomes significant — UPPER BOUND
• Centrifugal force (300 RPM, G=25.1) drives molten Al film to drum wall
• Port 5 (720°C setpoint) drains continuous Al stream
• NaCl/KCl/cryolite flux selectively oxidizes Mg → MgO in dross (Mg removal)
• Al viscosity 1.3 mPa·s at 700°C — flows like water, rapid drainage
```

### 1.3 Feedstock Composition from Stage 4

| Feedstock Source | Mass per 500 kg Batch | Al Content | Key Characteristics |
|---|---|---|---|
| **Category A: PCBs/Electronics (PROD-13)** | 30-50 kg | 5-15 kg Al | Foil, heat sinks, capacitor cans, wire |
| **Category B: Mixed Plastics (PROD-13)** | 10-20 kg | 1-5 kg Al | Metallized films, packaging |
| **Category C: Metals/Appliances (PROD-13)** | 80-150 kg | 50-100 kg Al | Castings (A380, A356), extrusions (6061), sheet (5xxx) |
| **Category D: Construction/Demo (PROD-13)** | 20-40 kg | 5-15 kg Al | Window frames, siding, roofing |
| **Phoenix Protocol Returns (PROD-22)** | 5-15 kg | 2-10 kg Al | Aegis product Al components (tooling, fixtures) |
| **Stage 4 Residual Char/Slag** | 50-80 kg | Trace Al₂O₃ | Mineral residue, REE oxides |

**Total Estimated Aluminum per 500 kg Batch: 60-140 kg**

**Alloy Distribution (Typical Mixed Scrap):**
- Die-cast (A380/A356, 5-12% Si): 40-50%
- Wrought extrusions (6061/6063, Mg-Si): 20-30%
- Sheet/foil (1xxx/3xxx/5xxx, low alloy): 15-25%
- High-strength (2024/7075, Cu-Zn-Mg): 5-10%
- **Mg content: 0.3-1.5% overall — CRITICAL for flux design**

---
