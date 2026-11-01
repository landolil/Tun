## Appendix I: Manufacturing and Assembly Drawings

### I.1 Inverter Module Assembly Sequence

```
STEP 1: Cold Plate Preparation
  ► CNC machine copper cold plate (microchannels, mounting holes)
  ► Electroless Ni-P plate (5 μm)
  ► Pressure test @ 20 bar water
  ► Cleanliness: ISO 14644-1 Class 7

STEP 2: GaN Mounting
  ► Apply Indium foil TIM (50 μm) to cold plate
  ► Place GS66516T die (automated pick-and-place, ±25 μm)
  ► Ultrasonic wire bond (Al wire, 25 μm, 4 bonds per die)
  ► X-ray inspection: voids < 2%, shear > 20 MPa

STEP 3: Gate Driver PCB Assembly
  ► SMT: LMG1210, bootstrap caps, gate resistors
  ► Conformal coat (Parylene C, 25 μm)
  ► Mount to cold plate (thermal vias to GaN pads)
  ► Bolt: 4× M3 PEEK CF40, 0.5 Nm

STEP 4: Resonant Tank Assembly
  ► Wind nanocrystalline inductor (Litz wire, 50 strands × 0.05mm)
  ► Vacuum pressure impregnate (epoxy, BFRP bobbin)
  ► Mount switched cap bank (SMD C0G, reflow)
  ► Mount varactor array (SOT-23, reflow)
  ► Connect to GaN output (copper bus bar, insulated)

STEP 5: Coil Connection
  ► Feed Cu tube through Al₂O₃ sleeve
  ► Braze Cu tube to inverter output bus (Ag-Cu braze, 780°C)
  ► Pressure test coil water circuit @ 15 bar
  ► Install BFRP housing (2 halves, adhesive bond)

STEP 6: Integration Test
  ► Hi-pot, insulation resistance
  ► Cold power-up (10% power, 5 min)
  ► ZVS verification @ 3 frequencies
  ► Thermal soak (100% power, 30 min)
  ► FBG calibration (if sensors pre-installed)

STEP 7: Ship Set
  ► Package in BFRP crate (custom foam)
  ► Include: test report, calibration cert, spare fuses
```

### I.2 Critical Dimensions and Tolerances

| Feature | Nominal | Tolerance | Measurement Method |
|---------|---------|-----------|-------------------|
| Coil tube OD | 25.00 mm | ±0.05 mm | CMM |
| Coil tube ID | 20.00 mm | ±0.05 mm | CMM |
| Al₂O₃ sleeve ID | 25.10 mm | ±0.05 mm | Go/No-Go gauge |
| Coil-to-drum gap | 15.0 mm | ±0.5 mm | Laser micrometer |
| Cold plate flatness | — | 0.02 mm | Optical flat |
| FBG sensor position | Per drawing | ±1.0 mm | Optical comparator |
| Flange bolt circle | 850 mm | ±0.1 mm | CMM |
| Alignment pin diameter | 12.00 mm | +0.000/-0.011 mm | Go/No-Go |

### I.3 Material Traceability Requirements

All structural and thermal components require full material traceability:
- **Heat/lot numbers** recorded for: Cu tube, Al₂O₃, BFRP, PEEK CF40, ZrO₂, GaN die
- **Certificates of conformance** for: GaN (Wolfspeed), PMMA POF (Mitsubishi), PEX-a (Uponor)
- **First article inspection** (FAI) per AS9102 for first 3 units per lot
- **Non-destructive examination:** UT for Cu braze joints, X-ray for wire bonds, dye penetrant for BFRP bonds

---
