## 3. Machine Architecture — Full System Description

### 3.1 Primary Components

```
AEGIS-FORGE I — TOP-LEVEL ARCHITECTURE

   [ACOUSTIC PRE-PROCESSOR] --- Stage 0: Ultrasonic + LF mineral liberation
          |
          v
   [FEED HOPPER & SHREDDER] --- Input: recycled material, rock, ore, PCBs...
          |
          v
   [ZrB2-SiC DRUM ASSEMBLY] --- Primary thermal processing vessel
   |  Rotating UHTC ceramic drum (inner)                      |
   |  Induction coil bank (8 independently controlled zones)  |
   |  BFRP pressure vessel (outer)                            |
   |  8 × Circumferential material exit ports (temper-locked) |
   |  Argon/N2 atmosphere; 0.5-3 bar operating pressure       |
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
   |  CO2 capture (carbon sequestration or re-use as inert atmosphere)
   |  SO2, HCl scrubber (from toxic fume materials)
   |  Condensation stages: organics, metals vapor, water
   |  Plasma torch for final trace treatment
          |
          v
   [SLUG COOLING STATION] --- All material slugs solidified, stamped, catalogued
   |  Ceramic mold carousel (ZrO2 molds, 8-position rotary)
   |  Rapid quench N2 spray for microstructure control
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

**Port valve system:**
Eight circumferential discharge ports spaced 44.2° apart around the outer drum diameter. Each port is:
- Normally CLOSED by a spring-loaded ZrO₂ ceramic piston (no metal springs — PEEK CF40 wave springs)
- Temperature-activated: a bimetal-equivalent ceramic thermal actuator (Ti₃AlC₂ MAX Phase strip) expands differentially to open the port when the stage temperature is reached
- Centrifugal force then drives collected liquid material outward through the open port
- Port aperture: 12 mm diameter (sufficient for liquid metal flow at G-force)

**Drum liner material zones:**
The inner drum surface is NOT uniform — three material zones:
1. **Zone A (low-temp stages 1-3):** Si₃N₄ ceramic scratch coat — prevents plastic adhesion
2. **Zone B (mid-temp stages 4-6):** ZrB₂-SiC working surface — primary structural zone
3. **Zone C (high-temp stages 7-8):** Pure ZrO₂ thermal barrier coat — maximum temp stage

### 3.3 Induction Coil Bank

Eight independently controlled induction coil zones, each heating a 100 mm axial length of drum:

**Coil construction (using CSMFAB materials only):**
- Conductor: Copper tube (25mm OD) — the ONLY copper used in the machine (justified as winding — not a structural GIC-coupling element; isolated from drum)
- Insulation: Alumina ceramic sleeve (Al₂O₃ wrapped) over copper — same as CSMMECH motor insulation
- Water cooling: PEX-a water circuit through copper tube bore (CSMFAB000000000012)
- Coil housing: BFRP composite casing (Elium® matrix)
- Coil-to-drum gap: 15 mm (clearance for drum expansion + rotation)

**Induction frequency zones:**

| Stage/Temperature | Coil Frequency | Primary Material Being Heated | Power Level |
|---|---|---|---|
| Stages 1-2 (80-450°C) | 100 kHz | Plastic, light organics (indirect via air/N2) | 0-50 kW |
| Stage 3 (450-700°C) | 50 kHz | Zinc, lead (conductors begin coupling) | 50-80 kW |
| Stage 4-5 (660-900°C) | 10 kHz | Aluminum (optimal frequency for Al eddy coupling) | 80-150 kW |
| Stage 6 (1085-1200°C) | 5 kHz | Copper (deep penetration at low freq) | 100-200 kW |
| Stage 7 (1200-1600°C) | 2 kHz | Iron/steel (ferromagnetic — most efficient) | 150-350 kW |
| Stage 8 (1600-2200°C) | 1 kHz | Refractory mineral oxides | 200-500 kW |

Total installed induction power: **500 kW** (3-phase, 480V industrial supply)

**Induction power control:**
- Each zone uses a GaN-based variable frequency resonant inverter (CSMFAB materials: same GaN tech as Safe-Wave microwave 005, scaled to industrial power)
- PMMA optical fiber temperature feedback from FBG sensors embedded in drum wall (no metallic thermocouple touches process materials)
- PID control maintains each zone within ±5°C of target

---
