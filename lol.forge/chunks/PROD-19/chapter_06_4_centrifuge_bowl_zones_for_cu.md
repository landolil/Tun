## 4. Centrifuge Bowl Zones for Cu/PM Separation

### 4.1 Zone Architecture — 4-Zone Design for Stage 6

| Zone | Axial Position | Function | Temperature | RPM | Key Features |
|---|---|---|---|---|---|
| **Z6-1 (Charge/Preheat)** | 500-575 mm | Charge feed, preheat to 1085°C | 1085°C | 250 | Feed inlet, FBG monitoring, POF level |
| **Z6-2 (Melt/Dwell)** | 575-625 mm | Complete melting, PM dissolution | 1150°C | 250 | 30 min dwell, XRF composition, gas analysis |
| **Z6-3 (Drainage/Anode)** | 625-675 mm | Cu film drainage to Port 6/6A | 1180°C | 250 | Port 6 (continuous), Port 6A (anode molds) |
| **Z6-4 (Transition)** | 675-700 mm | Residual Cu clearance, Stage 7 prep | 1200°C | 250 | Slag conditioning, atmosphere switch prep |

### 4.2 Zone 6-1: Charge and Preheat

**Feed Introduction:**
- Feed from Stage 5 enters via Port 5→6 transfer chute (ZrO₂ lined, 5° decline)
- Feed rate controlled by vibratory feeder (KNbO₃-BaTiO₃ ultrasonic, 10 kg/min)
- Real-time mass flow: FBG force sensors on feed chute
- **Feed composition verification:** Inline LIBS at feed entry (PROD-08 LIBS head)

**Preheat Profile:**
```
T(t) = 720 + (1085-720) × (1 - exp(-t/τ)), τ = 300 s
```
- Target: 1085°C at t=15 min
- Power: 100 kW ramp to 150 kW
- Atmosphere: 5% H₂/95% N₂ established before feed entry

### 4.3 Zone 6-2: Melt and Dwell — The PM Dissolution Reactor

**Process Parameters:**
- Temperature: 1150°C ±5°C (superheat 65°C above MP)
- Duration: 30 minutes
- RPM: 250 (G=17.4)
- Atmosphere: 5% H₂/95% N₂ at 1.2 bar

**PM Dissolution Kinetics:**
```
dm_PM/dt = k_diss × A_PM × (C_sat - C_bulk)
k_diss = 2D/δ_diff  (mass transfer coefficient)
D_Au_in_Cu = 1.2×10⁻⁸ m²/s at 1150°C
δ_diff = √(D×t) = 0.0015 m at t=1800 s
```
- 100 μm PM particle dissolves in ~30 seconds
- All PMs fully dissolved within first 5 minutes of dwell
- **Remaining 25 minutes: homogenization, gas equilibration, anode prep**

**In-Situ Monitoring (Zone 6-2):**
| Sensor | Parameter | Frequency | Action on Deviation |
|---|---|---|---|
| **FBG (48 sensors)** | Wall temperature | 1 kHz | PID power adjustment |
| **POF Level (2 sensors)** | Melt height | 10 Hz | Feed rate adjustment |
| **Inline XRF** | Cu, Ag, Au, Pd in melt | 1/min | Grade verification |
| **Gas Analyzer (MS)** | H₂, H₂O, SO₂, AsH₃, SbH₃ | 10 Hz | Atmosphere control |
| **Mass Spectrometer** | Volatile PM species | 1 Hz | Slime composition prediction |

### 4.4 Zone 6-3: Anode Casting — Continuous Cast/Cool Cycle

**Anode Casting Carousel (4 positions):**
```
ANODE CASTING CAROUSEL
┌─────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│    POSITION 1: FILL                                                         │
│    ┌─────────────────┐                                                      │
│    │  ZrO₂ MOLD      │  ◄── Port 6A (1180°C setpoint)                      │
│    │  50 kg capacity │       Continuous Cu stream                           │
│    │  FBG × 6        │       Flow controlled by mold FBG temp               │
│    └────────┬────────┘                                                      │
│             │                                                                │
│    POSITION 2: SOLIDIFY                                ROTATION: 90°/step    │
│    ┌─────────────────┐                              8 min per position       │
│    │  N₂ Quench      │  ◄── 20 SLPM N₂ at 4 bar                             │
│    │  Controlled cool│       Target: 50°C/min → fine grain                  │
│    └────────┬────────┘                                                      │
│             │                                                                │
│    POSITION 3: DEMOLD/SLIME COLLECTION                                      │
│    ┌─────────────────┐                                                      │
│    │  Ejector pins   │  ◄── PEEK CF40, 500 N × 4                           │
│    │  Slime catch    │       ZrO₂ tray, N₂ purge                            │
│    │  Stamp + LIBS   │       Traceability per PROD-08                       │
│    └────────┬────────┘                                                      │
│             │                                                                │
│    POSITION 4: MOLD PREP                                                    │
│    ┌─────────────────┐                                                      │
│    │  N₂ purge       │  ◄── 30 sec purge                                    │
│    │  Thermal equal. │       Return to fill temp (~200°C)                   │
│    └─────────────────┘                                                      │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

**Anode Specifications (per PROD-08):**
- Mold cavity: 100 × 50 × 40 mm = 200 cm³ × 4 inserts = 200 cm³ effective
- Anode mass: 50 kg (Cu ρ=8.96 g/cm³ → 5,580 cm³ total)
- Anode dimensions: 100 × 500 × 112 mm (fits standard electrolytic cell)
- Surface: Cast finish (no machining required for electrorefining)
- **Stamp format:** BATCH-YYYYMMDD-NNN-6-1150-SSSS (PROD-08 Section 4.1)

**Solidification Control (Chvorinov):**
```
t_solid = B × (V/A)²
B (ZrO₂ mold, Cu) = 1.8 min/cm²
V = 5,580 cm³, A = 2×(100×500 + 100×112 + 500×112) = 1,544 cm²
V/A = 3.6 cm
t_solid = 1.8 × 3.6² = 23 min theoretical
```
- Practical: 6 min with N₂ quench (PROD-08 Table 3.3)
- Microstructure: Columnar-to-equiaxed transition (CET) at center
- **CET position controlled by N₂ flow rate — target 60% columnar for anode strength**

### 4.5 Zone 6-4: Transition to Stage 7

**Residual Clearance:**
- After anode casting complete (4 anodes = ~200 kg Cu), residual Cu < 2 kg
- Power taper: 250 → 100 → 50 → 0 kW over 5 min
- Temperature: 1150 → 1200°C (Stage 7 entry)
- Atmosphere: 5% H₂/95% N₂ maintained (Stage 7 uses same)

**Slag Conditioning:**
- Mineral residue (Fe, Ni, Co, CaO, SiO₂, REE oxides) heated to 1200°C
- CaO addition (if needed) for basicity: B = CaO/SiO₂ = 1.2 target
- **NO flux added for Cu** — Cu self-fluxing; CaO only for slag

**Stage 7 Handoff:**
- Drum contains: Fe 80 kg, Ni/Co 10 kg, Minerals 60 kg, Cu residue <2 kg
- Stage 7 induction (Zone 7, 2 kHz) takes over heating
- Port 6/6A sealed at 1200°C (Ti₃AlC₂/ZrO₂ valves)

---
