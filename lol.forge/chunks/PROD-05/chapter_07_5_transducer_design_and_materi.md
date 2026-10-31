## 5. Transducer Design and Materials

### 5.1 KNbO₃-BaTiO₃ Piezoelectric Material

The AMLS uses exclusively **KNbO₃-BaTiO₃ lead-free piezoelectric ceramic** (CSMFAB000000000020) for all transducer elements — both LF bimorphs and US Langevin stacks.

**Key advantages over PZT:**
- Lead-free (RoHS/REACH compliant)
- Higher Curie temperature (310°C vs 193°C for PZT-5H)
- Comparable d₃₃ (285 vs 289 pC/N)
- Lower dielectric loss at high drive levels

**Manufacturing route (solid-state):**
$$\text{K}_2\text{CO}_3 + \text{Nb}_2\text{O}_5 \xrightarrow{1000^\circ\text{C}} 2\text{KNbO}_3$$
$$x\text{KNbO}_3 + (1-x)\text{BaTiO}_3 \xrightarrow{\text{sinter}} \text{KNbO}_3\text{-BaTiO}_3 \text{ solid solution}$$
In-house synthesis cost: $28-40/kg vs. $180-250/kg commercial.

### 5.2 Epoxy-Free Mounting System

**Thermal isolation stack (US probes):**
```
[Drive electronics] — [PEEK CF40 back mass] — [ZrO₂ bolt] — [KNbO₃-BaTiO₃ stack] — [ZrO₂ front mass] — [Water/feedstock]
```

**LF plate mounting:**
- BFRP substrate bonded with **silicone interlayer** (not epoxy)
- Silicone: Dow Corning 732, -60°C to 260°C, non-conductive
- Allows thermal expansion mismatch without delamination
- Optical isolation: PMMA POF feedthrough for FBG sensor cables

### 5.3 BFRP Chamber Housing

**Pre-chamber body:** Filament-wound BFRP/Elium® cylinder
- Dimensions: 600 mm diameter × 400 mm length
- Wall: 8 mm [±20°/90°]₃ layup
- Pressure rating: 1.5 bar N₂ (operating)
- Acoustic transparency: BFRP transmits <5% of incident acoustic energy (impedance mismatch)
- Non-magnetic: zero interference with SmCo magnetic separator

---
