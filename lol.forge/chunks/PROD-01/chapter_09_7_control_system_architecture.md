## 7. Control System Architecture

### 7.1 Distributed Control Philosophy

No central PLC. Each subsystem has local autonomous control with safety interlocks:

**Drum Controller (FPGA-based):**
- 8-zone PID (1 kHz loop) via FBG feedback
- Port actuator monitoring (strain + position)
- Drum speed/position control (piezo motor)
- Safety: overspeed, overpressure, overtemperature trips

**Induction Controller (per zone, GaN inverter):**
- Resonant frequency tracking (±2% auto-tune)
- Power vs. temperature trajectory control
- Arc detection (V/I harmonic analysis)
- Efficiency logging (energy per kg per stage)

**Gas System Controller:**
- Pressure/flow cascade control
- Composition monitoring (NDIR, GC, MS)
- Plasma torch power modulation

**Safety Interlocks (Hardwired, Independent):**
- Drum overspeed: mechanical centrifugal trip at 550 RPM
- Vessel overpressure: ZrO₂ rupture disc at 12 bar
- Overtemperature: FBG >2400°C → emergency N₂ quench
- Atmosphere breach: O₂ >100 ppm → emergency Ar flood
- GIC detection: DC ground monitor >10 A → isolate

### 7.2 Human-Machine Interface

Operator station (air-gapped, no network connection):
- Real-time thermal cascade visualization (8-zone temperature map)
- Port flow monitoring (mass flow + composition)
- FBG strain field rendering (48-channel heatmap)
- Batch assay input / output reconciliation
- Historical batch comparison (500-batch manifold)
- Emergency stop: hardwired, mechanical drum brake + N₂ flood

---
