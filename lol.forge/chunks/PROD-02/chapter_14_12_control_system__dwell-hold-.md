## 12. Control System — Dwell-Hold-Verify Protocol

### 12.1 Distributed Control Topology

**Master PLC:** Siemens S7-1500 (radiation-hardened, in BFRP enclosure)
- Coordinates 8 zone controllers, drum drive, gas system, safety PLC
- Cycle time: 1 ms (fast I/O), 10 ms (thermal control)
- Redundant: Hot-standby backup PLC (switchover < 50 ms)

**Zone Controllers:** 8 × GaN inverter local controllers (EtherCAT)
- Each controls: inverter frequency, power, FBG temperature feedback
- Local PID: 1 kHz update, ±5°C setpoint tracking
- Autonomous resonance tracking (no master intervention)

**Safety System:** Independent SIL-3 safety PLC (separate power, separate network)
- Hardwired interlocks (not software-dependent)
- Monitors: pressure, temperature, rotation, vibration, gas composition
- Trip time: < 10 ms from sensor to coil shutdown

**FBG Interrogator:** 8-channel optical, 1 kHz sample rate, ±1°C accuracy
- 384 sensors total (48 per zone)
- WDM + TDM multiplexing, 16 sensors per fiber
- Data to master PLC via EtherCAT

**Mass Spec Interface:** RS-485 to central historian (1 Hz per port)
- Inline magnetic sector MS at each port discharge
- Elemental composition logged per batch

**Operator HMI:** Ruggedized tablet (isolated Wi-Fi, no cloud connectivity)
- Real-time: zone temperatures, port flows, gas composition, drum status
- Historical: batch records, trend plots, alarm logs
- Manual override: stage hold, emergency stop, parameter adjust (±10%)

### 12.2 Dwell-Hold-Verify Protocol — Core Control Algorithm

The fundamental control philosophy: **each stage holds temperature until the target element clears.**

```
FOR each stage in [1..8]:
    RAMP to stage target temperature (±5°C via FBG)
    HOLD at target temperature
    WHILE port_mass_flow > 1% of peak_flow:
        MONITOR port flow (Coriolis, 10 Hz)
        MONITOR slug composition (inline MS, 1 Hz)
        ADJUST zone power to maintain T ±5°C
        LOG: time, T, flow, composition
    VERIFY clearance: composition matches target element class
    LOG stage clearance timestamp
    RAMP to next stage target
```

**Transition criteria (all must be met):**
1. Port mass flow < 1% of stage peak flow (sustained 60 s)
2. Inline MS shows target element concentration < 5% in port stream
3. FBG temperatures stable within ±3°C for 30 s
4. No safety interlocks active

### 12.3 Model Predictive Control (MPC) — Thermal Trajectory Optimization

**MPC Horizon:** 30 min (thermal inertia of drum + charge)
**Constraints:**
- Zone temperatures: ±5°C of profile
- Vessel pressure: < 3 bar (N₂/Ar)
- Drum speed: < 500 RPM
- Zone power: < rated max per zone
- Gas flows: within design limits

**Objective Function:**
$$\min \sum_{k=1}^{H} \left( w_1 \Delta t_k + w_2 E_k - w_3 \sum_{i} P_{i,k} \right)$$
Where $w_1$=batch time weight, $w_2$=energy weight, $w_3$=purity weight, $P_{i,k}$=purity of element $i$ at step $k$.

**Update rate:** 1 Hz (receding horizon)
**Solver:** Real-time iteration SQP (warm-started from previous solution)

### 12.4 Adaptive Batch-to-Batch Tuning

After each batch, MPC model parameters updated:
- Drum thermal capacitance (from cool-down curve)
- Charge thermal mass (from ramp energy vs. ΔT)
- Phase transition enthalpies (from dwell power integrals)
- Heat loss coefficients (from steady-state power at hold)

**Kalman Filter State Estimation:**
- Measured: 384 FBG temps, 8 zone currents, drum speed, 8 port flows, vessel pressure, gas composition
- Estimated: 3D internal temperature field (100×100×50 grid), phase fractions per element class, slug mass per port, drum wear

### 12.5 Anomaly Detection — Autoencoder on FBG Patterns

**Autoencoder architecture:** LSTM encoder-decoder (64 hidden units)
- Input: 384 FBG spatial-temporal sequence (10 s window)
- Trained on: 500 normal batches (offline)
- Threshold: 3σ reconstruction error on validation set
- Action on anomaly: Auto-hold current stage, alert operator, log full state

### 12.6 Hardwired Interlocks (Not Software)

| Interlock | Trigger | Action | Reset |
|---|---|---|---|
| Drum rotation | < 10 RPM in Stage 4+ | Emergency N₂ vent + coil shutdown | Manual + safety PLC |
| Vessel pressure | > 3 bar | Emergency N₂ vent + coil shutdown | Pressure < 1.5 bar |
| FBG sensor loss | Any zone > 3 sensors failed | Immediate zone power cut | Sensor replacement |
| Vessel temperature | > 200°C (external) | Water deluge (external only) | T < 100°C |
| Door open | Any access door | All power cut, N₂ purge | Door closed + key reset |
| Ar/O₂ analyzer | O₂ > 1% in Ar stages | Switch to N₂, reduce power | O₂ < 0.1% |

---

