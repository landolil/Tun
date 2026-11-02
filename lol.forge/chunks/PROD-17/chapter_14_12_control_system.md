## 12. Control System

### 12.1 Temperature Ramp Profile

```
STAGE 4 TEMPERATURE PROFILE — 25 MINUTE SEQUENCE
════════════════════════════════════════════════════════════════════════════════

Time (min)  Temp (°C)  Action                    RPM    Port    Gas
──────────────────────────────────────────────────────────────────────────────
0-5         150→160    In liquefaction           400    4A      N₂/H₂
5-8         160        In dwell + centrifuge     400    4A      N₂/H₂
8-10        160→183    Ramp to Sn-Pb eutectic    400    —       N₂/H₂
10-13       200        Sn-Pb dwell + centrifuge  300    4B      N₂/H₂
13-15       200→271    Ramp to Bi/Sn             300    —       N₂/H₂
15-18       280        Bi/Sn dwell + centrifuge  300    4B      N₂/H₂
18-20       280→327    Ramp to Pb                300    —       N₂/H₂
20-23       340        Pb dwell + centrifuge     300    4C      N₂/H₂
23-24       340→420    Ramp to Zn                300    —       N₂/H₂
24-25       430        Zn dwell + centrifuge     400    4C      N₂/H₂
25+         430→660    Ramp to Stage 5           200    —       N₂/H₂

CONTROL MODE: Cascade PID — Outer loop: drum wall temp (FBG), Inner loop: induction power
```

### 12.2 PID Control Parameters

| Loop | Variable | Kp | Ki | Kd | Setpoint Source |
|---|---|---|---|---|---|
| **Outer (Temp)** | Drum wall temp (FBG Zone 4) | 0.8 | 0.05 | 0.1 | Profile generator |
| **Inner (Power)** | Induction power (Zone 3-4) | 1.2 | 0.3 | 0.05 | Outer loop output |
| **RPM** | Drum speed | 0.5 | 0.1 | 0.05 | Profile generator |
| **Pressure** | Drum N₂ pressure | 2.0 | 0.5 | 0.1 | 1.5 bar constant |
| **Port 4A Temp** | Valve actuator temp | 1.5 | 0.2 | 0.1 | 160°C (In) |
| **Port 4B Temp** | Valve actuator temp | 1.5 | 0.2 | 0.1 | 200/280°C |
| **Port 4C Temp** | Valve actuator temp | 1.5 | 0.2 | 0.1 | 340/430°C |

**Resonance Tracking (Induction):**
- Frequency sweep ±5% around 50 kHz every 10 sec
- Phase-locked loop maintains zero-voltage switching (ZVS)
- Efficiency optimization: max power transfer at resonance

### 12.3 Gas Composition Feedback

| Sensor | Location | Measurement | Control Action |
|---|---|---|---|
| **O₂ (zirconia)** | Drum headspace | ppm O₂ | H₂ injection rate, N₂ purge |
| **H₂ (catalytic)** | Drum headspace | % H₂ | H₂ injection valve |
| **HCl (FTIR)** | Drum exit gas | ppm HCl | NaHCO₃ injection rate |
| **Zn vapor (UV)** | Port 4C exit | ppm Zn | Emergency quench trigger |
| **CO/CO₂ (NDIR)** | Gas management | % CO, CO₂ | Pyrolysis completeness |

### 12.4 Metal Level Sensors (POF)

**Plastic Optical Fiber (POF) Level Detection:**
- PMMA fiber (1 mm core) embedded in drum wall at r = 280 mm
- Light transmission attenuated by molten metal contact
- Calibrated for each metal (In, Sn, Pb, Zn) refractive index
- Resolution: 0.5 mm liquid level
- Response time: <100 ms
- **Used for:** Port open confirmation, dwell time optimization, overfill protection

### 12.5 Flux Injection Control

- **Pneumatic powder injection** (N₂ carrier) at drum top port
- **Mass flow controller** per flux type (Na₂CO₃, NaF blend)
- **Injection synchronized** with temperature profile steps
- **Feedback:** Slag basicity (inline pH probe in quench water) → adjust flux rate

---
