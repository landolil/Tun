## 4.4 Multi-GFM Parallel Operation on DC Bus

Multiple GFM inverters (one per 10 MW Aegis-Forge module) operate in parallel on the AC collection bus **without communication** via droop-based power sharing:

```math
\omega_i = \omega_{nom} - m_{p,i} (P_i - P_{nom,i})
```
```math
V_i = V_{nom} - n_{q,i} (Q_i - Q_{nom,i})
```

**Power Sharing Accuracy**: ±2% with matched droop coefficients; ±5% with manufacturing tolerances.

**Virtual Impedance** for circulating current suppression:
```math
Z_{vir} = R_{vir} + j X_{vir} \quad \text{(typically } R_{vir} = 0.1–0.5\ \Omega, X_{vir} = 0.5–2\ \Omega\text{)}
```
