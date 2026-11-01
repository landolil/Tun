## 4.3 Fe-Co Property Formulas

**Saturation Flux Density (Slater-Pauling Curve)**:
$$B_s = \mu_0 M_s = \mu_0 \frac{N_A}{V_m} \mu_B (n_{Fe} \cdot 2.22 + n_{Co} \cdot 1.72)$$

For Fe₅₀Co₅₀:
$$B_s = 4\pi \times 10^{-7} \times \frac{6.022 \times 10^{23}}{7.1 \times 10^{-6}} \times 9.27 \times 10^{-24} \times (0.5 \times 2.22 + 0.5 \times 1.72) = 2.42 \text{ T}$$

**Core Loss (Steinmetz Equation)**:
$$P_{core} = k_h f B^\alpha + k_e f^2 B^2 + k_a f^{1.5} B^{1.5}$$
- Hysteresis: $k_h \approx 0.02$ W/kg (at 50 Hz, 1.5 T)
- Eddy current: $k_e \approx 0.0005$ (lamination dependent)
- Anomalous: $k_a \approx 0.001$

**Permeability vs. Flux Density**:
$$\mu(B) = \frac{B}{H} \approx \mu_{max} \exp\left[-\left(\frac{B}{B_{knee}}\right)^2\right] \quad B_{knee} \approx 1.8 \text{ T}$$

**Magnetostriction (Villari Effect — Stress Induced Anisotropy)**:
$$\lambda(\sigma) = \lambda_s \left[1 - \exp\left(-\frac{\sigma}{\sigma_0}\right)\right] \quad \lambda_s \approx 60-80 \text{ ppm}$$
For Fe₅₀Co₅₀: $\sigma_0 \approx 100 \text{ MPa}$ → **stress annealing critical** for low $H_c$.

**Electrical Resistivity (Alloy Scattering)**:
$$\rho = \rho_0 + \rho_{mag} + \rho_{imp}$$
Fe₅₀Co₅₀: $\rho \approx 25-30 \mu\Omega\cdot\text{cm}$ (vs Si-Fe: 50 $\mu\Omega\cdot\text{cm}$) → **higher eddy losses, thinner lams needed**.

**High-Frequency Permeability (Snoek's Limit)**:
$$\mu_{max} f_r = \frac{\gamma}{2\pi} M_s \approx 1.5 \times 10^{10} \text{ Hz} \quad \text{(for Fe-Co)}$$
Where $\gamma = 1.76 \times 10^{11} \text{ rad/s·T}$, $M_s = 1.92 \times 10^6 \text{ A/m}$.
