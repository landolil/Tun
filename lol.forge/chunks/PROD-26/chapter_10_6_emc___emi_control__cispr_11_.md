## 6. EMC / EMI Control — CISPR 11 Class A, IEC 61000-4

### 6.1 Emission Limits (CISPR 11 / EN 55011 Class A, Group 1)

| Frequency Range | Conducted (QP/AV) | Radiated (10 m) |
|-----------------|-------------------|-----------------|
| 150 kHz – 500 kHz | 79 / 66 dBμV | — |
| 500 kHz – 5 MHz | 73 / 60 dBμV | — |
| 5 MHz – 30 MHz | 73 / 60 dBμV | — |
| 30 MHz – 230 MHz | — | 40 dBμV/m |
| 230 MHz – 1 GHz | — | 47 dBμV/m |
| 1 GHz – 6 GHz | — | 56 dBμV/m (peak) |

**Margin:** BFRP enclosure + POF + PEX-a provides >20 dB margin. Verified at CT-07 (EMC test).

### 6.2 Immunity Requirements (IEC 61000-4 / IEC 61000-6-2)

| Test | Standard | Level | Criteria |
|------|----------|-------|----------|
| **ESD** | IEC 61000-4-2 | ±8 kV contact, ±15 kV air | B |
| **Radiated RF** | IEC 61000-4-3 | 10 V/m, 80 MHz–6 GHz, 80% AM | A |
| **EFT/Burst** | IEC 61000-4-4 | ±2 kV (power), ±1 kV (signal) | B |
| **Surge** | IEC 61000-4-5 | ±2 kV line-line, ±4 kV line-earth | B |
| **Conducted RF** | IEC 61000-4-6 | 10 V, 150 kHz–80 MHz | A |
| **Magnetic Field** | IEC 61000-4-8 | 30 A/m (50 Hz), 300 A/m (1 s) | A |
| **Voltage Dips** | IEC 61000-4-11 | 0% 10 ms, 40% 100 ms, 70% 500 ms | B/C |

**Criteria A:** Normal operation
**Criteria B:** Temporary degradation, self-recoverable
**Criteria C:** Temporary degradation, operator intervention

### 6.3 Internal EMI Management

| Source | Frequency | Mitigation |
|--------|-----------|------------|
| **GaN Inverters** | 1–100 kHz (switching) | LCL filter, BFRP enclosure, shielded inductor |
| **PWM Gate Drive** | 100 kHz (FPGA) | POF to FPGA, no copper |
| **Varactor Tuning** | 100 Hz (RTU) | Low frequency, POF |
| **Drum Motor** | 8.33 Hz (500 RPM) | Piezo drive, no EMI |
| **MFC Valves** | DC (battery backup) | No switching noise |

---
