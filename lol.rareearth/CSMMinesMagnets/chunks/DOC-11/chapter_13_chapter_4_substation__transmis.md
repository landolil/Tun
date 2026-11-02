## Chapter 4: Substation & Transmission Hardening

### 4.1 Line Compensation — Series Capacitors, FACTS, SVC Coordination

Beyond GIC blocking, transmission line compensation devices (series capacitors, FACTS, SVCs) play a critical role in maintaining voltage stability during and after GIC events. This section details their deployment, coordination, and GIC interaction.

**Series Capacitors (FSC — Fixed Series Capacitors):**
- **Primary Function**: Increase power transfer capacity, improve stability, voltage support
- **GIC Benefit**: Inherent DC blocking (Section 3.1)
- **Chile Deployment**: 
  - Existing: 2×50% FSC on 220 kV lines (Antofagasta region)
  - Planned (PET 2025): 500 kV FSC on Mejillones–Encuentro, Encuentro–Polpaico

**FACTS Devices in SEN:**
| Device | Location | Rating | Function | GIC Interaction |
|--------|----------|--------|----------|-----------------|
| **SVC (Static Var Compensator)** | S/E Antofagasta 220 kV | ±200 MVAr | Voltage support, flicker mitigation | **Vulnerable** — harmonic resonance with GIC |
| **SVC** | S/E Mejillones 220 kV | ±150 MVAr | Voltage support | **Vulnerable** |
| **STATCOM** | S/E Crucero 220 kV | ±100 MVAr | Voltage support, faster response | **Vulnerable** |
| **TCSC (Thyristor-Controlled SC)** | S/E Polpaico 500 kV | 40% comp. | Power oscillation damping | **Blocks GIC** (series C) |
| **FSC (Fixed Series Cap)** | S/E Antofagasta–Maitencillo 220 kV | 50% comp. | Transfer capacity | **Blocks GIC** |

**SVC/STATCOM Vulnerability to GIC:**
During GIC events:
1. **Harmonic Injection**: Saturated transformers inject 3rd, 5th, 7th harmonics
2. **SVC Resonance**: SVC capacitor banks + system inductance create parallel resonance at harmonic frequencies
3. **Consequence**: 
   - Overvoltage at resonance frequency
   - SVC control instability (PLL loss of sync)
   - Forced blocking → loss of voltage support → voltage collapse

**Coordination Strategy (GIC-Resilient FACTS):**
1. **Harmonic Filters**: 
   - Passive: Tuned 3rd, 5th, 7th harmonic filters at SVC bus
   - Active: STATCOM with harmonic compensation capability
2. **Control Modification**:
   - PLL bandwidth reduction during GIC (from 50 Hz to 5 Hz tracking)
   - Harmonic current injection to cancel transformer harmonics
   - GIC-aware voltage reference (V_ref adjusted for harmonic distortion)
3. **Blocking Logic**:
   - If THD_V > 8% → Switch to GIC Mode (reduced bandwidth, harmonic injection)
   - If I_GIC > 75 A at nearby transformer → Preemptive mode change

**TCSC / FSC GIC Coordination:**
- TCSC in capacitive mode: Blocks GIC (like FSC)
- TCSC in inductive mode (vernier): **Does NOT block GIC** — thyristor valve conducts DC
- **Operational Rule**: During GIC watch (SWPC G2+), force TCSC to fixed capacitive mode (block GIC), suspend damping control

**Chile-Specific FACTS Hardening Plan:**
| Device | Location | Hardening Action | Cost | Timeline |
|--------|----------|------------------|------|----------|
| SVC | Antofagasta 220 kV | Add 3rd/5th harmonic filters, GIC-mode control | $3M | 2026 |
| SVC | Mejillones 220 kV | Add harmonic filters, GIC-mode control | $2.5M | 2026 |
| STATCOM | Crucero 220 kV | Firmware upgrade for GIC-mode | $0.5M | 2025 |
| TCSC | Polpaico 500 kV | Lock capacitive mode during GIC watch | $0.1M (SW) | 2025 |
| New STATCOM | Encuentro 220 kV | GIC-resilient design (harmonic injection) | $15M | 2027 |

**Power Oscillation Damping (POD) During GIC:**
- GIC causes low-frequency oscillations (0.1–1 Hz) from transformer saturation
- TCSC/STATCOM POD must remain active but **detuned** from saturation frequencies
- **POD Tuning**: Notch filter at 2nd harmonic (100 Hz) and sub-harmonics (0.5 Hz)

**Key Formula — SVC Harmonic Resonance Frequency:**
```
f_res = 1 / (2π√(L_sys · C_SVC))
```
Where L_sys = system equivalent inductance at SVC bus, C_SVC = SVC capacitor bank.
- Typical f_res = 150–300 Hz (3rd–5th harmonic range)
- **Mitigation**: Detune C_SVC or add damping resistor

**Chile Grid Code Update (Proposed):**
- All new FACTS must include GIC-mode capability
- Existing FACTS: Retrofit within 3 years
- SVC/STATCOM must ride through THD_V = 15% for 30 min
- Reporting: GIC-mode activations to CEN within 24 hours


### 4.2 Relay Coordination Under GIC (Harmonic Restraint, Neutral Overcurrent)

Protection system misoperation is a major risk during GIC events. This section details relay vulnerabilities and coordination strategies for the SEN.

**GIC-Induced Protection Challenges:**

1. **Harmonic Currents**: Saturated transformers produce 3rd, 5th, 7th... harmonics
2. **DC Offset**: GIC adds DC component to AC waveforms
3. **Voltage Distortion**: THD_V up to 15% affects voltage-based elements
4. **Frequency Deviation**: ROCOF from generation/load imbalance

**Vulnerable Relay Types:**

| Relay Type | Vulnerability | Mechanism | Consequence |
|------------|---------------|-----------|-------------|
| **Differential (87T)** | HIGH | Harmonic restraint bypassed by even harmonics / DC offset | False trip (transformer lockout) |
| **Neutral Overcurrent (50N/51N)** | HIGH | GIC flows in neutral → appears as ground fault | False trip (line/transformer outage) |
| **Distance (21)** | MODERATE | Voltage distortion alters impedance measurement | Under/over-reach, zone misoperation |
| **Directional (67/67N)** | MODERATE | Polarizing voltage distorted | Loss of directionality |
| **Overcurrent (50/51)** | LOW | Harmonics increase RMS measurement | Nuisance trips, coordination loss |
| **UF/OF (81)** | LOW | Frequency deviation from imbalance | Correct operation (desired) |

**Differential Relay (87T) — Harmonic Restraint:**
Standard harmonic restraint uses 2nd harmonic (inrush) and 5th harmonic (overexcitation). **GIC saturation produces odd harmonics (3rd, 5th, 7th)** — 5th harmonic restraint may operate but 3rd/7th pass through.

**Enhanced Harmonic Restraint (GIC-Proof):**
```python