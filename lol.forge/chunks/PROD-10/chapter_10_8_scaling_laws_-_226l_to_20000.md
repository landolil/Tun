## 8. Scaling Laws - 226L to 20,000L

### 8.1 Geometric Scaling

| Parameter | 226L (Gen I) | 2,000L (Gen II) | 20,000L (Gen III) | Scaling Law |
|-----------|--------------|-----------------|-------------------|-------------|
| Drum Diameter | 600 mm | 1,200 mm | 2,400 mm | D ~ V^(1/3) |
| Drum Length | 800 mm | 1,600 mm | 3,200 mm | L ~ D |
| Volume | 226 L | 2,000 L | 20,000 L | V ~ D^3 |
| Zones | 8 | 16 | 32 | Z ~ L |
| Zone Length | 100 mm | 100 mm | 100 mm | Constant |
| Coil Turns | 8 | 12 | 16 | N ~ D^0.5 |
| Frequency | 1-100 kHz | 1-100 kHz | 0.5-50 kHz | f ~ D^-0.5 |

### 8.2 Power Scaling

**Power Density:** 2.2 kW/L (500 kW / 226 L) at Gen I
- Gen II (2,000L): 4.4 MW total (2.2 kW/L x 2,000L)
- Gen III (20,000L): 44 MW total

**Inverter Paralleling:** Zone power scales with zone volume (pi*D^2/4 x 100mm)
- Gen I Zone 8: 500 kW max
- Gen II Zone 16: 1 MW max (2x Gen I)
- Gen III Zone 32: 2 MW max (4x Gen I)

**Paralleling Architecture:** Master-slave current sharing via optical interconnect
- Each "zone" becomes a string of N parallel inverters (N=1, 2, 4)
- Shared DC bus, shared resonance tracking (master controls frequency)
- Current balancing: Droop control (optical, no wires)

### 8.3 Thermal Scaling

Thermal time constant tau ~ D^2 (diffusion-limited)
- Gen I: tau ~ 45 min (500 kg charge + 156 kg drum)
- Gen II: tau ~ 3 hours (4x diameter - 16x thermal mass)
- Gen III: tau ~ 12 hours

**Implication:** Ramp rates must slow with scale. Gen III: 0.5C/min vs Gen I: 5C/min.

### 8.4 Control Scaling

FBG sensor count: 48 per zone x zones
- Gen I: 384 sensors
- Gen II: 768 sensors
- Gen III: 1,536 sensors

FPGA processing scales linearly. Interrogator count scales with zones.
WDM channels: 8 to 16 to 32 (each 10 nm band, C-band supports 40+ channels)

---
