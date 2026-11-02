## 2. Coil Bank Physical Design

### 2.1 Coil Construction — CSMFAB Materials Only

**Conductor: Copper Tube (THE ONLY COPPER IN THE MACHINE)**
- Dimensions: 25 mm OD × 10 mm ID (7.5 mm wall)
- Justification: Copper tube is a *winding*, not a structural GIC-coupling element. It is isolated from the drum by 15 mm air gap + 3 mm alumina + 35 mm ZrB₂-SiC. No conductive path to earth ground.
- Water cooling: PEX-a circuit through tube bore (CSMFAB000000000012)
- Flow rate: 15 L/min per zone, ΔT = 15°C, ΔP = 3 bar
- Material: OFHC copper (99.99% Cu), annealed for bending

**Insulation: Alumina Ceramic Sleeve (Al₂O₃)**
- 3 mm wall thickness, wrapped over copper tube
- Same specification as CSMMECH motor winding insulation
- Thermal conductivity: 30 W/m·K (allows heat transfer to cooling water)
- Dielectric strength: >15 kV/mm at 1000°C
- CTE: 8.1×10⁻⁶/K (matched to copper for thermal cycling)

**Coil Housing: BFRP/Elium® Composite Casing**
- Filament wound [±15°/90°]₃ layup
- Houses 12 turns per zone (optimized for inductance)
- Internal water manifold: PEX-a distribution to each turn
- External: FBG sensors embedded in composite for housing temperature

**Coil-to-Drum Gap: 15 mm Radial Clearance**
- Accounts for: drum thermal expansion (35 mm × 5.2×10⁻⁶ × 2200 = 0.4 mm), rotor dynamics (0.5 mm runout), safety margin (14 mm)
- Magnetic field at drum inner surface: B_peak = 0.15-0.4 T (zone dependent)

### 2.2 Eight-Zone Coil Bank Layout

```
ZONE AXIAL LAYOUT (100 mm each, 800 mm total):

Zone 1 (0-100 mm):     Stages 1-2 (80-450°C)     100 kHz    0-50 kW
Zone 2 (100-200 mm):   Stages 1-2 (80-450°C)     100 kHz    0-50 kW
Zone 3 (200-300 mm):   Stage 3 (450-700°C)       50 kHz     50-80 kW
Zone 4 (300-400 mm):   Stage 4 (420-900°C)       10 kHz     80-150 kW
Zone 5 (400-500 mm):   Stage 5 (660-720°C)       10 kHz     80-150 kW
Zone 6 (500-600 mm):   Stage 6 (1085-1200°C)     5 kHz      100-200 kW
Zone 7 (600-700 mm):   Stage 7 (1200-1600°C)     2 kHz      150-350 kW
Zone 8 (700-800 mm):   Stage 8 (1600-2200°C)     1 kHz      200-500 kW
```

**Zone Overlap Strategy:**
- Zones 1-2: Combined for Stages 1-2 (air heating, large thermal mass)
- Zones 4-5: Combined for Stages 4-5 (Al window needs broad heating)
- Zones 7-8: Separate for Stages 7-8 (precise control at high power)

### 2.3 Coil Electrical Parameters (Per Zone)

| Parameter | Zones 1-2 | Zone 3 | Zones 4-5 | Zone 6 | Zone 7 | Zone 8 |
|---|---|---|---|---|---|---|
| Turns | 12 | 12 | 12 | 10 | 8 | 6 |
| Inductance (μH) | 45 | 45 | 45 | 32 | 20 | 12 |
| Resistance at 20°C (mΩ) | 18 | 18 | 18 | 15 | 12 | 9 |
| Max current (A rms) | 250 | 350 | 500 | 700 | 1000 | 1500 |
| Max voltage (V rms) | 400 | 400 | 600 | 800 | 1000 | 1200 |
| Resonant capacitor (μF) | 0.56 | 0.56 | 0.56 | 1.0 | 1.6 | 3.3 |

---
