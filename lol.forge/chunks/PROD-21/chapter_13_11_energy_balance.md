## 11. Energy Balance

### 11.1 Energy Inputs

| Energy Source | Quantity | Notes |
|---|---|---|
| **Induction (Zone 8)** | 420 kWh/batch | 500 kW × 0.75 hr × 0.989 eff × 1.12 (radiative) |
| **Ar/He Gas Supply** | 15 kWh/batch | Compression, purification |
| **Flash Sintering (3Y-TZP)** | 6.25 kWh/batch | 75 kW × 5 min × 2 cycles |
| **SiO₂ Condenser Cooling** | 10 kWh/batch | Water cooling, 50 L/min |
| **Y₂O₃/B₂O₃/C Additions** | 8 kWh/batch | Precursor production energy |
| **Off-gas Treatment** | 5 kWh/batch | PROD-07 allocation (minimal) |
| **Control/Instrumentation** | 5 kWh/batch | FBG, pyrometer, MS, ZVS, PID |
| **TOTAL GROSS ENERGY** | **469 kWh/batch** | |

### 11.2 Energy Recovery

| Recovery Source | Quantity | Notes |
|---|---|---|
| **Sensible Heat (Stage 7 slag)** | 40 kWh/batch | Slag enters at 1600°C |
| **Sensible Heat (molds)** | 20 kWh/batch | Mold preheat recovery |
| **SiO₂ Condensation Heat** | 15 kWh/batch | Latent heat recovery |
| **Off-gas Sensible Heat** | 10 kWh/batch | Heat exchanger |
| **TOTAL RECOVERED** | **85 kWh/batch** | |

### 11.3 Net Energy Balance

```
ENERGY BALANCE — STAGE 8 (Per 500 kg Batch, Terminal Stage)
═════════════════════════════════════════════════════════════════════════════════

GROSS ENERGY INPUT:     469 kWh
ENERGY RECOVERED:       -85 kWh
NET ENERGY CONSUMED:    384 kWh/batch

ENERGY INTENSITY:
├── Per kg 3Y-TZP:      384 kWh / 3.2 kg = 120 kWh/kg 3Y-TZP
├── Per kg feedstock:   384 kWh / 500 kg = 0.77 kWh/kg feed
└── Per $ revenue:      384 kWh / $8,500 = 0.045 kWh/$

EXERGY ANALYSIS:
├── Induction exergy: 420 kWh × 1.0 = 420 kWh
├── Gas/precursor exergy: 28 kWh × 0.95 = 26.6 kWh
├── Flash sinter exergy: 6.25 kWh × 1.0 = 6.25 kWh
├── Recovered exergy: 85 kWh × 0.5 = 42.5 kWh
├── Net exergy: 452.85 - 42.5 = 410.35 kWh
├── Product exergy (3Y-TZP): 3.2 kg × 50 kWh/kg = 160 kWh
├── Product exergy (SiO₂): 1.35 kg × 5 kWh/kg = 6.75 kWh
├── Product exergy (REE): 1.5 kg × 200 kWh/kg = 300 kWh
├── Product exergy (Al₂O₃/TiO₂): 7 kg × 20 kWh/kg = 140 kWh
├── **Total product exergy: 606.75 kWh**
├── **Exergy efficiency: 606.75 / 410.35 = 148%** (chemical exergy dominates)
└── Thermal exergy efficiency: (160+6.75) / 410.35 = 41%

COMPARISON:
├── Conventional 3Y-TZP: 80-120 kWh/kg (sintering + milling)
├── Conventional fumed SiO₂: 20-30 kWh/kg (flame hydrolysis)
├── Aegis-Forge Stage 8: 120 kWh/kg 3Y-TZP (but co-produces SiO₂, REE, Al₂O₃, TiO₂)
└── **System-level: cascade integration eliminates separate plants**
```

---
