## 1. Document Header & Scope

### 1.1 Document Identification

| Field | Value |
|-------|-------|
| **Document Number** | CSMFAB000000000114 |
| **Series** | Aegis-Forge Thermal Cascade Inductive Material Separator (TCIMS) |
| **Volume** | Stage 0 Acoustic Liberation & Stage 1 Infrared Drying |
| **Product Document** | 14 of 40 |
| **Prepared By** | Carrington Storm Motors, Safe Pod Engineering Company, Fabrication Division |
| **Date** | 2026-11-01 |
| **Classification** | Product Specification — Foundation Technology |
| **Applicability** | Aegis-Forge I (CSMFAB0108) all serial numbers |
| **Revision** | 1.0 (Initial Release) |
| **Supersedes** | Vol 2 Section 1.2 (Stage 0), Section 2 (Stage 1) |

### 1.2 Scope and Purpose

This document defines the complete engineering specification for the first two thermal cascade stages of the Aegis-Forge I:

- **Stage 0: Acoustic Pre-Liberation (Ambient)** — Mechanical grain boundary liberation using low-frequency resonant vibration (20-200 Hz) and ultrasonic cavitation (40 kHz) in a water-coupled pre-chamber. No thermal input. Duration: 15-30 minutes.
- **Stage 1: Infrared Drying (80-150°C)** — Moisture removal via SiC glow bar IR irradiation at 3.6 µm wavelength, with concurrent volatile organics management. Drum rotation: 5-10 RPM. N₂ atmosphere at 1.2 bar. Duration: 20 minutes.

This document establishes:
1. **Liberation physics** — Grain boundary fracture mechanics, stress wave propagation, cavitation microjet dynamics
2. **Acoustic chamber design** — BFRP housing, waveguide geometry, standing wave control
3. **Transducer arrays** — 8× LF bending plates + 8× US Langevin probes, KNbO₃-BaTiO₃ piezoelectrics
4. **Liberation Index metric** — % target mineral liberated vs. locked, size distribution shift
5. **IR drying specifications** — SiC glow bars, wavelength, power density, zoning, reflectors
6. **Moisture measurement** — FBG humidity sensors, NIR inline, mass loss verification
7. **Throughput & residence time** — 226L batch, 30 min acoustic + 60 min drying = 90 min total
7. **Energy balance** — kWh/ton, acoustic efficiency, IR efficiency, heat recovery
8. **Wear & maintenance** — Transducer life, IR emitter replacement, chamber cleaning
9. **Cross-reference matrix** — Links to PROD-05, PROD-11, PROD-12, PROD-15, FOLLOW-03, FOLLOW-17

### 1.3 Referenced Documents

| Document | Title | Relationship |
|----------|-------|--------------|
| CSMFAB000000000109 (Vol 2) | Thermal Cascade Process Engineering | Stage 0-1 parameters, temperature, duration |
| CSMFAB000000000110 (Vol 3) | Acoustic Mineral Liberation Subsystem | Transducer design, cavitation physics, liberation index |
| PROD-01 | System Overview & Architecture | Machine architecture, 8-stage cascade |
| PROD-02 | Thermal Cascade Process Engineering | Stage parameters, dwell times, gas management |
| PROD-05 | Acoustic Mineral Liberation Subsystem | Detailed AMLS design, transducer arrays, control |
| PROD-11 | Feed Preparation & Shredding | Pre-processing flow, shredder output feed to AMLS |
| PROD-12 | All-Aegis Material BOM Deep-Dive | KNbO₃-BaTiO₃ specs, BFRP, ZrO₂, PEEK CF40, PEX-a |
| PROD-13 | Feedstock Specifications | Category definitions, pre-processing requirements |
| PROD-15 | Stage 2: Polymer Flow & Separation | Downstream melt centrifuge requirements |
| FOLLOW-03 | Acoustic Transducer Array | KNbO₃-BaTiO₃ design optimization |
| FOLLOW-17 | Polymer Melt Rheology | Downstream Stage 2 rheology requirements |

### 1.4 Definitions and Abbreviations

| Abbreviation | Definition |
|--------------|------------|
| **AMLS** | Acoustic Mineral Liberation Subsystem |
| **LF** | Low-Frequency (20-200 Hz for rock matrix) |
| **US** | Ultrasonic (40 kHz for fine grain liberation) |
| **LI** | Liberation Index (% target mineral liberated vs. locked) |
| **PSD** | Particle Size Distribution |
| **FBG** | Fiber Bragg Grating (optical sensors) |
| **POF** | Polymer Optical Fiber (PMMA) |
| **SiC** | Silicon Carbide |
| **IR** | Infrared (electromagnetic radiation 3-1000 µm) |
| **NIR** | Near-Infrared (0.75-1.4 µm) |
| **PID** | Proportional-Integral-Derivative control |
| **DSP** | Digital Signal Processor |

---
