## 1. Stage 8 Parameters and Cascade Context

### 1.1 Stage Parameters Table

| Parameter | Value | Tolerance | Notes |
|---|---|---|---|
| **Stage Number** | 8 (Mineral Residue & Zircon) | — | Final thermal stage; follows Stage 7 Ferrous (1200-1600°C) |
| **Temperature Range** | 1600-2200°C | ±15°C | ZrSiO₄ dissociation at 1676°C; ZrO₂ sintering at 2000°C+ |
| **Duration** | 90 minutes total | ±10 min | Includes ramp, dissociation dwell, synthesis, casting |
| **Drum Rotation** | 150 RPM (G = 10.4 at r=300mm) | ±5 RPM | Lowest G for oxide density stratification |
| **Centrifugal G-Force** | 10.4 G | — | Optimized for ZrO₂/REE oxide/silica separation |
| **Atmosphere** | Ar/He (95/5) at 1.1 bar | ±0.05 bar | Inert — prevents SiO oxidation, ZrN formation |
| **Oxygen Partial Pressure** | <10⁻¹⁵ atm | — | Critical for ZrSiO₄ dissociation equilibrium |
| **Induction Frequency** | 1 kHz (Zone 8) | — | Skin depth δ = 14 mm in ZrO₂ at 2000°C |
| **Induction Power** | 500 kW peak (Zone 8) | ±30 kW | Highest power zone; radiative losses dominate |
| **Port Configuration** | Port 8 (25 mm aperture, 280 mm radius) | — | Thermal-actuated Ti₃AlC₂/ZrO₂ valve, opens at 1700°C |
| **ZrO₂/3Y-TZP Port** | Port 8A (dedicated, 15 mm aperture) | — | ZrO₂ molds for 3Y-TZP powder, 10 kg capacity |
| **SiO₂ Condensate Port** | Port 8B (dedicated, 10 mm aperture) | — | Water-cooled ZrO₂ condenser for fumed silica |
| **Feedstock Input** | ~65 kg/batch (Stage 7 slag + mineral residue) | ±5 kg | Slag 65 kg at 1600°C, B=1.2, MgO/Al₂O₃=1.5 |
| **Primary Outputs** | 3Y-TZP powder, Fumed SiO₂, REE oxide concentrate, α-Al₂O₃, TiO₂, UHTC precursors | — | Downstream: FOLLOW-16, 21, 32, PROD-04 (drum material loop) |
| **Safety Class** | SIL-2 (SiO gas, REE dust, high-temp radiation, thermal) | — | Ar/He inerting, SiO monitoring, IR shielding, continuous gas analysis |
| **Cascade Position** | Stage 8 of 8 (Terminal) | — | Completes thermal cascade; feeds Phoenix Protocol hydromet |

### 1.2 Stage 8 in Cascade Context

