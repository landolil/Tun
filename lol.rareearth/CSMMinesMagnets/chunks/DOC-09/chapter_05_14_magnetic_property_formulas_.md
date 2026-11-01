## 1.4 Magnetic Property Formulas (NdFeB)

**Energy Product Maximum (Theoretical)**:
$$(BH)_{max} = \frac{B_r^2}{4\mu_0} \quad \text{where } \mu_0 = 4\pi \times 10^{-7} \text{ H/m}$$

For N48SH ($B_r = 1.395$ T):
$$(BH)_{max} = \frac{1.395^2}{4 \times 4\pi \times 10^{-7}} = 387 \text{ kJ/m}^3 = 48.7 \text{ MGOe}$$

**Temperature Coefficient of Remanence**:
$$\alpha_{Br} = \frac{1}{B_r} \frac{dB_r}{dT} \approx -0.11\%/°C \text{ (N48SH)}$$

**Irreversible Loss at Temperature $T$**:
$$\frac{\Delta B_r}{B_r} = \exp\left[-\left(\frac{T - T_{ref}}{T_0}\right)^2\right] \quad \text{where } T_0 \text{ depends on } H_{cJ}$$

**Coercivity Temperature Dependence (Kronmüller model)**:
$$H_{cJ}(T) = H_{cJ}(T_0) \left[1 - \alpha_{HcJ} (T - T_0)\right] \quad \alpha_{HcJ} \approx -0.55\%/°C \text{ (N48SH)}$$

**Demagnetization Curve (Jiles-Atherton Model)**:
$$M(H) = M_{an} + M_{rev} = M_s \left[\coth(H_e + \alpha M) - \frac{1}{H_e + \alpha M}\right] + c \frac{dM_{an}}{dH_e}$$
Where $H_e = H + \alpha M$, $M_s$ = saturation magnetization, $\alpha$ = domain wall density parameter, $c$ = domain wall flexibility coefficient.

**Hysteresis Loss per Cycle**:
$$W_h = \oint M dH = \mu_0 \int_{-H_{max}}^{H_{max}} M(H) dH \approx k_h B_{max}^\alpha f$$
With $\alpha \approx 1.6-2.0$ for NdFeB, $k_h \approx 0.02-0.05$ W/kg at 50 Hz, 1.5 T.

**Eddy Current Loss (Laminated vs Solid)**:
$$P_e = \frac{\pi^2 f^2 B_{max}^2 d^2}{6 \rho} \quad \text{(solid)}$$
$$P_e = \frac{\pi^2 f^2 B_{max}^2 t^2}{6 \rho} \quad \text{(laminated, thickness } t)$$
For NdFeB ($\rho \approx 150 \mu\Omega\cdot\text{cm}$), 1mm solid at 1 kHz, 1 T: $P_e \approx 110$ W/kg → **lamination essential for high-freq**.
