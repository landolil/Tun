## 2. Stage 3 Overview — The Pyrolysis Window

### 2.1 Stage Parameters

| Parameter | Value | Basis |
|-----------|-------|-------|
| **Temperature Range** | 450-700°C | Thermoset decomposition window (Vol 2) |
| **Duration** | 45 minutes | 30 min dwell + 15 min ramp (5°C/min through 450-550°C) |
| **Drum Speed** | 200 RPM (G=22.3 at r=250mm) | Char particle migration, increased from Stage 2 |
| **Atmosphere** | N₂ + CO₂ (from Stage 2 gas capture) | <2% O₂, pyrolysis mode, partial oxidation |
| **Induction Frequency** | 50 kHz | Optimal for char (σ ~10⁻³-10⁻¹ Ω·m) coupling |
| **Induction Power** | 50-80 kW peak (zones 3-5) | Vol 2 power profile |
| **Feed from Stage 2** | Thermoset residue + char/filler + metals | PROD-15 filtration solids + polymer residue |
| **Target Char Yield** | 20-30% of thermoset feed | Vol 2: epoxy 15-25%, FR4 20%, rubber 25-40% |

### 2.2 Stage 3 in the Cascade Context

```
THERMAL CASCADE — STAGE 3 POSITION

Stage 2: Polymer Melt Centrifuge (150-450°C) → PP/PE/PET/PVC fractions discharged
    │
    ▼
Stage 3: PYROLYSIS & CHAR (450-700°C) ← THIS DOCUMENT
    │    ├── Epoxy/Phenolic → Char (80-95% C) + Gas (CO, CO₂, CH₄, H₂)
    │    ├── FR4 (glass-epoxy) → Char + Glass fiber residue (slag)
    │    ├── Rubber/Elastomer → Char (25-40% yield)
    │    ├── PVC residue → Complete dehydrochlorination → Char
    │    ├── Filler minerals → CaCO₃→CaO, talc, slag formation
    │    └── HCl salts (from Stage 2) → NaCl flux for Stage 4
    │
    ▼
Stage 4: Low-Temp Metals (420-900°C) → In, Sn, Pb, Zn separation
    │    └── Uses Stage 3 activated char as flux/reducing agent
    ▼
Stage 5: Aluminum Window (660-720°C)
    ▼
... Stages 6-8 ...
```

### 2.3 Feed Composition from Stage 2 (per 500 kg batch)

| Feedstock Component | Mass (kg) | Source | Stage 3 Behavior |
|---------------------|-----------|--------|------------------|
| **Epoxy resin** (FR4, coatings) | 8-15 | PCBs, composites | Pyrolysis → 15-25% char yield |
| **Phenolic resin** (moldings, brakes) | 3-8 | Electrical parts, brake pads | Pyrolysis → 50-60% char yield |
| **Rubber/Elastomer** | 5-12 | Tires, seals, gaskets | Pyrolysis → 25-40% char yield |
| **Polyester/PU** | 2-6 | FRP panels, foams | Pyrolysis → 20-30% char yield |
| **Cellulosic** (paper, wood) | 5-15 | Packaging, furniture | Pyrolysis → 20-30% char yield |
| **Glass fiber** (from FR4) | 10-25 | PCB substrate | Inert → slag (SiO₂) |
| **CaCO₃ filler** | 15-30 | Polymer compounding | Calcines → CaO (flux) |
| **Talc filler** | 5-15 | PP compounding | Inert → slag (Mg-silicate) |
| **HCl scrubber salts** (NaCl) | 1-3 | Stage 2 PVC neutralization | Flux for Stage 4 metals |
| **Residual thermoplastic** | 2-8 | Incomplete Stage 2 discharge | Additional char/gas |
| **Metal fines** (Cu, Al, Fe) | 3-10 | Shredder wear, liberated | Report to metal stages |
| **TOTAL THERMOSET+ORGANIC** | **~40-75 kg** | | **Char yield: 10-22 kg** |

---
