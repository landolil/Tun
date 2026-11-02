## 13. Control System

### 13.1 Control Architecture — Stage 8 Specific

**Cascade PID Structure (from PROD-10, extended for Stage 8):**
```
STAGE 8 CONTROL HIERARCHY
══════════════════════════

SUPERVISORY (1 Hz)
├── Batch State Machine: CHARGE → DISSOCIATION → FLASH_SINTER → RESIDUAL_SEP → COOLDOWN
├── Recipe Management: Temp profile, RPM, gas, power, pO₂, precursor additions
├── Quality Gate: XRD dissociation, 3Y-TZP density, SiO₂ SSA
├── Precursor Management: Y₂O₃, B₂O₃, C inventory, addition scheduling
└── Phoenix Registry: Slug UUID, grade, downstream route (FOLLOW-16,21,32)

ZONE 8 PID (1 kHz) — PROD-10 Zone 8
├── Master: Drum wall temp (FBG median, 48 sensors) → Power setpoint
├── Slave 1: Resonance tracking (GaN inverter) → Frequency/phase (1 kHz ZVS)
├── Slave 2: POF level (slag height) → Feed rate
├── Slave 3: Gas analyzer (Ar, He, O₂, SiO) → MFC setpoints, condenser flow
├── Slave 4: Pyrometer (surface) → Temp cross-check
├── Slave 5: ZrO₂ probe (pO₂) → Ar/He ratio, getter status
├── Slave 6: Flash sinter cell (V, I, T) → Field profile, duration
├── Slave 7: Port 8A mold FBG (6 per mold) → N₂ quench flow
└── Slave 8: Port 8B condenser temp → Coolant flow

DISSOCIATION MONITOR (10 Hz)
├── READ MS_SiO₂ → p_SiO₂
├── TARGET p_SiO₂ = 10⁻³ atm
├── IF p_SiO₂ > 10⁻²: INCREASE Ar sweep, DECREASE power
├── IF p_SiO₂ < 10⁻⁴: DECREASE Ar sweep (SiO₂ re-deposition risk)
├── CALCULATE X_diss = 1 - (p_SiO₂_measured / p_SiO₂_initial)^(1/3)
├── IF X_diss < 0.95 at t=25 min: EXTEND dwell, ALERT

FLASH SINTER CONTROL (100 Hz)
├── READ V_cell, I_cell, T_pyrometer
├── TARGET: T=1800°C, E=300 V/cm, t=300s
├── RAMP: E = 100 + 200×(t/60) V/cm for t<60s
├── FLASH DETECTION: dI/dt > threshold → thermal runaway start
├── HOLD: E = 300 V/cm, PID on T_pyrometer
├── IF T > 1850°C: REDUCE E, ALERT
├── COOL: E = 0, N₂ quench profile

DUAL-PORT CAROUSEL CONTROL (10 Hz)
├── Port 8A (3Y-TZP): 2 molds × 10 kg, flash sinter sync
├── Port 8A (final): Al₂O₃/TiO₂/REE concentrate
├── Port 8B (SiO₂): Continuous condenser, no mold
├── Cool: N₂ quench profile per material
├── Demold/Stamp/LIBS/Registry: per PROD-08

SAFETY INTERLOCKS (Hardwired, <10 ms)
├── pO₂ > 10⁻¹⁰ atm → Emergency Ar flood, power cut
├── SiO > 10 ppm in off-gas → Condenser check, power cut
├── Temp > 2250°C → Power cut, Ar flood
├── Pressure > 1.3 bar → Vent, power cut
├── Vibration > 3 G → Power cut (lower RPM = lower G tolerance)
├── FBG comm loss > 100 ms → Power cut
├── Flash cell V > 200V or I > 600A → Power cut
├── Carousel position error > 1° → E-stop
└── O₂ area < 19.5% → Evacuation alarm, Ar purge
```

### 13.2 Key Control Algorithms

**Zircon Dissociation Control:**
```
X_diss_target = 0.95
p_SiO₂_setpoint = 10⁻³ atm
MEASURED_X_diss = 1 - (MS_SiO₂ / MS_SiO₂_initial)^(1/3)
ERROR_diss = X_diss_target - MEASURED_X_diss
IF ERROR_diss > 0.05 at t>20 min:
    EXTEND dwell by ERROR_diss × 600 s
    INCREASE power by 10%
    LOG to batch record
```

**Flash Sinter Detection:**
```
FLASH_DETECTED = (dI_cell/dt > 50 A/s) AND (T_pyrometer > 1750°C)
IF FLASH_DETECTED:
    LOG flash_time
    SWITCH to hold_mode (E=300 V/cm constant)
    TARGET_T = 1800°C
    PID_GAINS: Kp=0.5, Ki=0.01, Kd=0.1 (pre-tuned)
```

**REE/Al/Ti Separation Verification:**
```
IF Zone 8-4 active:
    READ XRF_residual → C_Al, C_Ti, C_REE, C_Zr
    IF C_Zr > 5% in residual: ZrO₂ carryover → ALERT, adjust Zone 8-3 duration
    IF C_REE < 5% in concentrate: REE loss → ALERT, check Zone 8-2 dissociation
```

---
