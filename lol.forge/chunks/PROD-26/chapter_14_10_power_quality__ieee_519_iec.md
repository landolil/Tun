## 10. Power Quality — IEEE 519, IEC 61000-3-12

### 10.1 Supply Quality Requirements

| Parameter | Requirement | Verification |
|-----------|-------------|--------------|
| **Voltage** | 480 V ±10% (432–528 V) | Continuous monitor |
| **Frequency** | 60 Hz ±0.5% (59.7–60.3 Hz) | Continuous monitor |
| **THD (Voltage)** | <5% (IEEE 519) | PQ meter at XFMR primary |
| **Individual Harmonics** | 3% (5th), 2% (7th), 1.5% (11th+) | IEEE 519 Table 1 |
| **Voltage Unbalance** | <2% (NEMA MG-1) | Continuous monitor |
| **Voltage Sag Ride-Through** | 0% for 10 ms, 40% for 100 ms | DC link hold-up |
| **Voltage Swell** | 110% for 500 ms | MOV clamp |

### 10.2 Harmonic Mitigation

| Source | Harmonics Generated | Mitigation |
|--------|---------------------|------------|
| **8× Class E Inverters** | Switching (1–100 kHz) + harmonics | LCL filter per module (40 dB) |
| **Rectifier (if any)** | 5th, 7th, 11th, 13th | 18-pulse or active front end |
| **VFD (auxiliary)** | 6-pulse | 12-pulse or active filter |
| **DC Link Charging** | Inrush current | Pre-charge resistor + contactor |

**Aggregate THD at PCC:** <3% (verified at CT-07)

### 10.3 Uninterruptible Power for Controls

| Load | UPS Capacity | Battery | Autonomy |
|------|--------------|---------|----------|
| **L3 SCADA (2× workstation)** | 3 kVA | LiFePO₄ 10 kWh | 2 hr |
| **L2 PLCs (8×)** | 2 kVA | LiFePO₄ 5 kWh | 2 hr |
| **L1 RTUs (8×)** | 1 kVA | LiFePO₄ 2 kWh | 2 hr |
| **L0 FPGAs (8×)** | 500 VA | LiFePO₄ 1 kWh | 2 hr |
| **PTP Grandmaster** | 200 VA | LiFePO₄ 500 Wh | 2 hr |
| **FBG Interrogators** | 500 VA | LiFePO₄ 1 kWh | 2 hr |
| **SIS (dedicated)** | 500 VA | LiFePO₄ 1 kWh | 2 hr |

**Total UPS:** 8 kVA / 21 kWh — supports graceful shutdown + ride-through overlap.

---
