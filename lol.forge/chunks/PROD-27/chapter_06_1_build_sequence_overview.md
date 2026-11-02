## 1. Build Sequence Overview

### 1.1 Assembly Architecture — 14 Major Assemblies

The Aegis-Forge I is manufactured as 14 major assemblies across three parallel work streams that converge at System Integration (Assembly 8). Each assembly is a self-contained manufacturing unit with defined inputs, processes, outputs, and acceptance criteria. The three streams — Drum, Vessel, Electronics — share only the final integration fixture and test floor.

| Assembly | Name | Stream | Duration | Critical Path | Key Dependencies |
|---|---|---|---|---|---|
| A-01 | ZrB₂-SiC Drum Body Flash Sinter | Drum | 4 weeks | **YES** | Powder supply, graphite tooling |
| A-02 | Drum Liner Zone Fabrication (A/B/C) | Drum | 3 weeks | No | Ceramic tiles, pin stock |
| A-03 | Drum Liner Installation & FBG Embed | Drum | 2 weeks | **YES** | A-01, A-02, FBG arrays |
| A-04 | Port Valve Sub-assemblies (×8) | Drum | 3 weeks | **YES** | Ti₃AlC₂, ZrO₂, PEEK CF40 |
| A-05 | Ceramic Bearing System | Drum | 2 weeks | No | Si₃N₄ races, ZrO₂ balls |
| A-06 | BFRP Vessel Filament Winding | Vessel | 5 weeks | **YES** | Basalt roving, Elium® resin, mandrel |
| A-07 | Vessel Aerogel Infusion & Glaze | Vessel | 2 weeks | **YES** | A-06, aerogel, YInMn Blue |
| A-08 | PEEK CF40 Flange Fabrication (×2) | Vessel | 2 weeks | **YES** | PEEK CF40, ZrO₂ lugs |
| A-09 | Coil Bank Manufacturing (8 zones) | Electronics | 6 weeks | **YES** | Cu tube, Al₂O₃, PEX-a, BFRP |
| A-10 | Power Electronics Module Assembly (×8) | Electronics | 4 weeks | **YES** | GaN, gate drivers, caps, BFRP |
| A-11 | TSN/POF Network Fabrication | Electronics | 2 weeks | No | PMMA POF, BFRP switches |
| A-12 | Frame & Carousel Manufacturing | Vessel | 3 weeks | No | BFRP pultrusion, Si₃N₄ bearings |
| A-13 | System Integration & Loop Closure | All | 4 weeks | **YES** | All prior assemblies |
| A-14 | Factory Acceptance Test (FAT) | All | 3 weeks | **YES** | A-13 complete |

**Total Critical Path: 18 months (78 weeks)**

### 1.2 Parallel Stream Gantt — Critical Path Highlighted

```
MONTH:        1    2    3    4    5    6    7    8    9   10   11   12   13   14   15   16   17   18
┌──────────────────────────────────────────────────────────────────────────────────────────────────────┐
│ DRUM STREAM                                                                                          │
│ A-01 Flash Sinter          ████████                                                                 │
│ A-02 Liner Fabrication            ███████                                                           │
│ A-03 Liner Install + FBG                 ████████████                                                │
│ A-04 Port Valves                   ████████████████                                                  │
│ A-05 Bearings                              ██████████                                                │
├──────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ VESSEL STREAM                                                                                        │
│ A-06 Filament Winding       ████████████████████████████████████                                     │
│ A-07 Aerogel + Glaze                                                  ████████████                   │
│ A-08 Flanges                          ████████████████████                                           │
│ A-12 Frame & Carousel                        ████████████████████████                                │
├──────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ ELECTRONICS STREAM                                                                                   │
│ A-09 Coil Bank              ██████████████████████████████████████████████████████████████████████████ │
│ A-10 Power Electronics Modules                      ████████████████████████████████████████████████ │
│ A-11 TSN/POF Network                                                 ████████████████████████████████ │
├──────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ INTEGRATION & TEST                                                                                   │
│ A-13 Integration                                                                     ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████
│ A-14 FAT                                                                                      ████████████████████████████████ ████████████████████████████████ ████████████████████████████████
└──────────────────────────────────────────────────────────────────────────────────────────────────────┘
```

### 1.3 Stream Synchronization Gates

Three synchronization gates enforce alignment between parallel streams:

| Gate | Timing | Requirement | Verification |
|---|---|---|---|
| **SG-1: Drum Ready** | Week 12 | A-01, A-02, A-03, A-04, A-05 complete; drum UT baseline passed | CMM + UT report |
| **SG-2: Vessel Ready** | Week 16 | A-06, A-07, A-08 complete; vessel hydrotest 15 bar passed | Hydrotest certificate |
| **SG-3: Electronics Ready** | Week 20 | A-09, A-10, A-11 complete; all 8 inverters resonance tested | Resonance test reports |
| **SG-4: Integration Start** | Week 21 | All three streams at ready gates; integration fixture calibrated | Fixture CMM report |

### 1.4 Critical Path Float Analysis

| Assembly | Duration | Early Start | Late Start | Float | Risk Level |
|---|---|---|---|---|---|
| A-01 Drum Sinter | 4 wk | W1 | W1 | **0 wk** | **CRITICAL** |
| A-03 Liner Install | 2 wk | W10 | W10 | **0 wk** | **CRITICAL** |
| A-04 Port Valves | 3 wk | W5 | W7 | 2 wk | HIGH |
| A-06 Vessel Winding | 5 wk | W1 | W1 | **0 wk** | **CRITICAL** |
| A-07 Aerogel/Glaze | 2 wk | W13 | W14 | 1 wk | HIGH |
| A-09 Coil Bank | 6 wk | W1 | W1 | **0 wk** | **CRITICAL** |
| A-10 Power Electronics | 4 wk | W8 | W10 | 2 wk | MEDIUM |
| A-13 Integration | 4 wk | W21 | W21 | **0 wk** | **CRITICAL** |
| A-14 FAT | 3 wk | W25 | W25 | **0 wk** | **CRITICAL** |

**Three zero-float paths converge at Integration (Week 21):**
1. Drum: A-01(4) → A-02(3) → A-03(2) → A-13(4) = 13 weeks + Integration
2. Vessel: A-06(5) → A-07(2) → A-13(4) = 11 weeks + Integration
3. Electronics: A-09(6) → A-10(4) → A-13(4) = 14 weeks + Integration

---
