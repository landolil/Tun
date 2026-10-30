## 5. GaN Resonant Inverter Design — Class E, 500 kW/Zone

### 5.1 Topology Selection — Why Class E Resonant

**Requirements:**
- Variable frequency: 1 kHz to 100 kHz (±20% around nominal for impedance matching)
- Power: 0 to 500 kW per zone
- Efficiency: >92% at 100 kHz, >98% at 1 kHz
- All-dielectric control (optical gate drive, no metallic signals)
- Resonance tracking as load impedance changes (feedstock composition varies)

**Class E Resonant Inverter advantages:**
- Zero-voltage switching (ZVS) → minimal switching losses
- Single switch per half-bridge leg → simpler than full-bridge
- Natural resonant operation → self-tuning as load changes
- Low component count → higher reliability
- Proven at 500 kW in CSMFAB Safe-Wave Microwave 005 (scaled to industrial)

### 5.2 Half-Bridge Class E with Series Resonant Tank

```
        480V DC Bus (3-phase rectified)
              │
        ┌─────┴─────┐
        │  C_bus    │  (film capacitor bank, 10 mF)
        └─────┬─────┘
              │
    ┌─────────┴─────────┐
    │   GaN Half-Bridge │
    │  ┌───┐     ┌───┐  │
    │  │ Q1│     │ Q2│  │  GS66516T 650V/50A GaN HEMT
    │  └─┬─┘     └─┬─┘  │
    └────┼─────────┼────┘
         │         │
    ┌────┴────┐ ┌───┴────┐
    │  L_coil │ │ C_res  │  Series resonant tank
    │  12 μH  │ │  C0G   │
    └────┬────┘ └───┬────┘
         │         │
         └────┬────┘
              │
         ┌────┴────┐
         │  Load   │  (Charge in drum, reflected impedance)
         └─────────┘
```

**Resonant frequency:** $f_r = \frac{1}{2\pi\sqrt{L_{coil}C_{res}}}$ — designed to match nominal zone frequency
**Operating range:** $f_{sw} = f_r \pm 20\%$ for impedance matching as load changes

### 5.3 GaN HEMT — GS66516T Specifications

| Parameter | Value | Note |
|---|---|---|
| Blocking voltage | 650 V | 480V bus + margin |
| Continuous current | 50 A | Per device |
| Pulsed current | 150 A | For overload |
| R_DS(on) | 30 mΩ | At 25°C, V_GS=6V |
| Gate charge (Q_g) | 12 nC | Low → fast switching |
| Output charge (Q_oss) | 85 nC | At 400V |
| Thermal resistance (R_th_jc) | 0.5 °C/W | With microchannel cooler |
| Package | TO-247-4L | Kelvin source |

**Parallel devices per switch:**
- Zone 8 (1 kHz, 348 A): 8 × GS66516T per leg (348/50 = 7 → 8 for margin)
- Zone 1 (100 kHz, 50 A): 1 × GS66516T per leg
- General rule: N_parallel = ceil(I_peak / 40A) for thermal derating

### 5.4 Resonant Capacitor — C0G/NP0 Ceramic

**Requirements:**
- Voltage rating: 5 kV (peak tank voltage at resonance)
- Temperature coefficient: ±30 ppm/°C (C0G/NP0)
- Low dissipation factor: tan δ < 0.001 at 100 kHz
- Ripple current rating: >500 A RMS

**Capacitance per zone (for nominal resonance):**
| Zone | Frequency | L_coil | C_res (calc) | Standard Value |
|---|---|---|---|---|
| 1-2 | 100 kHz | 12 μH | 2.1 nF | 2.2 nF (5 kV C0G) |
| 3 | 50 kHz | 12 μH | 8.4 nF | 8.2 nF |
| 4-5 | 10 kHz | 12 μH | 210 nF | 220 nF |
| 6 | 5 kHz | 12 μH | 840 nF | 820 nF |
| 7 | 2 kHz | 12 μH | 5.3 μF | 4.7 μF + parallel |
| 8 | 1 kHz | 12 μH | 21 μF | 22 μF (film cap) |

**Construction:** Series/parallel arrays of 5 kV C0G chips (Zone 1-6) or film capacitors (Zone 7-8). Mounted on liquid-cooled cold plate.

### 5.5 Gate Driver — SiC-Isolated, Optical Input

**Why optical?** No metallic control path crosses pressure boundary → Carrington immunity.

**Driver: CMT-S12R (or equivalent SiC-isolated):**
- Input: 5V logic (from FPGA via PMMA optical fiber)
- Output: 20V drive, 4A peak source/sink
- Isolation: 10 kV (SiC transformer)
- Propagation delay: < 50 ns
- UVLO: 12V (prevents turn-on at low V_DD)
- DESAT protection: 2 μs response

**Gate drive waveform (Class E ZVS):**
- Turn-on: At V_DS = 0 (zero-voltage switching)
- Turn-off: At I_D = 0 (zero-current switching)
- Dead time: 50 ns (optimized per zone)
- Frequency adjustment: FPGA varies dead time to track resonance

### 5.6 Efficiency Targets Per Zone

| Zone | Frequency | Switching Losses | Conduction Losses | Target Efficiency |
|---|---|---|---|---|
| 1-2 | 100 kHz | Dominant (high f_sw) | Low (low I) | 92% |
| 3 | 50 kHz | High | Moderate | 94% |
| 4-5 | 10 kHz | Moderate | Moderate | 97% |
| 6 | 5 kHz | Low | High (high I) | 97% |
| 7 | 2 kHz | Very low | High | 98% |
| 8 | 1 kHz | Negligible | Highest | 98% |

**Loss breakdown at 500 kW (Zone 8):**
- Conduction (8 × GS66516T, R_DS(on)=30mΩ @ 150°C): 8 × (348/8)² × 0.03 = 1.8 kW
- Gate drive: 8 × 12nC × 20V × 1000 = 1.9 W
- Capacitor ESR: ~500 W
- **Total loss: ~2.3 kW → 99.5% theoretical** (98% with margins)

**Thermal design:** 2.3 kW into microchannel cold plate (0.5 °C/W R_th_jc) → ΔT_j = 1.15 °C above coolant. With 50°C water → T_j = 51°C (far below 150°C limit).

---


---
