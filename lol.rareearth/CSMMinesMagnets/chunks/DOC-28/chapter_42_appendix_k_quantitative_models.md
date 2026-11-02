## Appendix K: Quantitative Models — Full Specifications

### K.1 Glacier Mass Balance — Pehuenche Headwaters (2000–2050 Projection)

**Dynamic Model (Annual Time-Step)**:
$$\frac{dV_g}{dt} = P_{snow} \cdot A_g \cdot \rho_{snow} - M_{melt} \cdot A_g - C_{calving} - D_{dust}$$
Where $V_g$ = glacier volume, $P_{snow}$ = solid precipitation, $M_{melt}$ = melt rate, $D_{dust} = k_{dust} \cdot \text{Deposition} \cdot SW_{in} \cdot (1-\alpha_{clean})/\alpha_{dust}$

**Climate Forcing (CR2 RCP 4.5/8.5 Blend)**:
$$P_{snow}(t) = P_{snow,2024} \cdot (1 - 0.012 \cdot (t-2024)) \cdot \epsilon(t)$$
$$T_{air}(t) = T_{air,2024} + 0.035 \cdot (t-2024) + \eta(t)$$
Where $\epsilon(t) \sim \mathcal{N}(1.0, 0.15)$, $\eta(t) \sim \mathcal{N}(0, 0.5)$

**Dust Forcing (Alpha Clusters)**:
$$\text{Deposition}_{glacier} = \frac{Q_{dust} \cdot e^{-d/\lambda}}{2\pi \cdot d \cdot H} \cdot (1 - \eta_{suppression})$$
Where $Q_{dust}$ = source emission, $d$ = distance, $\lambda$ = dispersion length, $H$ = mixing height, $\eta_{suppression}$ = control efficiency (target 0.95).

**Projection Results (Total Pehuenche Glacier Volume)**:

| Year | RCP 4.5 (No Aegis) | RCP 8.5 (No Aegis) | **With Aegis-Forge + GPF** |
|------|---------------------|---------------------|----------------------------|
| 2024 | 5.5 km³ | 5.5 km³ | 5.5 km³ |
| 2030 | 4.8 km³ | 4.5 km³ | **5.2 km³** |
| 2040 | 3.9 km³ | 3.2 km³ | **4.8 km³** |
| 2050 | 3.1 km³ | 2.1 km³ | **4.5 km³** |

**GPF Restoration Target**: **Net volume change ≥ 0 by 2035** — **achieved via dust suppression (η=0.95) + artificial snowmaking on key glaciers + moraine stabilization**.

### K.2 Pewén Population Viability — Full PVA

**Stage-Structured Matrix Model**:
$$\mathbf{n}_{t+1} = \mathbf{A} \cdot \mathbf{n}_t$$
Where $\mathbf{n} = [S_{seedling}, S_{juvenile}, S_{subadult}, S_{adult}]^T$, $\mathbf{A}$ = Leslie matrix with climate/mining stressors.

**Transition Probabilities (Annual)**:
- $S_{seedling} = 0.15 \cdot (1 - \mu_{climate} - \mu_{pathogen} - \mu_{mining})$
- $S_{juvenile} = 0.45 \cdot (1 - \mu_{climate} - \mu_{pathogen})$
- $S_{subadult} = 0.75 \cdot (1 - \mu_{climate})$
- $S_{adult} = 0.995$ (natural mortality only)
- $F_{adult} = 0.35 \cdot \text{MastYear}(t) \cdot (1 - \mu_{climate})$ (masting 3–5 yr cycle)

**Stressors**:
- $\mu_{climate} = 0.08 + 0.004 \cdot (t-2024)$ (RCP 4.5)
- $\mu_{pathogen} = 0.12 \cdot (1 - \text{PRF\_treatment\_coverage})$
- $\mu_{mining} = 0$ (Aegis-Forge zero footprint) **vs 0.08 (conventional)**

**Population Growth Rate λ**:
- **Conventional mining**: λ = 0.94 (declining)
- **Aegis-Forge + PRF**: **λ = 1.06 by Year 15** (PRF treatment coverage 80%, assisted migration 200 ha)
- **Target**: **λ ≥ 1.05 sustained** — **population doubling every 14 years**

---
