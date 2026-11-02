## 1.1 Grid-Following vs. Grid-Forming: Fundamental Distinction

The distinction between grid-following (GFL) and grid-forming (GFM) inverters is architectural, not merely parametric. A GFL inverter operates as a **controlled current source**, synchronizing to the grid voltage via a phase-locked loop (PLL) and injecting current at a commanded power factor. It requires a stiff grid voltage reference — essentially following the grid's voltage phasor. In contrast, a GFM inverter operates as a **controlled voltage source**, establishing its own voltage magnitude and phase angle at the point of common coupling (PCC), thereby forming the grid.

```math
\text{GFL: } I_{PCC} = f(V_{grid}, P^*, Q^*) \quad \text{(Current source, PLL-dependent)}
```
```math
\text{GFM: } V_{PCC} = f(P^*, Q^*, \omega_{ref}, V_{ref}) \quad \text{(Voltage source, PLL-free)}
```

This fundamental difference yields divergent capabilities:

| Capability | GFL Inverter | GFM Inverter |
|------------|--------------|--------------|
| Voltage reference | External (PLL) | Internal (self-synchronized) |
| Frequency reference | External (PLL) | Internal (self-synchronized) |
| Inertia provision | None (virtual inertia limited) | Synthetic inertia (H = 2–6 s configurable) |
| Blackstart | Not capable | Capable (with energy storage) |
| Fault current | Limited (1.1–1.2 pu) | Controllable (2–3 pu, short-term) |
| Short-circuit ratio (SCR) | Requires SCR > 2–3 | Operates at SCR < 1.5 |
| Islanded operation | Not capable | Native capability |
| Weak grid stability | Degrades with low SCR | Enhances stability in weak grids |

**Cross-reference**: DOC-11 Ch.3 (Transformer Hardening) established that GFL IBRs contribute minimal fault current, necessitating NBC/NGR for GIC protection. GFM inverters fundamentally alter this paradigm by providing controllable fault current.
