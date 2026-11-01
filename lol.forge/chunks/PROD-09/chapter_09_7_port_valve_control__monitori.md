## 7. Port Valve Control & Monitoring

### 7.1 FBG Position Sensing

Each valve assembly includes **two FBG sensors** embedded in the actuator bilayer:
- **FBG-1:** At Ti₃AlC₂ surface (hot side strain)
- **FBG-2:** At ZrO₂ surface (cold side strain)
- **Differential strain:** Directly proportional to bilayer curvature → valve position

**Calibration:**
```
Position (mm) = K × (λ_FBG1 - λ_FBG2) + C
K = 0.85 mm/pm (calibrated at assembly)
C = 0 (closed position zeroed)
Resolution: 0.01 mm (1 pm wavelength resolution)
Sample rate: 1 kHz
```

**Control Logic (FPGA):**
```
IF stage_target_temp reached AND dwell_complete:
  VALVE_STATE = OPENING
  MONITOR FBG_diff
  WHEN FBG_diff > threshold_for_full_open:
    VALVE_STATE = OPEN
    START stage_clear_timer (monitor port mass flow)
  WHEN port_mass_flow < 1% peak:
    VALVE_STATE = CLOSING
    WAIT for FBG_diff < threshold_for_closed
    VALVE_STATE = CLOSED
    LOG cycle_complete
```

### 7.2 SIL-3 Safety Interlocks

| Interlock | Sensor | Action | SIL Level |
|---|---|---|---|
| Over-temperature | Drum FBG > stage_max + 50°C | Emergency close all valves, quench N₂ | SIL-3 |
| Over-pressure | Drum FBG pressure > 3 bar | Open relief, reduce induction | SIL-3 |
| Actuator stall | FBG_diff not changing > 30s | Alarm, hold stage, investigate | SIL-2 |
| Position disagreement | FBG vs. thermal model > 0.5 mm | Alarm, verify with backup | SIL-2 |
| Seal leak | Downstream N₂ trace > 10 ppm | Flag for maintenance | SIL-1 |

**All sensors optical (FBG, PMMA POF) — no metallic paths for GIC coupling.**

### 7.3 Stage Clear Verification

**Mass Flow Monitoring:**
- Coriolis flow meter (ceramic, ZrO₂ tubes) on each port outlet
- Range: 0-50 g/s (covers all metals)
- Accuracy: ±0.1% of rate
- Clear threshold: <1% of peak flow sustained for 60 seconds

**LIBS Spot-Check (Every 5th Batch):**
- Portable LIBS on first slug from each port
- Verifies grade matches expected stage chemistry
- Updates thermal model if deviation > 2%

---
