## 17. Induction Coil Bank — Detailed Electromagnetic Design

### 17.1 Coil Geometry and Turn Calculation

Each zone: 100 mm axial length, 15 mm gap to drum OD (630 mm)

**Copper tube conductor:** 25 mm OD × 2.5 mm wall (20 mm ID for water cooling)
**Turns per zone:** 12 turns (3 layers × 4 turns/layer)
**Coil inductance (estimated):** 12 μH per zone at operating frequency

**Ampere-turns required for target B-field:**

| Zone | Frequency | Target B_peak | Ampere-turns | Current (RMS) |
|---|---|---|---|---|
| 1-2 | 100 kHz | 0.05 T | 4800 | 400 A |
| 3 | 50 kHz | 0.1 T | 9600 | 800 A |
| 4-5 | 10 kHz | 0.2 T | 19200 | 1600 A |
| 6 | 5 kHz | 0.25 T | 24000 | 2000 A |
| 7 | 2 kHz | 0.3 T | 28800 | 2400 A |
| 8 | 1 kHz | 0.35 T | 33600 | 2800 A |

### 17.2 GaN Resonant Inverter Design

Each zone uses a **Class E resonant inverter** with GaN HEMTs (GS66516T, 650V/50A):

**Topology:** Half-bridge with series resonant tank (L_coil + C_resonant)
**Switching frequency:** Variable ±20% around nominal for impedance matching
**Resonant capacitor:** C0G/NP0 ceramic, 5 kV rated, temperature compensated
**Gate driver:** SiC-isolated (CMT-S12R), 5V logic, 20V drive

**Efficiency targets:**
- Zone 1-2 (100 kHz): 92% (switching losses dominate)
- Zone 3 (50 kHz): 94%
- Zone 4-5 (10 kHz): 97%
- Zone 6-8 (1-5 kHz): 98% (conduction losses dominate)

**Thermal management:** Direct liquid cooling of GaN die (microchannel cold plate, 0.5°C/W R_th_jc)

### 17.3 FBG Sensor Network — Embedded Thermometry

**Fiber Bragg Grating specifications:**
- Wavelength: 1550 nm ± 0.5 nm (C-band)
- Grating length: 5 mm
- Reflectivity: >95%
- Temperature sensitivity: 10 pm/°C
- Operating range: -50°C to 1200°C (polyimide coating)

**Embedding pattern:** 48 sensors per zone (6 circumferential × 8 axial), 384 total
**Interrogator:** 8-channel parallel, 1 kHz/channel, ±1 pm resolution (±0.1°C)
**Multiplexing:** WDM + TDM hybrid, 16 sensors per fiber

**Sensor locations:**
- 12 sensors in drum wall (embedded during flash sintering)
- 6 sensors in each liner zone (Si₃N₄, ZrB₂-SiC, ZrO₂)
- 6 sensors in BFRP vessel inner surface
- 4 sensors in port valve actuators

---
