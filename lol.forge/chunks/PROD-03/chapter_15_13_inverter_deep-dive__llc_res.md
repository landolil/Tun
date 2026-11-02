## 13. Inverter Deep-Dive — LLC Resonant Converter Design

### 13.1 LLC Resonant Tank Design Equations

**Resonant Parameters:**
- Series resonant frequency: f_r = 1/(2π√(L_r C_r))
- Magnetizing frequency: f_m = 1/(2π√((L_r+L_m) C_r))
- Characteristic impedance: Z₀ = √(L_r/C_r)
- Quality factor: Q = Z₀ / R_ac (R_ac = reflected load resistance)

**Gain Curve (Voltage Gain vs Normalized Frequency):**
$$M(f_n) = \frac{1}{\sqrt{(1 - f_n^2)^2 + (f_n / Q)^2 (1 - f_n^2 / f_{m,n}^2)^2}}$$

Where f_n = f_sw / f_r, f_{m,n} = f_m / f_r.

**Design for Zone 5 (10 kHz, 150 kW):**
- L_r = 5.2 μH (measured leakage)
- L_m = 45 μH (designed via 12 turns, 15 mm gap)
- C_r = 0.49 μF (NP0 ceramic bank, 1.2 kV rating)
- f_r = 10.0 kHz, f_m = 3.3 kHz, f_{m,n} = 0.33
- R_ac (reflected) = 2.8 Ω (at 150 kW, 800V bus)
- Q = 11.7
- Operating range: f_n = 0.95-1.05 (ZVS maintained)

### 13.2 GaN Device Selection and Paralleling

**Zone 1-5 (650V devices):**
- Device: GaN Systems GS-065-011-1-L (650V, 11 mΩ, 30A)
- 4 per half-bridge (2 series × 2 parallel for current sharing)
- Current sharing: Common gate resistor (2.2 Ω) + matched PCB layout
- Thermal: Direct die attach to AlN substrate, heatsink 0.15 K/W

**Zone 6-8 (1200V devices):**
- Device: GaN Systems GS-120-008-1-L (1200V, 8 mΩ, 45A)
- Zone 6: 4 per switch (2 series × 2 parallel)
- Zone 7: 6 per switch (2 series × 3 parallel) — 350 kW
- Zone 8: 8 per switch (2 series × 4 parallel) — 500 kW

**Paralleling Rules:**
- Gate loop inductance matched <1 nH difference
- Source inductance matched <0.5 nH
- Thermal coupling: common heatsink with thermal grease
- Current imbalance: <5% at full load (validated)

### 13.3 FPGA Control Algorithm (Per Zone)

**Control Loop (10 kHz, 100 μs cycle):**

```vhdl
-- Simplified control law
process(clk)
  variable phase_err : signed(15 downto 0);
  variable freq_cmd  : unsigned(31 downto 0);
begin
  if rising_edge(clk) then
    -- Phase detection (V/I zero crossing)
    phase_err := measure_phase(V_adc, I_adc);
    
    -- PLL: frequency tracks resonance (phase → 0)
    freq_pll := freq_pll + Kp_pll * phase_err + Ki_pll * sum(phase_err);
    
    -- Temperature PID (outer loop, 100 Hz)
    if cycle_count = 100 then
      temp_err := T_target - T_fbg;
      power_cmd := Kp_temp * temp_err + Ki_temp * sum(temp_err);
      -- Power → frequency offset (gain scheduling)
      freq_offset := power_to_freq(power_cmd, zone);
    end if;
    
    -- Combined frequency command
    freq_cmd := freq_pll + freq_offset;
    
    -- Limit: ±2% of nominal
    freq_cmd := clamp(freq_cmd, f_nom*0.98, f_nom*1.02);
    
    -- Update DDS
    dds_phase_inc := freq_cmd;
  end if;
end process;
```

**Gain Scheduling (Zone 5 Example):**
| T_feedstock (°C) | Kp_temp | Ki_temp | freq_offset range |
|---|---|---|---|
| 600-660 (pre-melt) | 0.5 | 0.01 | -0.5% to 0% |
| 660-680 (Al melting) | 1.2 | 0.03 | 0% to +1% |
| 680-720 (clearance) | 0.8 | 0.02 | -0.2% to +0.5% |
| >720 (next stage) | 0.3 | 0.005 | -1% to 0% |

---
