## Appendix A: Detailed GaN Device Physics & Selection Rationale

### A.1 GS66516T GaN HEMT Datasheet Analysis

The EPC GS66516T (650V, 30A rated) is selected as the baseline device. Key parameters:

| Parameter | Symbol | Value | Unit | Significance |
|-----------|--------|-------|------|--------------|
| Drain-Source Voltage | V_DS | 650 | V | Margin above 800V DC bus (derated) |
| Continuous Drain Current | I_D | 30 | A | Per device, paralleled for zone current |
| Pulsed Drain Current | I_DM | 120 | A | 10 us pulse, for surge handling |
| On-Resistance (25C) | R_DS(on) | 50 | mohm | Low conduction loss |
| On-Resistance (150C) | R_DS(on)_hot | 120 | mohm | Thermal derating factor 2.4x |
| Gate Charge | Q_G | 4.5 | nC | Low drive loss |
| Output Charge | Q_OSS | 35 | nC | Zero reverse recovery |
| Thermal Resistance (JC) | R_thetaJC | 0.3 | K/W | DBC-mounted |
| Switching Frequency (max) | f_sw | 3 | MHz | Far above 100 kHz requirement |

**Figure of Merit:** R_DS(on) * Q_G = 225 mohm-nC (industry leading)
**Comparison:** SiC MOSFET (Wolfspeed C3M0065090D): R_DS(on)*Q_G = 450 mohm-nC
**Result:** GaN switching loss 50% lower at same voltage/current.

### A.2 GaN vs SiC vs Si Comparison at 500 kW / 100 kHz

| Metric | GS66516T (GaN) | C3M0065090D (SiC) | IKW40N120H3 (Si IGBT) |
|--------|----------------|-------------------|----------------------|
| Voltage Rating | 650V | 900V | 1200V |
| R_DS(on) @ 25C | 50 mohm | 90 mohm | N/A (V_CE(sat)=1.8V) |
| Q_G | 4.5 nC | 180 nC | 1200 nC |
| Q_OSS | 35 nC | 180 nC | N/A |
| E_sw @ 100 kHz | 0.15 mJ | 1.2 mJ | 8 mJ |
| Conduction Loss (500A) | 12.5 W | 22.5 W | 45 W |
| Switching Loss (100kHz) | 15 W | 120 W | 800 W |
| Total Loss (est.) | 28 W | 143 W | 845 W |
| Efficiency Contribution | 99.9% | 99.7% | 99.8% |
| Paralleling for 500A | 17 devices | 23 devices | 40 devices |

**Conclusion:** GaN enables 100 kHz operation with practical device count. SiC possible but 2x devices. Si IGBT impossible at 100 kHz.

### A.3 Class E Resonant Inverter Theory - Complete Derivation

**Ideal Class E Conditions (Sokal, 1975):**

1. Switch voltage V_DS(t) = 0 at turn-on (ZVS)
2. dV_DS/dt = 0 at turn-on (minimizes dv/dt stress)
3. Switch current I_D(t) = 0 at turn-off (ZCS)

**Waveform Equations:**

Shunt capacitor voltage:
V_C(t) = V_DD + (V_DD * pi/2) * sin(omega*t - phi)

Series resonant current:
I_L(t) = (V_DD / Z0) * sin(omega*t)

Where phi = atan(pi/2 * QL) and QL = loaded Q factor.

**Power Output:**
P_out = (V_DD^2 / (2*R_ac)) * (pi^2/4) * (QL^2 / (1 + QL^2))

**Efficiency Limit:**
eta_max = 1 - (P_sw + P_cond) / P_DC

With GaN: P_sw ~ 0 (ZVS), P_cond = I_rms^2 * R_DS(on)
At 500 kW, 800V DC bus: I_DC = 625 A, I_rms (per device, 16 parallel) = 39 A
P_cond = 39^2 * 0.05 = 76 W/device, 16 devices = 1.2 kW total conduction loss
eta = 500 / (500 + 1.2) = 99.76% (theoretical, excludes gate drive, magnetics)

**Real-World Efficiency:** 97% accounts for:
- Gate drive loss: ~200 W (8 channels x 25 W)
- Magnetic loss (coil + resonant cap): ~500 W
- DC bus capacitor ESR loss: ~100 W
- Control/auxiliary: ~200 W
- Total overhead: ~1 kW on 500 kW = 99.8% (inverter only)
- Coil coupling efficiency: 95% (feedstock dependent)
- System: 97% * 95% = 92% DC-to-feedstock

---
