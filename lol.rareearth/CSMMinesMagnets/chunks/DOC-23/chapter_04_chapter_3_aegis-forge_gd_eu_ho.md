## Chapter 3: Aegis-Forge Gd/Eu/Ho Separation — Stage 8 Chloride Route SX

### 3.1 Stage 8 Feed Sources and Integration

#### 3.1.1 Integrated HREE/MREE Feed Allocation

| Source | Annual Feed (t) | Gd (t) | Eu (t) | Ho (t) | Route to Stage 8 |
|--------|-----------------|--------|--------|--------|------------------|
| **Norte Grande IOCG** | 7.9 Mt | 474 | 120 | 80 | Alpha-1,2 → SX-MREE |
| **Norte Chico IOCG** | 8.3 Mt | 415 | 105 | 70 | Alpha-3..7 → SX-MREE |
| **Zona Central Porphyry** | 29.8 Mt | 1,043 | 260 | 180 | Alpha-7..11 → SX-MREE |
| **Sur Ion-Adsorption** | 3.5 Mt | 88 | 22 | 15 | Bravo-6,7 → SX-MREE/HREE |
| **Sur Epithermal (Alpha-14)** | 0.8 Mt | 64 | 15 | 12 | Alpha-14 → SX-HREE |
| **Austral Epithermal (Alpha-17)** | 0.35 Mt | 25 | 6 | 5 | Alpha-17 → SX-HREE |
| **Austral Glacial Clay** | 2.5 Mt | 50 | 12 | 8 | Bravo-8,9 → SX-HREE |
| **Urban Mining** | 0.05 Mt | 10 | 6 | 1 | Bravo-5,10 → SX-MREE/HREE |
| **TOTAL** | **53.2 Mt** | **2,169** | **546** | **371** | **All clusters** |

**Note**: Gd/Eu report to MREE fraction (fractional condensation <180°C); Ho reports to HREE fraction (condensation 180-200°C).

---

### 3.2 Stage 8 Chloride Route SX Circuit Design

#### 3.2.1 Fractional Condensation Pre-Separation

```
Mixed REE Chloride Feed (from Stage 7 chlorination):
    │
    ▼
Fractional Condensation Tower (Vertical, 15m, Inconel 625)
    │
    ├── Zone 1: 200-250°C → **TbCl₃, DyCl₃, HoCl₃, ErCl₃** (HREE fraction)
    │   TbCl₃ condenses 220°C, DyCl₃ 200°C, HoCl₃ 195°C, ErCl₃ 190°C
    │
    ├── Zone 2: 150-200°C → **GdCl₃, EuCl₃, SmCl₃** (MREE fraction)
    │   GdCl₃ condenses 180°C, EuCl₃ 175°C, SmCl₃ 170°C
    │
    └── Zone 3: <150°C → **NdCl₃, PrCl₃, LaCl₃, CeCl₃** (LREE fraction)
```

**Separation Efficiency**: >95% fraction purity achieved via **temperature-controlled condensation** — reduces SX stages by 30% vs. direct chloride feed.

---

#### 3.2.2 MREE SX Circuit (Gd/Eu/Sm Separation)

```
MREE Chloride Feed (Gd/Eu/Sm dominant)
    │
    ▼
SX-MREE-1: Sm/Eu Separation (HEH[EHP], 1.0M, pH 2.5)
    ├── 12 stages counter-current
    ├── β(Sm/Eu) = 1.9
    ├── Organic: 30% HEH[EHP] + 70% kerosene + 5% TBP
    ├── Aqueous: Sm/Eu/Gd chloride, 50 g/L REE, pH 2.5
    ├── Scrub: 0.5M HCl (remove Sm from Eu org)
    ├── Strip: 4M HCl (recover Eu)
    └── Raffinate: Sm → SX-MREE-2
    │
    ▼
SX-MREE-2: **Eu/Gd Separation (CRITICAL)**
    ├── 18 stages counter-current
    ├── **β(Eu/Gd) = 1.7**
    ├── Organic: 40% HEH[EHP] + 60% kerosene
    ├── Aqueous: Eu/Gd chloride, 60 g/L REE, pH 3.0
    ├── Scrub: 0.3M HCl
    ├── Strip: 5M HCl (recover Gd from org)
    ├── **Eu Product**: EuCl₃ strip solution → oxalate → Eu₂O₃ 4N
    └── **Gd Product**: GdCl₃ raffinate → oxalate → Gd₂O₃ 4N
    │
    ▼
SX-MREE-3: Gd/Tb Polish (if Tb in MREE fraction)
    ├── 15 stages, β(Gd/Tb) = 1.5
    ├── Final Gd 4N, Tb 4N
```

---

#### 3.2.3 HREE SX Circuit (Ho/Er/Tm/Yb/Lu Separation)

