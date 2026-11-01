## Appendix C: FBG Interrogator Detailed Design

### C.1 VCSEL Sweep Characteristics

| Parameter | Value |
|-----------|-------|
| Center Wavelength | 750 nm |
| Sweep Range | 650–850 nm (200 nm) |
| Sweep Rate | 1 kHz (triangle wave) |
| Linearity | >99% |
| Output Power | 5 mW |
| SMSR | >40 dB |
| RIN | <-140 dB/Hz |

### C.2 Detection Scheme

Balanced photodetection with InGaAs PIN diodes:
- **Bandwidth:** 2 MHz (sufficient for 1 kHz sweep × 200 nm)
- **NEP:** 5 pW/√Hz
- **Dynamic Range:** 80 dB
- **Resolution:** 0.1 pm (enables 0.1°C with 0.15 nm/°C sensitivity)

### C.3 WDM Filter Bank

8-channel thin-film filter array (PMMA substrate):
| Channel | Center λ | Bandwidth | Isolation |
|---------|----------|-----------|-----------|
| CH1 | 680 nm | 20 nm | >30 dB |
| CH2 | 700 nm | 20 nm | >30 dB |
| CH3 | 720 nm | 20 nm | >30 dB |
| CH4 | 740 nm | 20 nm | >30 dB |
| CH5 | 760 nm | 20 nm | >30 dB |
| CH6 | 780 nm | 20 nm | >30 dB |
| CH7 | 800 nm | 20 nm | >30 dB |
| CH8 | 820 nm | 20 nm | >30 dB |

---
