## 7.4 GFM as GIC Mitigation Asset

### 7.4.1 Active GIC Blocking via GFM Neutral Control

For GFM inverters with accessible neutral (4-wire connection), the zero-sequence current can be controlled to counteract GIC:

```math
I_{0,GFM} = - \frac{V_{GIC,0}}{Z_{0,grid} + Z_{0,inv}}
```

where $V_{GIC,0}$ is the zero-sequence voltage induced by GIC, $Z_{0,grid}$ is grid zero-sequence impedance, and $Z_{0,inv}$ is inverter zero-sequence impedance (controlled via neutral current reference).

**Effectiveness**: Up to 80% GIC reduction in transformer neutral for GFM penetration > 30%.

### 7.4.2 GFM Reactive Power Support During GIC

Transformer half-cycle saturation consumes reactive power ($Q_{sat} \propto V_{GIC}^2$). GFM inverters provide dynamic VAR support:

```math
Q_{GFM,GIC} = Q_{nom} + K_{Q,GIC} \cdot V_{2nd}^2
```

where $V_{2nd}$ is measured 2nd harmonic voltage (GIC proxy), $K_{Q,GIC}$ is gain (typically 0.5–2.0 MVAr/%²).

**Chilean Application**: At 220 kV substations in Antofagasta (SCR ~1.5), 50 MVar GFM BESS reduces voltage depression from 15% to < 5% during Carrington-class GIC.

### 7.4.3 GFM Fault Current for Protection Coordination

GIC causes protection misoperation (overcurrent, differential). GFM controllable fault current enables adaptive protection:

```math
I_{fault,GFM} = I_{fault,base} \cdot (1 + K_{adapt} \cdot V_{GIC})
```

where $K_{adapt}$ adjusts fault current contribution to maintain coordination with downstream relays.

**Cross-reference**: DOC-11 Ch.3 (NBC/NGR for GIC blocking), Ch.4 (relay coordination under GIC), Ch.7 (operational protocols).

---
