## 2.4 SmCo Property Formulas

**Energy Product (2:17 Series — Higher $B_r$)**:
$$(BH)_{max} \approx \frac{B_r^2}{4\mu_0} \left(1 - \frac{H_{cB}}{H_{cJ}}\right) \quad \text{(rectangular loop approximation)}$$

For S30H ($B_r = 1.075$ T, $H_{cB}/H_{cJ} \approx 0.45$):
$$(BH)_{max} \approx \frac{1.075^2}{4\mu_0} (1 - 0.45) = 236 \text{ kJ/m}^3 = 29.7 \text{ MGOe}$$

**Temperature Stability Advantage (vs NdFeB)**:
$$\frac{\Delta B_r/B_r}{\Delta T} \bigg|_{\text{SmCo}} \approx \frac{1}{3} \frac{\Delta B_r/B_r}{\Delta T} \bigg|_{\text{NdFeB}}$$

**Curie Temperature ($T_c$)**:
- SmCo 1:5: $T_c \approx 750°C$
- SmCo 2:17: $T_c \approx 820°C$

**No Irreversible Loss up to $T_{max}$** — Unlike NdFeB, SmCo exhibits **fully reversible** temperature behavior within operating range.

**SmCo Demagnetization Curve (Straight-Line Approximation)**:
$$B(H) = B_r + \mu_0 H_{cB} \left(\frac{H}{H_{cB}}\right) \quad \text{for } |H| < H_{cB}$$
**Recoil Permeability**: $\mu_{rec} \approx 1.05-1.15 \mu_0$ (near-unity, minimal self-demagnetization)

**Thermal Demagnetization Kinetics (Néel-Arrhenius)**:
$$\tau = \tau_0 \exp\left(\frac{K V}{k_B T}\right) \quad \text{where } K \text{ = anisotropy constant, } V \text{ = grain volume}$$
For SmCo 2:17: $K \approx 15-20 \text{ MJ/m}^3$, $V \approx 10^{-24} \text{ m}^3$ → $\tau > 10^{10}$ years at 350°C.
