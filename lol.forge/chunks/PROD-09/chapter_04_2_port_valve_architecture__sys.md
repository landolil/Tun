## 2. Port Valve Architecture — System Overview

### 2.1 Eight-Port Configuration

The Aegis-Forge I drum features eight material exit ports arranged circumferentially at 44.2° spacing (360° / 8.14 = 44.2°, accounting for port width). Each port aligns axially with its corresponding thermal stage zone on the drum's outer surface.

```
PORT ARRANGEMENT — DRUM CROSS SECTION (PLAN VIEW)
┌─────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│         PORT 8 (2200°C) — Mineral Residue          PORT 1 (150°C) — Water   │
│              │                                                │              │
│              │                                                │              │
│     PORT 7 (1600°C) — Ferrous/REE              PORT 2 (450°C) — Polymer    │
│              │                                                │              │
│              │                                                │              │
│     PORT 6 (1200°C) — Copper/PM                PORT 3 (700°C) — Char        │
│              │                                                │              │
│              ▼                                                ▼              │
│      ┌─────────────────────────────────────────────────────────┐              │
│      │                                                         │              │
│      │    ZrB₂-SiC DRUM (600 mm OD, 800 mm L)                 │              │
│      │    35 mm wall, rotating at 0-500 RPM                   │              │
│      │                                                         │              │
│      │    PORT 5 (720°C) — Aluminum          PORT 4 (900°C) — Zn/Pb/Sn  │
│      │                                                         │              │
│      └─────────────────────────────────────────────────────────┘              │
│                                                                              │
│    44.2° spacing between adjacent ports                                     │
│    Port aperture: 12 mm diameter                                            │
│    Port centerline: 300 mm radius (drum outer surface)                     │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 2.2 Port-to-Stage Mapping

| Port | Stage | Target Temp (°C) | Primary Material | Actuation Temp (°C) | ΔT for Actuation |
|---|---|---|---|---|---|
| 1 | 1 | 80-150 | Water vapor | 150 | — (condenser drain) |
| 2 | 2 | 150-450 | Polymer melt | 450 | — (gravity drain) |
| 3 | 3 | 450-700 | Char exhaust | 700 | — (gas flow) |
| 4 | 4 | 420-900 | Zn/Pb/Sn/In | 156 (In) → 900 | 744°C range |
| 5 | 5 | 660-720 | Aluminum | 680 | 20°C window |
| 6 | 6 | 1085-1200 | Copper/PM | 1120 | 40°C window |
| 7 | 7 | 1200-1600 | Ferrous/REE | 1400 | 200°C window |
| 8 | 8 | 1600-2200 | Mineral residue | 1676 | 524°C window |

**Note:** Ports 1-3 operate as passive drains (condensate, gravity polymer, gas flow). Ports 4-8 are **active thermal-actuated valves** using Ti₃AlC₂ MAX phase bilayers.

### 2.3 Valve Assembly Cross-Section

```
VALVE ASSEMBLY — RADIAL CROSS SECTION (SINGLE PORT)
┌─────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│  DRUM INTERIOR (2200°C max, 5 bar N₂, 84.5 G at 500 RPM)                   │
│  ┌─────────────────────────────────────────────────────────────────────┐    │
│  │  MOLTEN MATERIAL POOL (centrifugally driven to wall)                │    │
│  │  ρ_liquid > ρ_solid → radial migration                              │    │
│  └─────────────────────────────────────────────────────────────────────┘    │
│                                    ↑                                        │
│                            CENTRIFUGAL FORCE                                │
│                                    ↑                                        │
│  ┌─────────────────────────────────────────────────────────────────────┐    │
│  │  PORT APERTURE (12 mm diameter)                                     │    │
│  │  ┌─────────────────────────────────────────────────────────────┐   │    │
│  │  │  ZIRCONIA PISTON (3Y-TZP ZrO₂)                              │   │    │
│  │  │  • 12 mm diameter × 25 mm length                            │   │    │
│  │  │  • Sealing face: 0.5 μm flatness, 45° seat angle           │   │    │
│  │  │  • Mass: 42 g (ρ = 6.05 g/cm³)                             │   │    │
│  │  └─────────────────────────────────────────────────────────────┘   │    │
│  │              ↑                    ↑                                │    │
│  │       PRESSURE FORCE         CENTRIFUGAL FORCE                     │    │
│  │       (5 bar × 113 mm²)      (mω²r at 500 RPM)                    │    │
│  │              ↓                    ↓                                │    │
│  │  ┌─────────────────────────────────────────────────────────────┐   │    │
│  │  │  Ti₃AlC₂ MAX PHASE ACTUATOR (bimetal-equivalent bilayer)   │   │    │
│  │  │  • Hot side: Ti₃AlC₂ (α = 9.2×10⁻⁶/K, E = 320 GPa)       │   │    │
│  │  │  • Cold side: ZrO₂ (α = 10.5×10⁻⁶/K, E = 210 GPa)        │   │    │
│  │  │  • Thickness: 0.5 mm each layer, 50 mm × 30 mm plate      │   │    │
│  │  │  • Deflection at 680°C ΔT: 3.6 mm (opens 12 mm port)      │   │    │
│  │  └─────────────────────────────────────────────────────────────┘   │    │
│  │              ↑                                                      │    │
│  │       THERMAL ACTUATION                                              │    │
│  │              ↑                                                      │    │
│  │  ┌─────────────────────────────────────────────────────────────┐   │    │
│  │  │  PEEK CF40 WAVE SPRING (return force)                      │   │    │
│  │  │  • 12 N/mm spring rate, 300°C continuous rating            │   │    │
│  │  │  • Preload: 50 N (holds piston closed at 5 bar)            │   │    │
│  │  └─────────────────────────────────────────────────────────────┘   │    │
│  └─────────────────────────────────────────────────────────────────────┘    │
│                                    ↑                                        │
│  DRUM WALL (ZrB₂-SiC, 35 mm)                                              │
│                                    ↑                                        │
│  EXTERIOR: BFRP VESSEL, AEROGEL GAP, INDUCTION COILS                       │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 2.4 Force Balance at Port

**Closing Forces (Valve Sealed):**
- N₂ Pressure Force: F_p = P × A = 5 bar × 113 mm² = **565 N**
- PEEK Spring Preload: F_s = **50 N**
- **Total Closing Force: 615 N**

**Opening Forces (Valve Actuated):**
- Thermal Actuation Force: F_ta = (E₁α₁ - E₂α₂) × ΔT × A × t / L
  - For Ti₃AlC₂/ZrO₂ bilayer: **~2,400 N at 680°C ΔT**
- Centrifugal Ejection Force (on liquid metal): F_c = ρ_liquid × V × ω² × r
  - For Al (ρ=2375 kg/m³ at 700°C), V=200 cm³: **~1,800 N at 300 RPM**
- **Total Opening Force: ~4,200 N**

**Safety Factor: 4,200 / 615 = 6.8×** — Valve opens decisively when actuated.

---
