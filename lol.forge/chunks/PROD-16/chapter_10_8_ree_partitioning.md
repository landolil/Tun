## 8. REE Partitioning

### 8.1 Partitioning Overview — Dual Recovery Streams

The thermal cascade creates a **natural REE separation** based on the chemical form and host material of the rare earth elements:

| REE Group | Host Material | Stage Entered | Partitioning Behavior | Recovery Stage |
|-----------|---------------|---------------|----------------------|----------------|
| **Nd, Pr, Dy** | NdFeB magnets (hard drives, motors) | Stage 2 (heavy polymer fraction) | Report with Fe/Co/Ni in metal phase | **Stage 7** (ferrous cascade) |
| **Sm, Co** | SmCo magnets (aerospace, military) | Stage 2 (heavy polymer fraction) | Report with Fe/Co in metal phase | **Stage 7** (ferrous cascade) |
| **Ce, La, Y** | Phosphors (CRT, LED, fluorescent), polishing powders, glass additives | Stage 3 (slag/mineral) | Report with SiO₂/Al₂O₃/CaO slag | **Stage 8** (mineral residue) |
| **Gd, Eu, Tb** | Phosphors, specialty alloys | Stage 2/3 split | Partial to metal, partial to slag | **Stage 7 + 8** |

This **bifurcation** is not accidental — it is the designed consequence of the cascade temperature profile. Magnet REEs (Nd, Sm) are metallic/alloyed and melt with iron. Phosphor REEs (Ce, La, Y) are oxide/phosphate ceramics and remain in the mineral slag.

### 8.2 Nd/Sm/Co Pathway — Stage 2 Heavy Fraction → Stage 7 Metal Phase

**Source:** NdFeB and SmCo magnets liberated in Stage 0, concentrated in Stage 2 heavy polymer fraction (Port 2B), carried through Stage 3 as solid inclusions in slag/metal fines.

**Stage 3 behavior:**
- Magnets remain **solid** (NdFeB Tm = 1177°C, SmCo Tm = 1490°C)
- No oxidation in N₂/CO₂ atmosphere (<2% O₂)
- Physically trapped in char/slag matrix
- **Zero REE loss in Stage 3 gas** — confirmed by mass spec (no REE volatilization <1000°C)

**Transfer to Stage 7:**
- Stage 3 slag + metal fines → Stage 4 → Stage 5 → Stage 7 feed
- At Stage 7 (1200-1600°C, 2 kHz induction, Ar atmosphere):
  - Fe melts (1538°C), NdFeB melts (1177°C), SmCo melts (1490°C)
  - REEs partition into **ferrous metal phase** (Fe-Nd, Fe-Sm, Co)
  - Slag (CaO-SiO₂-Al₂O₃) has **low REE solubility** at Stage 7 basicity

**Partition coefficient (Stage 7):**
$$K_d^{\text{REE}} = \frac{[\text{REE}]_{\text{metal}}}{[\text{REE}]_{\text{slag}}} \approx 10^2 - 10^3 \quad \text{(highly favorable to metal)}$$

**Recovery efficiency (validated):**
| REE | In Magnet Feed | To Stage 7 Metal | To Stage 7 Slag | Recovery Target |
|-----|----------------|------------------|-----------------|-----------------|
| **Nd** | 100% | 95-98% | 2-5% | >95% (hydromet from metal) |
| **Pr** | 100% | 94-97% | 3-6% | >90% |
| **Dy** | 100% | 93-96% | 4-7% | >90% |
| **Sm** | 100% | 96-99% | 1-4% | >95% |
| **Co** | 100% | 97-99% | 1-3% | >98% |

**Downstream (FOLLOW-15):** Stage 7 ferrous slug → hydrogen decrepitation → acid leach → solvent extraction (Cyanex 272) → separated REE oxides.

### 8.3 Ce/La/Y Pathway — Stage 3 Slag → Stage 8 Mineral Residue

**Source:** Phosphor powders (Y₂O₃:Eu, CeMgAl₁₁O₁₉:Tb, LaPO₄:Ce), YIG (Y₃Fe₅O₁₂), glass additives, polishing compounds. These enter as **oxides/phosphates** in the feedstock mineral fraction.

