## Chapter 3: Aegis-Forge Lu/Y/Sc Separation — Stage 8 HREE SX Circuit

### 3.1 Stage 8 Feed Integration

#### 3.1.1 HREE Feed Allocation to Stage 8

| Source | Annual Feed (t) | Lu (t) | Y (t) | Sc (t) | SX Fraction |
|--------|-----------------|--------|-------|--------|-------------|
| **Norte Grande IOCG** | 7.9 Mt | 3.6 | 34 | 8 | HREE (Alpha-1,2) |
| **Norte Chico IOCG** | 8.3 Mt | 5.2 | 44.7 | 11 | HREE (Alpha-3..7) |
| **Zona Central Porphyry** | 29.8 Mt | 3.1 | 24.7 | 5 | HREE (Alpha-7..11) |
| **Sur Ion-Adsorption** | 3.5 Mt | 3.1 | 21.1 | 1.5 | HREE (Bravo-6,7) |
| **Sur Epithermal (Alpha-14)** | 0.8 Mt | 1.5 | 12 | 3 | HREE (Alpha-14) |
| **Austral Epithermal (Alpha-17)** | 0.35 Mt | **2.7** | **14** | 1.5 | HREE (Alpha-17) |
| **Austral Glacial Clay** | 2.5 Mt | 2.5 | 15 | 1 | HREE (Bravo-8,9) |
| **TOTAL** | **53.15 Mt** | **21.6** | **166.5** | **31** | **All clusters** |

**Note**: Sc reports to LREE raffinate; separate Sc removal circuit (Ch. 3.4).

---

### 3.2 Stage 8 HREE SX Circuit Design

#### 3.2.1 Complete HREE Separation Sequence

```
HREE Chloride Feed (Fractional Condensation >180°C):
    │
    ├── TbCl₃ (220°C) → SX-HREE-1: Tb/Dy (18 stages, β=1.5)
    ├── DyCl₃ (200°C) → SX-HREE-2: Dy/Ho (22 stages, β=1.3)
    ├── HoCl₃ (195°C) → SX-HREE-3: Ho/Er (25 stages, β=1.2)
    ├── ErCl₃ (190°C) → SX-HREE-4: Er/Tm (20 stages, β=1.15)
    ├── TmCl₃ (187°C) → SX-HREE-5: Tm/Yb (18 stages, β=1.18)
    ├── YbCl₃ (185°C) → SX-HREE-6: **Yb/Lu (25 stages, β=1.2) — CRITICAL**
    └── LuCl₃ (190°C) → SX-HREE-7: **Lu/Y (8 stages, β=2.1) — Y separation**
```

#### 3.2.2 Yb/Lu Separation — The Critical Path

```
SX-HREE-6: Yb/Lu Separation (25 Stages, β=1.2)

Process Parameters:
- Extractant: HEH[EHP] (50% in kerosene, 5% TBP modifier)
- Aqueous: Yb/Lu chloride, 70 g/L REE, pH 3.8-4.0
- Organic: 50% HEH[EHP], 45% kerosene, 5% TBP
- Temperature: 25°C (critical — β decreases with T)
- O/A Ratio: 1.2:1 (organic:aqueous)
- Flow: Counter-current, 25 stages

Stage Profile (Theoretical):
Stage 1-5:  Yb extraction (Yb → organic, Lu → aqueous)
Stage 6-15: Yb/Lu separation zone (maximum β utilization)
Stage 16-20: Lu scrub (0.15M HCl removes Yb from Lu organic)
Stage 21-25: Lu strip (6M HCl recovers Lu from organic)

Product Streams:
- **Lu Product (Strip)**: LuCl₃, 95% recovery, 4N after oxalate/calcination
- **Yb Product (Raffinate)**: YbCl₃, 97% recovery, 4N after oxalate/calcination

Mass Balance (per 1 t HREE feed):
- Lu in feed: 35 kg → Lu product: 33.3 kg (95%)
- Yb in feed: 40 kg → Yb product: 38.8 kg (97%)
```

#### 3.2.3 Y/La Separation (High Volume, Easy)

```
SX-HREE-7 / SX-LREE-1: Y/La Separation (8 Stages, β=2.1)

Process Parameters:
- Extractant: HEH[EHP] (30% in kerosene)
- Aqueous: Y/La/Ce/Pr/Nd chloride, 100 g/L REE, pH 2.0
- Organic: 30% HEH[EHP], 70% kerosene
- O/A Ratio: 1.5:1
- Stages: 8 (extraction) + 2 (scrub) + 2 (strip)

Product Streams:
- **Y Product (Organic → Strip)**: YCl₃, 98% recovery, 4N after oxalate
- **La Product (Raffinate)**: La/Ce/Pr/Nd → SX-LREE-2 (Ce/La separation)

Volume: Y ~280 t/yr → **largest single HREE stream**
```

---

### 3.3 Scandium Impurity Removal Circuit

#### 3.3.1 Sc Behavior in REE SX

```
Sc³⁺ Ionic Radius: 0.745 Å (CN=6)
Comparison: Lu³⁺ 0.861 Å, Y³⁺ 0.900 Å, La³⁺ 1.032 Å

HEH[EHP] Extraction Order (pH dependent):
At pH 1.5: Sc > Fe > Al > LREE > MREE > HREE
At pH 2.5: Fe > Al > Sc > LREE > MREE > HREE
At pH 3.5: Fe > Al > LREE > MREE > HREE > Sc

Strategy: **Extract Sc at low pH (1.5) before REE SX**
```

