## 5. Slag Engineering

### 5.1 Slag System: CaO-SiO₂-MgO-Al₂O₃-FeO-MnO-REE Oxides

**Target Slag Composition (wt%):**
| Component | Target | Source | Function |
|---|---|---|---|
| **CaO** | 25% | Added (15 kg) + mineral residue | Basicity, FeO capacity |
| **SiO₂** | 35% | Glass fibers, PCB substrate | Network former |
| **MgO** | 12% | Stage 4/5 dross (17 kg total) | Viscosity, REE capacity |
| **Al₂O₃** | 8% | Stage 5 dross, anodized Al | Viscosity, REE capacity |
| **FeO** | 10% | Fe oxidation, magnet Fe | REE oxidation driver |
| **MnO** | 5% | Steel scrap, batteries | — |
| **REE Oxides** | 2% | Magnets, dross | Product value |
| **Others (CaF₂, TiO₂, etc.)** | 3% | Impurities | — |

**Slag Properties at 1580°C:**
- Viscosity: 0.5-1.0 Pa·s (target <1.0 for REE diffusion)
- Liquidus temperature: 1350°C (fully liquid at Stage 7)
- FeO activity: a_FeO ≈ 0.15 (drives REE oxidation)
- Basicity: B = CaO/SiO₂ = 1.2
- **MgO/Al₂O₃ ratio: 1.5** (from dross — optimal for REE phosphate/silicate solubility)

### 5.2 REE Partitioning to Slag

**Partition Coefficient Definition:**
```
L_REE = (%REE_oxide in slag) / [%REE in metal]
```

**Key Equilibria:**
```
2[RE] + 3(FeO) ⇌ (RE₂O₃) + 3[Fe]     log L_REE = (ΔG°/RT) + 3log a_FeO - 3log a_Fe
```

**Operating Window for High REE Recovery:**
| Parameter | Target | Effect on L_REE |
|---|---|---|
| **FeO in slag** | 8-12% | Higher FeO → higher L_REE |
| **Basicity (CaO/SiO₂)** | 1.1-1.3 | Optimal for REE phosphate/silicate solubility |
| **MgO/Al₂O₃** | 1.0-2.0 | MgO increases REE capacity; Al₂O₃ decreases |
| **Temperature** | 1550-1600°C | Higher T → lower L_REE (exothermic oxidation) |
| **Oxygen potential** | p_O₂ ≈ 10⁻¹² atm | Controlled by C/FeO equilibrium |

**MgO/Al₂O₃ from Upstream Dross — Critical Enabler:**
- Stage 4 dross: 10 kg MgO, 5 kg flux
- Stage 5 dross: 7 kg MgO/Al₂O₃, 2.5 kg flux
- **Total free MgO/Al₂O₃: 17 kg** — no purchased flux needed
- This is a **cascade advantage**: waste from Stages 4-5 becomes slag former for Stage 7

---
