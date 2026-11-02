## Chapter 3: Aegis-Forge Nd/Dy Separation — Stage 8 Chemistry

### 3.1 Separation Chemistry Overview

Aegis-Forge **Stage 8 (Mineral Residue, 1676°C)** processes the **post-Stage 7 residue** (zircon, monazite, xenotime, apatite, REE-phosphates) through **high-temperature chlorination** followed by **fractional condensation** and **solvent extraction** to produce **individual REE oxides ≥99.9%**.

#### 3.1.1 Stage 8 Process Flow

```
Stage 7 Residue (ZrO₂ + REE-phosphates + silicates)
    │
    ▼
Chlorination Reactor (1000°C, Cl₂ + C) → REECl₃ + ZrCl₄ + SiCl₄ + FeCl₃
    │
    ▼
Fractional Condensation (Temperature-Zoned Condensers)
    ├── Zone 1 (650°C): ZrCl₄, SiCl₄, FeCl₃ (waste/byproduct)
    ├── Zone 2 (450°C): LaCl₃, CeCl₃, PrCl₃, NdCl₃ (LREE fraction)
    ├── Zone 3 (300°C): SmCl₃, EuCl₃, GdCl₃ (MREE fraction)
    ├── Zone 4 (200°C): TbCl₃, DyCl₃, HoCl₃ (HREE fraction)
    └── Zone 5 (<100°C): YCl₃, LuCl₃ (Y+HREE fraction)
    │
    ▼
Aqueous Dissolution → Chloride Solution Feed to SX
    │
    ▼
Solvent Extraction (SX) Circuit — 120 stages
    ├── SX-1: LREE Group Separation (La-Ce-Pr-Nd)
    ├── SX-2: Nd/Pr Separation (β = 1.8-2.2)
    ├── SX-3: MREE Group Separation (Sm-Eu-Gd)
    ├── SX-4: HREE Group Separation (Tb-Dy-Ho)
    ├── SX-5: Dy/Ho Separation (β = 1.3-1.5)
    └── SX-6: Y/Lu Separation
    │
    ▼
Oxalate Precipitation → REE₂(C₂O₄)₃
    │
    ▼
Calcination (900°C) → REE₂O₃ ≥99.9%
```

---

### 3.2 Chloride vs Oxide Route Comparison

| Parameter | Chloride Route (Aegis-Forge) | Oxide Route (Traditional) |
|-----------|------------------------------|---------------------------|
| **Feedstock** | Stage 7 residue (mixed oxides) | Bastnäsite/monazite concentrate |
| **Chlorination** | 1000°C, Cl₂/C (exothermic) | N/A |
| **Separation** | Fractional condensation + SX | SX only (100+ stages) |
| **Energy** | 18 MJ/kg REE | 28 MJ/kg REE |
| **Nd/Dy Recovery** | 98.5% / 97.8% | 96% / 94% |
| **Purity** | ≥99.99% (4N) | ≥99.9% (3N) |
| **Waste** | ZrCl₄ (byproduct), FeCl₃ (recycle) | Thorium waste (monazite) |
| **CAPEX** | $120M (226L × 50/yr) | $180M (equivalent) |
| **OPEX** | $18/kg REE | $28/kg REE |

**Aegis-Forge Advantage**: Chloride route leverages **Stage 7 high-temp residue** directly, avoids acid digestion, achieves **4N purity**, and produces **ZrCl₄ byproduct** for Zr metal market.

---

### 3.3 Nd/Dy Separation Thermodynamics

#### 3.3.1 Separation Factors (β) in SX Circuit

| Separation Pair | Extractant | β (Separation Factor) | Stages Required |
|-----------------|------------|----------------------|-----------------|
| **La/Ce** | HEH[EHP] | 2.5 | 8 |
| **Ce/Pr** | HEH[EHP] | 1.8 | 12 |
| **Pr/Nd** | HEH[EHP] | 1.6 | 15 |
| **Nd/Sm** | HEH[EHP] | 2.2 | 10 |
| **Sm/Eu** | HEH[EHP] | 1.9 | 12 |
| **Eu/Gd** | HEH[EHP] | 1.7 | 14 |
| **Gd/Tb** | HEH[EHP] | 2.0 | 10 |
| **Tb/Dy** | HEH[EHP] | 1.5 | 18 |
| **Dy/Ho** | HEH[EHP] | 1.3 | 22 |
| **Ho/Er** | HEH[EHP] | 1.4 | 20 |

**Total SX Stages**: ~120 for full REE separation. **Nd/Pr** and **Dy/Ho** are the **critical separations** for magnet feedstock.

#### 3.3.2 Nd/Dy Purity Specifications (Aegis-Forge E172 Output)

| Specification | Nd₂O₃ | Dy₂O₃ |
|---------------|-------|-------|
| **Total REO** | ≥99.99% | ≥99.99% |
| **Target REO** | ≥99.5% | ≥99.5% |
| **Non-RE Impurities** | <50 ppm | <50 ppm |
| **Fe** | <10 ppm | <10 ppm |
| **Si** | <20 ppm | <20 ppm |
| **Ca** | <30 ppm | <30 ppm |
| **Th** | <1 ppm | <1 ppm |
| **U** | <1 ppm | <1 ppm |
| **Other REE** | <500 ppm | <500 ppm |
| **Particle Size (D50)** | 2-5 μm | 2-5 μm |

---

### 3.4 Chapter 3 Summary

Aegis-Forge Stage 8 uses **chloride route** (1000°C chlorination + fractional condensation + 120-stage SX) to achieve **98.5% Nd / 97.8% Dy recovery** at **4N purity** with **$18/kg REE OPEX** — **35% lower** than traditional oxide route. Critical separations: **Pr/Nd (β=1.6)** and **Dy/Ho (β=1.3)**.

**Next Chapter**: Chapter 4 — Supply Chain Architecture: Mine → Aegis-Forge → Separation → Metal → Alloy → Magnet → Motor.

---
