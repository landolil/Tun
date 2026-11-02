## 3. Machine Architecture — Full System Description

### 3.1 Primary Components (Top-Level Architecture)

```
AEGIS-FORGE I — TOP-LEVEL ARCHITECTURE

   [ACOUSTIC PRE-PROCESSOR] --- Stage 0: Ultrasonic + LF mineral liberation
          |
          v
   [FEED HOPPER & SHREDDER] --- Input: recycled material, rock, ore, PCBs...
          |
          v
   [ZrB₂-SiC DRUM ASSEMBLY] --- Primary thermal processing vessel
   |  Rotating UHTC ceramic drum (inner)                      |
   |  Induction coil bank (8 independently controlled zones)  |
   |  BFRP pressure vessel (outer)                            |
   |  8 × Circumferential material exit ports (temper-locked) |
   |  Argon/N₂ atmosphere; 0.5-3 bar operating pressure       |
          |
          |--- Port 1 (150°C): Condensed water vapor ---> [Water Recovery Tank]
          |--- Port 2 (450°C): Plastic melt centrifuge exit -> [Plastic Slug Mold]
          |--- Port 3 (700°C): Carbon char exhaust --------> [Char Capture Chamber]
          |--- Port 4 (900°C): Zn/Pb/Sn centrifuge exit ---> [Low-Temp Metal Slugs]
          |--- Port 5 (720°C): Aluminum centrifuge exit ----> [Al Ingot Slugs]
          |--- Port 6 (1200°C): Copper centrifuge exit -----> [Cu Billet Slugs]
          |--- Port 7 (1600°C): Ferrous centrifuge exit ----> [Fe/Steel Slugs]
          |--- Port 8 (2200°C): Mineral/oxide residue ------> [Mineral Concentrate]
          |
          v
   [GAS CAPTURE SYSTEM] --- All combustion gases captured, processed, classified
   |  CO₂ capture (carbon sequestration or re-use as inert atmosphere)
   |  SO₂, HCl scrubber (from toxic fume materials)
   |  Condensation stages: organics, metals vapor, water
   |  Plasma torch for final trace treatment
          |
          v
   [SLUG COOLING STATION] --- All material slugs solidified, stamped, catalogued
   |  Ceramic mold carousel (ZrO₂ molds, 8-position rotary)
   |  Rapid quench N₂ spray for microstructure control
   |  Automated mass spectrometry slug spot-check
          |
          v
   [CONVEYOR HANDOFF] --- Feeds downstream Assembly Line machines (CSMFAB 113+)
```

### 3.2 Drum Assembly — The Heart of the Machine

**ZrB₂-SiC Ceramic Inner Drum (Flash-Sintered per CSMFAB000000000001 V2.0):**

Dimensions: 600 mm diameter × 800 mm length (internal working volume: ~226 liters)
Wall thickness: 35 mm ZrB₂-SiC composite (12 vol% ZrB₂, 88 vol% SiC matrix)
Maximum operating temperature: 2400°C (safe to 85% of ZrB₂ melting point 3245°C)
Pressure rating: 5 bar (validated by FEA — compressive loading favorable in ceramics)
Rotational speed range: 0–500 RPM (variable via piezoelectric linear drive motor)
Centrifugal G-force at 500 RPM (r=0.3m): 84.5 G — sufficient for all metal-liquid separation
Thermal conductivity: 45 W/m·K at 1000°C (enables precise thermal zoning)
CTE: 5.2 × 10⁻⁶/K (matched to SiC matrix for thermal shock resistance)
Density: 3.1 g/cm³ (flash-sintered to 99.8% theoretical density)

**Drum Manufacturing — Flash Sintering (FAST):**
- Peak temperature: 1800°C (below ZrB₂ melt 3245°C, above SiC sintering threshold)
- Pressure: 50 MPa uniaxial
- Dwell: 5 minutes at peak
- Field: 120 V/cm DC (triggers flash at percolation threshold ~1720°C)
- Cooling: 50°C/min controlled (stress relief, no thermal shock)
- Result: 99.8% density, 0.78 μm ZrB₂ grains, 0.62 μm SiC grains, B₄C-segregated boundaries

