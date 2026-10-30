## 11. Wear Monitoring

### 11.1 Wear Mechanisms and Rates

| Location | Wear Mechanism | Rate (μm/1000 hrs) | Limit (mm) | Life (hrs) |
|---|---|---|---|---|
| Zone A liner (Si₃N₄) | Char abrasion, polymer adhesion | 15 | 2.0 | 133,000 |
| Zone B liner (ZrB₂-SiC) | Molten metal erosion, oxidation | 45 | 3.0 | 67,000 |
| Zone C liner (ZrO₂) | Slag corrosion, thermal cycling | 30 | 4.0 | 133,000 |
| Port valve seats | Thermal cycling, particle impact | 20 | 0.5 | 25,000 |
| Port pistons | Seal face wear | 10 | 0.3 | 30,000 |
| Ceramic bearings (Sec 9) | Rolling contact fatigue | 0.5 (race) | 0.005 | 10,000 |
| Drum wall (SiC phase) | Oxidation, thermal fatigue | 5 | — | >100,000 |

**Design wear limit:** 10,000 hours (bearing L10 life governs)
**All wear rates well within limits at 10,000 hrs.**

### 11.2 FBG Strain Sensor Network — Embedded Health Monitoring

**Sensor specification (per CSMFAB000000000013):**
- Fiber: PMMA optical fiber (POF), 1 mm core, 2.2 mm jacket
- Grating: Type I, 5 mm length, 1550 nm ± 0.5 nm
- Sensitivity: 1.2 pm/με (strain), 10 pm/°C (temperature)
- Range: -50°C to +1200°C (polyimide coating)
- Interrogator: 8-channel WDM/TDM, 1 kHz/channel, ±1 pm resolution

**Embedding locations (48 sensors total):**

| Zone | Location | Quantity | Purpose |
|---|---|---|---|
| Drum wall | Mid-wall radius, 8 axial × 3 circumf. | 24 | Thermal gradient, hoop stress, ovality |
| Zone A liner | Bond line, 4 axial × 2 circumf. | 8 | Liner/drum shear, thermal mismatch |
| Zone B liner | Bond line, 6 axial × 2 circumf. | 12 | Liner/drum shear (critical zone) |
| Zone C liner | Bond line, 4 axial × 2 circumf. | 8 | Liner compression, barrier health |
| Port actuators | Actuator bilayer, 1 per port | 8 | Valve position, actuation force |
| Bearings | Outer race (2), housing (2) | 4 | Load, preload, temperature |

**Total: 48 sensors, 6 fibers (8 sensors/fiber, WDM multiplexed)**

### 11.3 Sensor Embedding Process

**Drum wall sensors (embedded during flash sintering):**
1. Green body: 50% of wall thickness cast
2. Fibers laid in grooves (laser-machined, 0.5 mm deep)
3. Remaining 50% powder added
4. Flash sintered — fibers survive (PMMA pyrolysis <400°C, but protected by powder)
5. **Survival rate:** 95% (validated on FA drums)

**Liner sensors (embedded in liner tiles):**
- Grooves machined in liner OD (0.3 mm deep)
- Fibers epoxied (Ceramabond 835, 1200°C rated)
- Tiles installed, fibers routed to feedthrough

**Feedthrough:** 6 × ZrO₂ ceramic bulkhead fittings at drum OD, hermetic to 5 bar, 2200°C

### 11.4 Measured Parameters and Diagnostics

| Parameter | Sensor Output | Diagnostic |
|---|---|---|
| Hoop stress | ε_θ(t) at 3 radii | Stress evolution, creep, thermal gradient |
| Thermal gradient | ΔT(r) from 24 wall sensors | Induction zone balance, thermal shock risk |
| Ovality | ε_θ(θ) at mid-length | Bearing wear, imbalance, port distortion |
| Liner shear | ε_z at bond line | Pin slip, CTE mismatch, debond initiation |
| Liner compression | ε_r at Zone C | Thermal barrier integrity |
| Valve position | Actuator strain (bilayer curvature) | Port open/closed, trigger temp drift |
| Bearing load | Outer race hoop strain | Preload loss, axial float, ball wear |

### 11.5 Autoencoder Anomaly Detection

**Model architecture (deployed on edge controller):**
- Input: 48 channels × 100 time steps (100 ms window)
- Encoder: 48 → 32 → 16 → 8 (latent)
- Decoder: 8 → 16 → 32 → 48
- Loss: MSE + 0.1×KL divergence
- Training: 500 nominal batches (2000 hrs operation)

**Detection threshold:** 3σ reconstruction error on latent space
**False positive rate:** <0.1% (validated on 200 test batches)
**Detected anomalies:**
- Induction zone imbalance (asymmetric heating)
- Liner debond initiation (shear strain localization)
- Valve actuator drift (trigger temp shift >5°C)
- Bearing preload loss (axial strain decay)

### 11.6 Port Valve Seat Wear Tracking

**Direct measurement:** FBG on actuator housing measures piston lift-off force
**Indirect measurement:** Port mass flow vs. drum pressure (Coriolis flowmeter on each port)

**Wear correlation:**
- Seat recession → increased piston lift for same actuator deflection
- Flow rate vs. pressure curve shifts (orifice area increase)
- **Calibration:** 0.1 mm seat wear = 15% flow increase at 5 bar

**Replacement trigger:** Seat wear >0.3 mm (60% of 0.5 mm limit) → schedule at next shutdown

### 11.7 SiC Wear Rate Validation

**Test rig (CSMFAB000000000001 validation):**
- ZrB₂-SiC pin on ZrB₂-SiC disk
- Load: 50 N, speed: 0.5 m/s, temp: 1000°C
- Atmosphere: N₂ + 1% O₂ (simulated)
- Duration: 1000 hrs

**Results:**
- Wear rate: 0.08 mm/1000 hrs (disk), 0.05 mm/1000 hrs (pin)
- Wear mechanism: Mild oxidative wear → SiO₂ glaze formation
- No catastrophic wear, no delamination

**Extrapolation to drum:**
- Contact pressure lower (hydrodynamic film from molten metal)
- Temperature cycling (not steady) → protective oxide reforms
- **Conservative design rate: 0.1 mm/1000 hrs (Zone B)**

### 11.8 Data Logging and Trending

**Historian (InfluxDB on edge server):**
- Raw FBG: 1 kHz (7-day rolling)
- 1 Hz aggregates: 1-year retention
- Anomaly events: Permanent retention
- Batch summaries: Permanent retention

**Trend analyses (monthly):**
- Liner shear strain trend → pin slip progression
- Thermal gradient trend → induction coil degradation
- Valve trigger temp trend → actuator oxidation
- Bearing preload trend → cage wear

---
