## 14. Downstream Integration

### 14.1 Assembly Line 113 Interface

The BFRP pressure vessel integrates with **Assembly Line 113** (CSMFAB000000000112) for final Aegis-Forge I assembly, testing, and commissioning.

**Integration sequence:**
1. **Frame installation:** BFRP frame positioned on foundation isolators, leveled, anchored
2. **Vessel lowering:** Vessel lifted by overhead crane (4-point lifting lugs on flange OD), lowered onto frame saddles
3. **Drum insertion:** ZrB₂-SiC drum (with aerogel blanket pre-wrapped) inserted through motor-end flange opening
4. **Shaft alignment:** Drum shaft coupled to KNbO₃-BaTiO₃ ultrasonic motor (CSMFAB000000000020)
5. **Flange closure:** Slug-end flange bolted (8 ZrO₂ bolts, 180 N·m torque sequence)
6. **Gas connections:** 8× DN25 gas ports connected to gas capture system (CSMFAB000000000111)
7. **Instrumentation hookup:** 12× FBG fibers, 4× AE sensors, 3× PTs connected to control system
8. **Seal commissioning:** N₂ purge started, barrier pressure set to 12 bar, leak test
9. **Hydrotest:** 15 bar N₂, 30 min hold, witnessed by AIA
10. **Commissioning run:** Empty drum rotation to 500 RPM, thermal ramp to 2200°C (no feedstock)

### 14.2 Dimensional Interfaces

| Interface | Dimension | Tolerance | Verification |
|---|---|---|---|
| Vessel ID (drum clearance) | 900 mm | ±0.5 mm | Laser tracker |
| Flange bolt circle | 850 mm | ±0.3 mm | CMM |
| Flange face-to-face | 1280 mm | ±1.0 mm | Laser tracker |
| Gas port centerline height | 600 mm | ±2 mm | Level + tape |
| Gas port bolt pattern | DN25, 4× M12 | ±0.2 mm | Template |
| FBG feedthrough | DN10, 12× | ±1 mm | Visual |
| Lifting lug position | 4× on flange OD | ±2 mm | Laser tracker |
| Frame saddle radius | 450 mm (matches vessel) | ±1 mm | Template |

### 14.3 Gas System Connections

**8 Gas Ports (DN25, circumferential at 45° spacing):**
| Port | Function | Connection | Pressure Rating |
|---|---|---|---|
| 1 | N₂ inlet (purge) | Gas panel → vessel top | 15 bar |
| 2 | Process gas outlet | Vessel → scrubber (CSMFAB 111) | 10 bar |
| 3 | Relief valve discharge | Vessel → flare stack | 15 bar |
| 4 | Rupture disc discharge | Vessel → flare stack | 15 bar |
| 5 | Seal N₂ supply (primary) | Gas panel → seal annulus | 15 bar |
| 6 | Seal N₂ supply (secondary) | Gas panel → barrier volume | 15 bar |
| 7 | Pressure transmitter | Vessel → control system | 20 bar |
| 8 | Spare / future use | Capped with ZrO₂ blank | 15 bar |

**All gas connections:** ZrO₂ ceramic fittings, PEEK CF40 nuts, ZrO₂ gaskets. Zero metal.

### 14.4 Electrical/Instrumentation Connections

**All-dielectric interface (PMMA POF only):**
| Signal | Fiber Count | Connector | Routing |
|---|---|---|---|
| FBG strain (12 sensors) | 2 fibers (6 ch each) | FC/APC bulkhead | Vessel → control room |
| FBG temperature (24 sensors) | 3 fibers (8 ch each) | FC/APC bulkhead | Vessel → control room |
| AE sensors (4) | 4 fibers (1 ch each) | ST bulkhead | Vessel → control room |
| Pressure transmitters | 3× 4-20mA (optical isolated) | FC bulkhead | Vessel → control room |
| Flow meter | 1× 4-20mA (optical isolated) | FC bulkhead | Vessel → control room |
| **Total fibers** | **10 fibers** | — | **Cable tray (BFRP)** |

