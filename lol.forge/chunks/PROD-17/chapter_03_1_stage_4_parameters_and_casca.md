## 1. Stage 4 Parameters and Cascade Context

### 1.1 Stage Parameters Table

| Parameter | Value | Tolerance | Notes |
|---|---|---|---|
| **Stage Number** | 4 (Low-Temperature Metals) | — | Follows Stage 3 Pyrolysis (450-700°C) |
| **Temperature Range** | 420-900°C | ±3°C (tightened to ±1°C at 156-160°C for In) | Stepped ramp: 160→200→280→340→430→450°C |
| **Duration** | 25 minutes total | ±2 min | Includes ramp and dwell at each sub-stage |
| **Drum Rotation** | 400 RPM (In), 300 RPM (Sn/Bi/Pb), 400 RPM (Zn) | ±10 RPM | Variable RPM per sub-stage for optimal separation |
| **Centrifugal G-Force** | 89.2 G (at 400 RPM, r=300mm), 50.2 G (at 300 RPM) | — | Enables density stratification of molten metals |
| **Atmosphere** | N₂ at 1.5 bar + 5% H₂ reducing | ±0.1 bar | Prevents oxidation of In, Sn, Pb, Zn |
| **Induction Frequency** | 50 kHz (Zone 3-4) | — | Optimal skin depth for Zn/Pb/Sn/In particles |
| **Induction Power** | 80 kW peak (Zone 3-4) | ±5 kW | Selective heating of metal particles in solid Al/Cu/Fe matrix |
| **Port Configuration** | Port 4 (12 mm aperture, 300 mm radius) | — | Thermal-actuated Ti₃AlC₂/ZrO₂ valve, PEEK CF40 return spring |
| **Feedstock Input** | ~50 kg/batch (Stage 3 output: char, slag, metal particles) | ±5 kg | From PROD-16 Stage 3 output + residual metals from PROD-13 Categories A-D |
| **Primary Outputs** | In-rich slug, Sn/Pb/Bi solder alloys, Zn dust, Pb bullion, dross to Stage 7 | — | Downstream: FOLLOW-14 (In refining), PROD-19 (Cu/PM) |
| **Safety Class** | SIL-2 (Pb fume, In toxicity, Zn vapor) | — | HEPA + carbon filtration, N₂ inerting, continuous monitoring |

### 1.2 Stage 4 in Cascade Context

