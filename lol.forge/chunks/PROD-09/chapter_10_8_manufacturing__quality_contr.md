## 8. Manufacturing & Quality Control

### 8.1 Ti₃AlC₂ Actuator Production

**Process Flow:**
```
1. Powder prep: Ti + Al + C weighing (±0.1%)
2. Hot press: 1350°C, 30 MPa, 30 min, Ar
3. Machining: CNC grind to 0.5 mm × 50 × 30 mm
4. TLP bond: Cu interlayer, 950°C, 5 MPa, 10 min
5. FBG embed: UV-cure acrylate coat (stripped at 300°C)
6. Bolt holes: EDM drill 4× M4 ZrO₂ bolts
7. Inspection: CMM (dimensions), FBG calibration, bend test
8. Acceptance: Deflection at 680°C = 3.6 ± 0.15 mm
```

**Key QC Metrics:**
- Density: >99% (Archimedes)
- TiC phase: <5% (XRD)
- Bilayer bond strength: >200 MPa (shear test)
- Deflection repeatability: ±0.1 mm over 100 cycles

### 8.2 ZrO₂ Piston Production

**Process Flow:**
```
1. Powder: 3Y-TZP (Tosoh TZ-3YSB-E or CSMFAB in-house)
2. Isostatic press: 200 MPa, 12 mm × 30 mm green
3. Sinter: 1450°C, 2 hr, air → 99.5% density
4. HIP: 1500°C, 150 MPa, 2 hr → 99.9% density
5. Grind: CNC to 12.000 mm diameter, 25.00 mm length
6. Lap: Seat face 0.5 μm Ra, 45° angle
7. FBG embed: Groove in stem, PMMA POF epoxied (high-temp epoxy)
8. Inspection: CMM, surface profilometry, FBG calibration
9. Acceptance: Leak test at 5 bar, 25°C → <10⁻⁶ mbar·L/s
```

### 8.3 Assembly & Test

**Assembly Sequence:**
```
1. Piston inserted into port bore (ZrO₂ sleeve in drum)
2. Spring installed over piston stem
3. Actuator mounted to port frame (4× ZrO₂ M4 bolts, 2 Nm)
4. FBG fibers routed to interrogator (PMMA POF, 3 m)
5. N₂ leak test: 5 bar, 30 min hold
6. Thermal cycle test: 25 → 680 → 25°C, 5 cycles
7. Actuation verify: FBG position at 680°C = 3.6 ± 0.1 mm
8. Centrifuge test: 500 RPM, 5 bar, 10 min (static drum test)
9. Final inspection → Ship with calibration certificate
```

**Batch Acceptance (Per 8-Valve Set):**
- All 8 valves within ±0.15 mm actuation at 680°C
- Leak rate <10⁻⁶ mbar·L/s all ports
- FBG calibration R² > 0.999
- Visual: no cracks, chips, contamination

---
