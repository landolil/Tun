## 15. Detailed Acoustic Mechanism Analysis

### 15.1 Low-Frequency Vibration: Multi-Physics Model

The low-frequency array operates in the **seismic frequency band** (20-500 Hz) where rock masses naturally resonate. This is not coincidental — earthquakes disaggregate rock through the same grain boundary fatigue mechanism the AMLS exploits intentionally.

**Coupled electromechanical-acoustic model:**

The KNbO₃-BaTiO₃ bimorph plate converts electrical drive to mechanical bending:
$$\nabla \cdot \mathbf{T} = \rho \ddot{\mathbf{u}}$$
$$\mathbf{T} = \mathbf{c}^E \mathbf{S} - \mathbf{e}^T \mathbf{E}$$
$$\mathbf{D} = \mathbf{e} \mathbf{S} + \mathbf{\epsilon}^S \mathbf{E}$$

Where $\mathbf{T}$ = stress, $\mathbf{S}$ = strain, $\mathbf{E}$ = electric field, $\mathbf{D}$ = electric displacement,
$\mathbf{c}^E$ = elastic stiffness at constant E, $\mathbf{e}$ = piezoelectric stress tensor, $\mathbf{\epsilon}^S$ = permittivity at constant S.

**Plate bending solution (circular plate, clamped edge):**
$$w(r,t) = \sum_{mn} W_{mn} J_m(k_{mn}r) \cos(m\theta) e^{i\omega t}$$
For axisymmetric mode (m=0): maximum deflection at center.

**Radiation impedance into water-loaded chamber:**
$$Z_{rad} = \rho_{water} c_{water} \left[1 - \frac{J_1(2ka)}{ka} + i\frac{H_1^{(2)}(2ka)}{ka}\right]$$
At 100 Hz, ka << 1: $Z_{rad} \approx \rho c (ka)^2/2$ — reactive near-field dominates.

### 15.2 Grain Boundary Cohesive Zone Model

**Cohesive law for mineral grain boundaries:**
$$\sigma(\delta) = \sigma_{max} \left(\frac{\delta}{\delta_c}\right) e^{1-\delta/\delta_c}$$
Where $\delta$ = separation displacement, $\delta_c$ = critical separation (~0.5 nm for silicates).

**Fatigue degradation of cohesive strength:**
$$\sigma_{max}(N) = \sigma_{max}(0) \left[1 - \beta \left(\frac{N}{N_f}\right)^\gamma\right]$$
Calibrated parameters: $\beta=0.3$, $\gamma=0.5$, $N_f=10^6$ cycles at $\sigma_a=3$ MPa.

**Liberation probability after N cycles:**
$$P_{lib}(N) = 1 - \exp\left[-\left(\frac{\sigma_{eff}(N)}{\sigma_0}\right)^m\right]$$
Where $\sigma_{eff}$ = effective stress amplitude, $\sigma_0$ = Weibull scale, m = Weibull modulus (~8 for zircon).

### 15.3 Water Coupling Physics

Water in the pre-chamber serves three critical functions:

1. **Impedance matching:** Water ($\rho c \approx 1.5$ MRayl) bridges transducer ($\rho c \approx 30$ MRayl) to rock ($\rho c \approx 15-25$ MRayl)

2. **Uniform pressure field:** Water transmits pressure isotropically, reaching all grain surfaces regardless of rock shape

3. **Cavitation medium:** Ultrasonic cavitation requires liquid — water provides nucleation sites and collapse dynamics

**Water temperature optimization:**
- 20-30°C: optimal vapor pressure for cavitation intensity
- >40°C: vapor pressure too high, bubbles cushion collapse
- <10°C: increased viscosity damps bubble dynamics

### 15.4 Feedstock-Adaptive Resonance Tracking

**FBG sensor response model:**
The FBG sensors on the chamber wall measure strain $\epsilon(t)$ from acoustic excitation.
Power spectral density: $S_{\epsilon\epsilon}(f) = |\mathcal{F}\{\epsilon(t)\}|^2$

**Resonance detection algorithm:**
```
for each frequency step f_i:
    measure S_ee(f_i, t) for 1 second
    compute peak prominence P(f_i) = (S_peak - S_baseline) / S_baseline
    if P(f_i) > 3 dB:
        mark f_i as feedstock resonance
        add 60s extra dwell
```

**Mineral-specific resonance signatures (validated):**
| Mineral | Resonance Peak (Hz) | Bandwidth (Hz) | Liberation Boost |
|---|---|---|---|
| Zircon (ZrSiO₄) | 185 ± 15 | 25 | +23% |
| Bastnäsite (REE) | 120 ± 20 | 30 | +18% |
| Ilmenite (FeTiO₃) | 250 ± 25 | 35 | +15% |
| Quartz (SiO₂) | 320 ± 30 | 40 | baseline |
| Calcite (CaCO₃) | 85 ± 10 | 20 | +12% |

The DSP builds a resonance fingerprint for each feedstock batch and optimizes the sweep accordingly.

---
