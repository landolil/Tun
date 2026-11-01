## 4.1 Vacuum Sintering (NdFeB, SmCo)

### 4.1.1 Sintering Cycle

| Stage | Temperature | Time | Atmosphere | Purpose |
|-------|-------------|------|------------|---------|
| Debind | 300–500°C | 1–2 h | Vacuum/Ar | Remove binder |
| Pre-sinter | 900–1000°C | 0.5–1 h | Vacuum | Neck formation |
| Main Sinter | 1050–1150°C | 2–4 h | Ar (0.1–0.5 MPa) | Densification |
| Cool (controlled) | 1150→600°C | 3–5 h | Ar | Microstructure freeze |
| Aging | 500–600°C | 1–3 h | Vacuum | Grain boundary diffusion |

### 4.1.2 Densification Model

Relative density evolution:

$$\frac{d\rho}{dt} = A \cdot \exp\left(-\frac{Q}{RT}\right) \cdot \sigma^n \cdot (1-\rho)^m$$

Where:
- $\rho$ = relative density
- $Q$ = activation energy (NdFeB: 350–400 kJ/mol)
- $\sigma$ = applied pressure (Ar overpressure)
- $n, m$ = material constants
- Target: $\rho > 0.96$ (96% theoretical density)

### 4.1.3 Grain Boundary Diffusion (GBD) — Heavy REE Addition

Post-sinter Dy/Tb/Ga diffusion for coercivity enhancement:

$$\text{Dy}_{\text{surface}} \xrightarrow{\text{900–950°C, 2–4 h}} \text{Dy}_{\text{GB}}$$

**Diffusion Depth:**
$$\delta = \sqrt{D \cdot t} \approx \sqrt{10^{-12} \cdot 7200} \approx 85 \text{ μm}$$

**Coercivity Gain:**
$$\Delta H_{cJ} = \frac{2\Delta K_1}{\mu_0 M_s} \cdot \frac{\delta}{d_{\text{grain}}} \approx 300\text{–}500 \text{ kA/m per wt% Dy}$$

**Cost Trade-off:**
$$\text{Cost}_{\text{GBD}} = C_{\text{Dy}} \times m_{\text{Dy}} + C_{\text{process}} \approx \$4,100/\text{kg} \times 0.02 + \$50/\text{kg} \approx \$132/\text{kg magnet}$$

---
