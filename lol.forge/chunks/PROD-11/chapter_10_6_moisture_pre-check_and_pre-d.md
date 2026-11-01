## 6. Moisture Pre-check and Pre-dry — Water Management

Excess moisture in feedstock consumes thermal energy during Stage 1 (80-150°C) and can cause steam explosions in the sealed drum.

### 6.1 Capacitive Moisture Sensor Array

| Parameter | Specification |
|-----------|---------------|
| **Sensor Type** | Fringing-field capacitive, PEEK CF40 housing |
| **Measurement Frequency** | 10 MHz (immune to material conductivity) |
| **Scan Rate** | 10 Hz (continuous during feed) |
| **Calibration** | Per feedstock category (stored in FPGA) |
| **Accuracy** | ±2% absolute moisture content |
| **Output** | 4-20 mA equivalent via PMMA POF to FPGA |

### 6.2 Sensor Calibration Protocol

Calibration curves generated per feedstock category:
1. **Reference samples:** 5 moisture levels (5%, 15%, 25%, 35%, 45%) per category
2. **Gravimetric validation:** Oven dry at 105°C for 24 hrs
3. **Curve fit:** 3rd order polynomial $M = aC^3 + bC^2 + cC + d$
4. **Storage:** Coefficients in FPGA non-volatile memory (radiation-hard)

### 6.2 Pre-dry Chamber (If Moisture >25%)

| Parameter | Specification |
|-----------|---------------|
| **Chamber Volume** | 2 m³ (batch) |
| **Heating** | SiC glow bars (CSMFAB Materials Study Part I), 80°C |
| **Atmosphere** | N₂ purge, 0.2 bar overpressure |
| **Duration** | 15 min (verified by outlet humidity sensor) |
| **Energy** | 0.8 kWh/kg water removed |
| **Water Recovery** | Condensed in heat exchanger → Stage 1 water tank |

**Thermal Penalty Avoided:** 25% moisture = 125 kg water/ton feed = 80 kWh latent heat saved per ton by pre-drying.

### 6.3 SiC Glow Bar Specification (CSMFAB Materials Study Part I)

- **Material:** Reaction-bonded SiC (RB-SiC), 25 mm OD × 500 mm
- **Power:** 2.5 kW per bar, 8 bars per chamber
- **Temperature:** 800°C surface (radiates to 80°C chamber air)
- **Life:** 20,000 hours (oxidation-limited)
- **Control:** PWM power via PMMA POF isolated driver

---
