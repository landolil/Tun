## 6. PID Control Architecture - 5C Zone Control + Resonance Tracking

### 6.1 Dual-Loop Control Structure

Each zone runs two nested control loops:

**Outer Loop (Temperature PID):**
- Setpoint: Stage target temperature (from thermal cascade profile)
- Process Variable: FBG median temperature (48 sensors per zone)
- Output: Power demand (0-100%) - DC bus voltage reference
- Update Rate: 100 Hz (decimated from 1 kHz FBG)

**Inner Loop (Resonance Tracking):**
- Setpoint: Phase angle = 0 degrees (resonance)
- Process Variable: phi = angle(V_inverter, I_inverter) measured via optical CT
- Output: Frequency adjustment (5% around nominal)
- Update Rate: 10 kHz (fast compared to thermal)

### 6.2 PID Tuning Parameters (Per Zone)

| Zone | Kp (Temp) | Ki (Temp) | Kd (Temp) | Kp (Resonance) | Ki (Resonance) | Notes |
|------|-----------|-----------|-----------|----------------|----------------|-------|
| 1-2 | 0.8 | 0.05 | 0.1 | 0.02 | 0.001 | Air heating, slow thermal response |
| 3 | 1.2 | 0.1 | 0.15 | 0.05 | 0.005 | Zn/Pb coupling onset |
| 4-5 | 1.5 | 0.15 | 0.2 | 0.08 | 0.01 | Al window - critical precision |
| 6 | 1.8 | 0.2 | 0.25 | 0.1 | 0.02 | Cu thermal mass |
| 7 | 2.0 | 0.25 | 0.3 | 0.15 | 0.03 | Fe Curie transition |
| 8 | 2.5 | 0.3 | 0.35 | 0.2 | 0.05 | Mineral conduction, slow |

**Anti-Windup:** Back-calculation with tracking time constant T_t = 1/Ki
**Feedforward:** Thermal cascade profile provides dT/dt feedforward to outer loop
**Gain Scheduling:** Kp, Ki, Kd interpolated vs. temperature (lookup table per zone)

### 6.3 Resonance Tracking Algorithm

```
RESONANCE_TRACKING_LOOP (10 kHz):
1. Measure V_inverter(t), I_inverter(t) via optical CT (PMMA POF)
2. Compute phase phi = atan2(Im(V*I*), Re(V*I*))
3. If |phi| > 0.1 deg:
   f_new = f_current - Kp_res * phi - Ki_res * integral(phi) dt
   Clamp f_new to [0.95*f_nom, 1.05*f_nom]
   Update inverter frequency
4. If resonance lost (|phi| > 15 deg for >10 ms):
   Fault - reduce power to 10% - attempt re-lock
5. Log phi, f, P_out for mirror
```

The resonance lock is **not a control parameter** - it is a physical lock. The inverter "clicks" into resonance when the coil's reflected impedance matches the tank. The phase angle IS the measurement of coupling.

### 6.4 Stage Transition Control

The thermal cascade profile is a **time-temperature trajectory** with dwell-hold-verify at each stage:

```
STAGE_TRANSITION_PROTOCOL:
1. Ramp to stage target T at profile rate (e.g., 2.4C/min for Stage 5)
2. Enter DWELL: Hold T +/- 2C
3. Monitor port mass flow (from output catalog LIBS)
4. When flow < 1% of peak - HOLD_EXTENDED (5 min)
5. Verify slug composition (inline mass spec) - CLEAR
6. Ramp to next stage target
```

The PID outer loop tracks the ramp profile. The dwell phase uses the same PID with fixed setpoint. The transition is triggered by **port clearance verification** - not by timer alone.

---
