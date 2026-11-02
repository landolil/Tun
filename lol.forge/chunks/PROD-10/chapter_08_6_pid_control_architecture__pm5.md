## 6. PID Control Architecture — ±5°C Zone Control with Resonance Tracking

The control system maintains each zone at its thermal setpoint while simultaneously tracking the resonant frequency of the Class E inverter to maintain ZVS.

### 6.1 Dual-Loop Control Structure

```
                    ┌─────────────────────┐
   T_setpoint ────►│   Thermal PID       │───► Power Command (kW)
                    │   (Outer Loop)      │       100 ms update
                    └─────────┬───────────┘
                              │
                              ▼
                    ┌─────────────────────┐
                    │   Power-to-Freq     │
                    │   Mapping Table     │
                    └─────────┬───────────┘
                              │
                              ▼
                    ┌─────────────────────┐
   V_DS Zero-Cross─►│   Resonance Tracker │───► Varactor Bias / Cap Bank
   (Inner Loop)     │   (Inner Loop)      │       10 ms update
                    └─────────────────────┘
```

### 6.2 Thermal PID (Outer Loop) — 100 ms Update

$$u(t) = K_p e(t) + K_i \int e(t) dt + K_d \frac{de(t)}{dt}$$

| Zone | K<sub>p</sub> | K<sub>i</sub> (s⁻¹) | K<sub>d</sub> (s) | Anti-Windup |
|------|--------------|-------------------|------------------|-------------|
| Z1–Z2 | 0.8 | 0.02 | 0.5 | ±10% output clamp |
| Z3 | 1.0 | 0.03 | 0.8 | ±10% |
| Z4–Z5 | 1.2 | 0.05 | 1.0 | ±10% |
| Z6 | 1.5 | 0.08 | 1.2 | ±10% |
| Z7 | 1.8 | 0.10 | 1.5 | ±10% |
| Z8 | 2.0 | 0.15 | 2.0 | ±10% |

Gains increase at lower frequencies (higher power zones) because thermal mass dominates response.

### 6.3 Resonance Tracker (Inner Loop) — 10 ms Update

The Class E inverter maintains ZVS by detecting the switch voltage zero-crossing and comparing to the gate drive timing. A phase-locked loop (PLL) structure adjusts the varactor bias voltage to align the voltage zero-crossing with the gate turn-on instant:

$$\phi_{error} = t_{V_{DS}=0} - t_{gate-on}$$

$$\Delta V_{varactor} = K_{p,PLL} \phi_{error} + K_{i,PLL} \int \phi_{error} dt$$

This inner loop runs at 100 Hz (10 ms), 10× faster than the thermal loop, ensuring ZVS is maintained during thermal transients.

### 6.4 Feedforward Compensation

A feedforward term based on the zone's thermal model predicts the power required for the next setpoint change:

$$P_{ff} = m c_p \frac{dT}{dt} + h A (T - T_{amb}) + \epsilon \sigma A (T^4 - T_{amb}^4)$$

Where the radiative term dominates above 800°C. The feedforward reduces thermal PID integral windup during ramp phases.

---
