## 25. Digital Twin — Real-Time Process Model

### 25.1 State Estimation

**Measured states (real-time):**
- 384 FBG temperatures (1 kHz)
- 8 zone coil currents/voltages (10 kHz)
- Drum speed/position (100 Hz)
- 8 port mass flow rates (10 Hz, Coriolis)
- Vessel pressure (100 Hz)
- Gas composition (1 Hz, NDIR/GC)

**Estimated states (Kalman filter):**
- Internal temperature field (3D, 100×100×50 grid)
- Phase fraction per element class (8 stages)
- Slug mass accumulation per port
- Drum wear (port valve seat recession)

### 25.2 Predictive Control

**Model predictive controller (MPC):**
- Horizon: 30 min (thermal inertia)
- Constraints: T_zone ±5°C, P_vessel <3 bar, ω_drum <500 RPM
- Objective: Minimize batch time + energy, maximize target purity
- Update rate: 1 Hz (receding horizon)

**Anomaly detection:**
- Autoencoder on FBG spatial-temporal patterns
- Threshold: 3σ reconstruction error
- Action: Auto-hold stage, alert operator

---
