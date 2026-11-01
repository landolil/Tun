## Appendix B: Derivation of Key Equations

### B.1 Class E ZVS Condition Derivation

For Class E operation with shunt capacitance C:

The switch voltage waveform:
$$v(t) = V_{DD} + \frac{I_{DC}}{\omega C} \sin(\omega t) - \frac{V_{DD} \pi}{2} \sin(\omega t + \phi)$$

ZVS requires $v(0) = 0$ and $dv/dt|_{t=0} = 0$:

$$V_{DD} - \frac{V_{DD} \pi}{2} \sin(\phi) = 0 \Rightarrow \sin(\phi) = \frac{2}{\pi}$$

$$\frac{I_{DC}}{\omega C} - \frac{V_{DD} \pi}{2} \cos(\phi) = 0 \Rightarrow \frac{I_{DC}}{\omega C} = \frac{V_{DD} \pi}{2} \sqrt{1 - \frac{4}{\pi^2}}$$

Solving for optimal load resistance:
$$R_{opt} = \frac{8}{\pi^2 + 4} \frac{V_{DD}^2}{P_{out}} \approx 0.577 \frac{V_{DD}^2}{P_{out}}$$

### B.2 Skin Depth with Temperature-Dependent Resistivity

For metals, resistivity increases linearly with temperature:
$$\rho(T) = \rho_0 [1 + \alpha (T - T_0)]$$

Where $\alpha$ = temperature coefficient of resistance (TCR):
| Material | TCR (×10⁻³/K) |
|----------|--------------|
| Copper | 3.93 |
| Aluminum | 4.29 |
| Iron | 5.0–6.5 |
| Nickel | 6.0 |

Substituting into skin depth:
$$\delta(T) = \sqrt{\frac{2\rho_0[1+\alpha(T-T_0)]}{\omega\mu}}$$

At 1000°C, copper resistivity is ~5× room temperature, increasing skin depth by √5 ≈ 2.2×.

### B.3 Ferromagnetic Heating Enhancement Factor

Below Curie temperature, ferromagnetic materials exhibit hysteresis heating:

$$P_{hyst} = k_h f B_{peak}^n V$$

Where $k_h$ = hysteresis coefficient, $n$ ≈ 1.6–2.0 (Steinmetz exponent).

Total heating power:
$$P_{total} = P_{eddy} + P_{hyst} = \frac{\pi^2 B_{peak}^2 d^2 f^2 V}{6\rho} + k_h f B_{peak}^n V$$

At 2 kHz with B<sub>peak</sub> = 33 mT, iron hysteresis loss dominates eddy current loss by ~10× below Curie.

---
