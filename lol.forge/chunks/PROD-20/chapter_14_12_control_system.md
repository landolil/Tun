## 12. Control System

### 12.1 Control Architecture — Stage 7 Specific

**Cascade PID Structure (from PROD-10, extended for Stage 7):**
```
STAGE 7 CONTROL HIERARCHY
══════════════════════════

SUPERVISORY (1 Hz)
├── Batch State Machine: CHARGE → PREHEAT → CAST_IRON_MELT → MAIN_MELT → DUAL_PORT_CAST → TRANSITION
├── Recipe Management: Temp profile, RPM, gas, power, C/Si/Mn targets per zone
├── Quality Gate: XRF C/Si/Mn/REE pass/fail before port opening
├── REE Partitioning Monitor: L_REE tracking via XRF slag/metal
└── Phoenix Registry: Slug UUID, grade, downstream route

ZONE 7 PID (1 kHz) — PROD-10 Zone 7
├── Master: Drum wall temp (FBG median, 48 sensors) → Power setpoint
├── Slave 1: Resonance tracking (GaN inverter) → Frequency/phase (ferromagnetic ZVS)
├── Slave 2: POF level (melt height) → Feed rate / drain rate
├── Slave 3: Gas analyzer (H₂, CO, CO₂, dew point) → MFC setpoints
├── Slave 4: XRF composition (C, Si, Mn, Nd, Sm, Co) → C/Si/Mn control loops
├── Slave 5: Magnetic sensor (inductive) → Melt level cross-check
├── Slave 6: Fe bullion mold FBG (6 per mold) → N₂ quench flow
└── Slave 7: REE concentrate mold FBG (6 per mold) → N₂ quench flow

DUAL-PORT CAROUSEL CONTROL (10 Hz)
├── Port 7 (Fe): Valve open at 1550±2°C, fill to 50.0±0.5 kg per mold
├── Port 7A (REE): Valve open at 1500±2°C, fill to 15.0±0.5 kg per mold
├── Cool: N₂ quench profile → mold FBG cooling rate (Fe: 30°C/min, REE: 20°C/min)
├── Demold: Ejector sequence (extend 2s, dwell 0.5s, retract 2s)
├── Stamp: Piezo actuation, vision verify, Data Matrix etch
├── LIBS: Trigger at demold, grade assign, registry write
├── REE Grade: LIBS Nd/Sm/Co → DIRECT_USE (FOLLOW-15) / STOCKPILE
└── Transfer: Conveyor advance, handoff packet to Machine 113

C/Si/Mn CONTROL LOOPS (1 Hz)
├── C_loop: Target [%C] per stream → p_CO/p_CO₂ setpoint → MFC adjust
├── Si_loop: Target [%Si] → CaO feed rate → slag basicity B → L_Si
├── Mn_loop: Target [%Mn] → FeO in slag (via C_level) → oxygen potential
└── REE_loop: Target L_Nd, L_Sm, L_Co → FeO/slag basicity → oxygen potential

SAFETY INTERLOCKS (Hardwired, <10 ms)
├── H₂ >4% LEL → Emergency N₂ purge, power cut
├── CO >500 ppm area → Ventilation max, power cut
├── Temp >1610°C → Power cut, N₂ flood
├── Pressure >1.5 bar → Vent, power cut
├── Vibration >5 G → Power cut (drum bearing failure)
├── FBG comm loss >100 ms → Power cut
├── Carousel position error >1° → E-stop
└── Magnetic sensor loss → Power cut (ferromagnetic coupling lost)
```

### 12.2 Key Control Algorithms

**Carbon Control Algorithm:**
```
Target_C = stream_C_target (0.5-4.0% by temperature band)
p_CO/p_CO₂_setpoint = Target_C / (K_equil × a_FeO_slag^0.5)
MEASURED_C = XRF_C_port7
ERROR_C = Target_C - MEASURED_C
IF |ERROR_C| > 0.2%:
    ADJUST CO/CO₂ MFC ratio by ERROR_C × gain
    LOG adjustment to batch record
```

**REE Partitioning Verification:**
```
L_Nd_measured = (XRF_Nd_slag / 100) / (XRF_Nd_metal / 100)
L_Sm_measured = (XRF_Sm_slag / 100) / (XRF_Sm_metal / 100)
IF L_Nd_measured < 100: INCREASE FeO in slag (reduce C injection), ALERT
IF L_Sm_measured < 80: INCREASE slag basicity (add CaO), ALERT
```

**Dual-Port Separation Verification:**
```
Port_7_Fe_rate = mass_Fe_mold / fill_time
Port_7A_REE_rate = mass_REE_mold / fill_time
IF Port_7A_Fe_content > 30%: Port 7A opening too late → ADVANCE Port 7A trigger to 1490°C
IF Port_7_REE_content > 0.5%: Port 7 opening too early → DELAY Port 7 trigger to 1560°C
```

---
