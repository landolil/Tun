## 3. Zone Control Layer (RTU) — 1 kHz Deterministic Control

### 3.1 RTU Hardware Architecture

Each of the 8 Zone RTUs is an identical BFRP-housed compute module:

| Component | Specification |
|-----------|---------------|
| **Processor** | Quad-core ARM Cortex-A53 @ 1.5 GHz (RP2350-class, radiation-hardened) |
| **Memory** | 1 GB LPDDR4 ECC, 32 MB MRAM (non-volatile config) |
| **OS** | Zephyr RTOS (certified, <10 μs context switch) |
| **Network** | 2× 1 Gbps TSN (dual-ring, IEEE 802.1Qbv) |
| **Optical I/O** | 8× PMMA POF transceiver (WDM/TDM FBG), 4× PMMA POF (actuators) |
| **Analog I/O** | 16-ch 16-bit ADC (current sense), 8-ch 16-bit DAC (varactor) |
| **Power** | 24 VDC ±10% from isolated DC-DC (BFRP housed) |
| **Environment** | -20°C to +70°C, vibration 5G, shock 50G |

### 3.2 Dual-Loop Control Structure (Per Zone)

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                            ZONE RTU CONTROL LOOPS                           │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  THERMAL PID (OUTER LOOP) — 1 ms / 1 kHz                                   │
│  ┌──────────────┐    ┌──────────────┐    ┌──────────────┐                 │
│  │ T_setpoint   │───►│  PID Calc    │───►│ Power Cmd    │───► Zone RTU    │
│  │ (from Stage  │    │  Kp, Ki, Kd  │    │ (0-500 kW)   │    Output       │
│  │  PLC + FF)   │    │  Anti-windup │    └──────────────┘                 │
│  └──────────────┘    └──────┬───────┘                                     │
│                             │                                             │
│                             ▼                                             │
│              ┌─────────────────────────────────┐                          │
│              │     POWER-TO-FREQUENCY MAP      │                          │
│              │  (Pre-computed LUT + interp)    │                          │
│              └──────────────┬──────────────────┘                          │
│                             │                                             │
│                             ▼                                             │
│  RESONANCE TRACKER (INNER LOOP) — 10 ms / 100 Hz                         │
│  ┌──────────────┐    ┌──────────────┐    ┌──────────────┐                 │
│  │ V_DS Zero-   │───►│  PLL Phase   │───►│ Varactor Bias│───► FPGA       │
│  │ Cross Detect │    │  Error       │    │ + Cap Bank   │    (Cell L0)   │
│  └──────────────┘    └──────────────┘    └──────────────┘                 │
│        ▲                     │                                             │
│        │              ┌──────┴──────┐                                     │
│        │              ▼             ▼                                     │
│        │        ┌───────────┐ ┌───────────┐                              │
│        └───────►│ Cap Bank  │ │ Varactor  │                              │
│   (FPGA)       │ (Coarse)  │ │ (Fine)    │                              │
│                └───────────┘ └───────────┘                              │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 3.3 Thermal PID Parameters (Per Zone)

| Zone | Stages | K<sub>p</sub> | K<sub>i</sub> (s⁻¹) | K<sub>d</sub> (s) | Anti-Windup | Feedforward |
|------|--------|---------------|---------------------|-------------------|-------------|-------------|
| Z1-2 | 1-2 | 0.8 | 0.02 | 0.5 | ±10% | Radiative + convective |
| Z3 | 3 | 1.0 | 0.03 | 0.8 | ±10% | + Latent heat (pyrolysis) |
| Z4-5 | 4-5 | 1.2 | 0.05 | 1.0 | ±10% | + Latent heat (melting) |
| Z6 | 6 | 1.5 | 0.08 | 1.2 | ±10% | + Latent heat (Cu) |
| Z7 | 7 | 1.8 | 0.10 | 1.5 | ±10% | + Latent heat (Fe) + hysteresis |
| Z8 | 8 | 2.0 | 0.15 | 2.0 | ±10% | + Radiative (T⁴ dominant) |

**Gain Scheduling:** Parameters interpolate based on T_setpoint (300-2200°C). At T < 400°C, K<sub>d</sub> = 0 (noise suppression).

### 3.4 Resonance Tracker (PLL) Design

The Class E inverter maintains ZVS by aligning the switch voltage zero-crossing with the gate turn-on instant. A software PLL runs at 100 Hz:

```
Phase Error:  φ_err = t(V_DS=0) - t(gate_on)

PLL Output:   ΔV_varactor = K_p_PLL × φ_err + K_i_PLL × ∫φ_err dt
              ΔCap_Bank   = round(ΔV_varactor / V_per_step)  (coarse)

Gains:        K_p_PLL = 0.05 V/ns,  K_i_PLL = 500 V/s
Lock Range:   ±5% of nominal frequency
Acquisition:  <50 ms from cold start
```

**FPGA Interface:** The RTU sends varactor bias (16-bit DAC) and cap bank select (6-bit GPIO) to the Cell FPGA via PMMA POF. The FPGA updates the hardware within 10 μs.

### 3.5 FBG Acquisition & Processing

```
FBG Interrogator (per Zone RTU):
├── VCSEL: 650-850 nm sweep, 1 kHz triangle wave
├── WDM: 8-channel thin-film filter (20 nm spacing)
├── TDM: 1×6 PMMA splitter per wavelength
├── Detection: Balanced InGaAs PIN, 2 MHz BW
├── Processing: Peak detection (centroid), λ → T conversion
│   T = (λ_measured - λ_ref) / 0.15 nm/°C  (PMMA FBG sensitivity)
├── Output: 48 temperatures @ 125 Hz each (6 per TDM channel)
└── Health: SNR >20 dB, peak width <0.5 nm, no missing channels
```

**Fault Handling:** If >10 sensors in a zone report invalid data → RTU limits zone power to 50%, raises SCADA alarm, logs event.

---
