## 2. Stage 2 Overview — The Polymer Window

### 2.1 Stage Parameters

| Parameter | Value | Basis |
|-----------|-------|-------|
| **Temperature Range** | 150-450°C | Polymer Tm range (LDPE 105°C → PEEK 341°C) |
| **Duration** | 30 minutes | Sufficient for complete melt + stratification |
| **Drum Speed** | 150 RPM (G=12.6 at r=0.25m) | Optimal for polymer density separation |
| **Atmosphere** | N₂ at 1.2 bar + NaHCO₃ aerosol | Inert + PVC neutralization |
| **Induction Power** | 0-50 kW (100 kHz) | Indirect heating via N₂/air convection |
| **Feed Moisture** | <1% (from Stage 1) | Prevents steam voids in melt |
| **Feed Size** | P80 < 150 mm | From PROD-11 shredder |
| **Feed Rate** | 12-20 kg/min | 500 kg batch over 25-40 min feed window |

### 2.2 Target Polymers & Separation Temperatures

| Polymer | Tm (°C) | Density (molten, g/cm³) | Sources in Feedstock | Mass Fraction (Typical) | Activation Energy Ea (kJ/mol) |
|---------|---------|------------------------|---------------------|------------------------|------------------------------|
| **LDPE** | 105-115 | 0.78 | Film, bags, coatings | 35% of polymer | 25-35 |
| **HDPE** | 120-140 | 0.78 | Pipe, bottles, containers | 25% | 30-40 |
| **PP** | 130-171 | 0.74 | Automotive, packaging | 20% | 35-45 |
| **PS** | 100-240 | 1.04-1.09 | Electronics housings | 8% | 40-50 |
| **PVC** | 160-210 | 1.38-1.42 | Wire insulation, pipes | 5% | 90-120 (dehydrochlorination) |
| **ABS** | 200-250 | 1.07 | Electronics, dashboards | 3% | 80-100 |
| **PA6** | 220-230 | 1.08 | Mechanical parts | 1% | 70-85 |
| **PA66** | 255-265 | 1.09 | Engine parts | 1% | 85-100 |
| **PET** | 250-260 | 1.33-1.38 | Bottles, film | 2% | 95-110 |
| **PC** | 267-290 | 1.20 | Lenses, covers | <1% | 100-120 |
| **PEEK** | 341 | 1.22 | CSM off-cuts (recycled) | <1% | 150-180 |
| **PTFE** | 327 | 1.65 | Wire insulation | <1% | 130-160 |

**Combined melt window:** 105°C to 450°C — achievable in single stage by slow ramp.

### 2.3 Stage 2 in the Cascade Context

```
THERMAL CASCADE — STAGE 2 POSITION

Stage 0: Acoustic Liberation (Ambient) → Liberated grains
    │
    ▼
Stage 1: IR Drying (80-150°C) → Dry feedstock (<1% H₂O)
    │
    ▼
Stage 2: POLYMER MELT CENTRIFUGE (150-450°C) ← THIS DOCUMENT
    │    ├── PP/PE/LDPE (light) → Inner annulus → Port 2A
    │    ├── PS/ABS/PA (medium) → Middle annulus → Port 2A
    │    ├── PET/PVC/PC (heavy) → Outer annulus → Port 2B
    │    └── HCl (from PVC) → NaHCO₃ capture → Scrubber salts
    │
    ▼
Stage 3: Pyrolysis (450-700°C) → Thermoset char + gas
    │
    ▼
Stage 4: Low-Temp Metals (420-900°C) → In, Sn, Pb, Zn
    │
    ▼
... Stages 5-8 ...
```

### 2.4 Feed Composition by Category (from PROD-13)

| Feedstock Category | Polymer Content | PVC Content | Typical Batch (500 kg) |
|--------------------|-----------------|-------------|------------------------|
| **A: E-Waste** | 15-25% | 2-5% | 75-125 kg polymer, 10-25 kg PVC |
| **B: Auto Shredder Residue** | 20-30% | 3-8% | 100-150 kg polymer, 15-40 kg PVC |
| **C: Municipal Plastics** | 60-80% | 1-3% | 300-400 kg polymer, 5-15 kg PVC |
| **D: Industrial Off-Cuts** | 80-95% | 0-1% | 400-475 kg polymer, 0-5 kg PVC |

---
