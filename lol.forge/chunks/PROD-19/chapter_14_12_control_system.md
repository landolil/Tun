## 12. Control System

### 12.1 Control Architecture — Stage 6 Specific

**Cascade PID Structure (from PROD-10, extended for Stage 6):**
```
STAGE 6 CONTROL HIERARCHY
══════════════════════════

SUPERVISORY (1 Hz)
├── Batch State Machine: CHARGE → PREHEAT → MELT → DWELL → ANODE_CAST → TRANSITION
├── Recipe Management: Temp profile, RPM, gas, power per stage
├── Quality Gate: LIBS/XRF pass/fail before next state
└── Phoenix Registry: Slug UUID, grade, downstream route

ZONE 6 PID (1 kHz) — PROD-10 Zone 6
├── Master: Drum wall temp (FBG median, 48 sensors) → Power setpoint
├── Slave 1: Resonance tracking (GaN inverter) → Frequency/phase
├── Slave 2: POF level (melt height) → Feed rate / drain rate
├── Slave 3: Gas analyzer (H₂, dew point) → MFC setpoints
├── Slave 4: XRF composition (Cu, Ag, Au) → Dwell time adjust
└── Slave 5: Anode mold FBG (6 per mold) → N₂ quench flow

ANODE CAROUSEL CONTROL (10 Hz)
├── Position: Ultrasonic motor encoder ±0.05°
├── Fill: Mold FBG temp → Port 6A valve (open at 1180°C ±2°C)
├── Cool: N₂ flow → mold FBG cooling rate → 50°C/min target
├── Demold: Ejector sequence (extend 2s, dwell 0.5s, retract 2s)
├── Stamp: Piezo actuation, vision verify, Data Matrix etch
├── LIBS: Trigger at demold, grade assign, registry write
└── Transfer: Conveyor advance, handoff packet to Machine 113

SAFETY INTERLOCKS (Hardwired, <10 ms)
├── H₂ >4% LEL → Emergency N₂ purge, power cut
├── Temp >1210°C → Power cut, N₂ flood
├── Pressure >1.5 bar → Vent, power cut
├── Vibration >5 G → Power cut (drum bearing failure)
├── FBG comm loss >100 ms → Power cut
└── Carousel position error >1° → E-stop
```

### 12.2 Key Control Algorithms

**Anode Casting Fill Control:**
```
IF mold_FBG_temp > 1178°C AND mold_FBG_temp < 1182°C:
    OPEN Port_6A_valve
    SET fill_rate = 50 kg / (mold_FBG_thermal_mass × target_cooling_rate)
    MONITOR mold_FBG[1..6] for uniform fill
    WHEN mold_FBG[4] (top sensor) > 1150°C:  # Cu solidus at top
        CLOSE Port_6A_valve
        START N₂_quench_profile
```

**PM Dissolution Verification:**
```
PM_dissolved = XRF_Ag + XRF_Au + XRF_Pd
IF PM_dissolved < 0.95 × feed_PM_estimate AT t=5 min:
    EXTEND dwell by 5 min
    INCREASE RPM to 280 (temporary, for mixing)
    ALERT operator
```

**Slime Yield Prediction:**
```
slime_kg = 0.25 × anode_kg × (1 + 0.5 × (O_ppm/1000) + 0.3 × (S_ppm/100))
PREDICT slime mass per anode → compare to actual at demold
IF deviation > 20%: FLAG for investigation
```

---
