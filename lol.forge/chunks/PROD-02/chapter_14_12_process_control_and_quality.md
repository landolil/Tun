## 12. Process Control and Quality Assurance

### 12.1 Inline Quality Monitoring

**Per-Stage Verification:**
- Mass spectrometry at each port: elemental composition, 1 Hz sampling
- Flow measurement: Coriolis mass flow (liquid metal) / thermal mass flow (gas)
- Temperature: FBG (48 channels, 1 kHz, ±1°C)
- Pressure: ZrO₂ diaphragm sensors (±0.01 bar)

**Batch Acceptance Criteria:**
- Elemental recovery >95% per class (input XRF vs output MS)
- Port purity >90% target class
- Gas capture >99.9% all species
- Energy per ton <1,200 kWh
- Zero safety interlock trips

### 12.2 Adaptive Batch Tuning

After each batch, the system updates:
- Drum thermal capacitance (from cool-down curve)
- Feedstock heat capacity (from ramp energy)
- Phase enthalpies (from dwell power plateaus)
- Heat loss coefficients (from steady-state power)
- Induction coupling factors (from V/I phase at resonance)

Next batch trajectory re-optimized via MPC with updated parameters.

---