**Port Valve System:**
Eight circumferential discharge ports spaced 44.2° apart around the outer drum diameter. Each port is:
- Normally CLOSED by a spring-loaded ZrO₂ ceramic piston (no metal springs — PEEK CF40 wave springs)
- Temperature-activated: a bimetal-equivalent ceramic thermal actuator (Ti₃AlC₂ MAX Phase strip) expands differentially to open the port when the stage temperature is reached
- Centrifugal force then drives collected liquid material outward through the open port
- Port aperture: 12 mm diameter (sufficient for liquid metal flow at G-force)
- Actuation displacement: 3.6 mm at ΔT = 680°C (Stage 5 aluminum window)
- Re-seal on cool-down: Ti₃AlC₂ contracts, ZrO₂ piston seats on ZrO₂ seat

**Drum Liner Material Zones:**
The inner drum surface is NOT uniform — three material zones:
1. **Zone A (Stages 1-3, 80-450°C)**: Si₃N₄ ceramic scratch coat (50 μm) — prevents plastic adhesion, non-wetting to molten polymers
2. **Zone B (Stages 4-6, 420-900°C)**: ZrB₂-SiC working surface (native) — primary structural zone, thermal conductivity 45 W/m·K
3. **Zone C (Stages 7-8, 1200-2200°C)**: 3Y-TZP ZrO₂ thermal barrier coat (200 μm) — maximum temp stage, protects composite from slag corrosion

Zone transitions: Graded CTE interlayers (Si₃N₄→ZrB₂-SiC: 2.5 mm; ZrB₂-SiC→3Y-TZP: 3 mm) prevent delamination under thermal cycling.

**FBG Sensor Embedding:**
48 fiber Bragg grating sensors embedded during flash sintering:
- 16 in Zone A (Si₃N₄ interface)
- 16 in Zone B (mid-wall)
- 16 in Zone C (ZrO₂ interface)
Wavelength range: 1510-1590 nm, 1 nm spacing
Sampling rate: 1 kHz per channel
Temperature resolution: ±1°C
Strain resolution: ±1 με
Survival rate: 100% through flash sintering (validated FA-01/02/03)

### 3.3 Induction Coil Bank

Eight independently controlled induction coil zones, each heating a 100 mm axial length of drum:

**Coil Construction (using CSMFAB materials only):**
- Conductor: Copper tube (25 mm OD, 10 mm ID) — the ONLY copper used in the machine (justified as winding — not a structural GIC-coupling element; isolated from drum by 15 mm air gap + alumina insulation)
- Insulation: Alumina ceramic sleeve (Al₂O₃ wrapped, 3 mm wall) over copper — same as CSMMECH motor insulation
- Water cooling: PEX-a water circuit through copper tube bore (CSMFAB000000000012)
- Coil housing: BFRP composite casing (Elium® matrix, filament wound)
- Coil-to-drum gap: 15 mm (clearance for drum expansion + rotation)
- Turns per zone: 12 (optimized for inductance vs. frequency range)

**Induction Frequency Zones:**

| Stage/Temperature | Coil Frequency | Primary Material Being Heated | Power Level | Skin Depth |
|---|---|---|---|---|
| Stages 1-2 (80-450°C) | 100 kHz | Plastic, light organics (indirect via air/N₂) | 0-50 kW | N/A (air heating) |
| Stage 3 (450-700°C) | 50 kHz | Zinc, lead (conductors begin coupling) | 50-80 kW | Zn: 1.2 mm, Pb: 1.6 mm |
| Stages 4-5 (660-900°C) | 10 kHz | Aluminum (optimal frequency for Al eddy coupling) | 80-150 kW | Al: 2.1 mm at 700°C |
| Stage 6 (1085-1200°C) | 5 kHz | Copper (deep penetration at low freq) | 100-200 kW | Cu: 1.0 mm at 1100°C |
| Stage 7 (1200-1600°C) | 2 kHz | Iron/steel (ferromagnetic — most efficient) | 150-350 kW | Fe: 0.35 mm (ferro) |
| Stage 8 (1600-2200°C) | 1 kHz | Refractory mineral oxides | 200-500 kW | Conduction heating |

