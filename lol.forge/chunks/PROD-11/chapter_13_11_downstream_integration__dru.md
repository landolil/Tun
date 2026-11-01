## 11. Downstream Integration — Drum Feed Gate & Acoustic Handoff

### 11.1 Drum Feed Gate Interface

The feed preparation system terminates at the **drum feed gate** — a PEEK CF40-sealed, ZrO2-ceramic-lined transition that feeds the ZrB2-SiC drum entry port.

```
INTERFACE DETAIL:

[PRE-DRY EXIT / MOISTURE GATE PASS]
        |
        v
[TRANSITION CHUTE] (BFRP, 45°, 800mm wide)
        |
        |  FBG moisture sensor (final verification)
        |  FBG temperature sensor (must be <40°C)
        |  Particle size gate (optical, PMMA POF)
        |
        v
[DRUM FEED GATE ASSEMBLY]
    ┌─────────────────────────────────────┐
    │  GATE BODY: BFRP/Elium® filament wound  │
    │  SEAL: PEEK CF40 face + ZrO2 ceramic    │
    │  ACTUATION: KNbO3-BaTiO3 piezo stack    │
    │  OPEN TIME: 200 ms (full stroke)        │
    │  CLOSE TIME: 150 ms (spring return)     │
    │  CYCLE LIFE: 500,000 cycles             │
    │  LEAK RATE: <1 sccm N2 at 3 bar         │
    └─────────────────────────────────────┘
        |
        v
[ZrB2-SiC DRUM ENTRY PORT] (12 mm × 600 mm slot, Ti3AlC2 thermal valve)
```

**Gate control logic (synchronized with drum rotation):**
```
Drum position encoder (FBG, 0.01° resolution) → Feed gate controller
    |
    |  IF drum port aligned (within ±2°)
    |  AND moisture < 15%
    |  AND particle size < 150 mm (verified)
    |  AND drum pressure < 3 bar
    |  THEN: OPEN gate for calculated dwell time
    |
    |  Dwell time = (batch_mass / 8_ports) / (feed_rate × port_fraction)
    |  Typical: 2.5 sec per port per batch
    |
    |  Gate closes → N2 purge (5 sec) → Next port alignment
```

### 11.2 Acoustic Pre-Chamber → Drum Stage 0 Handoff

The acoustic pre-chamber (Station 3) is the **exact same physics** as the in-drum Stage 0 acoustic liberation — just at ambient temperature and atmospheric pressure.

**Continuity of liberation:**
- Pre-chamber LF (20-200 Hz): Macro-fracture of rock, PCB delamination
- Pre-chamber US (40 kHz): Grain boundary cavitation in moist particles
- Drum Stage 0 LF (20-500 Hz, higher power): Completes fracture at temperature
- Drum Stage 0 US (40 kHz, coupled): Cavitation in molten organics/metals

**Data handoff (PMMA POF, real-time):**
| Parameter | Pre-Chamber Output | Drum Stage 0 Input |
|-----------|-------------------|-------------------|
| Liberation index (LI) | 0.3-0.5 (partial) | Target: 0.8-0.95 |
| Particle size dist. | Rosin-Rammler (x₀=45, n=1.3) | Same distribution |
| Moisture content | <15% (verified) | <15% (verified) |
| Temperature | 25°C (ambient) | 25°C → 150°C ramp |
| Acoustic energy delivered | 50 kJ/ton | 200 kJ/ton (additional) |

**Control implication:** Drum Stage 0 dwell time is **reduced** based on pre-chamber liberation index:
- LI > 0.4: Stage 0 dwell = 10 min (vs. 15 min baseline)
- LI 0.2-0.4: Stage 0 dwell = 12 min
- LI < 0.2: Stage 0 dwell = 15 min + alert (pre-chamber fault)

### 11.3 Ferrous Bypass → Stage 7 Integration

The ferrous fraction captured at Station 1 (magnet belt) bypasses shredder and acoustic pre-chamber entirely. It feeds directly to the **Stage 7 buffer**.

```
FERROUS BYPASS FLOW:

[MAGNET BELT DISCHARGE] → [BFRP CHUTE, 45°]
        |
        |  FBG mass flow sensor (correlation: belt speed × load)
        |  Composition: >95% Fe/steel, <2% non-ferrous
        |
        v
[STAGE 7 BUFFER HOPPER] (BFRP, 1 m³ live capacity)
        |
        |  Level: FBG pressure sensor (hydrostatic, N2 purge)
        |  Agitation: KNbO3-BaTiO3 ultrasonic vibrator (prevents bridging)
        |
        v
[STAGE 7 FEED GATE] → [DRUM PORT 7] (1600°C zone)
        |
        |  Synchronized with drum Port 7 thermal valve opening
        |  Feed rate: 200-400 kg/batch (ferrous fraction)
        |  Port 7 dwell: 35 min (Stage 7, 1200-1600°C)
```

**Why direct to Stage 7?** Ferrous melts at 1538°C. Feeding at Stage 1 (150°C) would:
- Dilute thermal cascade (cold steel absorbs heat)
- Oxidize in drum atmosphere (Fe + H2O → Fe3O4 + H2)
- Contaminate Al/Cu slugs (Fe particles in non-ferrous melt)

**Stage 7 buffer sizing:** 1 m³ = 7.8 ton steel (ρ=7850 kg/m³). At 40% ferrous in 4,000 ton/yr = 1,600 ton/yr ferrous = 200 ton/batch × 8 batches. Buffer holds 1 batch → continuous operation.

### 11.4 Control System Integration — All-Optical

**Signal mapping (PMMA POF, WDM multiplexed):**

| Signal | Source | Destination | Wavelength | Protocol |
|--------|--------|-------------|------------|----------|
| Moisture % | Capacitive sensor | Drum PLC | 660 nm | Analog intensity |
| Particle size (P80) | Sieve analyzer | Drum PLC | 780 nm | Digital (Manchester) |
| Vibration (FBG) | Rotor FBGs | Health monitor | 850 nm | FBG interrogator |
| Temperature (FBG) | Chamber FBGs | Drum PLC | 1310 nm | FBG interrogator |
| E-stop status | Safety PLC | All systems | 1550 nm | Safety bus (SIL-3) |
| Gate position | Feed gate encoder | Drum PLC | 660 nm | Quadrature |
| Ferrous flow | Magnet belt FBG | Stage 7 PLC | 780 nm | Digital |
| N2 pressure | Chamber transducers | Drum PLC | 1310 nm | Analog |
| X-ray battery detect | X-ray system | Eject controller | 1550 nm | Safety bus |

**Zero copper conductors** — complete dielectric isolation from drum control system. The only "wire" crossing the boundary is light in PMMA fiber.

