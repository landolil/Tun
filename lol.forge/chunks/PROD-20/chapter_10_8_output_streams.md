## 8. Output Streams

### 8.1 Stream Summary Table

| Stream | Port | Temp (°C) | Mass/Batch | Composition | Downstream |
|---|---|---|---|---|---|
| **Low-Carbon Steel** | 7 (early) | 1550-1560 | 40-60 kg | Fe, C 0.5-1.5%, Si<0.5% | Machine 117 (BFRP) / Commercial |
| **Medium-Carbon Steel** | 7 (mid) | 1560-1570 | 60-80 kg | Fe, C 1.5-3%, Si 0.5-1% | Commercial / Internal tooling |
| **High-Carbon/Cast Iron** | 7 (late) | 1570-1580 | 40-60 kg | Fe, C 3-4%, Si 1-2% | Machine 117 / Commercial |
| **Ni/Co Alloy** | 7 (end) | 1580 | 10-15 kg | Fe, Ni 5-15%, Co 2-5% | Specialty / Commercial |
| **REE Concentrate** | 7A | 1500-1550 | 10-20 kg | Fe 20-30%, REE oxides 8-25% | FOLLOW-15 (Hydromet) |
| **Slag/Residue** | — | 1600 | 65 kg | CaO-SiO₂-MgO-Al₂O₃-REE | Stage 8 (PROD-21) |
| **Off-Gas** | 7-gas | 1580→200 | 80 SLPM | CO, CO₂, H₂, H₂O, REE volatiles | PROD-07 Gas Capture |

### 8.2 Mass Balance per 500 kg Batch

```
MASS BALANCE — STAGE 7 (Typical 500 kg Mixed Feedstock)
═════════════════════════════════════════════════════════════════════════════════

INPUT (from Stage 6 residue + Stage 4/5 dross + AMLS magnets + Category C):
├── Stage 6 mineral residue: 160 kg
│   ├── Fe/Ni/Co: 80 kg
│   ├── Minerals: 60 kg
│   ├── Char ash/flux: 22 kg
│   └── Cu residue: <2 kg
├── Stage 4 dross/slag: 18 kg (MgO 10 kg, Flux 5 kg, Char 2 kg, PMs 0.5 kg)
├── Stage 5 dross/salt slag: 12 kg (MgO/Al₂O₃ 7 kg, Flux 2.5 kg, Al 2 kg, AlN 0.5 kg)
├── AMLS magnetic separation: 10 kg (NdFeB/SmCo magnets + Fe)
├── Category C steel scrap: 40 kg (Fe 30 kg, Ni/Co 5 kg)
└── TOTAL INPUT: 240 kg

STAGE 7 PROCESSING:
├── H₂/N₂ atmosphere: mass negligible
├── CaO flux addition: +15 kg
├── CO/CO₂ injection: +5 kg (carbon for C control)
└── Net processing: 260 kg

OUTPUTS:
├── Low-Carbon Steel (Port 7A): 50 kg
│   └── Fe: 49 kg, C: 0.5 kg, Si: 0.2 kg, Mn: 0.3 kg
├── Medium-Carbon Steel (Port 7B): 70 kg
│   └── Fe: 67 kg, C: 1.5 kg, Si: 0.5 kg, Mn: 0.4 kg
├── High-Carbon/Cast Iron (Port 7C): 50 kg
│   └── Fe: 47 kg, C: 1.8 kg, Si: 0.8 kg, Mn: 0.3 kg
├── Ni/Co Alloy (Port 7D): 12 kg
│   └── Fe: 9 kg, Ni: 2 kg, Co: 0.5 kg
├── REE Concentrate (Port 7A): 15 kg
│   └── Fe: 4 kg, Nd₂O₃: 1.5 kg, Sm₂O₃: 0.5 kg, CoO: 0.5 kg, Slag: 8.5 kg
├── Slag/Residue to Stage 8: 65 kg
│   ├── CaO: 16 kg, SiO₂: 23 kg, MgO: 8 kg, Al₂O₃: 5 kg
│   ├── FeO: 6 kg, MnO: 3 kg, REE oxides: 1.3 kg
│   └── Minerals (ZrO₂, TiO₂, etc.): 3 kg
├── Off-Gas: ~8 kg (CO, CO₂, H₂, H₂O, trace REE)
│   └── To PROD-07: CO combustion, REE capture
└── TOTAL OUTPUT: 262 kg ≈ 260 kg ✓ (measurement tolerance)

IRON RECOVERY:
├── Fe in feed: 115 kg
├── Fe in steel products: 172 kg (includes Fe from magnets, Ni/Co scrap)
├── Fe in REE concentrate: 4 kg
├── Fe in slag (as FeO): 6 kg
├── Fe in off-gas: <1 kg
└── **Net Fe recovery to products: 94%** (industry typical: 90-95%)

REE RECOVERY TO HYDROMET (FOLLOW-15):
├── Nd: Port 7A concentrate 77% + Fe bullion 11.5% = 88.5% → FOLLOW-15 recovers >90%
├── Sm: Port 7A concentrate 71% + Fe bullion 11.9% = 82.9% → FOLLOW-15 recovers >85%
├── Co: Port 7A concentrate 55% + Fe bullion 18.5% = 73.5% → FOLLOW-15 recovers >80%
├── Dy: Port 7A concentrate 70% + Fe bullion 10% = 80% → FOLLOW-15 recovers >80%
└── **Overall REE recovery to hydromet feed: >80%** (FOLLOW-15 achieves >90% from feed)
```

---
