## 2.3 Fast Frequency Response (FFR) vs. Synthetic Inertia

| Characteristic | Synthetic Inertia | Fast Frequency Response (FFR) |
|----------------|-------------------|-------------------------------|
| Trigger | RoCoF (df/dt) | Frequency deviation ($\Delta f$) |
| Response Time | < 100 ms (instantaneous) | 100–500 ms |
| Duration | 5–30 s (energy-limited) | 30 s – 15 min |
| Energy Source | DC link capacitor + battery | Battery SoC reserved |
| Control Law | $K_{inertia} \cdot df/dt$ | $K_{FFR} \cdot \Delta f$ |

**Chilean Market Design** (CEN 2025 proposal): Separate ancillary service products for:
- **Inertia Service**: Compensated per MW·s provided (referential ~3 GVA system-wide)
- **FFR Service**: Compensated per MW activated (1–3 s response)

**Formula — Synthetic Inertia Energy Requirement:**
```math
E_{inertia} = \frac{1}{2} \cdot 2 H_{vsm} S_{rated} \left( \frac{\Delta f_{max}}{f_{nom}} \right)^2 \quad [\text{MWh}]
```

For $H_{vsm} = 4$ s, $S_{rated} = 50$ MW, $\Delta f_{max} = 0.5$ Hz: $E_{inertia} \approx 0.06$ MWh (feasible from DC link + battery headroom).