Total installed induction power: **500 kW** (3-phase, 480V industrial supply)

**Induction Power Control:**
- Each zone uses a GaN-based variable frequency resonant inverter (CSMFAB materials: same GaN tech as Safe-Wave microwave 005, scaled to industrial power)
- PMMA optical fiber temperature feedback from FBG sensors embedded in drum wall (no metallic thermocouple touches process materials)
- PID control maintains each zone within ±5°C of target
- Resonance tracking: inverter adjusts frequency ±2% to maintain phase lock (V/I phase → 0°)
- Power measurement: 1 kHz sampling, integrated per stage for energy/ton accounting

### 3.4 Outer Pressure Vessel and Safety System

**BFRP Pressure Shell (Elium® matrix, CSMFAB000000000011-spec):**
- Filament-wound BFRP outer pressure vessel: 900 mm internal diameter × 1200 mm length
- Design pressure: 10 bar (2× operating pressure)
- Hydrostatic test: 15 bar with N₂ (non-flammable test fluid)
- Wall: 18 mm basalt fiber/Elium® [±18°/90°]₄ layup (filament wound for hoop strength)
- Thickness validated by Barlow: P = 2σt/D → σ_hoop at 10 bar = 12.5 MPa (well within BFRP 1100 MPa tensile)
- Fire protection: YInMn Blue + CoAl₂O₄ exterior glaze (SRI=115; protects BFRP Tg=80°C from radiated heat)
- Drum-to-vessel gap filled with polyimide-silica aerogel (λ=0.010 W/m·K) — thermal insulation layer
- Aerogel thickness: 50 mm (radial), covers full drum length

**Barlow Formula Validation:**
Hoop stress: σ_θ = Pr/t = (1×10⁶ Pa × 0.45 m) / 0.018 m = 25 MPa
Burst pressure (σ_ult = 1100 MPa): P_burst = 2σ_ult t/D = 2×1100×10⁶×0.018/0.9 = 440 bar
Safety factor at 10 bar: 44.0 — exceeds ASME BPVC VIII Div 3 requirements

**PEEK CF40 End Flanges:**
- Both drum ends (motor/feed side and slug discharge side) sealed by PEEK CF40 flanges
- Dynamic rotary seal: ZrO₂ ceramic face seal + PEEK CF40 spring — rated 2000 RPM, 10 bar, 800°C
- Flange bolt pattern: 24 × M12 PEEK CF40 bolts (torque: 45 N·m)
- Gas permeation: <1×10⁻⁹ mbar·L/s (He leak test)

**Atmosphere Management:**
- Primary atmosphere: N₂ (99.999% purity) at 1.2 bar absolute
- Argon purge for precious metal stages (6-7): Ar at 0.5 bar overpressure
- Oxygen monitoring: ZrO₂ lambda sensor + optical O₂ sensor (target <10 ppm)
- Pressure relief: ZrO₂ rupture disc (burst at 12 bar) → BFRP vent stack

### 3.5 Gas Capture and Fume Solidification System

All combustion gases captured, processed, classified:

**Stage 1-2 (Water/Organics):**
- Condenser: BFRP shell-and-tube, PEX-a cooling circuit (10°C)
- Activated carbon bed: Char from Stage 3 (recycled in-process)
- Organic vapor capture: >99.9%

**Stage 3 (Pyrolysis Gas):**
- CO/CH₄/H₂ routed to thermal oxidizer (800°C, catalytic) → CO₂ + H₂O
- CO₂ capture: NaHCO₃ slurry scrubber (CSMFAB000000000014)
- Char recycle: 50% to carbon bed, 50% to slug output

**Stage 4-5 (Metal Vapors):**
- Zn/Pb/Al vapor condensation: Temperature-gradient condenser (400→150°C)
- Condensate collected as metal oxide powder for re-melt

**Stage 6-7 (Precious/REE):**
- HEPA + activated carbon + plasma torch (2000°C) for final trace treatment
- Au/Ag/Pd capture efficiency: >99.99%

**Stage 8 (Mineral Fumes):**
- ZrO₂/SiO₂ fume: ceramic candle filter (CSMFAB000000000014)
- Final polish: Plasma torch → vitrified slag

---
