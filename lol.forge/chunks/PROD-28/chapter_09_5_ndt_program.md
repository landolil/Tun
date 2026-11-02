## 5. NDT Program

### 5.1 Methods, Coverage, Frequency

| Method | Components | Coverage | Frequency | Detection Limit | Standard | Personnel |
|---|---|---|---|---|---|---|
| **UT Phased Array** | Drum, vessel, flanges, coil housings | 100% critical volume | Annual | 0.5mm flat / 2mm Ø | ASTM E2700 | ASNT LII/III |
| **CT (X-ray)** | Drum (FBG embed, porosity), braze joints | 100% FA; 10% production | Biennial | 200μm voxel | ASTM E1695 | ASNT LII/III |
| **ET (Eddy Current)** | Port valve sleeves, PEX-a tubes | 100% | Annual | 0.2mm surface crack | ASTM E1419 | ASNT LII |
| **AE (Acoustic Emission)** | Vessel (continuous), drum (during thermal cycle) | Continuous / per cycle | Continuous / per cycle | 40dB AE; source location ±50mm | ASTM E1419 | ASNT LIII |
| **IR Thermography** | Frame, vessel exterior, coil bank, power electronics | 100% | Monthly | 0.5°C @ 200°C | ISO 18434 | LII |
| **Visual (VT)** | All external surfaces, bolt torque marks, seals | 100% | Daily (ops) / Monthly (maint) | N/A | VT-1 per ASME | LII |
| **FBG Interrogation** | All 384 sensors + 16 ref | Continuous @ 125Hz | Continuous | 0.1nm wavelength | PROD-24 | Auto |
| **Vibration** | Bearings, carousel, frame | Continuous @ 1kHz | Continuous | 0.5g RMS baseline | ISO 13373 | Auto |

### 5.2 Personnel Qualification

| Level | Requirements | Recertification |
|---|---|---|
| **NDT Level II** | ASNT CP-189; 40hr method-specific; 1000hr experience; written + practical exam | 3 yr (written) / 5 yr (practical) |
| **NDT Level III** | ASNT CP-189; Level II + 5yr; procedure development; program ownership | 5 yr (written + practical) |
| **FBG Specialist** | PROD-24 training; interrogator operation; wavelength analysis | 2 yr |
| **AE Analyst** | ASNT LIII AE; source location; pattern recognition | 3 yr |

### 5.3 In-Service Monitoring Plan

| Component | Method | Frequency | Alert Threshold | Action |
|---|---|---|---|---|
| Drum UT | Phased array | Annual | New indication >0.5mm | NCR → CAPA → eval |
| Drum CT | 200μm voxel | Biennial | Porosity growth >10% | NCR → CAPA → eval |
| Vessel AE | Continuous | Continuous | Hit rate >2× baseline | Auto alarm → inspect |
| Vessel UT | Phased array | Annual | Delam >10mm | NCR → CAPA → eval |
| Port valves | Thermal actuation check | Quarterly | Deflection <3.4mm or >3.8mm | NCR → CAPA → replace |
| FBG drift | Auto-comparison | Continuous | >0.5%/1000hrs | Auto flag → recalibrate |
| Bearing vib | Continuous | Continuous | >2× baseline RMS | Auto alarm → inspect |
| Isolator disp | LVDT | Continuous | >25mm (OBE) | Auto SIF trip |

---
