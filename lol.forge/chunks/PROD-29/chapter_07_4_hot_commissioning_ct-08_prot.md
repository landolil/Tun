## 4. Hot Commissioning (CT-08 Protocol)

### 4.1 Thermal Ramp Sequence (No Feedstock)

| Stage | Target Temp | Ramp Rate | Hold Time | Verification |
|---|---|---|---|---|
| **Stage 0 (Acoustic)** | 25°C | — | 10 min | LF 20-200 Hz, US 40 kHz, LI >0.85 |
| **Stage 1 (Drying)** | 150°C | 20°C/min | 20 min | Moisture <0.1% (IR + mass loss) |
| **Stage 2 (Polymer)** | 350°C | 15°C/min | 30 min | Melt viscosity, density stratification |
| **Stage 3 (Pyrolysis)** | 550°C | 10°C/min | 45 min | Char yield, gas composition |
| **Stage 4 (Low-Temp Metals)** | 430°C | 10°C/min | 25 min | Port 4A/B/C sequence verified |
| **Stage 5 (Al Window)** | 720°C | 10°C/min | 30 min | Port 5 at 680°C, Mg removal |
| **Stage 6 (Cu/PM)** | 1200°C | 5°C/min | 45 min | Port 6 anode cast, slime collect |
| **Stage 7 (Ferrous)** | 1550°C | 5°C/min | 60 min | Port 7A REE, Port 7 Fe bullion |
| **Stage 8 (Mineral/Zr)** | 2200°C | 2°C/min | 30 min | ZrSiO₄ dissociation, 3Y-TZP flash |

### 4.2 Hot Commissioning Acceptance Criteria

| Parameter | Target | Measurement |
|---|---|---|
| **Temperature Accuracy** | ±5°C setpoint all stages | FBG 384-ch vs. pyrometer |
| **Ramp Rate Control** | ±10% programmed rate | FBG thermal model residual |
| **Zone Power Balance** | ΔT <10°C across zone | IR camera at full power |
| **SIF Availability** | 100% (zero spurious) | SIS historian CT-08 run |
| **FBG Survival** | 384/384 channels active | Interrogator sweep |
| **Mass Balance (Dry)** | N/A (no feed) | N/A |
| **Gas System Integrity** | Zero leaks | CEMS + He sniffer |
| **Data Integrity** | Zero packet loss | TSN/PTP historian |

---
