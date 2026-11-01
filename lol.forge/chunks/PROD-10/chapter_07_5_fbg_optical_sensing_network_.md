## 5. FBG Optical Sensing Network - 384 Sensors, WDM+TDM

### 5.1 Why FBG, Why PMMA POF, Why 384

**Metallic Thermocouples Forbidden:** Any copper/constantan/alloy wire crossing the pressure boundary creates a GIC antenna path. A Carrington event (dB/dt = 5000 nT/s) induces kV potentials on long conductors. The Aegis-Forge I has 800 mm drum length x 8 zones = 6.4 m of sensor runs - a perfect loop antenna.

**FBG Solution:** Fiber Bragg Gratings written in PMMA POF (not silica - PMMA survives 85C ambient, silica requires hermetic coating). Each FBG reflects a specific wavelength lambda_B = 2*n*Lambda. Temperature shifts lambda_B by 0.1 nm/C (PMMA) vs 0.01 nm/C (silica). PMMA's higher sensitivity compensates for lower temperature range.

**384 Sensors = 48 per zone x 8 zones:**
- 12 per drum quadrant (4 quadrants x 3 axial positions)
- 12 on drum wall (OD), 12 on Zone B liner, 12 on Zone C liner, 12 on port actuators
- Provides spatial-temporal temperature field reconstruction at 1 kHz

### 5.2 WDM+TDM Multiplexing Architecture

**Wavelength Division Multiplexing (WDM):** 8 wavelength channels (one per zone)
- Zone 1: 1510-1520 nm
- Zone 2: 1520-1530 nm
- Zone 3: 1530-1540 nm
- Zone 4: 1540-1550 nm
- Zone 5: 1550-1560 nm
- Zone 6: 1560-1570 nm
- Zone 7: 1570-1580 nm
- Zone 8: 1580-1590 nm

Each zone's 48 FBGs share a wavelength band. **Time Division Multiplexing (TDM)** within each band:
- FPGA generates 48 time slots per zone (1 kHz frame = 48 us per sensor)
- Interrogator: Tunable laser (1510-1590 nm) + InGaAs photodiode
- Round-trip time in 50 m PMMA POF: 250 ns (n=1.49)
- Total frame time: 8 zones x 48 slots x 50 us = 19.2 ms - 52 Hz frame rate
- **Optimization:** Parallel interrogators (4x) - 208 Hz effective rate

**Actual Implementation:** 8 interrogators (one per zone) running in parallel:
- Each interrogator: Fixed wavelength sweep over zone's 10 nm band
- 48 FBGs detected via peak detection on reflected spectrum
- Sample rate per sensor: **1 kHz** (48 sensors x 1 kHz = 48 kS/s per zone)
- Total data rate: 8 zones x 48 kS/s = 384 kS/s
- FPGA processes all 384 channels in real-time

### 5.3 FBG Sensor Specifications (PMMA POF)

| Parameter | Value | Notes |
|-----------|-------|-------|
| Fiber Type | PMMA step-index POF | 0.5 mm core, 1 mm clad |
| Core NA | 0.5 | High coupling tolerance |
| FBG Wavelength | 1510-1590 nm | C-band, 8x10 nm channels |
| Grating Length | 5 mm | Standard PMMA FBG |
| Temperature Sensitivity | 0.1 nm/C | 10x silica sensitivity |
| Temperature Range | -40 to +85C | Drum wall max 85C (aerogel protected) |
| Resolution | 0.1C | Wavelength resolution 10 pm |
| Sample Rate | 1 kHz per sensor | FPGA parallel processing |
| Multiplexing | WDM (8 ch) + TDM (48/ch) | 384 total sensors |
| Lead Length | 15 m max | Drum to interrogator rack |
| Bend Radius | 25 mm min | PMMA POF spec |
| Radiation Hardness | >100 kGy | PMMA superior to silica |

### 5.4 Spatial-Temporal Temperature Field Reconstruction

The 384-sensor array enables **tomographic reconstruction** of the drum's internal temperature field:
- Axial resolution: 100 mm (zone boundaries)
- Radial resolution: 3 layers (wall, Zone B liner, Zone C liner)
- Circumferential resolution: 4 quadrants (90 deg sectors)
- Temporal resolution: 1 ms (1 kHz sample rate)

**Autoencoder Anomaly Detection:** 500-batch training set establishes normal manifold. Real-time inference:
- Input: 384-channel temperature vector at 1 kHz
- Latent space: 16 dimensions
- Reconstruction error threshold: 3-sigma
- Detection latency: <10 ms

This is the **mirror** - the induction system sees its own thermal field through the FBG eyes.

---
