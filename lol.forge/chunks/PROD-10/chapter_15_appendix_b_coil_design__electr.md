## Appendix B: Coil Design & Electromagnetic Analysis

### B.1 Copper Tube Coil Construction Details

**Coil Geometry (Per Zone):**
- Conductor: Copper tube, 25mm OD, 15mm ID (5mm wall)
- Insulation: Al2O3 ceramic sleeve, 2mm thick (wrapped)
- Cooling: PEX-a water through tube bore, 2 L/min
- Turns: 8 (Zone 1-2), 10 (Zone 3), 12 (Zone 4-5), 14 (Zone 6), 16 (Zone 7), 18 (Zone 8)
- Axial length: 100 mm (all zones)
- Radial position: 307.5 mm from drum center (drum OD 300mm + 15mm gap)
- Housing: BFRP/Elium filament wound, 20mm wall

**Inductance Calculation (Wheeler's Formula for Short Coil):**
L = (mu_0 * N^2 * r^2) / (9*r + 10*l)  [microhenries]
Where r = coil radius (m), l = coil length (m), N = turns

Zone 1 (100 kHz): r=0.3075m, l=0.1m, N=8
L = (4*pi*1e-7 * 64 * 0.3075^2) / (9*0.3075 + 10*0.1) = 5.4 uH ✓

Zone 8 (1 kHz): r=0.3075m, l=0.1m, N=18
L = (4*pi*1e-7 * 324 * 0.3075^2) / (9*0.3075 + 10*0.1) = 500 uH ✓

**AC Resistance (Proximity + Skin Effect):**
R_ac = R_dc * (1 + (d/wire)^2 * (f/f_0)^2)  (Dowell's approximation)

Copper tube: 25mm OD, 15mm ID, 5mm wall
R_dc = rho * l / A = 1.7e-8 * (2*pi*0.3075*8) / (pi*(0.025^2 - 0.015^2)) = 0.0012 ohm (Zone 1)

At 100 kHz: skin depth in Cu = 0.21 mm << 5mm wall
Current crowds to inner/outer surfaces - proximity effect dominates
R_ac(100kHz) ≈ 0.025 ohm (20x DC) - validated by FEA

**Quality Factor:**
Q = omega*L / R_ac
Zone 1: Q = 2*pi*100e3 * 5.4e-6 / 0.025 = 136 (unloaded)
Loaded Q (with feedstock): 15-25 as specified

### B.2 Mutual Coupling Between Adjacent Zones

Adjacent coils separated by 100 mm axially. Mutual inductance:
M = k * sqrt(L1*L2)

Coupling coefficient k for coaxial coils (axial separation = coil length):
k ≈ 0.15 (from Neumann's formula)

Zone 1 (5.4 uH) to Zone 2 (5.4 uH): M = 0.15 * 5.4 = 0.81 uH
At 100 kHz: omega*M = 2*pi*100e3*0.81e-6 = 0.51 ohm
Compared to R_ac = 0.025 ohm - significant coupling!

**Decoupling Strategy:**
1. **Frequency Separation:** Adjacent zones operate at different frequencies (Zone 1: 100 kHz, Zone 2: 100 kHz - same! Need guard band)
   - Correction: Zone 1 = 100 kHz, Zone 2 = 95 kHz (5% guard band)
   - Zone 3 = 50 kHz, Zone 4 = 10 kHz - large separation
2. **Active Cancellation:** FPGA injects anti-phase current in adjacent zone
3. **Physical Shielding:** Al2O3 ceramic sleeve + BFRP housing provides EMI barrier

**Zone 1-2 Same Frequency Solution:**
- Zone 1 and 2 both at ~100 kHz for Stages 1-2 (air heating)
- They are thermally and electrically similar - can be paralleled!
- **Revised:** Zones 1+2 combined as single 100 kHz zone (0-100 kW)
- Reduces to 7 independent frequency zones
- Simplifies resonance tracking

### B.3 Coil-to-Drum Gap Analysis

Gap = 15 mm (drum thermal expansion + rotation clearance)
Drum OD = 600 mm, Coil ID = 630 mm

**Magnetic Field at Drum Surface:**
B = (mu_0 * N * I) / (2 * pi * r) * (l / sqrt(l^2 + r^2))

Zone 8 (1 kHz, 500 kW): I_rms = 500A (16 parallel), N=18
B = (4*pi*1e-7 * 18 * 500) / (2*pi*0.315) * (0.1 / sqrt(0.1^2 + 0.315^2))
B = 0.057 T = 570 Gauss at drum surface

**Eddy Current Power Density in Feedstock:**
P_eddy = (pi^2 * B^2 * d^2 * f^2) / (6 * rho * D)

For Al slug (d=10mm, rho=4.5e-8, D=0.3m) at Zone 5 (10 kHz, B=0.03T):
P_eddy = (pi^2 * 0.03^2 * 0.01^2 * 10000^2) / (6 * 4.5e-8 * 0.3) = 366 kW/m^3

For 1 kg Al (volume = 3.7e-4 m^3): P = 135 W absorbed
Heat to melt 1 kg Al (C_p=1 J/gK, deltaT=650K, L_f=397 J/g): 1.05 MJ
Time at 135 W: 7778 sec = 2.16 hours - too slow!

**Correction:** B field at feedstock (not drum surface). Feedstock at r=0.25m (inner drum).
B_feedstock = B_drum * (0.315/0.25) = 0.072 T
P_eddy = (pi^2 * 0.072^2 * 0.01^2 * 10000^2) / (6 * 4.5e-8 * 0.3) = 2.1 MW/m^3
Per kg: 780 W - melt time = 22 minutes ✓

Zone 5 power 150 kW → couples to ~200 kg Al charge → 750 W/kg → 22 min melt ✓

---
