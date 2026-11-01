## 2. System Overview - 8-Zone Architecture

### 2.1 Top-Level Block Diagram

```
AEGIS-FORGE I - INDUCTION POWER ELECTRONICS ARCHITECTURE

[480V 3-PHASE GRID] to [ISOLATION XFMR + HARMONIC FILTER] to [DC BUS: 800V DC]
                                                                       |
                    +--------------------------------------------------+--------------------+
                    |                                                  |                    |
            [ZONE 1 INVERTER]                                    [ZONE 2 INVERTER]      ...  [ZONE 8 INVERTER]
            (100 kHz, 0-50 kW)                                     (100 kHz, 0-50 kW)           (1 kHz, 200-500 kW)
                    |                                                  |                    |
            [COIL ZONE 1]                                        [COIL ZONE 2]                [COIL ZONE 8]
            (Stages 1-2)                                         (Stages 1-2)                 (Stage 8)
                    |                                                  |                    |
            [FBG SENSORS: 48 ch]                                   [FBG SENSORS: 48 ch]         [FBG SENSORS: 48 ch]
            (PMMA POF to WDM/TDM MUX)                               (PMMA POF to WDM/TDM MUX)     (PMMA POF to WDM/TDM MUX)
                    +--------------------------------------------------+--------------------+
                                                                       |
                                                      [FPGA CONTROLLER: 8x PID + RESONANCE TRACKING]
                                                      (All-dielectric, optical I/O only)
                                                                       |
                                                      [HMI: Operator Witness Station]
```

### 2.2 Zone-to-Stage Mapping

Each induction coil zone spans 100 mm axial length of the 800 mm drum. The eight zones map to the eight thermal stages as follows:

| Zone | Axial Position | Thermal Stages | Target Temperature | Frequency | Power Range | Primary Material |
|------|----------------|----------------|-------------------|-----------|-------------|------------------|
| 1 | 0-100 mm | Stage 1 | 80-150C | 100 kHz | 0-50 kW | Air/N2 (indirect organics heating) |
| 2 | 100-200 mm | Stage 2 | 150-450C | 100 kHz | 0-50 kW | Thermoplastics (indirect via air) |
| 3 | 200-300 mm | Stage 3 | 450-700C | 50 kHz | 50-80 kW | Zn, Pb (conductors begin coupling) |
| 4 | 300-400 mm | Stage 4 | 420-900C | 10 kHz | 80-150 kW | Al, Zn, Pb, Sn (low-temp metals) |
| 5 | 400-500 mm | Stage 5 | 660-720C | 10 kHz | 80-150 kW | Aluminum (optimal Al window) |
| 6 | 500-600 mm | Stage 6 | 1085-1200C | 5 kHz | 100-200 kW | Copper (deep penetration) |
| 7 | 600-700 mm | Stage 7 | 1200-1600C | 2 kHz | 150-350 kW | Iron/Steel (ferromagnetic coupling) |
| 8 | 700-800 mm | Stage 8 | 1600-2200C | 1 kHz | 200-500 kW | Refractory minerals (conduction only) |

**Total Installed Power:** 500 kW (sum of zone maximums)
**Operational Power:** 200-400 kW typical per batch (not all zones at max simultaneously)
**DC Bus Voltage:** 800V DC (from 480V AC through active rectifier with PFC)
**Inverter Topology:** Class E resonant, GaN HEMT (GS66516T or equivalent), 97% efficiency target

### 2.3 Key System Parameters

| Parameter | Value | Notes |
|-----------|-------|-------|
| Input Voltage | 480V AC, 3-phase, 60 Hz | Industrial supply |
| DC Bus Voltage | 800V DC | Active rectifier, >0.99 PF |
| Number of Zones | 8 | Independent resonant inverters |
| Frequency Range | 1 kHz - 100 kHz | Variable per zone |
| Zone Power Range | 0-500 kW | Zone 8 max, Zone 1-2 min |
| Total Power | 500 kW | Installed capacity |
| Inverter Efficiency | >97% | GaN Class E, measured at DC bus |
| Control Loop Rate | 1 kHz | FBG sample rate, PID update |
| Temperature Resolution | 0.1C | FBG wavelength shift |
| Zone Control Accuracy | 5C | Steady-state at target temp |
| Resonance Tracking | 0.5% of f0 | Automatic impedance matching |
| Control Wiring | PMMA POF only | Zero copper conductors |
| Sensor Count | 384 FBG | 48 per zone, WDM+TDM multiplexed |
| Isolation Voltage | 5 kV DC | Optical isolation, SIL-3 rated |
| GIC Immunity | Complete | No metallic paths to ground |

---
