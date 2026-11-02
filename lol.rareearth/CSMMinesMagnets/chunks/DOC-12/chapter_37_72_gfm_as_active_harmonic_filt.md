## 7.2 GFM as Active Harmonic Filter

GFM inverters with sufficient current headroom (1.2–1.5 pu) can provide **selective harmonic compensation**:

```math
I_{comp,h} = - \frac{V_{PCC,h}}{Z_{grid,h} + Z_{inv,h}}
```

where $V_{PCC,h}$ is measured harmonic voltage, $Z_{grid,h}$ grid impedance at harmonic $h$, $Z_{inv,h}$ inverter output impedance (controlled via virtual impedance).

**Aegis-Forge Application**: Each 10 MW GFM module allocates 10% current capacity (1 MW) for harmonic compensation of mining loads (VFDs, rectifiers).