**Control room interface:** FBG interrogator (16 ch), AE acquisition (4 ch), optical I/O modules for 4-20mA signals. All in NEMA 4X enclosure, fiber-only penetration.

### 14.5 Alignment Verification (Post-Assembly)

| Check | Method | Acceptance |
|---|---|---|
| Drum runout (rotating) | Dial indicator at 4 planes | <0.1 mm TIR |
| Shaft centerline offset | Laser alignment (motor coupling) | <0.05 mm |
| Shaft angular alignment | Laser alignment | <0.02° |
| Vessel ID concentricity | Laser tracker (4 planes) | <0.5 mm |
| Flange face parallelism | Dial indicator | <0.05 mm |
| Seal face contact | FBG strain on stationary face | Uniform ±5 με |
| Aerogel gap uniformity | Ultrasonic gap measurement | 50 ± 2 mm at 12 points |

### 14.6 Commissioning Test Sequence

| Step | Test | Duration | Pass Criteria |
|---|---|---|---|
| 1 | Empty rotation (0→500 RPM) | 2 hrs | Vibration <2 mm/s, bearing temp <80°C |
| 2 | Seal leak test (static) | 1 hr | <10⁻⁶ mbar·L/s each seal |
| 3 | Seal leak test (500 RPM) | 30 min | <10⁻⁶ mbar·L/s each seal |
| 4 | Thermal ramp (20→2200°C empty) | 8 hrs | Gradient <50°C/mm, outer <200°C |
| 5 | Thermal soak (2200°C) | 2 hrs | Stable temps, no alarm |
| 6 | Thermal ramp down | 6 hrs | No thermal shock, seals re-seat |
| 7 | Pressure hold (10 bar, hot) | 4 hrs | Leak rate stable, strain stable |
| 8 | Integrated cascade (simulated feed) | 1 batch | All 8 ports actuate, slugs formed |

### 14.7 Maintenance Access

**Planned maintenance (every 6 months):**
- External visual inspection (man-lift access to vessel top)
- FBG baseline comparison
- AE survey at 10 bar
- Seal N₂ consumption check
- Flange bolt preload verification (FBG)

**Major maintenance (every 2 years):**
- Vessel removal from frame (crane, 4 hrs)
- Aerogel blanket inspection/replacement (8 hrs)
- Internal visual inspection (boroscope through gas ports)
- UT thickness survey (phased array)
- Flange gasket replacement (ZrO₂)
- Seal cartridge replacement (both ends)

**Emergency maintenance access:**
- Vessel can be depressurized and cooled in <2 hrs (N₂ purge + water mist deluge)
- Flange removal: 8 ZrO₂ bolts, 2 hrs with ceramic tooling
- Drum removal: 4 hrs (crane, shaft uncoupling)
- **All maintenance uses ceramic/PEEK tooling — no steel tools in process chamber**

### 14.8 Spare Parts Inventory (Per Vessel)

| Part | Quantity | Lead Time | Notes |
|---|---|---|---|
| ZrO₂ rupture disc | 2 | 4 weeks | Ceramic, shelf life unlimited |
| PEEK CF40 lip seal cartridge | 2 | 6 weeks | Includes garter spring |
| ZrO₂ face seal set | 1 | 8 weeks | Lapped pair, requires run-in |
| ZrO₂ flange bolts (M24) | 16 | 4 weeks | 3Y-TZP, proof tested |
| ZrO₂ gasket (flange) | 2 | 2 weeks | 3Y-TZP, flat ring |
| FBG fiber array (12 ch) | 1 | 6 weeks | PMMA POF, polyimide coated |
| AE sensor (KNbO₃-BaTiO₃) | 2 | 4 weeks | Same as AMLS spares |
| Aerogel blanket (50 mm) | 1 | 8 weeks | Pyrogel XT-E or in-house |
| YInMn Blue touch-up kit | 1 | 2 weeks | Plasma spray powder + binder |

---

*End of PROD-06: BFRP Pressure Vessel Design*
*Carrington Storm Motors | October 2026*