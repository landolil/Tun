## Chapter 3: Aegis-Forge Sm/Co/Tb Separation — Stage 4 Co, Stage 8 Sm/Tb

### 3.1 Stage 4 Cobalt Separation (Low-Temp Metals, 850-1000°C)

#### 3.1.1 Co Feed Sources

| Source | Co Grade | Annual Feed (t) | Co Content (t) | Aegis-Forge Cluster |
|--------|----------|-----------------|----------------|---------------------|
| **Norte Grande IOCG** | 230-410 ppm | 5.7 Mt | 1,300 | Alpha-1,2 |
| **Norte Chico IOCG** | 150-280 ppm | 6.1 Mt | 1,100 | Alpha-3,4,5,6,7 |
| **Zona Central Porphyry** | 50-100 ppm | 12 Mt | 600 | Alpha-7,8,9,10,11 |
| **Sur/Austral Coal** | 80-150 ppm | 2 Mt | 200 | Alpha-13,16 |
| **TOTAL** | — | **25.8 Mt** | **3,200** | **All Alpha clusters** |

#### 3.1.2 Stage 4 Co Process Flow

```
Stage 4 Feed (Co in matte/sulfide residue from Stage 0-3)
    │
    ▼
Roasting (600°C, air) → Co₃O₄ + Fe₂O₃ + CuO + SO₂ (captured)
    │
    ▼
Leaching (H₂SO₄, 80°C) → Co²⁺/Ni²⁺/Cu²⁺/Fe³⁺ solution
    │
    ▼
Solvent Extraction (SX) — Co/Ni Separation
    ├── SX-Co1: Co extraction (Cyanex 272, pH 5.5) β(Co/Ni)=3,000
    ├── SX-Co2: Co stripping (H₂SO₄) → CoSO₄·7H₂O
    └── SX-Ni: Ni extraction (Cyanex 272, pH 4.0) → NiSO₄
    │
    ▼
Cobalt Electrowinning (EW)
    ├── Anode: Pb-Ca-Sn (inert)
    ├── Cathode: Stainless steel / Co starter sheet
    ├── Electrolyte: CoSO₄ (40 g/L Co) + H₃BO₃ (30 g/L)
    ├── Current Density: 300 A/m²
    ├── Voltage: 3.2-3.5 V
    ├── Current Efficiency: 92-95%
    └── Product: Co cathode ≥99.9% (LME Grade A)
    │
    ▼
Co₃O₄ Production (for SmCo alloy)
    ├── Co cathode → Dissolution → Co₃O₄ precipitation
    ├── Calcination (900°C) → Co₃O₄ ≥99.9%
    └── Particle size: D50 = 3-5 μm
```

**Stage 4 Co Output**: **Co metal ≥99.9%** (for master alloy) + **Co₃O₄ ≥99.9%** (for SmCo sintering feed). **Recovery: 95%**. **OPEX: $12/kg Co** (vs $18/kg Chinese).

---

### 3.2 Stage 8 Samarium/Terbium Separation

#### 3.2.1 Sm/Tb Feed Sources

| Source | Sm Grade | Tb Grade | Annual Feed (t) | Sm Content (t) | Tb Content (t) | Cluster |
|--------|----------|----------|-----------------|----------------|----------------|---------|
| **Norte Grande IOCG** | 60 ppm | 3 ppm | 7.9 Mt | 474 | 24 | Alpha-1,2 |
| **Norte Chico IOCG** | 50 ppm | 2 ppm | 8.3 Mt | 415 | 17 | Alpha-3-7 |
| **Zona Central Porphyry** | 35 ppm | 1.5 ppm | 29.8 Mt | 1,043 | 45 | Alpha-7-11 |
| **Sur Ion-Adsorption** | 25 ppm | 1.5 ppm | 3.5 Mt | 88 | 5 | Bravo-6 |
| **Sur Epithermal** | 80 ppm | 12 ppm | 0.8 Mt | 64 | 10 | Alpha-14 |
| **Austral Epithermal** | 70 ppm | 10 ppm | 0.35 Mt | 25 | 3.5 | Alpha-17 |
| **Austral Glacial Clay** | 20 ppm | 1 ppm | 2.5 Mt | 50 | 2.5 | Bravo-8 |
| **TOTAL** | — | — | **53.15 Mt** | **2,163** | **105** | **All clusters** |

