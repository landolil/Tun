## 5.4 GFM-Motor Co-Design Optimization

### 5.4.1 Sensorless FOC for Fe₁₆N₂ on GFM Voltage Source

Fe₁₆N₂ (α''-Fe₁₆N₂) motors from Niron Magnetics (27 MGOe) use sensorless Field-Oriented Control (FOC) with high-frequency injection (HFI) for rotor position estimation:

```math
v_{hf} = V_{hf} \sin(\omega_{hf} t) \quad \text{injected on } d\text{-axis}
```
```math
i_{hf,q} \approx \frac{V_{hf}}{(\omega_{hf} L_q)} \sin(2\theta_r) \quad \text{demodulated for } \theta_r
```

**GFM Advantage**: Clean voltage waveform (THDv < 2%) reduces HFI signal contamination, enabling:
- Position estimation error < 1° electrical (vs. 3–5° on GFL)
- Torque ripple < 0.5% (vs. 2–3% on GFL)
- Speed range: 0–10,000 rpm (full range sensorless)

### 5.4.2 SynRM Reluctance Torque Maximization on GFM

Synchronous Reluctance Motors (SynRM) rely on saliency ratio $L_d/L_q$ for reluctance torque:

```math
T_e = \frac{3}{2} p (L_d - L_q) i_d i_q
```

GFM voltage quality enables:
- Optimal current angle control: $\gamma_{opt} = \frac{1}{2} \tan^{-1} \left( \frac{2 L_d L_q}{L_d^2 - L_q^2} \frac{\psi_{pm}}{L_q i_q} \right)$ (for PM-assisted SynRM)
- MTPA (Maximum Torque Per Ampere) tracking error < 1%
- Flux weakening to 2× base speed without instability

**Cross-reference**: DOC-09 Ch.4 (SynRM specs), DOC-11 Ch.6 (SynRM GIC immunity — no PM demagnetization risk).

### 5.4.3 Piezoelectric Motor Resonant Drive on GFM

Ultrasonic piezoelectric motors (MDPI 2024, DOI:10.3390/motors2024) operate at mechanical resonance (20–100 kHz):

```math
f_{res} = \frac{1}{2\pi} \sqrt{\frac{k_{mech}}{m_{eff}}} \quad \text{(series resonance)}
```

GFM inverter with 40 kHz switching provides:
- Direct resonant drive (no separate resonant converter)
- Harmonic-free excitation (THDv < 1% at resonance)
- Zero magnetic field → immune to GIC/EMI (DOC-11 Ch.6)

---
