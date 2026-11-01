## Appendix D: Resonance Tracking - Advanced Algorithms

### D.1 Phase-Locked Loop vs Physical Resonance Lock

**Traditional PLL:**
- Reference: Crystal oscillator
- VCO: Voltage-controlled oscillator
- Phase detector: XOR or mixer
- Loop filter: PI controller
- Lock range: Limited by VCO tuning range

**Physical Resonance Lock (Aegis-Forge):**
- Reference: Coil's natural resonant frequency (LC tank)
- "VCO": Inverter frequency (directly controlled)
- Phase detector: Optical CT measures phi = angle(V,I)
- Loop filter: PI on phase error
- Lock range: Physical - tank Q determines capture range

**Capture Range Analysis:**
For series resonant circuit, phase vs frequency:
phi(f) = atan(Q * (f/f0 - f0/f))

Near resonance (f ≈ f0): phi ≈ 2*Q*(f-f0)/f0
Capture condition: |phi| < 90 deg → |f-f0|/f0 < 1/(2*Q)

Zone 5 (Q=30): Capture range = ±1.67% of f0
Zone 8 (Q=50): Capture range = ±1.0% of f0

**Tracking Range (Locked):**
Once locked, can track ±5% (as designed) via frequency adjustment
Limited by: DC bus voltage range, GaN f_max, coil voltage rating

### D.2 Adaptive Resonance Tracking with Feedstock Estimation

The resonance frequency shifts as feedstock composition changes:
f_res = 1 / (2*pi*sqrt(L_coil * (C_res + C_feedstock)))

Where C_feedstock = equivalent capacitance of coupled feedstock
C_feedstock ~ epsilon_r * epsilon_0 * A / d (for dielectric)
For conductive feedstock: reflected impedance R_ac + jX_ac

**Online Feedstock Estimation:**
1. Track f_res(t) and phi(t)
2. Compute dF/dt during ramp
3. Correlate with known material entry/exit schedule
4. Build impedance model: Z_feedstock(f) = V_coil(f) / I_coil(f) - Z_coil(f)

**Kalman Filter for Resonance Tracking:**
State: x = [f_res, df_res/dt, R_ac]^T
Measurement: z = [phi, |V|, |I|]^T
Process noise: Q = diag([0.01, 0.001, 0.1])
Measurement noise: R = diag([0.001, 0.01, 0.01])

This enables predictive frequency adjustment BEFORE phase error accumulates.

---
