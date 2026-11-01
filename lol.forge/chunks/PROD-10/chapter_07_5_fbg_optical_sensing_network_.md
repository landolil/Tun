## 5. FBG Optical Sensing Network — 384 PMMA POF Sensors

Temperature feedback for the PID control loops comes entirely from fiber Bragg grating (FBG) sensors embedded in the drum wall, communicated via PMMA plastic optical fiber (POF). This all-dielectric sensing path is immune to the intense EM fields and provides Carrington-hardened data transmission.

### 5.1 FBG Sensor Specifications

| Parameter | Specification |
|-----------|---------------|
| **Fiber Type** | PMMA POF (step-index, 980 μm core, 1000 μm clad) |
| **Grating Type** | Type I FBG, UV-written in PMMA |
| **Wavelength Range** | 650–850 nm (PMMA transmission window) |
| **Temperature Sensitivity** | 0.15 nm/°C (PMMA, higher than silica's 0.01 nm/°C) |
| **Resolution** | 0.1°C (interrogator limited) |
| **Accuracy** | ±0.5°C (calibrated) |
| **Sensor Length** | 5 mm grating, 10 mm total |
| **Quantity** | 384 (48 per zone × 8 zones) |
| **Multiplexing** | WDM (8 wavelengths) + TDM (6 spatial channels per wavelength) |

### 5.2 Sensor Placement Strategy

Each 100 mm zone contains 48 FBG sensors distributed as:
- **Drum inner wall (24 sensors):** 3 circumferential rings × 8 angular positions — measures process-side temperature
- **Drum outer wall (12 sensors):** 3 rings × 4 positions — measures coil-side temperature
- **Coil former (8 sensors):** 2 rings × 4 positions — measures coil winding temperature
- **Cold plate (4 sensors):** Inlet/outlet per module — monitors coolant ΔT

### 5.3 WDM+TDM Multiplexing Architecture

```
Optical Interrogator (1 kHz sweep)
    │
    ├── λ1 (680 nm) → TDM Channel 1 → 6 sensors (Zone 1)
    ├── λ2 (700 nm) → TDM Channel 2 → 6 sensors (Zone 2)
    ├── λ3 (720 nm) → TDM Channel 3 → 6 sensors (Zone 3)
    ├── λ4 (740 nm) → TDM Channel 4 → 6 sensors (Zone 4)
    ├── λ5 (760 nm) → TDM Channel 5 → 6 sensors (Zone 5)
    ├── λ6 (780 nm) → TDM Channel 6 → 6 sensors (Zone 6)
    ├── λ7 (800 nm) → TDM Channel 7 → 6 sensors (Zone 7)
    └── λ8 (820 nm) → TDM Channel 8 → 6 sensors (Zone 8)
```

Each TDM channel uses a 1×6 optical splitter (PMMA, fused biconical taper) with 60 m total fiber length per channel. The interrogator uses a tunable VCSEL (650–850 nm) with 1 kHz sweep rate, providing 125 Hz per sensor update rate.

### 5.4 PMMA POF Advantages for This Application

1. **GIC Immunity:** Zero conductive path — no antenna for geomagnetically induced currents
2. **EM Immunity:** Unaffected by 500 kW of 1–100 kHz magnetic fields
3. **High Temperature Sensitivity:** 0.15 nm/°C (15× silica) enables 0.1°C resolution with simpler interrogator
4. **Radiation Hardness:** PMMA tolerates gamma/neutron flux better than silica
5. **In-House Drawable:** CSMFAB Materials Study Part IV shows $0.08–$0.15/m vs $0.22–$0.80 commercial

---
