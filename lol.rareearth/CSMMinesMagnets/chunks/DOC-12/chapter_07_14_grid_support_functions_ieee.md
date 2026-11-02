## 1.4 Grid Support Functions (IEEE 1547-2018 / IEEE 2800-2022)

GFM inverters must provide the following grid support functions per IEEE 1547-2018 (Category B/C) and IEEE 2800-2022:

1. **Voltage Regulation**: Volt-var (Q-V) and volt-watt (P-V) curves with configurable deadbands
2. **Frequency Response**: Frequency-watt (P-f) droop with configurable deadband (±0.036 Hz typical)
3. **Ride-Through**: Category III voltage/frequency ride-through per IEEE 1547-2018 (GFM extends to 90 min at 49–51 Hz in Chile)
4. **Fault Current**: Minimum 1.5 pu for 100 ms, 2.0 pu for 20 ms (IEEE 2800); Chile CEN requires 2–3 pu short-term
5. **Synthetic Inertia**: Fast frequency response (FFR) < 200 ms activation, sustained for 30 s minimum
6. **Blackstart**: Voltage ramp-up (soft energization) to prevent inrush current; frequency stabilization < 5 s

**Formula — Voltage Regulation Characteristic (IEEE 1547-2018):**
```math
Q = 
\begin{cases}
Q_{max} & V < V_{min} \\
\frac{Q_{max} - Q_{min}}{V_{max} - V_{min}} (V - V_{ref}) + Q_{ref} & V_{min} \leq V \leq V_{max} \\
Q_{min} & V > V_{max}
\end{cases}
```

**Cross-reference**: DOC-09 (Magnet Specs) defines Fe₁₆N₂ motor drives requiring clean voltage waveforms; GFM voltage regulation THD < 3% enables direct drive compatibility.
