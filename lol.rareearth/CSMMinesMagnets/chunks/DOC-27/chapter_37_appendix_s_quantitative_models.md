## Appendix S: Quantitative Models — Full Mathematical Specifications

### S.1 Hydro-Social Carrying Capacity — Complete Model

**Full Dynamic Model** (annual time-step, 20-year projection):

$$H_{capacity,v}(t) = \frac{Q_{surface,v}(t) \cdot \eta_{irr}(t) \cdot A_{arable,v}(t)}{W_{crop,v}(t) \cdot P_{pop,v}(t)} \cdot \left(1 - \frac{W_{mining,v}(t)}{Q_{avail,v}(t)}\right)$$

**Climate Forcing** (CR2 RCP 4.5 Downscaled):
$$Q_{surface,v}(t) = Q_{surface,v}(2024) \cdot \left(1 - 0.015 \cdot (t - 2024)\right) \cdot \epsilon_v(t)$$
Where $\epsilon_v(t) \sim \mathcal{N}(1.0, 0.12)$ — **interannual variability**.

**Irrigation Efficiency Trajectory**:
$$\eta_{irr}(t) = \begin{cases}
0.45 + 0.40 \cdot \frac{t - 2010}{2030 - 2010} & 2010 \leq t \leq 2030 \\
0.85 & t > 2030
\end{cases}$$

**Arable Area Dynamics**:
$$A_{arable,v}(t) = A_{arable,v}(2024) \cdot \left(1 + g_{crop} \cdot (t - 2024)\right) - A_{lost,v}(t)$$
Where $g_{crop} = 0.015$/yr (crop switching to higher value), $A_{lost}$ = land lost to mining/urbanization.

**Population Projection** (with reverse migration):
$$P_{pop,v}(t) = P_{pop,v}(2024) \cdot e^{r_v \cdot (t - 2024)}$$
Where $r_v$ = -0.008 (2024), +0.003 (2026), +0.008 (2030), +0.012 (2035+)

**Scenario Results (HSI at Year 2035)**:

| Valley | Base Case (No Aegis) | With Aegis-Forge + WSF + Agro-Investment |
|--------|---------------------|------------------------------------------|
| **Elqui** | 1.12 | **0.78** |
| **Limarí** | 1.18 | **0.82** |
| **Choapa** | 1.35 | **0.88** |
| **Huasco** | 1.52 | **0.92** |

**Aegis-Forge + WSF + Agro-Investment FLIPS all valleys from deficit to surplus by 2035**.

### S.2 Cumulative Impact Assessment — Choapa Valley (Full)

**CIA Components (Annual, 2008–2024)**:

$$CIA_{Choapa}(t) = w_1 \cdot \frac{|\Delta Q_{baseflow}(t)|}{Q_{ref}} + w_2 \cdot \frac{C_{As}(t)}{C_{As,std}} + w_3 \cdot \frac{C_{SO_4}(t)}{C_{SO_4,std}} + w_4 \cdot \sigma_{seismic}(t) + w_5 \cdot P_{comm}(t)$$

**Weights** (Diaguita community survey, Analytic Hierarchy Process):
- $w_1$ = 0.30 (water quantity)
- $w_2$ = 0.25 (arsenic)
- $w_3$ = 0.20 (sulfate)
- $w_4$ = 0.15 (seismic risk)
- $w_5$ = 0.10 (community perception)

**Time Series (2008–2024)**:

| Year | ΔQ/Q_ref | As/Std | SO₄/Std | Seismic | Perception | CIA |
|------|----------|--------|---------|---------|------------|-----|
| 2008 | 0.18 | 0.10 | 0.15 | 0.20 | 0.15 | **0.16** |
| 2010 | 0.22 | 0.15 | 0.20 | 0.20 | 0.25 | **0.21** |
| 2012 | 0.28 | 0.30 | 0.35 | 0.20 | 0.40 | **0.30** |
| 2015 | 0.32 | 0.55 | 0.50 | 0.20 | 0.60 | **0.42** |
| 2018 | 0.30 | 0.85 | 0.75 | 0.20 | 0.75 | **0.54** |
| 2021 | 0.28 | 1.20 | 0.95 | 0.20 | 0.85 | **0.67** |
| 2024 | 0.25 | 1.80 | 1.12 | 0.25 | 0.95 | **0.97** |

**Projection with Aegis-Forge + WSF (2025–2035)**:

| Year | ΔQ/Q_ref | As/Std | SO₄/Std | Seismic | Perception | CIA |
|------|----------|--------|---------|---------|------------|-----|
| 2025 | 0.22 | 1.50 | 1.00 | 0.25 | 0.90 | 0.85 |
| 2027 | 0.15 | 0.80 | 0.60 | 0.25 | 0.60 | 0.48 |
| 2030 | 0.08 | 0.30 | 0.30 | 0.20 | 0.30 | 0.20 |
| 2035 | 0.05 | 0.10 | 0.15 | 0.15 | 0.15 | **0.11** |

**CIA drops from 0.97 (Critical) to 0.11 (Low) by 2035** — **Aegis-Forge + WSF reverses cumulative impact**.

### S.3 REE Value-Chain Capture — Dynamic Optimization

**Objective**: Maximize Chilean value capture subject to Diaguita consent constraints.

**Decision Variables**:
- $x_1$ = REE oxide export fraction (0–1)
- $x_2$ = Metal production fraction (0–1)
- $x_3$ = Alloy production fraction (0–1)
- $x_4$ = Magnet manufacturing fraction (0–1)

**Constraints**:
- $x_1 + x_2 + x_3 + x_4 = 1$
- $x_4 \geq 0.5$ (Diaguita mandate: majority magnet manufacturing in Chile)
- $x_3 \geq 0.2$ (Diaguita mandate: alloy production in Chile)
- $x_2 \geq 0.15$ (Diaguita mandate: metal production in Chile)
- $x_1 \leq 0.15$ (Diaguita mandate: minimal raw oxide export)

**Value Capture Function**:
$$V_{capture} = x_1 \cdot V_{oxide} + x_2 \cdot V_{metal} + x_3 \cdot V_{alloy} + x_4 \cdot V_{magnet}$$
Where $V_{oxide} = 1.0$, $V_{metal} = 1.9$, $V_{alloy} = 2.7$, $V_{magnet} = 4.5$ (relative value multipliers).

**Optimal Solution** (Diaguita constraints):
- $x_1^* = 0.15$, $x_2^* = 0.15$, $x_3^* = 0.20$, $x_4^* = 0.50$
- **$V_{capture}^* = 3.25$** (65% of theoretical maximum 5.0)
- **Unconstrained optimum**: $x_4 = 1.0$ → $V = 4.5$ (90% capture) — **but requires full vertical integration capital US$500M+**

**Diaguita Constraint Rationale**: **Balances capital efficiency (US$180M) with sovereignty (65% capture)** — **achievable with FBC/CDC capital structure**.

---