#### 3.3.2 Sc Removal Circuit Design

```
REE Chloride Feed (Post-Chlorination, Pre-Fractional Condensation)
    │
    ▼
pH Adjustment: 2M HCl → pH 1.5 (HCl addition)
    │
    ▼
SX-Sc-1: Sc/Fe/Al Co-Extraction (HEH[EHP] 20%)
    ├── 4 stages counter-current
    ├── β(Sc/La) ≈ 5.0 at pH 1.5
    ├── Organic: Sc, Fe, Al, trace REE
    ├── Raffinate: REE (LREE+MREE+HREE) → Fractional Condensation
    │
    ▼
SX-Sc-2: Fe/Al Scrub (0.5M HCl)
    ├── 3 stages
    ├── Fe/Al → aqueous (waste → Fe/Al recovery)
    ├── Sc remains in organic
    │
    ▼
SX-Sc-3: Sc Strip (0.01M HCl)
    ├── 4 stages
    ├── ScCl₃ strip solution (5-10 g/L Sc)
    ├── Recovery: 85% (losses to raffinate/entrainment)
    │
    ▼
Sc Purification:
    ├── Oxalic acid precipitation (Sc₂(C₂O₄)₃·6H₂O)
    ├── Calcination (900°C) → Sc₂O₃ 99.9% (3N)
    └── Optional: Ca-reduction → Sc metal 99.5%
```

---

### 3.4 Oxalate Precipitation and Calcination (Lu, Y, Sc)

```
LuCl₃ / YCl₃ / ScCl₃ Strip Solutions
    │
    ▼
Oxalic Acid Precipitation (0.5M (COOH)₂, 60°C, pH 1.5)
    │
    ├── Lu₂(C₂O₄)₃·10H₂O ↓ (99.9% recovery)
    ├── Y₂(C₂O₄)₃·10H₂O ↓ (99.5% recovery)
    ├── Sc₂(C₂O₄)₃·6H₂O ↓ (95% recovery)
    │
    ▼
Filtration → Washing (DI water, 3×) → Drying (120°C, 4h)
    │
    ▼
Calcination:
    ├── Lu₂(C₂O₄)₃ → **Lu₂O₃** + 3CO₂ + 3CO (1,000°C, 4h, O₂)
    ├── Y₂(C₂O₄)₃ → **Y₂O₃** + 3CO₂ + 3CO (1,000°C, 4h, Air)
    ├── Sc₂(C₂O₄)₃ → **Sc₂O₃** + 3CO₂ + 3CO (900°C, 4h, Air)
    │
    ▼
Milling (Jet mill, Ar, D50=2-5μm) → Blending → Packaging (Ar for Lu, Air for Y/Sc)
```

---

### 3.5 Metal Reduction (Chile — Qualifying Country)

#### 3.5.1 Calcium Reduction for Lu, Y, Sc

```
Oxide Feed: RE₂O₃ (4N/3N) + Ca (99.9%) + CaCl₂ flux
    │
    ▼
Vacuum Reduction Furnace (Ta/W crucible, 10⁻³ Pa)
    │
    ├── Lu₂O₃ + 3Ca → 2Lu + 3CaO (ΔG° = -520 kJ/mol at 1300°C)
    ├── Y₂O₃ + 3Ca → 2Y + 3CaO (ΔG° = -480 kJ/mol at 1200°C)
    ├── Sc₂O₃ + 3Ca → 2Sc + 3CaO (ΔG° = -550 kJ/mol at 1350°C)
    │
    ▼
Vacuum Distillation (Separation from Ca/CaO):
    │
    ├── Lu: 1300°C, 10⁻² Pa → Lu metal ≥99.5%
    ├── Y:  1200°C, 10⁻² Pa → Y metal ≥99.9%
    ├── Sc:  1350°C, 10⁻² Pa → Sc metal ≥99.5%
    │
    ▼
Casting → Crushing → Sieving → Packaging (Ar atmosphere)
```

**Chile Qualifying Country**: Metal reduction in Chile (CPTPP/FTA) → **DFARS-compliant Sc/Lu/Y feedstock** for US/Japan/EU aerospace/nuclear/medical manufacturers.

---

### 3.6 Chapter 3 Summary

Aegis-Forge Stage 8 provides **integrated Lu/Y/Sc separation** via **fractional condensation pre-separation + chloride route HREE SX (75+ stages total)**. **Critical separation: Yb/Lu (β=1.2, 25 stages)** — Aegis-Forge achieves **95% Lu recovery, 4N purity** with **optimized pH 3.8-4.0, 25°C, 50% HEH[EHP]**. **Sc removed at pH 1.5 pre-SX (85% recovery, 3N Sc₂O₃)**. **Metal reduction in Chile (Ca-reduction + vacuum distillation)** produces **DFARS-qualifying Lu/Y/Sc metal** for aerospace (Sc-Al), nuclear medicine (Lu-177), and SCR catalysts (Y₂O₃).

**Next Chapter**: Chapter 4 — Specialty Alloy Supply Chain: Sc-Al Master Alloy, Y₂O₃ SCR Catalysts, Lu₂O₃ Scintillators.

---
