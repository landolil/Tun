## 2.1 Inertia in Power Systems: Physics and Metrics

System inertia $H$ (seconds) represents the kinetic energy stored in rotating masses per unit of system MVA:

```math
H_{sys} = \frac{\sum_{i=1}^{N} H_i S_i}{S_{base}} \quad [\text{s}]
```

where $H_i$ is the inertia constant of machine $i$ (typically 2–10 s for hydro, 3–9 s for thermal, 0 s for IBRs), and $S_i$ is its MVA rating. The RoCoF following a generation loss $\Delta P$ is:

```math
\text{RoCoF} = \frac{df}{dt} = \frac{\Delta P}{2 H_{sys} f_{nom}} \quad [\text{Hz/s}]
```

**Chilean Context**: With 36.8 GW installed capacity (18.5 GW ERNC) and coal retirement, $H_{sys}$ has declined from ~6 s (2015) to ~2.5 s (2024). CEN targets $H_{sys} \geq 3$ s via synthetic inertia.

**Cross-reference**: DOC-11 Ch.2 (Chilean Grid Vulnerability) documented SEN topology and declining inertia; Ch.4 (Substation Hardening) covered NERC TPL-007 adaptation for GFM.
