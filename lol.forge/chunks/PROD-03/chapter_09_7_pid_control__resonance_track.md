## 7. PID Control & Resonance Tracking — ±5°C Stability

### 7.1 Dual-Loop Control Architecture

Each zone runs two nested control loops:

**Outer Loop (Thermal PID) — 10 Hz update:**
- Input: FBG temperature (zone average of 6 sensors)
- Setpoint: Master PLC thermal profile (±5°C)
- Output: Target B-field amplitude (power demand)
- Anti-windup: Clamping + back-calculation

**Inner Loop (Resonant Inverter) — 1 kHz update:**
- Input: Tank voltage & current (optical CT/VT)
- Setpoint: Target B-field from outer loop
- Output: Switching frequency & duty cycle
- Function: Maintain ZVS, track resonance

### 7.2 Thermal PID — Tuning for ±5°C

**Process model (identified per batch):**
$$\frac{dT}{dt} = \frac{1}{C_{th}}(P_{ind} - \frac{T - T_{amb}}{R_{th}})$$
Where $C_{th}$ = thermal capacitance (J/K), $R_{th}$ = thermal resistance (K/W).

**Typical values (Zone 5, 10 kHz):**
- $C_{th}$ = 2.5 MJ/K (drum + charge + coil)
- $R_{th}$ = 0.02 K/W (to cooling water)
- Time constant: $\tau = R_{th}C_{th} = 50,000 \text{ s}$ (very slow!)

**PID tuning (Ziegler-Nichols + refinement):**
- Ultimate gain $K_u$ = 120 kW/°C (from relay test)
- Ultimate period $P_u$ = 1800 s
- $K_p = 0.6 K_u = 72 \text{ kW/°C}$
- $K_i = 1.2 K_p / P_u = 0.048 \text{ kW/°C/s}$
- $K_d = 0.075 K_p P_u = 16,200 \text{ kW·s/°C}$

**Adaptive gain scheduling:** Gains scaled by $\sqrt{P_{setpoint}/P_{rated}}$ to handle nonlinearity.

**Performance:** ±3°C steady-state, ±5°C during ramp (validated in simulation).

### 7.3 Resonance Tracking — The Inner Loop Key

**Why track resonance?** The load impedance $Z_{load}$ changes as:
- Feedstock composition varies (batch to batch)
- Temperature changes material resistivity
- Phase transitions change coupling
- Gap changes with thermal expansion

**Resonance condition:** Phase(V_tank, I_tank) = 0° (voltage and current in phase)

**Tracking algorithm (running at 1 kHz):**
```
1. Measure V_tank(t), I_tank(t) via optical VT/CT
2. Compute phase φ = atan2(Im{V·I*}, Re{V·I*})
3. If |φ| > 2°:
     Adjust f_sw: f_new = f_old - K_φ · φ
     K_φ = 0.5 kHz/degree (tuned per zone)
4. Limit f_sw to ±20% of nominal
5. Adjust duty cycle for power control (outer loop)
```

**Phase detection:** FPGA-based quadrature demodulation (I/Q) at switching frequency.
- Sample rate: 10 MS/s (100× switching freq at 100 kHz)
- CORDIC algorithm for atan2
- Latency: < 1 μs

**Resonance lock indicator:** Phase error < 0.5° sustained for 100 ms → LOCKED status to Master PLC.

### 7.4 Impedance Matching — Variable Frequency as Control Knob

**Load impedance seen by inverter:**
$$Z_{in} = j\omega L_{coil} + \frac{1}{j\omega C_{res}} + Z_{reflected}$$

Where $Z_{reflected} = \frac{\omega^2 M^2}{R_{load} + j\omega L_{load}}$ (mutual coupling to charge).

**As charge melts:**
- $R_{load}$ increases (liquid metal couples better)
- $L_{load}$ changes (geometry changes)
- Optimal frequency shifts

**Frequency adjustment range:** ±20% around nominal
- Zone 5 (10 kHz nominal): 8 kHz to 12 kHz
- At 8 kHz: δ_Al = 1.0 mm (deeper for large pieces)
- At 12 kHz: δ_Al = 0.8 mm (surface for thin pieces)

**Auto-tuning sequence (at stage start):**
1. Ramp power to 10% at nominal frequency
2. Sweep frequency ±15% in 0.5% steps
3. Measure phase at each step
4. Lock to zero-phase frequency
5. Ramp power to setpoint while tracking

### 7.5 Fault Detection & Graceful Degradation

| Fault | Detection | Action |
|---|---|---|
| Resonance lost (|φ| > 10°) | Phase monitor | Reduce power 50%, re-sweep |
| FBG sensor fail | Interrogator checksum | Use zone average, flag maintenance |
| Overcurrent | Optical CT | Immediate shutdown (10 μs) |
| Overvoltage | Optical VT | Frequency shift to reduce Q |
| Overtemperature | FBG > limit | Reduce power, increase cooling |
| Cooling flow loss | Flow meter | Shutdown zone, alarm |

**Degraded mode:** If resonance tracking fails, operate at fixed nominal frequency with 20% power derating. Batch continues with longer dwell time.

---


---
