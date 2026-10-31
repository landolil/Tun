## 13. Port Valve Integration with Drum Liner Zones

### 13.1 Axial Alignment with Thermal Zones

The drum's three liner zones create distinct thermal environments for each port:

```
DRUM AXIAL ZONES AND PORT ALIGNMENT
┌─────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│  ZONE A: Si₃N₄ Scratch Coat (0-250 mm axial)                               │
│  ┌─────────────────────────────────────────────────────────────────────┐    │
│  │  PORT 1 (Water)          PORT 2 (Polymer)          PORT 3 (Char)   │    │
│  │  0-150°C                 150-450°C                 450-700°C       │    │
│  │  Passive drain           Gravity drain             Gas exhaust     │    │
│  │  Si₃N₄ non-wetting       Si₃N₄ non-stick           Si₃N₄ erosion  │    │
│  └─────────────────────────────────────────────────────────────────────┘    │
│                                    │                                        │
│  ZONE B: ZrB₂-SiC Working Surface (250-550 mm)                             │
│  ┌─────────────────────────────────────────────────────────────────────┐    │
│  │  PORT 4 (Zn/Pb/Sn/In)    PORT 5 (Aluminum)         PORT 6 (Cu/PM)  │    │
│  │  420-900°C               660-720°C                 1085-1200°C     │    │
│  │  ACTIVE VALVES           ACTIVE VALVE              ACTIVE VALVE    │    │
│  │  Indium First Strategy   Pure Al Window            Deep Penetration│    │
│  └─────────────────────────────────────────────────────────────────────┘    │
│                                    │                                        │
│  ZONE C: 3Y-TZP ZrO₂ Thermal Barrier (550-800 mm)                          │
│  ┌─────────────────────────────────────────────────────────────────────┐    │
│  │  PORT 7 (Fe/REE)         PORT 8 (Mineral Residue)                  │    │
│  │  1200-1600°C             1600-2200°C                               │    │
│  │  ACTIVE VALVE            ACTIVE VALVE                              │    │
│  │  Ferromagnetic Coupling  Zircon Dissociation                       │    │
│  └─────────────────────────────────────────────────────────────────────┘    │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 13.2 Thermal Gradient at Port Seats

Each port seat experiences a radial thermal gradient through the drum wall:

```
Radial Temperature Profile (at Port 5, 680°C stage):
┌─────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│  Drum ID (300 mm radius):     680°C  ← Molten Al pool                      │
│  │                            │                                            │
│  │  ZrB₂-SiC Wall (35 mm)     │                                            │
│  │  k = 45 W/m·K              │                                            │
│  │                            ▼                                            │
│  Drum OD (335 mm radius):     620°C  ← Port seat location                  │
│  │                            │                                            │
│  │  Actuator Hot Side (Ti₃AlC₂) 680°C (conductively coupled to drum)      │
│  │  Actuator Cold Side (ZrO₂)    120°C (aerogel insulated)                │
│  │  ΔT across bilayer:         560°C (effective)                          │
│  │                            │                                            │
│  Aerogel Gap (50 mm):         120°C → 200°C (outer surface)               │
│  BFRP Vessel:                 200°C max                                   │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

**Heat Flux at Port Seat:**
```
q = k × ΔT / thickness = 45 × (680-620) / 0.035 = **77,000 W/m² = 77 W/cm²**
```

**Actuator Cooling:** The cold side (ZrO₂) is insulated by aerogel but conductively coupled to the drum at the mounting bolts. A **ZrO₂ thermal break washer** (3 mm thick) at each bolt reduces heat leak to <5 W per actuator.

### 13.3 Liner-Port Material Compatibility

| Port | Liner Zone | Liner Material | Compatibility Notes |
|---|---|---|---|
| 1 | A | Si₃N₄ | Water non-wetting, no corrosion |
| 2 | A | Si₃N₄ | Polymer non-stick, char abrasion resistance |
| 3 | A | Si₃N₄ | Char gas erosion, thermal shock resistance |
| 4 | B | ZrB₂-SiC | Zn/Pb/Sn corrosion resistance, thermal conductivity |
| 5 | B | ZrB₂-SiC | Al non-wetting (contact angle >120°), best thermal match |
| 6 | B | ZrB₂-SiC | Cu corrosion (forms Cu₂O), high thermal conductivity |
| 7 | C | 3Y-TZP ZrO₂ | Fe/steel slag resistance, thermal barrier |
| 8 | C | 3Y-TZP ZrO₂ | Silicate slag resistance, max temp capability |

**Port Seat Inserts:** Each port uses a **replaceable ZrO₂ seat insert** (12 mm ID × 18 mm OD × 8 mm) pressed into the liner. This isolates the actuator/piston seal from liner wear. Insert replacement: 30 min per port during 10,000 batch overhaul.

---
