## Chapter 3: Aegis-Forge Ce/La/Pr Separation — Stage 8 LREE SX Circuit

### 3.1 Stage 8 Feed Integration

#### 3.1.1 LREE Feed Allocation to Stage 8

| Source | Annual Feed (t) | Ce (t) | La (t) | Pr (t) | Nd (t) | SX Fraction |
|--------|-----------------|--------|--------|--------|--------|-------------|
| **Norte Grande IOCG** | 7.9 Mt | 317 | 264.5 | 53.5 | 107 | LREE (Alpha-1,2) |
| **Norte Chico IOCG** | 8.3 Mt | 341 | 286.75 | 67.75 | 135.5 | LREE (Alpha-3..7) |
| **Zona Central Porphyry** | 29.8 Mt | 430 | 368 | 74 | 148 | LREE (Alpha-7..11) |
| **Sur Ion-Adsorption** | 3.5 Mt | 240 | 200.75 | 39.25 | 78.5 | LREE (Bravo-6,7) |
| **Sur Epithermal (Alpha-14)** | 0.8 Mt | 60 | 48.75 | 11.25 | 22.5 | LREE (Alpha-14) |
| **Austral Ion-Adsorption** | 2.5 Mt | 132.5 | 109.5 | 19.5 | 39 | LREE (Bravo-8,9) |
| **Austral Epithermal (Alpha-17)** | 0.35 Mt | 18 | 15 | 3 | 6 | LREE (Alpha-17) |
| **Urban Mining (Bravo-5)** | 0.05 Mt | 600 | 590 | 110 | 220 | LREE (Bravo-5) |
| **TOTAL** | **53.2 Mt** | **2,138.5** | **1,882.75** | **378.25** | **756.5** | **All clusters** |

**Note**: Total LREE feed ~5,156 t/yr — **largest volume stream in Aegis-Forge**.

---

### 3.2 Stage 8 LREE SX Circuit Design

#### 3.2.1 High-Throughput LREE Separation Sequence

```
LREE Chloride Feed (Fractional Condensation <150°C, 5,156 t/yr REE):
    │
    ▼
SX-LREE-1: **Ce/La Separation (8 stages, β=1.8) — HIGH VOLUME**
    ├── Feed: Ce/La/Pr/Nd chloride, 150 g/L REE, pH 2.0
    ├── Extractant: HEH[EHP] 30% in kerosene (high loading)
    ├── O/A Ratio: 2.0:1 (high organic flow for Ce throughput)
    ├── Scrub: 0.5M HCl (2 stages)
    ├── Strip: 4M HCl (4 stages)
    ├── **Ce Product**: CeCl₃ strip → oxalate → CeO₂ 3N/4N
    ├── Raffinate: La/Pr/Nd → SX-LREE-2
    └── **Throughput**: 2,500 t/yr Ce — largest single stream
    │
    ▼
SX-LREE-2: **La/Pr Separation (10 stages, β=1.6)**
    ├── Feed: La/Pr/Nd chloride, 120 g/L REE, pH 2.5
    ├── Extractant: HEH[EHP] 35% in kerosene
    ├── O/A Ratio: 1.5:1
    ├── Scrub: 0.3M HCl (2 stages)
    ├── Strip: 5M HCl (4 stages)
    ├── **La Product**: LaCl₃ strip → oxalate → La₂O₃ 3N/4N
    ├── Raffinate: Pr/Nd → SX-LREE-3
    └── **Throughput**: 2,200 t/yr La
    │
    ▼
SX-LREE-3: **Pr/Nd Separation (8 stages, β=1.9) — CRITICAL FOR MAGNETS**
    ├── Feed: Pr/Nd chloride, 100 g/L REE, pH 2.5
    ├── Extractant: HEH[EHP] 30% in kerosene
    ├── O/A Ratio: 1.2:1
    ├── Scrub: 0.4M HCl (2 stages)
    ├── Strip: 5M HCl (4 stages)
    ├── **Pr Product**: PrCl₃ strip → oxalate → Pr₆O₁₁ 3N/4N
    ├── **Nd Product**: NdCl₃ raffinate → oxalate → Nd₂O₃ 4N
    └── **Throughput**: 450 t/yr Pr, 750 t/yr Nd
    │
    ▼
SX-LREE-4: Nd/Dy Polish (shared with DOC-21 HREE circuit)
    ├── 6 stages, β(Nd/Dy)=1.4
    ├── Final Nd 4N for magnets
```

---

#### 3.2.2 LREE SX Thermodynamic Parameters

| Separation | Extractant | Conc. | pH | β (Aegis-Forge) | Stages | O/A Ratio | Throughput (t/yr) |
|------------|------------|-------|-----|----------------|--------|-----------|-------------------|
| **Ce/La** | HEH[EHP] | 30% | 2.0 | **1.8** | 8 | 2.0:1 | 2,500 Ce |
| **La/Pr** | HEH[EHP] | 35% | 2.5 | **1.6** | 10 | 1.5:1 | 2,200 La |
| **Pr/Nd** | HEH[EHP] | 30% | 2.5 | **1.9** | 8 | 1.2:1 | 450 Pr, 750 Nd |

