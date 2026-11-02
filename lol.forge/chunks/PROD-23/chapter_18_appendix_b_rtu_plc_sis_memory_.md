## Appendix B: RTU/PLC/SIS Memory Maps

### B.1 Zone RTU Memory Map (Zephyr RTOS)

| Address Range | Content | Size | Access |
|---------------|---------|------|--------|
| 0x0000_0000 - 0x000F_FFFF | Vector table + kernel | 1 MB | RO |
| 0x0010_0000 - 0x001F_FFFF | RTU application code | 1 MB | RO |
| 0x0020_0000 - 0x002F_FFFF | PID config (per zone) | 1 MB | RW |
| 0x0030_0000 - 0x003F_FFFF | PLL config + LUTs | 1 MB | RW |
| 0x0040_0000 - 0x004F_FFFF | FBG calibration data | 1 MB | RO |
| 0x0050_0000 - 0x005F_FFFF | Sensor buffers (circular) | 1 MB | RW |
| 0x0060_0000 - 0x006F_FFFF | Actuator command buffers | 1 MB | RW |
| 0x0070_0000 - 0x007F_FFFF | Logging / event buffer | 1 MB | RW |
| 0x0080_0000 - 0x008F_FFFF | TSN stack buffers | 1 MB | RW |
| 0x0090_0000 - 0x009F_FFFF | MRAM shadow (config) | 1 MB | RW |

### B.2 Stage PLC Memory Map (CODESYS)

| Address Range | Content | Size | Access |
|---------------|---------|------|--------|
| %MB0 - %MB9999 | Marker bytes (flags) | 10 KB | RW |
| %MW0 - %MW4999 | Marker words (setpoints) | 10 KB | RW |
| %MD0 - %MD2499 | Marker dwords (FBG temps) | 10 KB | RW |
| %QX0.0 - %QX7.7 | Safety outputs (SIS) | 64 bits | R (SIS writes) |
| %IX0.0 - %IX7.7 | Safety inputs (SIS) | 64 bits | R |
| Recipe memory | FRAM (non-volatile) | 64 MB | RW |

---