#### 3.2.2 Stage 8 Sm/Tb Separation (Chloride Route)

Integrated with Nd/Dy SX circuit (DOC-21 Ch. 3):

```
Stage 8 Chloride Feed (SmCl₃, TbCl₃, DyCl₃, HoCl₃, GdCl₃...)
    │
    ▼
Fractional Condensation → MREE/HREE fractions
    │
    ▼
Solvent Extraction (Integrated SX Circuit)
    ├── SX-MREE: Sm/Eu/Gd separation (HEH[EHP])
    │   ├── Sm/Eu: β = 1.9, 12 stages
    │   └── Eu/Gd: β = 1.7, 14 stages
    ├── SX-HREE-1: Tb/Dy/Ho separation
    │   ├── Tb/Dy: β = 1.5, 18 stages (CRITICAL)
    │   └── Dy/Ho: β = 1.3, 22 stages
    └── SX-HREE-2: Ho/Er/Tm/Yb/Lu/Y separation
    │
    ▼
Oxalate Precipitation + Calcination
    │
    ├── Sm₂O₃ ≥99.99% (4N)
    ├── Tb₄O₇ ≥99.99% (4N)
    ├── Dy₂O₃ ≥99.99% (4N)
    ├── Gd₂O₃ ≥99.99%
    ├── Ho₂O₃ ≥99.9%
    └── Others...
```

#### 3.2.3 Sm/Tb Separation Thermodynamics

| Separation Pair | Extractant | β (Aegis-Forge) | Stages | Purity Target |
|-----------------|------------|----------------|--------|---------------|
| **Sm/Eu** | HEH[EHP] | 1.9 | 12 | Sm 4N |
| **Tb/Dy** | HEH[EHP] | 1.5 | 18 | Tb 4N, Dy 4N |
| **Dy/Ho** | HEH[EHP] | 1.3 | 22 | Dy 4N |

**Tb/Dy separation is the bottleneck** (β=1.5). Aegis-Forge uses **18 dedicated stages** + **fractional condensation pre-separation** (TbCl₃ condenses at 200°C, DyCl₃ at 180°C) to achieve **>99.99% Tb purity** with **97% recovery**.

---

### 3.3 SmCo Sintering Feed Specifications

| Parameter | SmCo 1:5 | SmCo 2:17 (Standard) | SmCo 2:17 (Tb-Doped) |
|-----------|----------|---------------------|---------------------|
| **Sm₂O₃ Purity** | ≥99.99% | ≥99.99% | ≥99.99% |
| **Co₃O₄ Purity** | ≥99.9% | ≥99.9% | ≥99.9% |
| **Fe Powder** | N/A | ≥99.9%, D50=3-5μm | ≥99.9%, D50=3-5μm |
| **Cu Powder** | N/A | ≥99.99%, D50=2-3μm | ≥99.99%, D50=2-3μm |
| **Zr Powder** | N/A | ≥99.5%, D50=1-2μm | ≥99.5%, D50=1-2μm |
| **Tb₄O₇ Purity** | N/A | N/A | ≥99.99% (4N) |
| **Tb Addition** | N/A | N/A | 0.5-1.0 wt% on alloy |
| **Stoichiometry** | Sm:Co = 1:5.0-5.2 | Sm:TM = 1:7.0-7.5 | Sm:TM = 1:7.0-7.5 |
| **Oxygen Content** | <800 ppm | <600 ppm | <500 ppm |

**Aegis-Forge Integration**: Stage 4 Co₃O₄ + Stage 8 Sm₂O₃/Tb₄O₇ → **direct feed to SmCo alloy production** in Chile (qualifying country) or US/Japan.

---

### 3.4 Chapter 3 Summary

Aegis-Forge provides **integrated Co/Sm/Tb separation**: **Stage 4 (Co EW, 95% recovery, $12/kg)** + **Stage 8 (chloride route, 120-stage SX, 97% Sm/95% Tb recovery, 4N purity)**. **Tb/Dy separation (β=1.5, 18 stages)** is the critical path. Output specs meet **SmCo sintering requirements** for 1:5, 2:17, and Tb-doped 2:17 grades.

**Next Chapter**: Chapter 4 — SmCo Manufacturing Supply Chain: Mine → Separation → Metal → Alloy → Sinter → Magnet.

---
