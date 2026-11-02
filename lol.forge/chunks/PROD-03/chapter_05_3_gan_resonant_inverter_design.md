## 3. GaN Resonant Inverter Design

### 3.1 Why GaN? Why Resonant?

**GaN Advantages (CSMFAB000000000005-class devices):**
- 650V/1200V rating, 5× lower R_ds(on) vs SiC at same voltage
- 10× faster switching (100 ns vs 1 μs) → 500 kHz+ operation
- Zero reverse recovery (no body diode losses)
- Monolithic integration: GaN-on-SiC for thermal performance
- Same technology as Safe-Wave Microwave 005, scaled to industrial power

**Resonant Topology: Series-Resonant LLC (Per Zone)**
- Operates at resonant frequency → zero-voltage switching (ZVS)
- Frequency tracking ±2% maintains resonance as load changes
- Natural PFC (power factor >0.98)
- Output power controlled by frequency modulation (not duty cycle)

### 3.2 Inverter Specification (Per Zone)

**Power Stage:**
- Topology: Half-bridge LLC series resonant
- Switches: 4× GaN Systems GS-065-011-1-L (650V, 11 mΩ) for Zones 1-5
- Switches: 4× GaN Systems GS-120-008-1-L (1200V, 8 mΩ) for Zones 6-8
- Gate driver: Si828x isolated driver (optical isolation, no copper)
- Dead time: 20 ns (optimized for GaN)

**Resonant Tank:**
- L_r = coil leakage inductance (measured, ~5 μH)
- C_r = external NP0/C0G ceramic bank (voltage rated 2× V_max)
- L_m = coil magnetizing inductance (designed via turns/gap)
- Resonant frequency: f_r = 1/(2π√(L_r C_r)) = target zone frequency

**Control:**
- FPGA-based (Xilinx Artix-7, dielectric package)
- Frequency resolution: 0.1% (PLL locked to current zero-crossing)
- Phase detection: V/I phase → 0° at resonance
- PID: T_target vs FBG T_actual → power adjustment
- Update rate: 10 kHz (100 μs cycle)

**Protection:**
- Overcurrent: 1.5× rated, 2 μs response (desat detection)
- Overvoltage: 1.2× DC bus, hardware clamp
- Arc detection: V/I harmonic analysis (dV/dt > threshold)
- Thermal: FBG on heatsink, derate at 85°C

### 3.3 Power Supply Architecture

**DC Bus: 800V DC (3-phase 480V AC → active PFC rectifier)**
- Common bus for all 8 inverters (reduces capacitor count)
- Bus capacitance: 20 mF (film capacitors, no electrolytics)
- Pre-charge: NTC thermistor + relay
- Ride-through: 20 ms at full load (bus hold-up)

**Zone Isolation:**
- Each zone: independent resonant tank, independent control
- Fault in one zone → that zone shuts down, others continue
- Optical fiber communication to central coordinator (no copper)

---
