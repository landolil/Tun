## 7. Centrifuge Bowl Zones for Mineral Separation

### 7.1 Zone Architecture — 4-Zone Design for Stage 8

| Zone | Axial Position | Function | Temperature | RPM | Key Features |
|---|---|---|---|---|---|
| **Z8-1 (Charge/Preheat)** | 700-740 mm | Charge slag, preheat to 1676°C | 1676°C | 150 | Feed inlet, FBG, POF level, pO₂ monitor |
| **Z8-2 (Dissociation)** | 740-770 mm | ZrSiO₄ → ZrO₂ + SiO₂(g) | 1700°C | 150 | 30 min dwell, SiO₂ condenser (Port 8B) |
| **Z8-3 (3Y-TZP Synthesis)** | 770-785 mm | Flash sinter ZrO₂+3Y₂O₃ | 1800°C | 150 | 5 min flash, electric field, Port 8A molds |
| **Z8-4 (Residual/Cool)** | 785-800 mm | Residual oxides, cool down | 1800→1600°C | 150 | Al₂O₃/TiO₂/REE separation, Stage 8 complete |

### 7.2 Zone 8-2: Zircon Dissociation Reactor

**Process Conditions:**
- Temperature: 1700°C ±15°C
- Duration: 30 minutes
- RPM: 150 (G=10.4)
- Atmosphere: Ar/He 95/5, 1.1 bar, pO₂ < 10⁻¹⁵ atm
- SiO₂ partial pressure: 10⁻³ atm (controlled by condenser sweep)

**Dissociation Monitoring:**
| Sensor | Parameter | Frequency | Action |
|---|---|---|---|
| **FBG (48)** | Wall temperature | 1 kHz | PID power |
| **MS (SiO₂)** | p_SiO₂ at condenser | 10 Hz | Sweep gas adjust |
| **Pyrometer** | Melt surface temp | 100 Hz | Power adjust |
| **XRF (slag)** | Zr, Si, REE in slag | 1/min | Dissociation extent |

**Centrifugal Separation During Dissociation:**
- ZrO₂ product (ρ=5.68) → drum wall (r=290-300mm)
- Slag liquid (ρ=2.8) → inward (r=200-250mm)
- REE oxides (ρ=5-7) → co-concentrate with ZrO₂
- **No separate port** — ZrO₂/REE remain in drum for Zone 8-3

### 7.3 Zone 8-3: 3Y-TZP Flash Sintering

**Flash Sintering Cell (Integrated in Drum):**
```
FLASH SINTERING CELL — ZONE 8-3
┌─────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│   ZR-O₂/ZR-O₂ ELECTRODES (DC, 300 V/cm)                                     │
│        │                              │                                     │
│        ▼                              ▼                                     │
│   ┌─────────────────────────────────────────────────┐                       │
│   │   ZrO₂ + 3% Y₂O₃ POWDER BED (10 kg)             │                       │
│   │   • Feed: ZrO₂ from dissociation + Y₂O₃ inj.    │                       │
│   │   • Bed height: 50 mm, porosity 0.4             │                       │
│   │   • Current: 500 A, Voltage: 150 V              │                       │
│   │   • Power: 75 kW (5 min) = 6.25 kWh             │                       │
│   └─────────────────────────────────────────────────┘                       │
│        │                              │                                     │
│        ▼                              ▼                                     │
│   PORT 8A MOLDS (10 kg, 3Y-TZP)                                              │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

**Flash Sintering Cycle (5 min):**
1. **Ramp (0-60s):** 1600→1800°C, field 100→300 V/cm
2. **Flash (60-120s):** Thermal runaway, densification 50→97% TD
3. **Hold (120-300s):** 1800°C, 300 V/cm, grain stabilization
4. **Cool (300-600s):** Field off, N₂ quench 10°C/min

**Port 8A Mold Fill:**
- 3Y-TZP powder flows directly from flash cell to mold
- 2 molds × 10 kg = 20 kg per batch (2 cycles)
- N₂ quench, stamp, LIBS, Data Matrix per PROD-08

### 7.4 Zone 8-4: Residual Separation and Cool Down

**Residual Stream Composition (after ZrO₂/3Y-TZP removal):**
- Al₂O₃: 7-10 kg
- TiO₂: 2-4 kg
- REE oxides: 1.3 kg (minus Y₂O₃ used)
- Cr₂O₃: 0.3 kg
- MgO: 7.8 kg (unchanged)
- CaO/SiO₂ slag: 15-20 kg (depleted in SiO₂)
- FeO/MnO: reduced by carbon
- Carbon: 1-3 kg

**Separation at 150 RPM:**
- TiO₂ (ρ=4.23) → r_eq = 270 mm
- Al₂O₃ (ρ=3.95) → r_eq = 265 mm
- REE oxides (ρ=5-7) → r_eq = 280 mm
- Slag (ρ=2.8) → r_eq = 200 mm

**Final Outputs:**
- **Port 8A (final):** Al₂O₃/TiO₂/REE concentrate → FOLLOW-21 hydromet
- **Drum residue:** CaO-SiO₂-MgO slag + FeO/MnO → Phoenix Protocol stockpile

---
