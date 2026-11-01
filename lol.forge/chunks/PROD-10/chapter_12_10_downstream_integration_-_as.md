## 10. Downstream Integration - Assembly Line 113

### 10.1 Coil Zone Alignment

The 8-zone coil bank must align with the drum's thermal zones to 5 mm axial tolerance:
- Coil housing: BFRP/Elium filament wound, CNC-machined register surfaces
- Alignment pins: ZrO2 ceramic, 12 mm diameter, 3 per flange
- Verification: Optical measurement (PMMA POF displacement sensors) at assembly
- Thermal growth compensation: Coil housing CTE matched to drum (BFRP alpha = 8e-6/K)

### 10.2 Sensor Verification Protocol

At Assembly Line 113 (Machine 113):
1. **FBG Continuity Check:** All 384 channels respond to thermal stimulus (heat gun)
2. **Wavelength Calibration:** Each FBG lambda_B recorded at 25C reference
3. **Interrogator Alignment:** 8 interrogators wavelength-sweep calibrated
4. **Tomography Test:** Known thermal pattern applied - reconstruction validated
5. **Resonance Sweep:** Each zone swept 0.5-1.5x f_nom - phase response recorded

### 10.3 Handoff to Thermal Cascade Control

The induction power electronics subsystem hands off to the **Thermal Cascade Controller** (Machine 123):
- Interface: PMMA POF only (Ethernet-over-POF, 1 Gbps)
- Data: Zone power, frequency, phase, FBG temperatures, fault status
- Commands: Setpoint temperature, ramp rate, dwell parameters
- Safety: Independent SIL-3 E-stop (optical, hardwired to DC bus contactor)

---
