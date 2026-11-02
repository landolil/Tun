## 11. Operator Interface (HMI) — High-Performance Graphics

### 11.1 Display Hierarchy

| Level | Display | Refresh | Key Elements |
|-------|---------|---------|--------------|
| **L1** | Forge Overview | 1 Hz | All 8 zones sparkline, drum RPM, total power, batch %, alarms |
| **L2** | Stage Detail | 1 Hz | Zone power bars, FBG spatial map, port status, gas flows |
| **L3** | Zone Faceplate | 10 Hz | PID trend, resonance tracker, FBG table, efficiency, faults |
| **L4** | Safety Faceplate | 1 Hz | SIF status, bypass register, proof test due, SIL status |
| **L5** | Digital Twin | 10 Hz | Predicted vs actual, anomaly heat map, optimization knobs |

### 11.2 Alarm Philosophy (ISA-18.2)

| Priority | Color | Response | Examples |
|----------|-------|----------|----------|
| **Critical (SIL)** | Red flashing | Immediate, auto-action | SIF trip, over-temp, over-pressure |
| **High** | Red | <1 min acknowledgment | Zone deviation >10°C, FBG loss |
| **Medium** | Yellow | <10 min acknowledgment | Efficiency <95%, flow deviation |
| **Low** | Blue | <1 hr acknowledgment | Maintenance due, log full |
| **Info** | Gray | Logged only | Recipe change, batch complete |

**Alarm Shelving:** Max 4 hours (requires Engineer approval). All shelved alarms auto-unshelve.

### 11.3 Training Simulator

- **Platform:** Digital twin (PROD-37) in "shadow mode" — same models, simulated sensors
- **Scenarios:** Normal startup, feedstock variations, SIF trips, GIC event, cyber intrusion
- **Certification:** Operators must complete 40 hrs sim + 20 hrs supervised before solo
- **Recertification:** Annual (8 hrs sim + 1 emergency drill)

---
