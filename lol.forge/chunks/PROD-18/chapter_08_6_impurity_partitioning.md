## 6. Impurity Partitioning

### 6.1 Impurity Behavior in Stage 5

| Impurity | Source | Behavior at 680°C | Partitioning |
|---|---|---|---|
| **Si** | Die-cast (A380/A356), glass fibers | Dissolves in Al (max 1.6% at 680°C) | Reports to Al slug — fractionation by Si content |
| **Fe** | Steel contaminants, alloy impurities | Insoluble in Al (max 0.05% at 680°C) | Forms FeAl₃ intermetallics → dross/slag |
| **Cu** | Wire, 2024/7075 alloys, motors | Dissolves in Al (max 5.6% at 680°C) | Reports to Al slug — fractionation by Cu content |
| **Mn** | Alloying (3xxx), steel | Dissolves in Al (max 1.8% at 680°C) | Reports to Al slug — minor |
| **Zn** | 7075, galvanized residuals | **REMOVED in Stage 4** — <0.01% residual | Negligible |
| **Pb/Sn/Bi/In** | Solder, coatings | **REMOVED in Stage 4** — <0.001% residual | Negligible |
| **Ni/Cr/Ti** | Stainless, superalloys | Insoluble — solid particles | Report to Stage 7/8 slag |
| **REE (Nd, Sm, Co)** | Magnet particles | Insoluble — oxide particles | Report to Stage 8 slag |
| **Ca** | CaO from Stage 3 char flux | Insoluble — forms CaAl₂O₄ | Dross/slag |
| **Na/K** | Flux carryover | Dissolves in flux, not Al | <10 ppm in Al product |
| **F** | Cryolite decomposition | Forms AlF₃ gas (trace) | <1 ppm in Al product |

### 6.2 Target Product Specifications

| Product | Al | Si | Fe | Cu | Mg | Mn | Zn | Ti | Others |
|---|---|---|---|---|---|---|---|---|---|
| **Wrought Remelt** | >99.7% | <0.15% | <0.20% | <0.05% | <0.10% | <0.05% | <0.01% | <0.05% | <0.05% each |
| **Cast Secondary** | 88-92% | 5-12% | <0.8% | 0.5-3% | 0.3-0.5% | <0.5% | <0.1% | <0.2% | <0.1% each |

**Quality Metrics:**
- Hydrogen content: <0.1 mL/100g Al (degassing in mold)
- Grain size: <500 µm (controlled cooling in ZrO₂ molds)
- Inclusion count: <5/mm² >20 µm (SiC candle filtration effective)

### 6.3 Impurity Partitioning Thermodynamics

**Gibbs Free Energy of Formation at 680°C (953 K):**
| Reaction | ΔG (kJ/mol) | Implication |
|---|---|---|
| 4Al + 3O₂ → 2Al₂O₃ | -1,120 | Al oxidation strongly favored |
| 2Mg + O₂ → 2MgO | -980 | Mg oxidation favored over Al |
| 2Fe + 3/2O₂ → Fe₂O₃ | -620 | Fe oxidation less favored |
| 2Cu + O₂ → 2CuO | -85 | Cu oxidation marginal |
| 2Al + N₂ → 2AlN | -180 | Nitride formation favored in N₂ |
| Mg + Na₃AlF₆ → MgF₂ + 3NaF + Al | -45 | Fluoride capture favored |

**Partition Coefficients (K = C_dross / C_Al) at 680°C:**
| Element | K (dross/Al) | K (flux/Al) | K (slag/Al) | Primary Sink |
|---|---|---|---|---|
| Mg | 50 | 10 | 5 | Dross (MgO) |
| Si | 0.5 | 0.01 | 100 | Slag (silicates) |
| Fe | 20 | 0.1 | 500 | Slag (FeAl₃, spinels) |
| Cu | 2 | 0.05 | 50 | Slag (CuAl₂) |
| Mn | 5 | 0.1 | 100 | Slag (MnAl₂O₄) |
| Na/K | 0.01 | 1000 | 10 | Flux |
| F | 0.1 | 500 | 1 | Flux (MgF₂, NaF) |

**Key Insight:** The flux system (NaCl/KCl/cryolite) selectively captures Mg and F, while the slag (mineral residue) captures Si, Fe, Cu, Mn. The Al product is purified by this **dual-sink partitioning**.

---
