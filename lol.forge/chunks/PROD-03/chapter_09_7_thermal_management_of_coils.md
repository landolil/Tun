## 7. Thermal Management of Coils

### 7.1 Coil Heat Generation

**Loss Mechanisms:**
1. Copper I²R loss: P_cu = I_rms² × R_dc × (1 + αΔT)
2. Alumina dielectric loss: P_diel = ω C V² tanδ (tanδ ≈ 0.001 at 100 kHz)
3. BFRP housing loss: negligible (dielectric)
4. Radiation to drum: P_rad = εσA(T_coil⁴ - T_drum⁴)

**Typical Coil Temperatures:**
- Zones 1-2: 120°C (water cooling dominant)
- Zone 3: 150°C
- Zones 4-5: 180°C
- Zone 6: 200°C
- Zone 7: 220°C
- Zone 8: 250°C

### 7.2 Water Cooling Design (PEX-a Circuit)

**Per-Zone Flow:**
- Flow: 15 L/min (turbulent, Re > 10,000)
- Inlet: 25°C (chiller maintained)
- Outlet: 40°C max (ΔT = 15°C)
- Heat removal: 15 L/min × 4.18 kJ/kg·K × 15 K = 15.7 kW per zone

**Circuit Layout:**
- Parallel flow per zone (not series) — uniform cooling
- Manifold: PEX-a SDR 9, 32 mm main, 16 mm branches
- Pressure drop: 3 bar total (pump: 5 bar head)
- Leak detection: FBG on manifold (strain from pressure)

### 7.3 Thermal Runaway Protection

**Failure Modes:**
1. Water flow loss → coil heats → R increases → I²R increases → runaway
2. Resonance detuning → V/I phase shift → hard switching → GaN failure
3. Feedstock anomaly (large Cu piece) → coupling spike → overcurrent

**Protection Layers:**
1. **Hardware (μs):** GaN desat detection → gate kill in 2 μs
2. **FPGA (100 μs):** Overcurrent/overvoltage → frequency shift to safe zone
3. **Control (10 ms):** FBG temperature > limit → power ramp down
4. **Supervisory (1 s):** Coordinator → emergency stop if multiple zones fault

---
