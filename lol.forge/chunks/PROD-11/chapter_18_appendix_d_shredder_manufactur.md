## Appendix D: Shredder Manufacturing Drawings

### D.1 Rotor Assembly Drawing

```
ROTOR ASSEMBLY — PROD-11-SHD-001
=====================================
SHEET 1 OF 3

SECTION A-A (ROTOR CROSS-SECTION)
=================================
        [Si3N4 SHAFT Ø80mm]
              │
              ▼
    ┌─────────────────────┐
    │ BFRP CORE Ø600mm    │  ← Pultruded tube, 20mm wall
    │ 1200mm LENGTH       │
    └─────────────────────┘
              │
              ▼
    ┌─────────────────────┐
    │ 32 BLADE SLOTS      │  ← 45° helix, 8 rows × 4
    │ M12 PEEK BOLTS      │
    └─────────────────────┘
              │
              ▼
    ┌─────────────────────┐
    │ Si3N4 BEARING JOURNAL│  ← Ø120mm, 80mm wide
    └─────────────────────┘

DIMENSIONS:
- Overall length: 1450mm (including shaft ends)
- Rotor diameter: 800mm (over blades)
- Core diameter: 600mm
- Shaft diameter: 80mm (Si3N4)
- Blade bolt circle: 720mm
- Helix angle: 45° (right-hand)
- Row spacing: 150mm axial

TOLERANCES:
- Shaft runout: <0.01mm (Si3N4 precision grind)
- Blade bolt circle: ±0.05mm
- Helix angle: ±0.5°
- Row position: ±0.25mm
- Dynamic balance: G2.5 @ 300 RPM

MATERIALS:
- Shaft: Si3N4 (CSMFAB Mat Study I), HIP'd
- Core: BFRP/Elium® pultruded tube (CSMFAB000000000010)
- Blades: Basalt/Elium® UD (Mat Study II, in-house)
- Bolts: PEEK CF40 M12 (Mat Study IV)
- Bearings: Si3N4 hybrid ceramic (CSMMECH000000001)
```

### D.2 Blade Detail Drawing

```
BLADE DETAIL — PROD-11-SHD-002
===============================
SHEET 2 OF 3

BLADE PROFILE (UNDEFORMED)
==========================
       50mm
    ┌─────────────────┐
    │  0° PLY (4)     │  ← 4800 tex basalt roving
    │ ±45° PLY (4)    │
    │  90° PLY (2)    │
    └─────────────────┘
       20mm WIDE

EDGE GEOMETRY:
    Primary bevel: 25° included, 2mm land
    Micro-bevel: 35°, 0.5mm
    h-BN coating: 50μm PVD

MOUNTING:
    4 × M12 PEEK CF40 bolts per blade
    Bolt pattern: 2 per end, 100mm spacing
    Torque: 25 Nm (lubricated with PTFE paste)
    Washer: PEEK CF40, 2mm thick

WEAR INDICATOR:
    h-BN tracer layer at 6mm depth
    White layer exposed = replacement due
```

### D.3 Housing and Liner Layout

```
HOUSING ASSEMBLY — PROD-11-SHD-003
===================================
SHEET 3 OF 3

HOUSING DIMENSIONS:
- Internal diameter: 1000mm
- Internal length: 1250mm
- Wall thickness: 25mm (BFRP/Elium® filament wound)
- Flange thickness: 30mm (BFRP)
- Bolt circle: 1150mm, 24 × M16 PEEK CF40

LINER PANELS (24 total):
- 12 per side (upper/lower housing)
- Each: 600mm × 400mm × 12mm PEEK CF40
- Mounting: 8 × M8 PEEK CF40 bolts
- Wear indicator: h-BN at 6mm

SEAL ARRANGEMENT:
- Drive end: ZrO2 face seal + PEEK spring (CSMFAB000000000016)
- Non-drive: ZrO2 face seal + PEEK spring
- Pressure rating: 10 bar, 2000 RPM
```

---
