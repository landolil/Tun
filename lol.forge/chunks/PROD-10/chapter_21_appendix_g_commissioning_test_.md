## Appendix G: Commissioning Test Procedures

### G.1 Factory Acceptance Test (FAT) - Per Module

| Test | Procedure | Pass Criteria |
|------|-----------|---------------|
| 1. Hi-Pot | 2500 VDC, 60s, primary-secondary | <1 mA leakage |
| 2. Insulation Resistance | 1000 VDC, 60s | >100 MΩ |
| 3. Winding Resistance | 4-wire Kelvin | <5 mΩ per turn |
| 4. Inductance | LCR meter @ 1 kHz | Within ±5% of design |
| 5. Resonant Frequency | Sweep 500Hz–200kHz | Within ±2% of target |
| 6. ZVS Verification | Scope V<sub>DS</sub> @ full power | dv/dt = 0 at turn-on |
| 7. Efficiency | Calorimetric @ 25/50/75/100% load | >97% all points |
| 8. Thermal | IR camera @ full load, 30 min | T<sub>j</sub> < 100°C |
| 9. FBG Calibration | Ice bath (0°C) + oil bath (100°C) | ±0.5°C accuracy |
| 10. PID Response | Step 50°C, measure settling | <30s, <10% overshoot |

### G.2 Site Acceptance Test (SAT) - Full System

| Test | Procedure | Pass Criteria |
|------|-----------|---------------|
| 1. Mechanical Alignment | Laser tracker | <0.1 mm concentricity |
| 2. Rotation Test | 0–500 RPM, 1 hr | Vibration <2 mm/s RMS |
| 3. Vacuum Leak Check | Helium leak detector | <1×10⁻⁶ mbar·L/s |
| 4. Water Circuit | 10 bar, 1 hr | Zero leaks |
| 5. Optical Fiber | OTDR + power meter | <0.5 dB/km loss |
| 6. Cold Power-Up | All zones 10% power, 30 min | No faults |
| 7. Zone Calibration | Each zone to 500°C, hold 1 hr | ±5°C steady state |
| 8. Full Power | All zones 100%, 4 hr | Stable, no thermal runaway |
| 9. E-Stop Test | Activate optical E-stop | All inverters off <50 ms |
| 10. GIC Simulation | Inject 10 Hz, 100 A/km | No protection trips |

---

*End of PROD-10: Induction Power Electronics*
*Total Lines: ~900+ (including appendices)*
*Next: PROD-11 Feed Preparation & Shredding*

---
