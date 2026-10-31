## 2. Liberation Physics

### 2.1 Grain Boundary Fracture Mechanics

The fundamental mechanism of acoustic mineral liberation is **progressive grain boundary fatigue** induced by cyclic stress waves. Unlike crushing, which applies compressive overload causing transgranular fracture and fines generation, acoustic liberation exploits the natural weakness of grain boundaries.

**Grain boundary fracture toughness:**
$$K_{IC}^{gb} \approx 1.5 \text{ MPa·m}^{0.5}$$
(Compared to transgranular $K_{IC} \approx 3.5 \text{ MPa·m}^{0.5}$ for zircon)

**Stress wave equation in heterogeneous media:**
$$\nabla^2 \mathbf{u} = \frac{1}{c^2} \frac{\partial^2 \mathbf{u}}{\partial t^2}$$
Where $\mathbf{u}$ is the displacement vector, $c$ is the phase velocity in the composite matrix.

**Acoustic stress at grain boundary:**
$$\sigma_{acoustic} = \rho c \omega A$$
Where $\rho$ = density (4650 kg/m³ for zircon), $c$ = wave speed, $\omega$ = angular frequency, $A$ = displacement amplitude.

At the AMLS operating parameters (LF: 100 Hz, $A \approx 50 \mu m$; US: 40 kHz, $A \approx 5 \mu m$):
- LF acoustic stress: $\sigma_{LF} \approx 2.9 \text{ MPa}$ — below single-cycle fracture, accumulates over $10^3-10^6$ cycles
- US acoustic stress: $\sigma_{US} \approx 1.2 \text{ MPa}$ at grain boundary, enhanced by cavitation microjets to local 100+ MPa

### 2.2 Resonant Frequency of Embedded Grains

The effective resonant frequency of a mineral grain embedded in a rock matrix is significantly lower than its free vibration frequency due to matrix constraint:

**Free grain resonance (isolated):**
$$f_{free} = \frac{1}{2L}\sqrt{\frac{E}{\rho}}$$

**Matrix-constrained resonance (seismic range):**
$$f_{eff} \approx f_{free} \times \sqrt{\frac{K_{gb}}{K_{matrix}}} \times \left(\frac{V_{grain}}{V_{matrix}}\right)^{1/3}$$
Where $K_{gb}$ = grain boundary stiffness, $K_{matrix}$ = matrix bulk modulus.

For zircon ($E=220$ GPa, $\rho=4650$ kg/m³, $L=0.5$ mm): $f_{free} \approx 1.7$ MHz
In silica matrix: $f_{eff} \approx 50-200$ Hz — matching earthquake disaggregation frequencies.

This matrix-constrained resonance is the **acoustic lock** that the AMLS key (frequency sweep) must turn.

### 2.3 Fatigue Accumulation Model

Grain boundary failure follows Miner's rule for cumulative fatigue damage:
$$D = \sum_{i} \frac{n_i}{N_i}$$
Where $n_i$ = cycles at stress level $\sigma_i$, $N_i$ = cycles to failure at $\sigma_i$.

For sinusoidal loading at $\sigma_a = 2.9$ MPa (LF array):
$$N_f \approx 10^6 \text{ cycles} \quad \text{at} \quad \sigma_a / \sigma_{UTS}^{gb} \approx 0.15$$
With 100 Hz sweep over 15 min (900 s): $n = 90,000$ cycles per frequency step.
30-second dwell at 20 frequencies: $D \approx 0.9$ — near complete boundary failure.

---