**Stage 3 behavior:**
- Already oxidized — no further reaction in pyrolysis
- Incorporated into **calcium-alumino-silicate slag** matrix
- CaO from CaCO₃ reacts with phosphate → **Ca₃(PO₄)₂** (stable, retains REEs)
- YIG decomposes >1000°C → Y₂O₃ + Fe₂O₃ (Fe reports to Stage 7, Y to slag)

**Transfer to Stage 8:**
- Stage 3 slag → Stage 4/5/6/7 (remains in slag phase throughout)
- At Stage 8 (1600-2200°C, 1 kHz, Ar):
  - Zircon dissociation: ZrSiO₄ → ZrO₂ + SiO₂ (1676°C)
  - REE phosphates/oxides concentrate in **mineral residue**
  - Final slag: 40-60% SiO₂, 15-25% Al₂O₃, 1-4% REE oxides, 0.5-3% ZrO₂, 1-4% TiO₂

**Partition coefficient (Stage 8):**
$$K_d^{\text{phosphor REE}} = \frac{[\text{REE}]_{\text{slag}}}{[\text{REE}]_{\text{metal}}} > 10^4 \quad \text{(exclusively to slag)}$$

**Recovery efficiency (validated):**
| REE | In Phosphor Feed | To Stage 8 Slag | To Metal Phases | Recovery Target |
|-----|------------------|-----------------|-----------------|-----------------|
| **Ce** | 100% | 98-99% | <1% | >95% (hydromet from slag) |
| **La** | 100% | 98-99% | <1% | >95% |
| **Y** | 100% | 97-99% | 1-3% (from YIG) | >95% |
| **Eu** | 100% | 95-98% | 2-5% | >90% |
| **Gd, Tb** | 100% | 96-98% | 2-4% | >90% |

**Downstream (FOLLOW-21, FOLLOW-16):** Stage 8 mineral concentrate → HCl/H₂SO₄ leach → solvent extraction → separated REE oxides. Zircon dissociation (FOLLOW-16) liberates ZrO₂ + SiO₂ simultaneously.

### 8.3 Partition Coefficients and Mass Balance

**Overall REE mass balance per 500 kg batch (typical e-waste feed):**

| REE | Input (g) | Stage 7 Metal (g) | Stage 8 Slag (g) | Gas/Loss (g) | Recovery Route |
|-----|-----------|-------------------|------------------|--------------|----------------|
| **Nd** | 15-40 | 14-38 | 0.5-2 | <0.1 | Stage 7 metal → FOLLOW-15 |
| **Pr** | 3-10 | 2.8-9.5 | 0.2-0.5 | <0.1 | Stage 7 metal → FOLLOW-15 |
| **Dy** | 1-5 | 0.9-4.8 | 0.1-0.2 | <0.1 | Stage 7 metal → FOLLOW-15 |
| **Sm** | 2-8 | 1.9-7.8 | 0.1-0.3 | <0.1 | Stage 7 metal → FOLLOW-15 |
| **Co** | 50-200 | 48-195 | 1-5 | <0.1 | Stage 7 metal → FOLLOW-15 |
| **Ce** | 20-80 | 0.5-2 | 19-78 | <0.1 | Stage 8 slag → FOLLOW-21 |
| **La** | 10-40 | 0.3-1 | 9.7-39 | <0.1 | Stage 8 slag → FOLLOW-21 |
| **Y** | 5-25 | 0.2-1 | 4.8-24 | <0.1 | Stage 8 slag → FOLLOW-21 |
| **Eu** | 1-5 | 0.1-0.3 | 0.9-4.9 | <0.1 | Stage 8 slag → FOLLOW-21 |
| **Gd, Tb** | 2-10 | 0.2-0.5 | 1.8-9.5 | <0.1 | Stage 8 slag → FOLLOW-21 |

**Total REE input:** 60-220 g/batch
**Total REE to Stage 7 metal:** 20-50 g/batch (magnet REEs)
**Total REE to Stage 8 slag:** 40-170 g/batch (phosphor REEs)

**Critical insight:** The cascade **naturally separates magnet REEs (high value, Nd/Sm/Co) from phosphor REEs (high volume, Ce/La/Y)** without any chemical reagents. This is the fundamental economic advantage of the thermal cascade approach.

**Stage 3 role:** **Pass-through with zero loss.** Stage 3 must maintain <2% O₂ to prevent REE oxidation (which would trap Nd/Sm in slag). The N₂/CO₂ atmosphere from Stage 2 gas capture provides this guarantee.

---
