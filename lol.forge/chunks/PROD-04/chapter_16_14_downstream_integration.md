## 14. Downstream Integration

### 14.1 Assembly Line 113 — Interface Definition

The Aegis-Forge I drum assembly (drum + vessel + coil bank + seals) is a **single line-replaceable unit (LRU)** that installs into Assembly Line 113 (CSMFAB 113+). The interface is defined by:

| Interface | Specification | Tolerance | Verification |
|---|---|---|---|
| **Drum flange to vessel** | BFRP vessel ID 900 mm, drum OD 670 mm | Gap 115±2 mm (RT) | Laser tracker |
| **Port alignment** | 8 ports → 8 collection nozzles | ±0.5 mm radial, ±0.3° angular | Optical alignment |
| **Seal verification** | ZrO₂ face seal + PEEK spring | Leak <10⁻⁶ mbar·L/s | He leak test |
| **Drive coupling** | KNbO₃-BaTiO₃ ultrasonic motor shaft | Concentricity <0.02 mm | Dial indicator |
| **FBG feedthrough** | 6× ZrO₂ bulkhead, PMMA POF | Insertion loss <0.5 dB | OTDR |
| **Cooling water** | PEX-a, 25 mm OD, 2 circuits | Flow 50 L/min, ΔP <2 bar | Flow meter |
| **Gas connections** | N₂/Ar, ZrO₂ fittings, 1 PEX-a | Pressure 3 bar, leak <10⁻⁵ | Bubble test |
| **Instrumentation** | 384 FBG, 8 AE, 8 Coriolis | All channels active | Auto-scan |

### 14.2 Port-to-Nozzle Alignment Procedure

**Collection nozzle design (Assembly Line 113):**
- 8 nozzles, radially inward, matching 44.2° port spacing
- Nozzle tip: ZrO₂ ceramic, 12 mm ID (matches port), 15° convergent
- Nozzle-to-port gap: 2 mm (at RT), closes to 0.5 mm at temperature
- **Slotted mounting:** ±5 mm radial, ±4 mm circumferential adjustment

**Alignment sequence (performed at each drum change):**
1. Drum assembly lowered into vessel (crane, 4-point lift)
2. Flange bolts torqued to 80 Nm (PEEK CF40, 8× M24)
3. **Laser alignment:** 3D tracker measures port centers vs. nozzle centers
4. Nozzle positions adjusted via slotted holes to ±0.3 mm
5. **Verification:** Pressurize drum to 3 bar N₂, check each port flow symmetry
6. **Seal test:** He leak test each port-nozzle interface <10⁻⁶ mbar·L/s

### 14.3 Seal Verification Protocol

**Dynamic rotary seals (2 locations: feed end, discharge end):**
- Primary: ZrO₂ face seal (carbon-graphite impregnated)
- Secondary: PEEK CF40 wave spring + ZrO₂ backup ring
- Operating: 500 RPM, 5 bar, 200°C (seal face)

**Verification tests (at installation):**
1. **Static seal test:** Pressurize to 7.5 bar N₂, hold 30 min, ΔP <1%
2. **Dynamic seal test:** Rotate 0→500 RPM, monitor leak rate (He sniffer)
3. **Thermal seal test:** Heat to 200°C (vessel temp), hold 1 hr, leak <10⁻⁵ mbar·L/s
4. **Endurance:** 1000 cycles 0→500 RPM, leak rate trend <10% increase

**Acceptance:** All four tests PASS → drum cleared for production

### 14.4 Drum Installation and Removal

**Installation (new drum):**
1. Vessel prepared: clean, inspected, nozzles aligned
2. Drum assembly lifted by 4-point spreader (rated 500 kg)
3. Lowered into vessel, flange bolted (8× M24 PEEK CF40, 80 Nm)
4. Drive motor coupled (KNbO₃-BaTiO₃ ultrasonic, keyed shaft)
5. Cooling water connected (quick-connect PEX-a, keyed)
6. Gas lines connected (ZrO₂ flare fittings)
7. FBG fibers connected to interrogator (LC/APC connectors)
8. Alignment verified (laser tracker)
9. Seal verification protocol executed
10. **Cold commissioning:** Rotation, vacuum, cooling, controls check (4 hrs)
11. **Hot commissioning:** Thermal ramp to 1200°C, slug production (2 batches)

**Removal (worn drum):**
1. Cool to <100°C, N₂ purge 4 hrs
2. Disconnect utilities (water, gas, FBG, motor)
3. Unbolt flange, lift assembly
4. **Condition assessment:** FBG data download, visual, UT, dimensional
5. Refurbish or scrap per wear limits (Section 11)

**Target exchange time:** <8 hours (single shift)

### 14.5 Data Integration — Digital Twin Handoff

**Drum-specific digital twin initialization file includes:**
- As-built geometry (CMM point cloud, 500k points)
- Material property maps (density, E, α from test coupons)
- FBG sensor map (location, wavelength, calibration)
- Valve actuation curves (8 ports, trigger temp vs. deflection)
- Balance correction data (mass, angle, plane)
- NDT baseline (UT C-scan, CT density map)
- Bearing preload and run-in record

**Integration with Assembly Line 113 MES:**
- Drum serial number → recipe selection (feedstock blend → thermal profile)
- Real-time FBG data → MPC controller (Section 25, PROD-01)
- Port flow data → batch mass balance → revenue tracking
- Wear trends → predictive maintenance scheduler

### 14.6 Spare Parts and Interchangeability

**All drums are fully interchangeable** — no machine-specific fitting required.
**Spare drum pool:** 2 spares per operating Forge (4 drums total for Phase 1)

| Spare Item | Qty per Forge | Lead Time | Notes |
|---|---|---|---|
| Complete drum assembly | 2 | 14 weeks | Full LRU |
| Liner tile set (A/B/C) | 1 each | 6 weeks | Field replaceable |
| Port valve actuator | 8 (1 set) | 4 weeks | In-situ replaceable |
| Port piston + seal | 8 (1 set) | 2 weeks | In-situ replaceable |
| Ceramic bearing set | 2 | 3 weeks | Requires drum pull |
| FBG fiber harness | 1 | 1 week | Plug-and-play |

### 14.7 Interface Control Document (ICD) Reference

| ICD Number | Title | Revision | Custodian |
|---|---|---|---|
| CSMFAB-ICD-113-001 | Drum-to-Vessel Mechanical | A | Mechanical Eng |
| CSMFAB-ICD-113-002 | Port-to-Nozzle Fluidic | A | Process Eng |
| CSMFAB-ICD-113-003 | FBG Instrumentation | A | Controls Eng |
| CSMFAB-ICD-113-004 | Drive Motor Coupling | A | Mechanical Eng |
| CSMFAB-ICD-113-005 | Utilities (Water, Gas, Power) | A | Facilities |

**All ICDs maintained in CSMFAB PLM system. Changes require ECN approval (3 signatories).**

---

*End of PROD-04: ZrB₂-SiC Drum Engineering*
*CSMFAB000000000108 — Aegis-Forge I Drum Engineering Section*
*Next: PROD-05 — Acoustic Mineral Liberation Subsystem*