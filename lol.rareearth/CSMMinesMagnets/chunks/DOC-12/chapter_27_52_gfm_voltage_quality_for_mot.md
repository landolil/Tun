## 5.2 GFM Voltage Quality for Motor Drives

GFM inverters provide superior voltage quality vs. GFL for motor drives:

| Parameter | GFL (Weak Grid) | GFM (Aegis-Forge) | Requirement |
|-----------|-----------------|-------------------|-------------|
| **THDv** | 5–8% (resonance) | **< 2%** | < 3% (IEC 60034) |
| **Voltage Unbalance** | 2–3% | **< 0.5%** | < 1% (NEMA MG-1) |
| **Frequency Stability** | ±0.5 Hz (PLL jitter) | **±0.02 Hz** | ±0.1% (motor thermal) |
| **Fault Ride-Through** | Trips at 0.2 pu | **Rides to 0.15 pu** | 90 min (Chile) |

**Formula — Motor Torque Ripple from Voltage Harmonics:**
```math
\frac{\Delta T}{T_{rated}} \approx \sum_{h=5,7,11...} \frac{V_h}{V_1} \cdot \frac{X_h}{R_s} \cdot k_{motor}
```

For Fe₁₆N₂ motor (high resistivity rotor): $X_h/R_s \approx 0.1$ at 5th harmonic. With GFM THDv = 2% ($V_5 \approx 1.5\%$): $\Delta T/T < 0.15\%$ (negligible). With GFL THDv = 6%: $\Delta T/T > 1\%$ (thermal derating required).
