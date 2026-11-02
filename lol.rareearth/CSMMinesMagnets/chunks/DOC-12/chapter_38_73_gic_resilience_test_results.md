## 7.3 GIC Resilience Test Results (Simulation / Field)

| Test Case | GFL Inverter | GFM Inverter (Droop) | GFM Inverter (VSM) |
|-----------|--------------|---------------------|-------------------|
| **Carrington-class (1760 nT/min)** | Trips (PLL loss) | Stable (V/f regulated) | Stable (inertia ride-through) |
| **Transformer Saturation (30% V_2)** | 45% reactive absorption | 5% reactive injection | 2% reactive injection |
| **Harmonic Resonance (SCR=1.2)** | Unstable (oscillatory) | Stable (damped) | Stable (damped) |
| **Post-GIC Recovery** | Manual restart | Auto-reconnect (< 5 s) | Auto-reconnect (< 5 s) |

**Cross-reference**: DOC-11 Ch.2 (GIC simulation for Chilean grid), Ch.3 (NBC/NGR hardening), Ch.5 (Aegis-Forge modular power).
