## 14. Detailed Stage Transition Dynamics and Thermal Inertia Management

### 14.1 Thermal Inertia Challenge

The combined thermal mass of the drum (156 kg ZrB₂-SiC) and feedstock (50 kg) creates a system thermal capacitance of ~167 kJ/K. At 500 kW maximum induction power, the theoretical minimum ramp rate is 500 kW / 167 kJ/K = 3.0 K/s = 180°C/min. However, practical limits are far lower due to:

1. **Induction coupling efficiency** (frequency-dependent, 60-95%)
2. **Heat losses** through aerogel (radial) and end flanges (axial)
3. **Thermal gradients** within the drum wall (35 mm thick)
4. **Phase change enthalpies** creating power plateaus

### 14.2 Stage Transition Management Strategies

**Stage 3→4 Transition (660°C region):**
Critical challenge: Aluminum begins melting at 660°C while Stage 3 pyrolysis completes at 660°C. The 420-900°C Stage 4 range overlaps.
- Solution: Ramp rate reduction from 7°C/min to 2°C/min through 600-720°C
- Dual-zone control: Zone 3 (Stage 3) holds at 660°C while Zone 4 ramps to 720°C
- Port 3 (char) closes before Port 4 (In/Zn) opens — temporal separation

**Stage 5→6 Transition (720-1085°C Hold Zone):**
365°C hold zone for brass/bronze separation. No target metal melting — pure thermal transit.
- Ramp rate: 12.2°C/min (optimized for brass/bronze liquidus traversal)
- No dwell required — continuous ramp through alloy liquidus range
- Port 5 (Al) sealed, Port 6 (Cu) not yet open

**Stage 7→8 Transition (1600°C region):**
Zircon dissociation at 1676°C occurs within Stage 8 ramp.
- Ramp rate reduction from 20°C/min to 10°C/min at 1650-1750°C
- 20 min dwell at 1750°C for 95% zircon dissociation
- Port 7 (Fe) sealed, Port 8 (mineral) opens at 2200°C

### 14.3 Thermal Gradient Management in Drum Wall

**Radial Temperature Profile (Stage 8, 2200°C internal):**
- Drum inner surface (Zone C, 3Y-TZP): 2200°C
- Mid-wall (ZrB₂-SiC): 1850°C (350°C drop across 35 mm)
- Outer surface (Zone B): 1400°C
- Aerogel inner surface: 400°C (1000°C drop across 50 mm aerogel)
- Vessel inner surface: 200°C
- Vessel outer surface: 100°C (YInMn glaze reflects radiation)

**Axial Temperature Profile (8 zones, 100 mm each):**
Zone 1 (Stages 1-2): 150°C
Zone 2 (Stage 3): 600°C
Zone 3 (Stages 4-5): 800°C
Zone 4 (Stage 5 Al): 720°C
Zone 5 (Stage 6 Cu): 1150°C
Zone 6 (Stage 7 Fe): 1500°C
Zone 7 (Stage 7 Fe): 1550°C
Zone 8 (Stage 8): 2200°C

**Thermal Stress Management:**
- Graded CTE transitions at zone boundaries prevent delamination
- FBG sensors at each zone boundary monitor strain in real-time
- MPC limits dT/dt at zone boundaries to <15°C/min

---
