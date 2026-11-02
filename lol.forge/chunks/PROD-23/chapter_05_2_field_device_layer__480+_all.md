## 2. Field Device Layer — 480+ All-Dielectric Sensors & Actuators

### 2.1 Sensor Inventory

| Sensor Type | Qty | Location | Interface | Update Rate | Spec |
|-------------|-----|----------|-----------|-------------|------|
| **FBG Temperature** | 384 | Drum wall (inner/outer), coil former, cold plate | PMMA POF, WDM+TDM | 125 Hz/sensor | ±0.5°C, 0.1°C res |
| **FBG Strain** | 64 | Coil housing, drum flanges, vessel | PMMA POF | 100 Hz | ±1 με, gap monitor |
| **POF Level** | 16 | Slag/metal interfaces (Ports 1-8) | PMMA POF | 100 Hz | ±2 mm, 2200°C rated |
| **Pyrometer** | 8 | Port windows (1 per zone) | PMMA POF | 1 kHz | ±10°C, 600-2400°C |
| **Mass Spectrometer** | 8 | Off-gas headers (Stages 0,3,4,6,7,8) | PMMA POF | 10 Hz | 1-200 amu, ppm |
| **XRF Analyzer** | 8 | Port streams (inline LIBS backup) | PMMA POF | 1 Hz | 11-92 Z, 0.1% |
| **ZrO₂ pO₂ Probe** | 16 | Stages 3-8 atmosphere | PMMA POF | 10 Hz | 10⁻²⁰–1 atm |
| **Pressure Transducer** | 24 | Vessel, gas lines, cooling | PMMA POF | 100 Hz | 0-10 bar, ±0.1% |
| **Flow Meter (MFC)** | 32 | Ar/He/H₂/N₂/CO/CO₂ lines | PMMA POF | 10 Hz | 0-500 SLPM, ±1% |
| **Vibration (AE)** | 16 | Drum bearings, gearbox | PMMA POF | 100 kHz | 100 kHz BW |
| **Rotation Encoder** | 2 | Drum shaft (FBG-based) | PMMA POF | 1 kHz | ±0.1 RPM |
| **Optical E-Stop** | 8 | Perimeter, control room | PMMA POF loop | <1 ms | SIL-3 certified |

### 2.2 Actuator Inventory

| Actuator Type | Qty | Location | Interface | Response | Spec |
|---------------|-----|----------|-----------|----------|------|
| **GaN Inverter Gates** | 16 | 8 zones × 2 legs | PMMA POF (FPGA) | 100 ns | 650V, 16A |
| **Varactor Bias** | 32 | 8 zones × 4 varactors | PMMA POF (RTU) | 1 ms | 0-30V, 1 mV res |
| **Switched Cap Bank** | 48 | 8 zones × 6 bits | PMMA POF (RTU) | 1 ms | Binary weighted |
| **MFC Valves** | 32 | Gas distribution | PMMA POF (RTU) | 10 ms | 0-500 SLPM |
| **Port Valves (8)** | 8 | Exit ports 1-8 | PMMA POF (PLC) | 50 ms | Ti₃AlC₂ thermal |
| **Carousel Index** | 1 | Slug mold carousel | PMMA POF (PLC) | 100 ms | 16-position |
| **Flux Injectors** | 8 | Stages 3-7 | PMMA POF (PLC) | 10 ms | 0-10 kg/min |
| **Quench Nozzles** | 16 | Ports 4-8 | PMMA POF (PLC) | 10 ms | N₂, 50 bar |
| **Drum Drive (Piezo)** | 1 | Shaft | PMMA POF (PLC) | 1 ms | 0-500 RPM |
| **Crane/Hoist Interlock** | 4 | Maintenance access | PMMA POF (SIS) | <50 ms | SIL-3 |

### 2.3 PMMA POF Optical Fiber Specifications

| Parameter | Value |
|-----------|-------|
| **Fiber Type** | Step-index PMMA, 980 μm core / 1000 μm clad |
| **Attenuation** | <0.2 dB/m @ 650 nm, <0.5 dB/m @ 850 nm |
| **Bandwidth** | >200 MHz·km (sufficient for 1 Gbps TSN) |
| **Temperature Rating** | -40°C to +85°C (jacket), -40°C to +70°C (core) |
| **Radiation Hardness** | >10⁶ Gy gamma, >10¹⁴ n/cm² neutron |
| **Bend Radius** | >25 mm (installation), >50 mm (long-term) |
| **Connector** | BFRP ferrule, ZrO₂ sleeve, push-pull locking |
| **In-House Draw Cost** | $0.08-0.15/m (CSMFAB Materials Study Part IV) |

**Cable Routing:** All POF cables run in BFRP cable trays with ZrO₂ separators. No metallic conduit. Cable trays grounded via 1 MΩ bleed resistors (static dissipation only).

---
