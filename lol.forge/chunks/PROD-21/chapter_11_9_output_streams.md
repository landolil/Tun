## 9. Output Streams

### 9.1 Stream Summary Table

| Stream | Port | Temp (°C) | Mass/Batch | Composition | Downstream |
|---|---|---|---|---|---|
| **3Y-TZP Powder** | 8A | 1800→25 | 3.2 kg | ZrO₂ 94.8%, Y₂O₃ 5.2%, 0.5 μm | Flash sinter → PROD-04 drum, parts |
| **Fumed SiO₂** | 8B | 50 | 1.35 kg | SiO₂ 99.9%, 50 nm, 200 m²/g | Aerogel (FOLLOW-09), geopolymer, sale |
| **REE Oxide Concentrate** | 8A (final) | 1600 | 1.5 kg | Nd/Sm/Dy/Y oxides, Al₂O₃, TiO₂ | FOLLOW-21 hydromet → FOLLOW-33 magnets |
| **α-Al₂O₃** | 8A (final) | 1600 | 5 kg | Al₂O₃ 99.9% | MAX Phase (FOLLOW-32), abrasives |
| **TiO₂ (rutile)** | 8A (final) | 1600 | 2 kg | TiO₂ 99% | MXene (FOLLOW-32), Ti₃AlC₂ |
| **ZrB₂ Precursor** | 8A (final) | 1800 | 2 kg | ZrO₂+B₂O₃+C mix | FOLLOW-32 carbothermal → ZrB₂ |
| **Residual Slag** | — | 1600 | 15 kg | CaO-SiO₂-MgO-FeO-MnO | Phoenix Protocol stockpile |

### 9.2 Mass Balance per 500 kg Batch

```
MASS BALANCE — STAGE 8 (Terminal Stage, per 500 kg Mixed Feedstock)
═════════════════════════════════════════════════════════════════════════════════

INPUT (from Stage 7 slag + mineral residue):
├── Stage 7 slag: 65 kg at 1600°C
│   ├── CaO: 16.3 kg, SiO₂: 22.8 kg, MgO: 7.8 kg, Al₂O₃: 5.2 kg
│   ├── FeO: 6.5 kg, MnO: 3.3 kg, REE Oxides: 1.3 kg
│   ├── TiO₂: 0.7 kg, ZrO₂: 0.7 kg, Cr₂O₃: 0.3 kg, B₂O₃: 0.07 kg
├── Mineral residue (ZrSiO₄, Al₂O₃, SiC, etc.): 5 kg
│   ├── ZrSiO₄: 3 kg, Al₂O₃: 2 kg, SiC: 0.5 kg, Carbon: 1 kg
└── TOTAL INPUT: 70 kg

STAGE 8 PROCESSING:
├── Ar/He atmosphere: mass negligible
├── Y₂O₃ addition (for 3Y-TZP): +0.17 kg
├── B₂O₃ addition (for ZrB₂): +0.5 kg (supplemental)
├── Carbon addition (carbothermal): +2 kg (supplemental char)
└── Net processing: 72.67 kg

OUTPUTS:
├── 3Y-TZP Powder (Port 8A): 3.2 kg
│   └── ZrO₂: 3.04 kg, Y₂O₃: 0.16 kg
├── Fumed SiO₂ (Port 8B): 1.35 kg
│   └── SiO₂: 1.34 kg (99.9%)
├── REE Oxide Concentrate (Port 8A final): 1.5 kg
│   └── Nd₂O₃: 0.6, Sm₂O₃: 0.3, Dy₂O₃: 0.1, Y₂O₃: 0.2, Al₂O₃: 0.2, TiO₂: 0.1
├── α-Al₂O₃ (Port 8A final): 5.0 kg
│   └── Al₂O₃: 4.95 kg
├── TiO₂ Rutile (Port 8A final): 2.0 kg
│   └── TiO₂: 1.98 kg
├── ZrB₂ Precursor Mix (Port 8A final): 2.0 kg
│   └── ZrO₂: 1.0, B₂O₃: 0.5, C: 0.5
├── Residual Slag (Drum): 15 kg
│   └── CaO: 10, SiO₂: 3, MgO: 2, FeO: 1, MnO: 0.5
├── Off-Gas: ~3 kg
│   └── CO, CO₂, SiO (trace), Ar, He
└── TOTAL OUTPUT: ~73 kg ≈ 72.67 kg ✓

MATERIAL RECOVERY:
├── Zr (as ZrO₂/ZrB₂/3Y-TZP): >99% of feed Zr
├── Si (as fumed SiO₂): >90% of feed Si (balance in slag)
├── REE (Nd, Sm, Dy, Y): >95% to concentrate
├── Al (as α-Al₂O₃): >90% to concentrate
├── Ti (as TiO₂): >90% to concentrate
└── Fe/Mn: >90% to residual slag (Phoenix stockpile)
```

---
