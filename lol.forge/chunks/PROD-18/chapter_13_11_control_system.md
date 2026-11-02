## 11. Control System

### 11.1 Temperature Ramp Profile

```
STAGE 5 TEMPERATURE PROFILE — 30 MINUTE SEQUENCE
═════════════════════════════════════════════════════════════════════════════════

Time (min)  Temp (°C)  Action                    RPM    Port    Flux
──────────────────────────────────────────────────────────────────────────────
0-5         450→660    Ramp through Al solidus   300    —       0.5 kg/min
5-10        660→680    Ramp to dwell temp        300    —       0.5 kg/min
10-35       680        DWELL — Al melt + Mg removal  300    5       0.2 kg/min
35-37       680→720    Ramp to max (Mg limit)    300    5       0.3 kg/min
37-40       720        Final dwell/transition    300    5       0.3 kg/min
40+         720→1085   Ramp to Stage 6           200    —       —

CONTROL MODE: Cascade PID — Outer: drum wall temp (FBG Zones 4-5), Inner: induction power
BAND COLLECTION: 5-min temperature bands → separate ZrO₂ mold positions (1-5)
```

### 11.2 PID Control Parameters

| Loop | Variable | Kp | Ki | Kd | Setpoint Source |
|---|---|---|---|---|---|
| **Outer (Temp)** | Drum wall temp (FBG Zones 4-5) | 0.6 | 0.03 | 0.08 | Profile generator |
| **Inner (Power)** | Induction power (Zones 4-5) | 1.0 | 0.25 | 0.03 | Outer loop output |
| **RPM** | Drum speed | 0.4 | 0.08 | 0.03 | 300 RPM constant |
| **Pressure** | Drum N₂ pressure | 1.8 | 0.4 | 0.08 | 1.5 bar constant |
| **Port 5 Temp** | Valve actuator temp | 1.2 | 0.15 | 0.05 | 720°C |
| **Flux Injection** | Mass flow rate | 0.8 | 0.1 | 0.02 | Profile + XRF feedback |

**Resonance Tracking (Induction):**
- Frequency sweep ±3% around 10 kHz every 15 sec
- Phase-locked loop maintains ZVS
- Load change detection: Al melt increases coupling → frequency shift tracked

### 11.3 Metal Level Sensors (POF)

**Plastic Optical Fiber (POF) Level Detection at Port 5:**
- PMMA fiber (1 mm core) at r = 280 mm, 3 axial positions (200, 400, 600 mm)
- Light transmission attenuated by molten Al film (n_Al ≈ 1.2 vs n_air = 1.0)
- Resolution: 0.3 mm film thickness
- Response time: <50 ms
- **Used for:** Continuous flow verification, mold fill level, overfill protection

### 11.4 Composition Feedback Control (XRF)

**Inline XRF at Port 5 Exit:**
- Si-PIN detector, 50 kV Rh anode, 10 sec acquisition
- Measures: Si, Fe, Cu, Mg, Mn, Zn, Ti, Pb, Sn
- **Real-time fractionation decision:** XRF Si content → mold position assignment
  - Si < 0.5% → Position 1 (Wrought)
  - Si 0.5-3% → Position 2 (Mixed wrought/cast)
  - Si 3-8% → Position 3 (Cast A356)
  - Si > 8% → Position 4-5 (Cast A380/high-Si)

### 11.5 Flux Injection Control

- **Pneumatic powder injection** (N₂ carrier) at drum top flux port
- **Mass flow controller** per component (NaCl/KCl blend, cryolite separate)
- **Injection synchronized** with temperature profile
- **Feedback:** 
  - XRF Mg in Al stream → adjust cryolite rate (Mg removal efficiency)
  - Dross alkalinity (pH of quench water) → adjust NaCl/KCl ratio
  - Flux consumption rate → inventory management

### 11.6 Mold Carousel Control

**8-Position ZrO₂ Mold Carousel (PROD-08 Integration):**
- Rotation: Indexed by Port 5 discharge events (XRF trigger)
- Position 1-4: Wrought molds (water-cooled Cu chill plates)
- Position 5-8: Cast molds (insulated for slower cooling)
- Cooling: N₂ quench at -150°C for wrought; ambient air for cast
- Cycle time: 5 min per position (matches temperature band dwell)
- **Synchronization:** Carousel index triggered by XRF band decision + Port 5 flow confirmation

### 11.7 Supervisory Control and Data Acquisition (SCADA)

**HMI Screens:**
1. **Thermal Overview**: Real-time FBG map (8 zones × 48 sensors), temperature profile tracking
2. **Composition Monitor**: XRF trends (Si, Fe, Cu, Mg), fractionation assignment log
3. **Flux Management**: Hopper levels, injection rates, recycle loop status
4. **Dross/Skim**: Skim frequency, dross mass, Al recovery rate
5. **Energy Dashboard**: Induction power, heat recovery, exergy efficiency
6. **Safety Status**: Interlock states, emission monitors, vibration spectra

**Alarm Hierarchy:**
- **Level 1 (Critical)**: Temp >725°C, O₂ >2%, Port 5 fail, Vibration >5 mm/s — **Auto shutdown**
- **Level 2 (Major)**: Temp ramp >10°C/min, RPM ±10%, Pressure >1.8 bar — **Auto hold + alarm**
- **Level 3 (Minor)**: XRF drift, Flux level low, Emission >50% limit — **Alarm only**
- **Level 4 (Info)**: Band transition, Mold index, Batch complete — **Log only**

**Data Historian:**
- 1 Hz logging for all FBG, XRF, POF, induction, rotation, pressure
- 10-year retention (compressed)
- OPC-UA interface for enterprise integration

---