**Key Design Feature**: **High organic flow (O/A 2.0:1 for Ce/La)** handles massive Ce throughput. **Extractant recycle** via **scrub/strip acid regeneration** minimizes HEH[EHP] consumption.

---

### 3.3 Oxalate Precipitation and Calcination (High Volume)

```
CeCl₃ / LaCl₃ / PrCl₃ / NdCl₃ Strip Solutions
    │
    ▼
Continuous Oxalic Acid Precipitation (Counter-current, 3-train parallel)
    │
    ├── Train A: Ce (1,000 t/yr CeO₂) — 0.5M (COOH)₂, 60°C, pH 1.5
    ├── Train B: La (800 t/yr La₂O₃) — 0.5M (COOH)₂, 60°C, pH 1.5
    ├── Train C: Pr/Nd (450/750 t/yr) — 0.5M (COOH)₂, 60°C, pH 1.5
    │
    ▼
Continuous Filtration (Pressure filter, 99.9% solids capture)
    │
    ▼
Washing (DI water, 3-stage counter-current, 99% mother liquor removal)
    │
    ▼
Drying (Continuous fluid bed, 120°C, 2h residence)
    │
    ▼
Calcination (Rotary kiln, continuous):
    │
    ├── Ce₂(C₂O₄)₃ → **CeO₂** + 3CO₂ + 3CO (900°C, 30 min residence, Air)
    ├── La₂(C₂O₄)₃ → **La₂O₃** + 3CO₂ + 3CO (1,000°C, 30 min, Air)
    ├── Pr₂(C₂O₄)₃ → **Pr₆O₁₁** + 3CO₂ + 3CO (950°C, 30 min, Air)
    └── Nd₂(C₂O₄)₃ → **Nd₂O₃** + 3CO₂ + 3CO (1,000°C, 30 min, Air)
    │
    ▼
Milling/Classification (Jet mill + air classifier):
    ├── CeO₂ Polishing: D50=1.8μm, D90<5μm
    ├── CeO₂ Catalyst: D50=7μm, D90<20μm
    ├── La₂O₃ Catalyst: D50=3μm, D90<10μm
    ├── La₂O₃ Battery: D50=2μm, D90<8μm
    ├── Pr₆O₁₁: D50=5μm
    └── Nd₂O₃: D50=5μm
    │
    ▼
Packaging (Supersacks 1t, N₂ purge for 4N, lined for 3N)
```

---

### 3.4 Metal Reduction (Chile — Qualifying Country)

#### 3.4.1 Ce/La/Pr Molten Salt Electrolysis

For high-volume Ce/La, **molten salt electrolysis** replaces Ca-reduction:

```
Ce/La/Pr Electrolysis (Chile — Qualifying Country):

Cell Design:
- Electrolyte: LiF-NaF-KF (FLINAK) + 5-10% REE fluoride
- Anode: Graphite (inert, CO/CO₂ evolution)
- Cathode: Molybdenum or Tungsten (liquid metal cathode for Ce/La)
- Temperature: 1,000-1,100°C
- Current Density: 1.5-2.0 A/cm²
- Current Efficiency: 70-80% (Ce/La), 60-70% (Pr/Nd)

Reactions:
CeF₃ + 3e⁻ → Ce (l) + 3F⁻  (E° = -2.35 V vs F₂/F⁻)
LaF₃ + 3e⁻ → La (l) + 3F⁻  (E° = -2.38 V)
PrF₃ + 3e⁻ → Pr (l) + 3F⁻  (E° = -2.32 V)

Product Collection:
- Liquid metal cathode → continuous tapping
- Ce: 99.5% purity, O<100ppm
- La: 99.9% purity, O<50ppm
- Pr-Nd: Co-deposited as didymium (25-30% Pr)

Advantages vs Ca-Reduction:
- **Continuous operation** (vs batch)
- **Higher throughput** (500-1,000 kg/day per cell)
- **Lower energy** (8-10 kWh/kg vs 12-15 kWh/kg Ca-red)
- **Direct alloy production** possible (Ce-Al, La-Ni, Pr-Nd-Fe)
```

---

### 3.5 Chapter 3 Summary

Aegis-Forge Stage 8 provides **integrated Ce/La/Pr/Nd separation** via **high-throughput chloride route LREE SX**. **Ce/La (β=1.8, 8 stages)** and **La/Pr (β=1.6, 10 stages)** handle **massive volumes (2,500 t/yr Ce, 2,200 t/yr La)**. **Pr/Nd (β=1.9, 8 stages)** delivers **magnet-grade Pr/Nd oxides**. **Continuous oxalate precipitation + rotary kiln calcination** achieves **industrial scale**. **Molten salt electrolysis in Chile** produces **DFARS-qualifying Ce/La/Pr metals/alloys** for catalyst, polishing, battery, and magnet supply chains.

**Next Chapter**: Chapter 4 — Catalyst Supply Chain: FCC Catalyst Manufacturing, Ce/La Specs, Fluid Cracking Integration.

---
