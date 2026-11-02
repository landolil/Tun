## Appendix F: Detailed Maintenance Access Procedures (Expanded)

### F.1 Drum FBG Channel Replacement Procedure (PROD-04, 30)

**Prerequisites:**
- SL authorization (Gate SG-3 FBG cal verify)
- Zone 4 cold (T_drum <200°C verified by FBG + pyrometer)
- PPE: Proximity suit, PAPR, Kevlar gloves, ceramic boots (don <3 min)
- Tools: BFRP scope, PEEK CF40 extractor, Zirconia feeler, FBG interrogator port
- Spares: FBG array (Zone-specific), PQR-FS-001 calibration data

**Procedure:**
1. **Entry**: SL dual-key → Z4 gate interlock opens → buddy check → QR scan entry log
2. **Access**: Remove drum port cover (PEEK CF40 bolts, BFRP torque wrench 160 N·m ±5)
3. **Inspection**: BFRP borescope → FBG channel location → document via QR photo
4. **Extraction**: PEEK CF40 extractor → pull failed FBG → verify no matrix damage (AE silent)
5. **Installation**: New FBG array → align to PQR position ±0.5 mm → zirconia feeler verify gap
6. **Calibration**: Connect interrogator → 5-point reference (25/500/1000/1500/2000°C) → R² >0.999
7. **Restoration**: Port cover → torque ceremony (SG-2) → AE silence verify → QR log
8. **Exit**: Doff PPE (5 min) → QR scan exit log → SL debrief

**Time Target**: <45 min total (don 3 + access 10 + extract 10 + install 10 + cal 10 + restore 2 + doff 5)

### F.2 Port Valve Actuator Swap Procedure (PROD-09, 30)

**Prerequisites:**
- SL authorization (Gate FO-J-01 stage transition)
- Port valve closed (SIS interlock verified)
- PPE: Proximity suit, PAPR, Kevlar gloves, ceramic boots
- Tools: PEEK CF40 sockets (actuator bolts), BFRP hoist (actuator 12 kg), ceramic feeler
- Spares: Ti₃AlC₂ actuator assembly, ZrO₂ piston, PQR-ACT-001 test data

**Procedure:**
1. **Depressurize**: N₂ purge port line → verify 0 bar → SIS log
2. **Remove Actuator**: PEEK CF40 socket → 4 bolts → BFRP hoist lift → clear zone
3. **Inspect Piston**: Zirconia feeler → gap 0.15±0.02 mm → AE silent verify
4. **Install Actuator**: Align splines → seat → 4 bolts torque 85 N·m ±2 (BFRP wrench)
5. **Functional Test**: L2 PLC command → open/close 3× → position feedback ±0.5 mm → response <50 ms
6. **SIS Verify**: SIF-15 port valve test → trip <50 ms → SOE timestamp align
7. **Document**: QR photo install → DQR log → SL sign-off

**Time Target**: <30 min total

---