```
THERMAL CASCADE — STAGE 4 POSITION
════════════════════════════════════════════════════════════════════════════════

STAGE 3 (PROD-16)                          STAGE 4 (THIS DOCUMENT)                    STAGE 5 (PROD-18)
Pyrolysis & Char                            Low-Temp Metals (Pb/Sn/Zn/In)              Aluminum Window
450-700°C, 45 min                           420-900°C, 25 min                            660-720°C, 30 min
                                              ▼                                              ▼
         ┌─────────────────────────────────────────────────────────────────────────────┐
         │                                                                             │
         │    FEEDSTOCK FROM STAGE 3:                                                  │
         │    • Activated char (C >80%, SA >800 m²/g) → Stage 4 flux + Stage 1 ads.   │
         │    • Pyrolysis slag (CaO, SiO₂, glass fibers, REE oxides) → Stage 7        │
         │    • Metal particles: Pb, Sn, Zn, In, Bi, Au, Ag, Pd (embedded in char)    │
         │    • Residual organics (tar, PAH) → gas management (PROD-07)               │
         │                                                                             │
         │    STAGE 4 PROCESS:                                                         │
         │    ┌─────────────────────────────────────────────────────────────────────┐  │
         │    │ STEP 1 (160°C, 5 min): In liquefies alone — centrifuges to Port 4A │  │
         │    │ STEP 2 (200°C, 3 min): Sn-Pb eutectic (183°C) → Port 4B             │  │
         │    │ STEP 3 (280°C, 3 min): Bi (271°C) + Sn (232°C) → Port 4B           │  │
         │    │ STEP 4 (340°C, 3 min): Pb (327°C) → Port 4C                        │  │
         │    │ STEP 5 (430°C, 10 min): Zn (420°C) + Zamak → Port 4C               │  │
         │    │ STEP 6 (450-660°C): Ramp to Stage 5 — Al remains solid             │  │
         │    └─────────────────────────────────────────────────────────────────────┘  │
         │                                                                             │
         │    OUTPUTS:                                                                 │
         │    • In-rich slug → Electrodeposition (FOLLOW-14) → 99.9% In → YInMn       │
         │    • Sn/Pb/Bi solder ingots → Commercial sale / internal tooling           │
         │    • Zn dust → Zinc oxide / galvanizing feedstock                          │
         │    • Pb bullion → Battery recycling / radiation shielding                  │
         │    • Dross (oxides, flux residue, Au/Ag/Pd) → Stage 6 (PROD-19)           │
         │    • Activated char consumed as flux → Stage 4 residue to Stage 7         │
         │                                                                             │
         └─────────────────────────────────────────────────────────────────────────────┘

PHYSICAL SEPARATION PRINCIPLE:
• Melting point sequence: In (156.6) < Sn (231.9) < Bi (271.5) < Pb (327.5) < Zn (419.5) < Al (660.3)
• At each melting point, ONLY that metal liquefies — others remain solid
• Centrifugal force (300-400 RPM, G=50-89) drives molten metal radially outward
• Thermal-actuated Port 4 valves (Ti₃AlC₂/ZrO₂) open at precise temperature setpoints
• N₂/H₂ reducing atmosphere prevents oxidation; Na₂CO₃ flux scavenges residual oxygen
• Precious metals (Au, Ag, Pd) partition into In/Sn melt → recovered in Stage 6 (PROD-19)
```

### 1.3 Feedstock Composition from Upstream Stages

| Feedstock Source | Mass per 500 kg Batch | Composition Relevant to Stage 4 | Reference |
|---|---|---|---|
| **Stage 3 Char/Slag (PROD-16)** | 80-150 kg | Metal particles embedded in char matrix: Pb 15-40 kg, Sn 8-25 kg, Zn 5-15 kg, In 0.5-3 kg, Au 100-400 g, Ag 1-5 kg, Pd 50-200 g | PROD-16 Section 8, 11 |
| **Category A: PCBs/Electronics (PROD-13)** | 150-200 kg | High Cu, Au, Ag, Pd; Sn/Pb solder; ITO glass (In); Ni, Fe | PROD-13 Table 2 |
| **Category B: Mixed Plastics (PROD-13)** | 100-150 kg | Low metal content; residual Sn/Pb from wire insulation | PROD-13 Table 3 |
| **Category C: Metals/Appliances (PROD-13)** | 100-150 kg | Zn die-cast (Zamak), galvanized steel, Pb-acid battery plates | PROD-13 Table 4 |
| **Category D: Construction/Demo (PROD-13)** | 50-100 kg | Low metal; mineral residue dominates | PROD-13 Table 5 |
| **Phoenix Protocol Returns (PROD-22)** | 10-30 kg | YInMn Blue pigment (In, Y), CoAl₂O₄ (Co), KNbO₃ (Nb), 3Y-TZP (Y, Zr) | PROD-22, Part V |

**Total Estimated Metal Content per 500 kg Batch (Stage 4 Recoverable):**
- Lead (Pb): 25-55 kg (from solder, batteries, wheel weights)
- Tin (Sn): 12-30 kg (from solder, plating, alloys)
- Zinc (Zn): 10-25 kg (from die-cast, galvanizing)
- Indium (In): 1-5 kg (from ITO coatings, LCD panels — CRITICAL MINERAL)
- Bismuth (Bi): 1-5 kg (from fusible alloys, cosmetics)
- Gold (Au): 100-500 g (partitioning into In/Sn melt)
- Silver (Ag): 1-8 kg (partitioning into In/Sn melt)
- Palladium (Pd): 50-300 g (partitioning into In/Sn melt)

---