```
HREE Chloride Feed (Tb/Dy/Ho/Er/Tm/Yb/Lu dominant)
    │
    ▼
SX-HREE-1: Tb/Dy Separation (shared with DOC-22)
    ├── 18 stages, β=1.5
    ├── Tb product → Tb₂O₃ 4N
    ├── Dy raffinate → SX-HREE-2
    │
    ▼
SX-HREE-2: Dy/Ho Separation (shared with DOC-22)
    ├── 22 stages, β=1.3
    ├── Dy product → Dy₂O₃ 4N
    ├── Ho raffinate → SX-HREE-3
    │
    ▼
SX-HREE-3: **Ho/Er Separation (CRITICAL for Ho)**
    ├── 25 stages counter-current
    ├── **β(Ho/Er) = 1.2** (most difficult HREE pair)
    ├── Organic: 50% HEH[EHP] + 50% kerosene
    ├── Aqueous: Ho/Er/Tm/Yb/Lu chloride, 70 g/L REE, pH 3.5
    ├── Scrub: 0.2M HCl (remove Er from Ho org)
    ├── Strip: 6M HCl (recover Ho)
    ├── **Ho Product**: HoCl₃ strip → oxalate → Ho₂O₃ 4N
    └── Er raffinate → SX-HREE-4 (Er/Tm/Yb/Lu)
    │
    ▼
SX-HREE-4..7: Er/Tm → Tm/Yb → Yb/Lu → Lu/Y sequential
    ├── Each: 15-25 stages, β=1.15-1.25
    ├── Final products: Er₂O₃, Tm₂O₃, Yb₂O₃, Lu₂O₃ all 4N
```

---

### 3.3 SX Thermodynamic Parameters

| Separation | Extractant | Conc. | pH | β (Aegis-Forge) | Stages | Chinese Benchmark β |
|------------|------------|-------|-----|----------------|--------|---------------------|
| Sm/Eu | HEH[EHP] | 30% | 2.5 | 1.9 | 12 | 1.6 |
| **Eu/Gd** | **HEH[EHP]** | **40%** | **3.0** | **1.7** | **18** | **1.4** |
| Gd/Tb | HEH[EHP] | 35% | 3.2 | 1.5 | 15 | 1.3 |
| Tb/Dy | HEH[EHP] | 40% | 3.0 | 1.5 | 18 | 1.3 |
| Dy/Ho | HEH[EHP] | 45% | 3.2 | 1.3 | 22 | 1.1 |
| **Ho/Er** | **HEH[EHP]** | **50%** | **3.5** | **1.2** | **25** | **1.05** |

**Aegis-Forge Advantage**: Higher extractant concentration, optimized pH, fractional condensation pre-sep → **15-20% higher β** vs Chinese practice → **fewer stages, lower OPEX**.

---

### 3.4 Oxalate Precipitation and Calcination

```
REE Chloride Strip Solutions (from SX)
    │
    ▼
Oxalic Acid Precipitation (0.5M (COOH)₂, 60°C, pH 1.5)
    │
    ├── Gd₂(C₂O₄)₃·10H₂O ↓ (99.9% recovery)
    ├── Eu₂(C₂O₄)₃·10H₂O ↓ (99.9% recovery)
    ├── Ho₂(C₂O₄)₃·10H₂O ↓ (99.8% recovery)
    │
    ▼
Filtration → Washing (DI water, 3×) → Drying (120°C, 4h)
    │
    ▼
Calcination (1,000°C, 4h, Air → O₂)
    │
    ├── Gd₂(C₂O₄)₃ → **Gd₂O₃** + 3CO₂ + 3CO
    ├── Eu₂(C₂O₄)₃ → **Eu₂O₃** + 3CO₂ + 3CO
    ├── Ho₂(C₂O₄)₃ → **Ho₂O₃** + 3CO₂ + 3CO
    │
    ▼
Milling (Jet mill, Ar, D50=2-5μm) → Blending → Packaging (Ar atmosphere)
```

---

### 3.5 Gd/Eu/Ho Metal Reduction (Chile — Qualifying Country)

#### 3.5.1 Calcium Reduction (for Gd, Eu, Ho)

```
Oxide Feed: RE₂O₃ (4N) + Ca (99.9%) + CaCl₂ flux
    │
    ▼
Vacuum Reduction Furnace (Ta crucible, 10⁻³ Pa)
    │
    ├── Gd₂O₃ + 3Ca → 2Gd + 3CaO (ΔG° = -420 kJ/mol at 1200°C)
    ├── Eu₂O₃ + 3Ca → 2Eu + 3CaO (ΔG° = -380 kJ/mol at 1100°C)
    ├── Ho₂O₃ + 3Ca → 2Ho + 3CaO (ΔG° = -450 kJ/mol at 1250°C)
    │
    ▼
Distillation (Vacuum, 10⁻² Pa, 1300°C Gd, 1100°C Eu, 1400°C Ho)
    │
    ├── **Gd Metal**: ≥99.5%, O <100 ppm, Ca <50 ppm
    ├── **Eu Metal**: ≥99.5%, O <100 ppm, Ca <50 ppm
    ├── **Ho Metal**: ≥99.5%, O <100 ppm, Ca <50 ppm
    │
    ▼
Casting (Ingots, 50 kg) → Crushing → Sieving (D50=50-100μm) → Packaging (Ar)
```

**Chile Qualifying Country**: Metal reduction in Chile (CPTPP/FTA partner) → **DFARS 252.225-7018 compliant** for Gd/Eu/Ho feedstock to US/Japan/EU alloy/magnet/phosphor manufacturers.

---

### 3.6 Chapter 3 Summary

Aegis-Forge Stage 8 provides **integrated Gd/Eu/Ho separation** via **fractional condensation pre-separation + chloride route SX**. **Critical separations**: **Eu/Gd (β=1.7, 18 stages)** and **Ho/Er (β=1.2, 25 stages)** — Aegis-Forge achieves **4N purity** with **97% Gd, 95% Eu, 93% Ho recovery**. **Metal reduction in Chile (Ca-reduction + vacuum distillation)** produces **DFARS-qualifying Gd/Eu/Ho metal** for GMP/nuclear/quantum applications.

**Next Chapter**: Chapter 4 — Medical Supply Chain: Gd-DTPA/DOTA GMP, Eu Phosphors, Ho Fiber Lasers.

---
