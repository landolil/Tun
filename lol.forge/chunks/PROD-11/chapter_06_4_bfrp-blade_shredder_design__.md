## 4. BFRP-Blade Shredder Design — Detailed Engineering

### 4.1 Rotor Assembly

The shredder rotor is a **monolithic BFRP structure** — no steel shaft, no steel end plates, no metallic fasteners in the cutting zone.

```
ROTOR CONSTRUCTION:

    [DRIVE END]                           [IDLER END]
         |                                      |
         v                                      v
    ┌──────────────────────────────────────────────┐
    │  BFRP ROTOR BODY (filament wound, 800mm OD)  │
    │  - Basalt/Elium® unidirectional, ±15°/90°    │
    │  - Wall thickness: 25 mm                     │
    │  - Length: 600 mm                            │
    │                                              │
    │  32 BLADE SLOTS (milled post-wind)           │
    │  - Helical stagger: 11.25° per row           │
    │  - 8 rows × 4 positions = 32 blades          │
    │  - Blade root: dovetail, BFRP-to-BFRP bond   │
    │                                              │
    │  CERAMIC SHAFT JOURNALS (integral)           │
    │  - Si3N4 ceramic, ground to 50mm journal     │
    │  - Press-fit into rotor body (interference)  │
    └──────────────────────────────────────────────┘

BEARINGS (both ends):
    - Si3N4 ceramic balls (Ø25mm)
    - PEEK CF40 cage (self-lubricating)
    - ZrO2 races (press-fit into BFRP housing)
    - No lubrication (dry running to 800°C)
    - L10 life: 50,000 hours at 120 RPM
```

**Rotor dynamics:**
- Critical speed (1st bending mode): 480 RPM (well above 120 RPM operating)
- Unbalance limit: G2.5 per ISO 1940 (verified by spin test)
- Gyroscopic effects: Negligible at 120 RPM (L/D = 0.75)

### 4.2 BFRP Blade Design & Manufacturing

**Blade specification:**
| Parameter | Value |
|-----------|-------|
| Length (radial) | 180 mm (from rotor OD) |
| Chord (axial) | 40 mm |
| Thickness (root) | 8 mm |
| Thickness (tip) | 4 mm (tapered) |
| Leading edge | Hooked, 5 mm radius |
| Relief angle | 15° |
| Material | Basalt/Elium® UD, 60% FVF |
| Layup | [0°/±15°/90°]₂s symmetric |
| Bond to rotor | Elium® structural adhesive + mechanical dovetail |
| Mass per blade | 0.42 kg |
| Total blade mass | 13.4 kg |

**Manufacturing process (in-house, VARTM):**
1. **Preform:** Basalt UD roving cut to blade profile, stacked per layup
2. **Dovetail insert:** 3D-printed PEEK CF40 dovetail root placed in mold
3. **VARTM infusion:** Elium® 188 resin, vacuum 0.9 bar, 45 min cure at 25°C
4. **Post-cure:** 80°C × 2 hrs (maximizes Tg to 110°C)
5. **Machining:** CNC trim to final profile, leading edge radius
6. **Proof test:** 3-point bend to 1.5× design load (18 kN), hold 60 sec
7. **Installation:** Bonded into rotor slots with Elium® adhesive + mechanical lock

**Blade replacement protocol:**
- Blades are **individually replaceable** — no rotor rebalancing needed (blades mass-matched ±2%)
- Replacement interval: 500 ton throughput (Category A/B mix) or 12 months
- Change time: 2 hours (rotor in place, quick-release blade clamps)
- Blade cost: $85 each (in-house VARTM) vs. $350 commercial hardened steel

### 4.3 Chamber Liner — PEEK CF40 Wear System

The shredder chamber experiences high-velocity particle impact (tip speed = 5 m/s at 120 RPM). Steel liners would contaminate; ceramic liners fracture. PEEK CF40 is the optimal compromise:

| Property | PEEK CF40 Value | Relevance |
|----------|-----------------|-----------|
| Tensile strength | 220 MPa | Withstands particle impact |
| Compressive strength | 280 MPa | Resists indentation |
| Wear rate (vs. steel shot) | 0.08 mm³/N·m | 10× better than neat PEEK |
| Service temperature | 260°C continuous | Exceeds shredder thermal load |
| Thermal conductivity | 0.25 W/m·K | Thermal insulator (protects BFRP rotor) |
| Electrical resistivity | >10¹⁰ Ω·m | Dielectric, no GIC coupling |
| Chemical resistance | Excellent | Handles battery electrolyte, oils |

**Liner configuration:**
- 12 segments (6 top, 6 bottom), each 100 mm axial × 800 mm arc
- Segment thickness: 12 mm (wear allowance 8 mm = 67% life)
- Mounting: BFRP studs (integral to chamber) + PEEK CF40 nuts
- Replacement: Individual segments, 30 min per segment
- Total liner mass: 180 kg
- Liner life: 2,000 ton throughput (4× blade life)

### 4.4 Drive System — Ultrasonic Piezoelectric Motor

**Why not electric motor?** A conventional motor requires:
- Copper windings (GIC antenna)
- Steel laminations (ferromagnetic, GIC coupling)
- Bearings (steel balls, lubrication)
- Cooling (water jackets, seals)

**KNbO3-BaTiO3 ultrasonic motor advantages:**
- Zero copper, zero steel, zero lubrication
- Direct drive (no gearbox) — 120 RPM native speed
- Holding torque at power-off (self-locking)
- Efficiency: 85% (electrical to mechanical)
- Mass: 18 kg (vs. 120 kg for equivalent induction motor + gearbox)

| Parameter | Specification |
|-----------|---------------|
| Motor type | Travelling-wave ultrasonic piezoelectric |
| Stator material | KNbO3-BaTiO3 (x=0.3) ceramic ring, Ø200mm |
| Rotor interface | Si3N4 ceramic friction layer |
| Operating frequency | 42 kHz (resonant) |
| Input voltage | 48V DC (from LiFePO4 buffer) |
| Power | 15 kW continuous, 25 kW peak |
| Torque | 12,000 Nm (stall), 8,000 Nm continuous |
| Speed control | Frequency modulation ±2 kHz |
| Position resolution | 0.01° (encoder on output) |
| Mass | 18 kg |


---
