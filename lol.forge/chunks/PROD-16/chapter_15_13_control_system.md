## 13. Control System

### 13.1 Temperature Ramp Profile Control

Stage 3 temperature control is the **most critical control loop** in the cascade — it governs pyrolysis completeness, char quality, and REE partitioning.

**Target profile (from PROD-02):**
| Segment | Time (min) | Temp (°C) | Ramp Rate (°C/min) | Control Mode |
|---------|------------|-----------|-------------------|--------------|
| **Ramp 1** | 0-10 | 450→500 | 5.0 | Ramp (PID + feedforward) |
| **Ramp 2** | 10-20 | 500→550 | 5.0 | Ramp (PID + feedforward) |
| **Dwell** | 20-50 | 550→700 | 5.0* | Dwell (PID + cascade) |
| **Transition** | 50-55 | 700→720 | 4.0 | Ramp to Stage 4 |

*Ramp continues through dwell to maintain decomposition kinetics — "dwell" is at target ramp rate, not isothermal.

**Control architecture (cascade):**
```
[TEMP SETPOINT GENERATOR] ──► [MASTER PID: Drum Wall Temp] ──► [SLAVE PID: Zone Power]
         │                            │                              │
         ▼                            ▼                              ▼
  [Profile: 5°C/min]           [FBG Sensors: 8 zones]          [8 GaN Inverters]
                                                          [Freq: 50 kHz]
                                                          [Max: 80 kW/zone]
```

**Master PID (Drum Wall Temp → Zone Power Setpoint):**
- **Input:** 8-zone average FBG temperature (PMMA POF, 384 channels, median filter)
- **Setpoint:** Ramp generator (5°C/min through 450-550°C, then 5°C/min to 700°C)
- **Gains:** Kp = 2.5 kW/°C, Ki = 0.08 kW/°C·s, Kd = 15 kW·s/°C
- **Output:** Total power demand (0-400 kW) distributed to 8 zones per PROD-02 profile
- **Anti-windup:** Back-calculation with zone saturation limits

**Slave PID (Zone Power → GaN Inverter Duty):**
- **Per zone (8 total):** Independent PID, 1 kHz update
- **Input:** Zone FBG average (48 sensors/zone)
- **Setpoint:** Master output × zone weighting (PROD-02 Table 1.6)
- **Gains:** Kp = 0.8, Ki = 0.02, Kd = 5 (tuned per zone thermal mass)
- **Output:** GaN inverter duty cycle (0-100%, 50 kHz carrier)
- **Protection:** Overcurrent (120% rated), overtemp (Tj >130°C), resonance tracking

**Feedforward compensation:**
- **Feed rate:** Measured at shredder exit (kg/min) → pre-emptive power adjustment
- **Moisture:** Stage 1 exit humidity sensor → latent heat compensation
- **Gas composition:** Mass spec CO/CO₂ ratio → pyrolysis progress indicator
- **Char quality:** Online BET proxy (gas CO/H₂ ratio) → dwell extension trigger

### 13.2 Gas Composition Feedback Control

**Mass spectrometer (MS) provides real-time pyrolysis progress:**
- **Primary feedback:** CO/CO₂ ratio — peaks at 500-550°C (epoxy decomp), declines after 600°C
- **Secondary feedback:** H₂/CH₄ ratio — rises through dwell (condensation reactions)
- **Tertiary feedback:** BTX/tar ions (m/z 78, 92, 106) — should decline to <5% of peak by 650°C

**Control actions from MS:**
| MS Signal | Threshold | Action | Purpose |
|-----------|-----------|--------|---------|
| **CO/CO₂ > 1.5** | Sustained >5 min | Hold ramp (extend 500-550°C) | Ensure complete epoxy decomp |
| **BTX > 5% peak** | At 650°C | Extend dwell +5 min, increase steam 10% | Crack residual tar |
| **H₂/CH₄ > 3.0** | At 680°C | Normal — proceed to Stage 4 | Char condensation complete |
| **NH₃/HCN detected** | Any | Log NBR/PU content for Stage 4 slag | Downstream adjustment |

**Gas composition hold points:**
- **Hold Point 1 (500°C):** CO/CO₂ >1.5 for >5 min → continue
- **Hold Point 2 (600°C):** BTX <10% peak → continue
- **Hold Point 3 (680°C):** H₂/CH₄ >2.5 → transition to Stage 4

### 13.3 Char Quality Hold Points

**Online char quality proxies (no direct BET measurement possible in-process):**

| Proxy | Measurement | Target | Action if Missed |
|-------|-------------|--------|------------------|
| **CO/CO₂ ratio decay rate** | MS, 1 Hz | <0.02/min after 600°C | Extend dwell 5 min |
| **H₂ evolution rate** | MS, 1 Hz | Peak at 650°C, then decline | Check induction coupling |
| **Gas calorific value** | Calculated from MS | >18 MJ/Nm³ at 680°C | Verify feed composition |
| **Char discharge rate** | Port 3 weigh belt | 0.5-1.5 kg/min steady | Check Port 3 actuator |
| **Activation reactor feed temp** | Thermocouple (ZrO₂ sheathed) | 600-650°C | Adjust Stage 3 exit temp |

**Quality hold at Stage 3 exit (680°C):**
- All proxies green → Transition to Stage 4
- Any proxy red → Extend dwell 5 min, re-evaluate (max 2 extensions = 10 min)
- 2 extensions failed → Alarm, manual intervention, batch quarantine

### 13.4 Activation Reactor Control

**Independent but coordinated with Stage 3:**

| Loop | Variable | Setpoint | Gains | Notes |
|------|----------|----------|-------|-------|
| **Bed Temp** | 8-zone FBG average | 850°C | Kp=3.0, Ki=0.1, Kd=20 | Master for activation |
| **Steam Flow** | Coriolis meter | 2.5 kg/min/kg char | Kp=0.5, Ki=0.02 | Ratio to char feed |
| **CO₂ Flow** | Thermal mass flow | 2.5 kg/min/kg char | Kp=0.5, Ki=0.02 | 50/50 with steam |
| **N₂ Fluidization** | DP across bed | 1.5 kPa | Kp=1.0, Ki=0.05 | Minimum fluidization |
| **Bed Pressure** | Absolute transducer | 1.5 bar | Kp=2.0, Ki=0.1 | Safety limit 2 bar |

**Coordination with Stage 3:**
- Activation starts when Stage 3 char discharge begins (600°C)
- Stage 3 ramp rate adjusted if activation bed temp <800°C (reduces char feed rate)
- Shared N₂/CO₂ supply — priority to Stage 3 if conflict

---
