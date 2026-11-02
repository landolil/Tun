## 6. Induction Coupling Physics — Deep Dive

### 6.1 Coupling Coefficient and Efficiency

**Coupling Coefficient (k):**
$$k = \frac{M}{\sqrt{L_1 L_2}}$$

Where M = mutual inductance (coil-feedstock), L_1 = coil inductance, L_2 = feedstock loop inductance.

**Typical Values:**
- Stage 2 (polymers): k < 0.01 (air coupling)
- Stage 4 (Zn/Pb): k = 0.15-0.25
- Stage 5 (Al): k = 0.20-0.30
- Stage 6 (Cu): k = 0.25-0.35
- Stage 7 (Fe): k = 0.30-0.45 (ferromagnetic enhancement)
- Stage 8 (minerals): k = 0.05-0.10

**Power Transfer Efficiency:**
$$\eta = \frac{k^2 Q_1 Q_2}{1 + k^2 Q_1 Q_2}$$

Where Q = quality factor. At resonance, Q > 100 → η > 95% for k > 0.1.

### 6.2 Multi-Material Coupling in Mixed Feedstock

In reality, feedstock is a mixture. The **effective coupling** is the volume-weighted sum:

$$P_{total} = \sum_i \phi_i P_i(f, T, \text{geometry}_i)$$

Where ϕ_i = volume fraction of material i.

**Selectivity Mechanism:**
At Stage 5 (10 kHz, 700°C):
- Al particles: ρ=3.5×10⁻⁸, δ=2.1 mm → strong coupling
- Cu particles: ρ=3.2×10⁻⁸, but T < Tm(Cu)=1085°C → solid, δ=2.1 mm BUT no melt
- Fe particles: ρ=1.2×10⁻⁷, paramagnetic at 700°C → weak coupling
- Result: Al heats 5× faster than Cu, 15× faster than Fe

This is the **inductive sorting bias** — the frequency/zone design makes it physics, not control.

---
