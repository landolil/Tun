## 8. Output Streams

### 8.1 Stream Summary Table

| Stream | Port | Temp (°C) | Mass/Batch | Composition | Downstream |
|---|---|---|---|---|---|
| **In-rich slug** | 4A | 160 | 1-5 kg | In 60-80%, Org 20-40%, PMs trace | FOLLOW-14 (Electrodeposition) → YInMn |
| **Sn/Pb eutectic** | 4B | 200 | 10-25 kg | Sn 60-65%, Pb 35-40%, PMs trace | Purification → Solder ingots/wire |
| **Bi/Sn alloy** | 4B | 280 | 1-5 kg | Bi 55-60%, Sn 40-45% | Low-temp solder casting |
| **Pb bullion** | 4C | 340 | 15-40 kg | Pb 90-95%, dross 5-10% | Battery recycling, shielding |
| **Zn liquid** | 4C | 430 | 8-20 kg | Zn 85-95%, Al/Cu 5-15% (Zamak) | Zn dust, ZnO, galvanizing |
| **Dross/Slag** | 4C | 340-430 | 10-20 kg | Oxides, flux, char ash, PMs 100-500 g/t | Stage 7 (PROD-20) |
| **Activated Char (consumed)** | — | 160-430 | 10-20 kg | C >80%, SA >800 m²/g | Flux consumed, residue to Stage 7 |

### 8.2 Mass Balance per 500 kg Batch

```
MASS BALANCE — STAGE 4 (Typical 500 kg Mixed Feedstock)
════════════════════════════════════════════════════════════════════════════════

INPUT (from Stage 3 + Category A-D residual metals):
├── Char/slag from Stage 3: 120 kg
├── PCB metal fraction (Cat A): 45 kg (Cu, Au, Ag, Pd, Sn, Pb, In)
├── Zn die-cast (Cat C): 30 kg (Zn, Al, Cu)
├── Pb-acid battery plates (Cat C): 25 kg (Pb, Sb, Ca)
├── Wire/cable (Cat A/B): 20 kg (Cu, Sn, Pb)
├── Other metals: 10 kg
└── TOTAL INPUT: ~250 kg metal-bearing material

STAGE 4 PROCESSING:
├── Char consumed as flux/reductant: -15 kg
├── Organics pyrolysis/gas: -5 kg (to PROD-07)
└── Net metal processing: 230 kg

OUTPUTS:
├── In-rich slug (Port 4A): 3 kg
│   └── In: 2.0 kg (67%), Organics: 1.0 kg (33%)
├── Sn/Pb eutectic (Port 4B): 18 kg
│   └── Sn: 11 kg (61%), Pb: 7 kg (39%), PMs: 50 g
├── Bi/Sn alloy (Port 4B): 3 kg
│   └── Bi: 1.7 kg (57%), Sn: 1.3 kg (43%)
├── Pb bullion (Port 4C): 28 kg
│   └── Pb: 25 kg (89%), Dross: 3 kg (11%)
├── Zn liquid (Port 4C): 15 kg
│   └── Zn: 13 kg (87%), Al/Cu: 2 kg (13%)
├── Dross/Slag to Stage 7: 18 kg
│   └── Oxides: 10 kg, Flux residue: 5 kg, Char ash: 2 kg, PMs: 0.5 kg
└── TOTAL OUTPUT: 230 kg ✓ (mass conserved)

PRECIOUS METAL TRACKING:
├── Au: 350 g total → 348 g to In/Sn streams (99.5%) → 2 g to dross (0.5%)
├── Ag: 4,000 g total → 3,960 g to In/Sn/Pb streams (99%) → 40 g to dross (1%)
├── Pd: 150 g total → 142 g to In/Sn streams (95%) → 8 g to dross (5%)
└── Pt: 30 g total → 24 g to In/Sn/Pb streams (80%) → 6 g to dross (20%)
```

---