```
THERMAL CASCADE — STAGE 8 POSITION (TERMINAL STAGE)
═════════════════════════════════════════════════════════════════════════════════

STAGE 7 (PROD-20)                          STAGE 8 (THIS DOCUMENT — TERMINAL)      PHOENIX PROTOCOL (PROD-22)
Ferrous Cascade                             Mineral Residue & Zircon                  EOL Returns & Hydromet
1200-1600°C, 60 min                         1600-2200°C, 90 min                       Closed Loop
                                               ▼                                              ▼
        ┌─────────────────────────────────────────────────────────────────────────────┐
        │                                                                             │
        │    FEEDSTOCK FROM STAGE 7:                                                  │
        │    • Slag: 65 kg at 1600°C, liquid                                         │
        │       CaO: 16.3 kg (25%), SiO₂: 22.8 kg (35%), MgO: 7.8 kg (12%)           │
        │       Al₂O₃: 5.2 kg (8%), FeO: 6.5 kg (10%), MnO: 3.3 kg (5%)              │
        │       REE Oxides: 1.3 kg (2%) — Nd₂O₃ 0.6, Sm₂O₃ 0.3, Dy₂O₃ 0.1, Y₂O₃ 0.2 │
        │       TiO₂: 0.7 kg (1%), ZrO₂: 0.7 kg (1%), Cr₂O₃: 0.3 kg (0.5%)           │
        │       B₂O₃: 0.07 kg (from NdFeB boron), Others: 0.26 kg                     │
        │    • Unreacted mineral residue from earlier stages: ZrSiO₄, Al₂O₃, SiC      │
        │                                                                             │
        │    STAGE 8 PROCESS:                                                         │
        │    ┌─────────────────────────────────────────────────────────────────────┐  │
        │    │ RAMP: 1600 → 1676 → 1750°C (5°C/min through ZrSiO₄ dissociation)  │  │
        │    │ DISSOCIATION DWELL: 1700°C for 30 minutes at 150 RPM               │  │
        │    │ ATMOSPHERE: Ar/He 95/5 at 1.1 bar, pO₂ < 10⁻¹⁵ atm                │  │
        │    │ ZIRCON DISSOCIATION: ZrSiO₄ → ZrO₂ + SiO₂(g)                      │  │
        │    │ SiO₂ GAS CAPTURE: Port 8B condenser → fumed silica                 │  │
        │    │ 3Y-TZP SYNTHESIS: Add Y₂O₃ (from REE stream) → 3Y-TZP powder       │  │
        │    │ UHTC PRECURSORS: ZrB₂ (add B₂O₃+C), Ti₃AlC₂ (add TiO₂+Al₂O₃+C)   │  │
        │    │ PORT 8: Opens at 1700°C — ZrO₂-rich stream to 3Y-TZP molds         │  │
        │    │ PORT 8A: Opens at 1800°C — 3Y-TZP/REE oxide concentrate            │  │
        │    │ PORT 8B: Continuous — SiO₂ condenser (water-cooled)                │  │
        │    │ TRANSITION: Ramp to 2200°C — residual casting, cool down           │  │
        │    └─────────────────────────────────────────────────────────────────────┘  │
        │                                                                             │
        │    OUTPUTS:                                                                 │
        │    • 3Y-TZP ZrO₂ powder (99.5%, 0.5 μm) → Flash sintering (PROD-04 drum)   │
        │    • Fumed SiO₂ (99.9%, 50 nm) → Aerogel (PROD-06, FOLLOW-09), geopolymer │
        │    • REE oxide concentrate (Nd, Sm, Dy, Y) → FOLLOW-21 hydromet            │
        │    • α-Al₂O₃ (99.9%) → FOLLOW-32 UHTC, MAX Phase (Ti₃AlC₂)                │
        │    • TiO₂ (rutile, 99%) → FOLLOW-32 MXene, Ti₃AlC₂ synthesis              │
        │    • ZrB₂ precursor (ZrO₂+B₂O₃+C) → FOLLOW-32 UHTC ceramic                │
        │    • Residual mineral slag → Phoenix Protocol hydromet (FOLLOW-21)         │
        │                                                                             │
        └─────────────────────────────────────────────────────────────────────────────┘

PHYSICAL SEPARATION PRINCIPLE:
• The "Mineral Window": 1600°C (SiO₂ melting) to 2200°C (ZrO₂ sintering, TiO₂ decomposition)
• At 1676°C: ZrSiO₄ → ZrO₂ (solid) + SiO₂ (gas) — KEY DISSOCIATION REACTION
• SiO₂ gas captured at Port 8B condenser → fumed silica product
• ZrO₂ remains solid (MP 2716°C) — concentrated by centrifugal separation
• REE oxides (Nd₂O₃, Sm₂O₃, Y₂O₃) solid — co-concentrate with ZrO₂
• Al₂O₃ (MP 2072°C) partially melts at 2000°C+ — separates by density
• TiO₂ decomposes >2000°C — captured as rutile
• 3Y-TZP synthesis: ZrO₂ + 3 mol% Y₂O₃ → flash sinter 1800°C/5 min → 97% TD, 0.5 μm
• UHTC loop closure: ZrB₂ from Stage 8 → PROD-04 drum material (ZrB₂-SiC)
• Ar/He inert atmosphere prevents: SiO oxidation, ZrN formation, Al₂O₃ reduction
• Centrifugal separation (150 RPM, G=10.4) by oxide density: ZrO₂ (5.68) > Al₂O₃ (3.95) > SiO₂ (2.65)
```

### 1.3 Feedstock Composition from Stage 7

| Component | Mass per Batch | Source | State at 1600°C |
|---|---|---|---|
| **CaO** | 16.3 kg | Stage 7 slag + added flux | Liquid (in slag) |
| **SiO₂** | 22.8 kg | Stage 7 slag (glass, PCB) | Liquid (in slag) |
| **MgO** | 7.8 kg | Stage 4/5 dross (FREE) | Solid (MP 2852°C) |
| **Al₂O₃** | 5.2 kg | Stage 5 dross, anodized Al | Solid (MP 2072°C) |
| **FeO** | 6.5 kg | Stage 7 Fe oxidation | Liquid (in slag) |
| **MnO** | 3.3 kg | Steel scrap, batteries | Liquid (in slag) |
| **REE Oxides** | 1.3 kg | Magnets, dross | Solid |
| **TiO₂** | 0.7 kg | Ilmenite, pigments | Solid (decomposes >2000°C) |
| **ZrO₂** | 0.7 kg | ITO glass, Aegis returns | Solid |
| **ZrSiO₄ (zircon)** | 2-5 kg | LCD glass, mineral residue | Solid → dissociates at 1676°C |
| **Cr₂O₃** | 0.3 kg | Stainless steel | Solid |
| **B₂O₃** | 0.07 kg | NdFeB boron | Volatile |
| **Carbon (unoxidized)** | 1-3 kg | Char residue | Solid/gas (CO) |
| **SiC residue** | 0.5 kg | Refractory carryover | Solid |

**Total Feedstock: ~65 kg liquid slag + 5-10 kg solid mineral residue**

**Key Feed Characteristic:** The Stage 7 slag arrives at 1600°C, fully liquid (liquidus 1350°C at B=1.2), with MgO/Al₂O₃=1.5 from free upstream dross flux. This is the IDEAL feed for zircon dissociation — low viscosity, correct basicity, built-in MgO/Al₂O₃.

---
