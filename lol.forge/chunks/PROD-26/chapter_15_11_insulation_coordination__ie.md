## 11. Insulation Coordination — IEC 60664 / IEC 61865

### 11.1 Pollution Degree & Overvoltage Category

| Location | Pollution Degree | Overvoltage Category | Rationale |
|----------|------------------|----------------------|-----------|
| **Grid Side** | 3 (conductive dust) | III (fixed installation) | Outdoor/industrial |
| **XFMR Primary** | 3 | III | Grid-connected |
| **XFMR Secondary** | 2 (BFRP enclosure) | II (isolated) | Floating, no earth |
| **Inverter Module** | 1 (sealed BFRP) | I (SELV-like) | 800 VDC, no earth ref |
| **RTU/PLC/FPGA** | 1 (sealed BFRP) | I (SELV) | 24 VDC, isolated |

### 11.2 Clearance & Creepage Distances (IEC 60664-1)

| Working Voltage | Pollution Deg 1 | Pollution Deg 2 | Pollution Deg 3 |
|-----------------|-----------------|-----------------|-----------------|
| | Clearance / Creepage | Clearance / Creepage | Clearance / Creepage |
| **50 V** | 0.08 / 0.6 mm | 0.6 / 1.2 mm | 1.5 / 2.5 mm |
| **150 V** | 0.5 / 1.2 mm | 1.5 / 2.5 mm | 3.0 / 4.0 mm |
| **400 V** | 1.0 / 2.5 mm | 3.0 / 5.0 mm | 5.5 / 8.0 mm |
| **800 V** | 1.8 / 4.0 mm | 5.5 / 8.0 mm | 11 / 16 mm |
| **1000 V** | 2.4 / 5.0 mm | 7.5 / 10 mm | 15 / 22 mm |

**Applied Clearances (worst case Pollution Deg 3, Cat III):**
- Grid side (480 V): 5.5 mm clearance, 8.0 mm creepage
- DC link (800 V): 11 mm clearance, 16 mm creepage
- RTU/PLC (24 V): 1.5 mm clearance, 2.5 mm creepage

### 11.3 Partial Discharge Requirements

| Component | Test Voltage | PD Limit | Method |
|-----------|--------------|----------|--------|
| **Isolation XFMR** | 1.5× rated (600 VAC) | <5 pC | IEC 60270 |
| **Inverter DC Link Caps** | 1.5× rated (1200 VDC) | <10 pC | IEC 61865 |
| **GaN Module** | 1.5× rated (600 V) | <5 pC | IEC 60747-8 |
| **POF Connectors** | N/A (dielectric) | N/A | N/A |

---
