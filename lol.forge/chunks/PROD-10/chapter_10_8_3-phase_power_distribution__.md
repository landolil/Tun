## 8. 3-Phase Power Distribution — 480V Delta, Isolation, Harmonic Filtering

### 8.1 Supply Architecture

```
Grid (480V Δ, 60 Hz)
    │
    ├──► Isolation Transformer Bank (3 × 200 kVA, Δ-Y, BFRP case)
    │       │
    │       ├──► Inverter Module 1 (Zone 1) + LCL Filter
    │       ├──► Inverter Module 2 (Zone 2) + LCL Filter
    │       ├──► Inverter Module 3 (Zone 3) + LCL Filter
    │       ├──► Inverter Module 4 (Zone 4) + LCL Filter
    │       ├──► Inverter Module 5 (Zone 5) + LCL Filter
    │       ├──► Inverter Module 6 (Zone 6) + LCL Filter
    │       ├──► Inverter Module 7 (Zone 7) + LCL Filter
    │       └──► Inverter Module 8 (Zone 8) + LCL Filter
    │
    └──► Neutral Grounding Resistor (NGR) — 5 A limit
```

### 8.2 Isolation Transformer Specifications

- **Rating:** 200 kVA each (3 total, one per phase group)
- **Primary:** 480 V Δ, withstand 10 kV BIL
- **Secondary:** 400 V Y (floating, no neutral connection to ground)
- **Insulation:** Class H (180°C), BFRP housing, vacuum pressure impregnated
- **Leakage Inductance:** 3% (integrated with LCL filter)
- **Inter-winding Capacitance:** <50 pF (minimizes common-mode noise)

### 8.3 LCL Harmonic Filter (Per Module)

| Parameter | Value |
|-----------|-------|
| **Topology** | LCL (L1 = 200 μH, C = 10 μF, L2 = 50 μH) |
| **Resonant Frequency** | 3.5 kHz (damped) |
| **Target Harmonics** | 5th (300 Hz), 7th (420 Hz), 11th (660 Hz), 13th (780 Hz) |
| **Attenuation** | >40 dB at switching harmonics |
| **Capacitor** | Film (PP), 10 μF, 1000 VAC, ZrO₂ case |
| **Inductors** | Nanocrystalline core, PEX-a cooling, BFRP housing |

### 8.4 GIC Immunity Design

The entire power distribution system is designed for Carrington-level geomagnetic disturbance (dB/dt = 5000 nT/s, inducing 10–100 V/km on transmission lines):

1. **Floating secondary:** No path for DC/low-f GIC to enter process electronics
2. **NGR limits fault current:** 5 A max ground fault
3. **All-dielectric control:** PMMA POF for all signals — no copper wires to act as antennas
4. **BFRP transformer housing:** Non-conductive, no eddy current heating from GIC
5. **Surge protection:** Gas discharge tubes (GDT) at transformer primary, 3 kA rating

---
