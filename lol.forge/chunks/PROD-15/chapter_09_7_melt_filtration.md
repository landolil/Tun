## 7. Melt Filtration

### 7.1 Ceramic Candle Filters

Before discharge, polymer melt passes through **SiC ceramic candle filters**:

| Parameter | Specification |
|-----------|---------------|
| **Filter Material** | α-SiC (CSMFAB000000000002, flash-sintered) |
| **Pore Size** | 50 µm (nominal), 100 µm (absolute) |
| **Configuration** | 12 candles × 200 mm length × 25 mm OD |
| **Filtration Area** | 0.19 m² total |
| **Housing** | BFRP/Elium® with ZrO₂ seals |
| **Operating Pressure** | 2-5 bar (melt pump pressure) |
| **Temperature** | 200-450°C (same as melt) |
| **Filter Efficiency** | >99.9% for particles >50 µm |

### 7.2 Filtration Mechanics

**Cake formation model (constant pressure):**
$$\frac{dV}{dt} = \frac{A \Delta P}{\mu (R_m + \alpha c V / A)}$$

Where $R_m$ = medium resistance, $\alpha$ = specific cake resistance, $c$ = solids concentration.

For char/filler (10 µm avg, $\rho_s = 1.8$ g/cm³) at 5% vol:
- $\alpha \approx 10^{11}$ m/kg
- Cake thickness at 5 min: ~2 mm
- Pressure rise: 0.5 bar/min

### 7.3 Back-Pulse Cleaning

```
FILTRATION CYCLE (Continuous)

[MELT PUMP] ──► [CANDLE FILTERS] ──► [PORT 2A/2B]
                │    ▲
                │    │  [BACK-PULSE N₂]
                │    │   (Every 5 min, 0.5s pulse)
                │    │   10 bar N₂ from accumulator
                │    │
                └────┘
             Collected solids → Stage 3 char
```

| Parameter | Value |
|-----------|-------|
| **Back-Pulse Frequency** | Every 5 minutes |
| **Pulse Duration** | 0.5 seconds |
| **Pulse Pressure** | 10 bar N₂ (from gas system accumulator) |
| **Solids Removed** | Char, filler, metal fines, undegraded polymer |
| **Filter Life** | 500 batches (2,500 hrs) |
| **Regeneration** | Thermal oxidation at 600°C (Stage 3) |
| **Cake Thickness at Pulse** | 1.5-2.5 mm |

### 7.4 Filter Cake Characterization

| Component | Mass Fraction in Cake | Source | Downstream |
|-----------|----------------------|--------|------------|
| **Char** | 40-60% | Thermoset residue, carbonized polymer | Stage 3 feed |
| **Filler (CaCO₃, talc, glass)** | 20-35% | Polymer compounding | Stage 3 feed |
| **Metal fines** | 5-15% | Shredder wear, liberated particles | Stage 3 feed |
| **Undegraded polymer** | 5-10% | High-MW fractions, crosslinked | Stage 3 feed |

---
