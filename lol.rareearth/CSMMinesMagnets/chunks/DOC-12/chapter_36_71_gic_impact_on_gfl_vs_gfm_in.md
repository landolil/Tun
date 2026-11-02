## 7.1 GIC Impact on GFL vs. GFM Inverters

Geomagnetically Induced Currents (GIC) cause transformer half-cycle saturation, injecting harmonics (2nd, 3rd, 5th) and reactive power demand into the grid.

**GFL Vulnerability** (DOC-11 Ch.3/4):
- PLL tracks distorted voltage → phase angle error → current injection at wrong angle
- Harmonic resonance with grid impedance (SCR-dependent)
- Reactive power consumption spikes (up to 50% rated)
- Potential tripping on overvoltage/overcurrent protection

**GFM Immunity**:
- No PLL (voltage-source) → immune to voltage distortion for synchronization
- Inner current loop rejects harmonic currents (high bandwidth)
- Can **inject compensating harmonics** (active filtering) if programmed
- Controllable fault current aids protection coordination

**Formula — PLL Phase Error under GIC Distortion:**
```math
\Delta \theta_{PLL} \approx \frac{V_2}{V_1} \sin(2\theta) + \frac{V_3}{V_1} \sin(3\theta) + \dots
```
For GIC event ($V_2/V_1 = 10\%$, $V_3/V_1 = 5\%$): $\Delta \theta_{PLL} \approx 8^\circ$–$15^\circ$ → GFL power factor error > 0.15 pu. GFM: $\Delta \theta = 0$.
