## 10. Non-Destructive Testing (NDT) Program

### 10.1 NDT Methods & Coverage

| Component | Method | Frequency | Coverage | Detection Limit | Standard |
|-----------|--------|-----------|----------|-----------------|----------|
| Drum body | UT (5 MHz, phased array) | Annual | 100% wall | 0.5 mm flat, 2 mm Ø | ASTM E2700 |
| Drum body | CT (industrial, 200 μm voxel) | Biennial | 100% volume | 200 μm | ASTM E1695 |
| Drum ports | ET (eddy current, ZrO₂ sleeve) | Annual | 100% sleeve ID | 0.2 mm | ASTM E426 |
| Drum liners | Visual + tap test | Per batch | 100% surface | 1 mm | Proprietary |
| Drum bearings | Vibration analysis (AE) | Continuous | 100% | 0.5 g | ISO 13373 |
| Vessel wall | UT (phased array) | Annual | 100% | 1 mm | ASTM E2700 |
| Vessel wall | AE (acoustic emission) | Continuous | 100% | Active cracks | ASTM E1419 |
| Vessel flanges | UT + visual | Annual | 100% | 0.5 mm | ASTM E2700 |
| Frame welds/bonds | UT + IR thermography | Biennial | 100% joints | 1 mm | ASTM E1961 |
| Port valves | Visual + leak test | Per batch | 100% | 10⁻⁶ mbar·L/s | ASTM E1003 |
| Carousel molds | Visual + dimensional | Per batch | 100% | 0.1 mm | ISO 8062 |

### 10.2 NDT Acceptance Criteria

| Component | Rejectable Indication | Disposition |
|-----------|----------------------|-------------|
| Drum body | Crack >0.5 mm deep | Remove from service |
| Drum body | Porosity cluster >5 mm | Evaluate (FEA) |
| Drum ports | Sleeve debond >10% circumference | Re-sleeve |
| Vessel wall | Delamination >25 mm | Repair (bonded patch) |
| Vessel wall | Fiber breakage >5% tow | Remove section |
| Flange bolts (ZrO₂) | Crack any size | Replace bolt |
| Bearings | Spall >0.5 mm | Replace bearing |
| Carousel molds | Crack any size | Replace mold |

### 10.3 In-Service Monitoring (Continuous)

| Parameter | Sensors | Sampling | Alarm Threshold |
|-----------|---------|----------|-----------------|
| Drum vibration | 2× AE (accelerometer) | 100 kHz | >2× baseline RMS |
| Drum strain | 12× FBG (strain rosettes) | 1 kHz | >200 με |
| Vessel strain | 12× FBG (hoop/axial) | 100 Hz | >500 με |
| Vessel AE | 4× AE (broadband) | 1 MHz | >3 hits/s |
| Bearing temp | 4× FBG (outer race) | 10 Hz | >250°C |
| Seal leak | 8× He sniffer | 1 Hz | >10⁻⁶ mbar·L/s |
| Frame displacement | 8× FBG (column base) | 10 Hz | >1 mm |

---
