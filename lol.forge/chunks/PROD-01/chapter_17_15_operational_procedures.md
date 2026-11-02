## 15. Operational Procedures

### 15.1 Batch Startup Sequence

1. **Pre-check** (15 min): Vacuum leak test (He, <1×10⁻⁹ mbar·L/s), FBG interrogator calibration, mass spec tune, gas analyzer zero/span
2. **Charge preparation** (10 min): Feedstock assay (XRF), moisture, particle size → blend optimization → load hopper
3. **Atmosphere establishment** (5 min): N₂ purge 3× volume, verify O₂ <10 ppm, pressurize to 1.2 bar
4. **Stage 0 acoustic** (15-30 min): LF sweep 20→500 Hz + US 40 kHz, FBG liberation index monitoring
5. **Shredder feed** (5 min): Shredded feed enters drum, drum begins rotation at 10 RPM

### 15.2 Thermal Cascade Execution

For each stage N (1-8):
1. **Ramp**: Induction power per zone profile → target T at 3-5°C/min
2. **Hold**: Maintain T ±5°C (FBG PID) until port mass flow <1% peak (mass spec verified)
3. **Clearance verification**: Inline MS confirms target element flux at baseline
4. **Port actuation**: Ti₃AlC₂ actuator deflection confirmed (FBG strain)
5. **Slug collection**: Mold carousel rotates, N₂ quench, mass spec spot-check
6. **Advance**: Ramp to next stage temperature

### 15.3 Batch Completion and Cool-down

1. Stage 8 clearance verified (Port 8 flow <1% peak, mineral concentrate composition confirmed)
2. Induction power ramp down (500→0 kW over 10 min)
3. Drum rotation deceleration (350→0 RPM over 5 min)
4. N₂ atmosphere maintained until drum <200°C
5. Vessel depressurization, flange opening, drum removal (crane)
6. Drum inspection (FBG strain log review, visual port seat check)
7. Next batch preparation

### 15.4 Emergency Procedures

**Overtemperature (>2400°C FBG):** Emergency N₂ quench (300 bar, 500 L/s) + induction immediate cutoff + drum brake engage
**Overpressure (>12 bar):** ZrO₂ rupture disc bursts → vent stack → automatic N₂ flood
**Atmosphere breach (O₂ >100 ppm):** Ar flood (50 bar reserve) + induction cutoff + seal verification
**GIC event (DC ground >50 A):** Optical isolation engages, all inverters ride-through, log event
**Port valve failure (no actuation at set-point):** Manual override (mechanical lever) + stage hold + log

---
