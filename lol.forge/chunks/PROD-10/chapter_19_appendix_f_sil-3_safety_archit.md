## Appendix F: SIL-3 Safety Architecture - Complete Fault Tree

### F.1 Top-Level Hazard: Uncontrolled Energy Release

**Hazard:** DC bus fault → inverter shoot-through → coil overcurrent → drum overpressure
**SIL-3 Target:** PFH < 1e-7 per hour

**Fault Tree:**
```
TOP: Uncontrolled Energy Release (PFH < 1e-7)
├── DC Bus Overvoltage (PFH = 5e-8)
│   ├── Active Rectifier Failure (1e-8)
│   ├── DC Bus Capacitor Failure (1e-8)
│   └── Pre-charge Contactor Weld (1e-8)
├── Inverter Shoot-Through (PFH = 3e-8)
│   ├── GaN Gate Drive Failure (1e-8)
│   ├── Dead Time Violation (1e-8)
│   └── Desat Detection Failure (1e-8)
├── Resonance Loss → Overcurrent (PFH = 2e-8)
│   ├── Phase Detector Failure (1e-8)
│   ├── Frequency Runaway (5e-9)
│   └── Coil Short Circuit (5e-9)
└── Common Cause (β = 2%)
    ├── Optical Fiber Cut (1e-7) → All zones blind
    ├── FPGA SEU (5e-8) → Control loss
    └── Power Supply Failure (1e-7) → All inverters down
```

**Mitigations:**
- 2oo3 voting on FBG median (diagnostic coverage 99%)
- Independent optical E-stop per zone (hardwired to DC contactor)
- FPGA TMR (Triple Modular Redundancy) for critical loops
- Diversity: 8 separate interrogators, 8 separate gate drivers
- Watchdog: Independent hardware timer (optical) resets FPGA if stalled

### F.2 Safety Instrumented Functions (SIFs)

| SIF | Function | SIL | Sensors | Final Element | PFDavg |
|-----|----------|-----|---------|---------------|--------|
| SIF-1 | DC Bus Overvoltage Trip | 3 | 3x Optical voltage divider | DC Contactor | 1e-4 |
| SIF-2 | Inverter Desat Trip | 3 | GaN desat (optical) | Gate Kill | 1e-4 |
| SIF-3 | Resonance Loss Trip | 3 | Phase detector (optical) | Frequency Clamp | 1e-3 |
| SIF-4 | Drum Overtemperature | 3 | 48 FBG/zone (2oo3) | Power Cut | 1e-3 |
| SIF-5 | Emergency Stop | 3 | 2x Optical E-stop button | All Contactors | 1e-4 |

All SIFs use **optical-only signal paths** - no metallic conductors in safety loops.

---
