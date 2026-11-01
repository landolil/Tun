## 12. Downstream Integration — Assembly Line 113, Coil Alignment, Sensor Verification

### 12.1 Mechanical Interface

The induction coil bank mounts to the BFRP pressure vessel via eight BFRP flange rings (one per zone). Each ring has:
- **Alignment pins:** ZrO₂ ceramic, 12 mm diameter, ±0.05 mm tolerance
- **Bolt pattern:** 16 × M10 PEEK CF40 bolts, 25 Nm torque
- **Gap adjustment:** 15 mm coil-to-drum gap, shim-adjustable ±2 mm

### 12.2 Assembly Sequence (CSMFAB 113)

1. **Drum installation:** ZrB₂-SiC drum lowered into BFRP vessel
2. **Coil bank insertion:** 8-zone coil assembly slides over drum (crane-assisted)
3. **Flange bolting:** BFRP flanges torqued in star pattern
4. **Water circuit connection:** PEX-a quick-connect fittings, leak test @ 10 bar
5. **Optical fiber routing:** PMMA POF from FBG sensors to interrogator rack
6. **Power cable pull:** BFRP-armored cables (no copper exposed) to inverter modules
7. **Alignment verification:** Laser tracker confirms coil-to-drum concentricity <0.1 mm
8. **Cold commissioning:** Dry run at 100 RPM, no power, verify rotation, vibration <2 mm/s
9. **Hot commissioning:** Progressive power-up by zone, FBG calibration, PID tuning

### 12.3 Sensor Verification Protocol

Before each batch:
1. **FBG baseline:** All 384 sensors read at ambient — verify ±0.5°C agreement
2. **Interrogator self-test:** Wavelength calibration against reference FBG
3. **Resonance check:** Each inverter swept 80–120% nominal frequency, verify ZVS
4. **Thermal model update:** Feed ambient conditions, feedstock estimate to predictive model
5. **Go/No-Go:** All checks pass → batch start authorized

---


---
