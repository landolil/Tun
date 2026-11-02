## 4. Stage 3 — Pyrolysis and Carbon Char Formation: Reaction Engineering

### 4.1 Thermoset Decomposition Kinetics

**Global Pyrolysis Reaction:**
$$\text{Polymer} \xrightarrow{\Delta, 500°C} \text{Char (C)} + \text{Gas (CO, CO}_2\text{, H}_2\text{O, H}_2\text{)}$$

**Kinetic Model (Distributed Activation Energy):**
$$\frac{d\alpha}{dt} = \int_0^\infty A(E) e^{-E/RT} f(\alpha) dE$$

For practical engineering, use lumped 3-reaction model:
1. Light volatiles (E₁=120 kJ/mol, A₁=10¹⁰ s⁻¹)
2. Heavy tars (E₂=180 kJ/mol, A₂=10¹³ s⁻¹)  
3. Char formation (E₃=220 kJ/mol, A₃=10¹⁵ s⁻¹)

### 4.2 Carbon Yields by Feedstock Type

| Feedstock | Char Yield (wt%) | Char C Content | Surface Area (m²/g) | Applications |
|---|---|---|---|---|
| Epoxy resin | 15-25% | 85-90% | 300-500 | Activated carbon |
| FR4 (glass-epoxy) | 40-50% | 60-70% | 200-400 | Carburizing agent |
| Rubber/elastomer | 25-40% | 80-90% | 400-800 | Carbon black substitute |
| Phenolic resin | 50-60% | 90-95% | 500-800 | Graphite precursor |
| Cellulosic | 20-30% | 75-85% | 300-600 | Activated carbon |
| Mixed e-waste | 12-18% | 80-95% | 200-800 | All above |

### 4.3 FR4 PCB Substrate — Detailed Thermal Profile

- T_onset: 350-420°C (halogen content shifts onset lower)
- T_peak weight loss: 480-520°C (main epoxy decomposition)
- Residue at 700°C: ~20% (SiO₂ glass fibers + inorganic fillers + carbon char)
- Gas composition at peak: CO 35%, CO₂ 25%, H₂O 20%, H₂ 10%, CH₄ 5%, BTX 5%

### 4.4 Char Collection and Valorization

**Port 3 Operation:**
- Opens at 700°C (above pyrolysis completion)
- Dry, granular discharge to ZrO₂-lined ceramic bin
- Weight: 8-15% of organic input mass
- Immediate use: 50% → Stage 1 carbon bed, 50% → product output

**Char Properties for Downstream Use:**
- Activated carbon: Steam/CO₂ activation at 800°C → 1000-1500 m²/g
- Carburizing agent: 85% C, low ash, consistent reactivity
- Electrode precursor: Graphitization at 2800°C → synthetic graphite

### 4.5 Pyrolysis Gas Management

**Operating Mode:** Partial pyrolysis (<2% O₂, N₂ sweep)
- Higher char yield (vs combustion)
- Lower gas volume (easier treatment)
- Gas calorific value: 18-22 MJ/m³ (CO + CH₄ + H₂)

**Gas Treatment Train:**
1. Cyclone (char carryover removal)
2. Thermal oxidizer (800°C, catalytic Pt/Al₂O₃) → CO₂ + H₂O
3. CO₂ capture: NaHCO₃ slurry scrubber
4. Heat recovery: Preheat Stage 1 N₂ inlet

---
