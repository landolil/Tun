## 17. Downstream Integration — Port-to-Mold Interface

### 17.1 Geometric Interface

```
PORT-TO-MOLD INTERFACE
┌─────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│  DRUM PORT EXIT                                    CAROUSEL MOLD ENTRY       │
│  ┌─────────────────────┐                          ┌─────────────────┐       │
│  │  12 mm aperture     │                          │  14 mm chamfer  │       │
│  │  45° internal cham. │        5 mm GAP          │  (lead-in)      │       │
│  └─────────────────────┘                          └─────────────────┘       │
│         │                                                   │                │
│         ▼                                                   ▼                │
│  ┌─────────────────────────────────────────────────────────────────────┐    │
│  │  N₂ PURGE NOZZLE (PEEK CF40) — 2 SLPM continuous during fill        │    │
│  │  Prevents oxidation, cools port lip, clears droplets                │    │
│  └─────────────────────────────────────────────────────────────────────┘    │
│                                                                              │
│  ALIGNMENT TOLERANCE:                                                       │
│  • Radial: ±0.1 mm (FBG verified at assembly)                              │
│  • Axial: ±0.2 mm (carousel position)                                      │
│  • Angular: ±0.05° (piezo indexer)                                         │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 17.2 Handoff Timing Diagram

```
TIME (seconds)
0.0    Stage dwell complete → Actuator thermal trigger
2.0    Actuator reaches 50% deflection
5.0    Actuator reaches 90% deflection (3.2 mm)
8.0    Actuator fully open (3.6 mm) → Centrifugal flow begins
9.0    Mold fills (1.1 s for Al) → Flow stops
10.0   Drain pause (30 s) → Residual metal clears
40.0   N₂ purge pulse (2 s, 10 SLPM)
42.0   Actuator cooling begins (drum temp ramp to next stage)
60.0   Actuator 50% closed
90.0   Actuator fully closed → Seal verified (FBG)
95.0   Stage ramp to next temperature begins
```

**Total Valve Open Time: ~40 seconds** (within 8-minute position cycle)

---
