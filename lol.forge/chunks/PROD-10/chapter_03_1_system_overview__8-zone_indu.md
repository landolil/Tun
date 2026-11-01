## 1. System Overview — 8-Zone Induction Power Architecture

The Aegis-Forge I induction power electronics subsystem delivers controlled, frequency-agile electromagnetic energy to eight independent coil zones surrounding the ZrB₂-SiC drum. This is the nervous system of the thermal cascade — translating digital setpoints into precisely shaped magnetic fields that selectively heat target materials while leaving dielectric components untouched.

### 1.1 Architecture Summary

| Parameter | Specification |
|-----------|---------------|
| **Total Installed Power** | 500 kW (continuous) |
| **Input Supply** | 480 VAC, 3-phase, 60 Hz industrial |
| **Zone Count** | 8 independently controlled resonant inverters |
| **Frequency Range** | 100 kHz → 1 kHz (zone-dependent) |
| **Topology** | Class E resonant inverter with GaN HEMT switches |
| **Control Loop** | PID ±5°C with resonance tracking (1 kHz update) |
| **Sensing** | 384 FBG sensors (PMMA POF, WDM+TDM multiplexed) |
| **Isolation** | All-dielectric control wiring (PMMA optical fiber) |
| **Safety Rating** | SIL-3 + Carrington GIC immunity |

### 1.2 Zone Mapping to Thermal Stages

The eight coil zones correspond directly to the eight thermal processing stages. Each zone heats a 100 mm axial band of the 800 mm drum length.

| Zone | Axial Position | Thermal Stage | Target Temp | Frequency | Power Range | Primary Material |
|------|----------------|---------------|-------------|-----------|-------------|------------------|
| Z1 | 0–100 mm | Stage 1: Drying | 80–150°C | 100 kHz | 0–50 kW | H₂O, volatiles (indirect) |
| Z2 | 100–200 mm | Stage 2: Polymer | 150–450°C | 100 kHz | 0–50 kW | Thermoplastics (indirect) |
| Z3 | 200–300 mm | Stage 3: Pyrolysis | 450–700°C | 50 kHz | 50–80 kW | Zn, Pb, char (onset) |
| Z4 | 300–400 mm | Stage 4: Low-Temp Metals | 420–900°C | 10 kHz | 80–150 kW | Zn, Pb, Sn, In, Al |
| Z5 | 400–500 mm | Stage 5: Aluminum | 660–720°C | 10 kHz | 80–150 kW | Al alloys |
| Z6 | 500–600 mm | Stage 6: Copper | 1085–1200°C | 5 kHz | 100–200 kW | Cu, precious metals |
| Z7 | 600–700 mm | Stage 7: Ferrous | 1200–1600°C | 2 kHz | 150–350 kW | Fe, Ni, Cr, RE magnets |
| Z8 | 700–800 mm | Stage 8: Mineral | 1600–2200°C | 1 kHz | 200–500 kW | Silicates, RE oxides |

### 1.3 Power Distribution Strategy

The 480 VAC 3-phase supply enters a dedicated isolation transformer bank (3 × 200 kVA, delta-wye, BFRP-housed) providing galvanic isolation between the industrial grid and the process electronics. Each inverter module draws from a dedicated 3-phase feed with individual harmonic filtering (LCL, 5th/7th/11th notch). The isolation transformer secondary is floating — no earth reference — eliminating ground fault paths and providing inherent GIC immunity for the process electronics.

---
