## 2. Resonant Inverter Design — 8× GS66516T GaN HEMT Class E Topology

Each of the eight zones employs an identical resonant inverter module, differing only in the resonant tank component values (L, C) to achieve the target frequency for that zone. The topology is Class E zero-voltage switching (ZVS), chosen for its simplicity, high efficiency (>97%), and natural suitability for variable-frequency operation.

### 2.1 Class E Resonant Inverter Principles

The Class E topology achieves ZVS by shaping the voltage waveform across the switch such that it reaches zero with zero derivative at the switching instant:

$$v_{DS}(t) = V_{DD} \left[ 1 - \frac{\pi}{2} \sin(\omega t + \phi) \right]$$

The shunt capacitance $C_{shunt}$ (comprising the GaN output capacitance $C_{oss}$ plus external capacitor) and series resonant inductance $L_r$ form the tank:

$$\omega = \frac{1}{\sqrt{L_r C_{shunt}}}$$

At resonance, the switch current is sinusoidal and the voltage is a shaped half-wave, eliminating switching losses. The GaN HEMT's near-zero reverse recovery charge ($Q_{rr} \approx 0$) makes it ideal for Class E — no body diode conduction losses during dead time.

### 2.2 GS66516T GaN HEMT Specifications

| Parameter | Value | Note |
|-----------|-------|------|
| **Device** | GS66516T (GaN Systems) | 650 V, 16 A |
| **Topology** | Half-bridge Class E | Single switch per leg |
| **V<sub>DS</sub> max** | 650 V | Derated to 400 V operating |
| **R<sub>DS(on)</sub>** | 30 mΩ (typ) @ 25°C | Low conduction loss |
| **C<sub>oss</sub>** | 55 pF (typ) @ 400 V | Forms part of resonant tank |
| **Q<sub>g</sub>** | 3.5 nC | Ultra-low gate charge |
| **T<sub>j</sub> max** | 150°C | Junction temperature limit |
| **Thermal resistance R<sub>θJC</sub>** | 0.8 K/W | Junction-to-case |

Each inverter leg uses two GS66516T devices in a half-bridge configuration with bootstrapped high-side drive. The driver IC (LMG1210 or equivalent GaN-specific driver) provides 2.5 A peak gate current for fast switching transitions (<2 ns rise/fall).

### 2.3 Variable Frequency Operation

The resonant frequency is varied by adjusting the effective tank capacitance. A switched capacitor bank (binary-weighted: C, 2C, 4C, 8C, 16C, 32C) allows discrete frequency steps, while a varactor diode array provides fine continuous tuning (±5% range). The control loop measures the actual switch voltage waveform zero-crossing and adjusts the varactor bias to maintain ZVS across the full operating range.

Frequency switching transients are managed by a pre-computed trajectory table — the controller ramps frequency in 100 Hz steps with 10 ms dwell, allowing the tank energy to settle before the next step.

### 2.4 Efficiency Analysis

At nominal operating points:

| Zone | Frequency | Output Power | Switching Loss | Conduction Loss | Total Loss | Efficiency |
|------|-----------|--------------|----------------|-----------------|------------|------------|
| Z1–Z2 | 100 kHz | 50 kW | 0.3 kW | 0.7 kW | 1.0 kW | 98.0% |
| Z3 | 50 kHz | 80 kW | 0.2 kW | 1.2 kW | 1.4 kW | 98.3% |
| Z4–Z5 | 10 kHz | 150 kW | 0.1 kW | 2.0 kW | 2.1 kW | 98.6% |
| Z6 | 5 kHz | 200 kW | 0.08 kW | 2.5 kW | 2.6 kW | 98.7% |
| Z7 | 2 kHz | 350 kW | 0.05 kW | 4.0 kW | 4.1 kW | 98.8% |
| Z8 | 1 kHz | 500 kW | 0.03 kW | 5.5 kW | 5.5 kW | 98.9% |

Losses dominated by GaN conduction (R<sub>DS(on)</sub> × I<sub>rms</sub>²) and inductor ESR at low frequencies. Switching losses become negligible below 10 kHz.

---
