## 7. Downstream Assembly Line Integration — Machine 1 of 8

The Aegis-Forge I is explicitly the **first machine** in a modular assembly line. Output slugs flow via gravity-conveyor (BFRP belt conveyor on ZrO₂ ceramic rollers) to adjacent downstream machines. The complete line, when built, comprises 8 machines.

### 7.1 Assembly Line Architecture

```
CSMFAB MODULAR ASSEMBLY LINE — PHASE 1 TO PHASE 3
┌─────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│  PHASE 1 (MACHINE 1 ONLY — SELF-SUFFICIENT)                                 │
│  ═══════════════════════════════════════════                                 │
│                                                                              │
│   ┌─────────────────┐                                                        │
│   │  MACHINE 1      │                                                        │
│   │  AEGIS-FORGE I  │ ──► S-01 Water ──────────► AMLS recirculation         │
│   │  CSMFAB 108-112 │ ──► S-02 Polymer ───────► Commercial / Stockpile     │
│   │                 │ ──► S-03 Char ──────────► Activated carbon (internal) │
│   │  INPUT:         │ ──► S-04 In-rich ───────► Stockpile (Phase 2)         │
│   │  • E-waste      │ ──► S-05 Zn/Pb/Sn ──────► Commercial sale             │
│   │  • Rock/ore     │ ──► S-06 Aluminum ──────► Commercial sale             │
│   │  • Phoenix ret. │ ──► S-07 Copper ────────► Machine 114 (wire) + PM     │
│   │                 │ ──► S-09 Ferrous ───────► Commercial + RE stockpile   │
│   │  OUTPUT:        │ ──► S-11 Mineral ────────► Stockpile (Phase 2)        │
│   │  14 streams     │ ──► S-12 Gas ───────────► Stage 7-8 combustion        │
│   │                 │ ──► S-13 CO₂ ───────────► Drum purge / geopolymer     │
│   │                 │ ──► S-14 Scrubber ──────► Construction additive       │
│   └────────┬────────┘                                                        │
│            │                                                                 │
│            ▼                                                                 │
│  REVENUE: $1,986/batch × 8 batches/day = $15,888/day = $3.97M/year          │
│  FUNDS PHASE 2 MACHINE CONSTRUCTION                                         │
│                                                                              │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│  PHASE 2 (MACHINES 2-4 — CRITICAL MINERAL REFINING)                         │
│  ═══════════════════════════════════════════════                             │
│                                                                              │
│   ┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐        │
│   │  MACHINE 2      │    │  MACHINE 3      │    │  MACHINE 4      │        │
│   │  HYDRO-REFINERY │    │  POWDER SYNTH   │    │  AEROGEL LINE   │        │
│   │  CSMFAB 113     │    │  CSMFAB 114     │    │  CSMFAB 115     │        │
│   │                 │    │                 │    │                 │        │
│   │  INPUT:         │    │  INPUT:         │    │  INPUT:         │        │
│   │  • S-11 Mineral │    │  • Zr, B, Si    │    │  • SiO₂ from    │        │
│   │  • S-10 RE      │    │    precursors   │    │    S-11         │        │
│   │  • S-04 In      │    │  • Y₂O₃ from    │    │  • Polymer C    │        │
│   │                 │    │    S-10         │    │    from S-02    │        │
│   │  OUTPUT:        │    │                 │    │                 │        │
│   │  • 99.9% In     │    │  OUTPUT:        │    │  OUTPUT:        │        │
│   │  • RE oxides    │    │  • ZrB₂ powder  │    │  • Polyimide-   │        │
│   │  • ZrO₂, TiO₂   │    │  • Si₃N₄ powder │    │    silica       │        │
│   │  • Purified     │    │  • MAX Phase    │    │    aerogel      │        │
│   │    chemicals    │    │    powders      │    │  • λ=0.010 W/m·K│        │
│   └─────────────────┘    └─────────────────┘    └─────────────────┘        │
│                                                                              │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                              │
│  PHASE 3 (MACHINES 5-8 — STRUCTURAL & FUNCTIONAL PRODUCTION)                │
│  ════════════════════════════════════════════════                             │
│                                                                              │
│   ┌─────────────────┐  ┌─────────────────┐  ┌─────────────────┐            │
│   │  MACHINE 5      │  │  MACHINE 6      │  │  MACHINE 7      │            │
│   │  BASALT FIBER   │  │  BFRP PULTRUSION│  │  MXENE REACTOR  │            │
│   │  CSMFAB 116     │  │  CSMFAB 117     │  │  CSMFAB 118     │            │
│   │                 │  │                 │  │                 │            │
│   │  INPUT:         │  │  INPUT:         │  │  INPUT:         │            │
│   │  • Basalt rock  │  │  • Basalt fiber │  │  • Ti₃AlC₂ from │            │
│   │    (AMLS direct)│  │  • Elium® resin │  │    Machine 3    │            │
│   │                 │  │                 │  │                 │            │
│   │  OUTPUT:        │  │  OUTPUT:        │  │  OUTPUT:        │            │
│   │  • Continuous   │  │  • Rebar,       │  │  • Ti₃C₂Tₓ      │            │
│   │    basalt fiber │  │    profiles,    │  │  • EMI shields  │            │
│   │  (13-17 μm)     │  │    shapes       │  │  • Supercapac.  │            │
│   └─────────────────┘  └─────────────────┘  └─────────────────┘            │
│                                                                              │
│   ┌─────────────────┐                                                       │
│   │  MACHINE 8      │                                                       │
│   │  YINMN KILN     │                                                       │
│   │  CSMFAB 119     │                                                       │
│   │                 │                                                       │
│   │  INPUT:         │                                                       │
│   │  • In (Machine 2)│                                                      │
│   │  • Y (Machine 2) │                                                      │
│   │  • Mn (S-11)    │                                                       │
│   │                 │                                                       │
│   │  OUTPUT:        │                                                       │
│   │  • YInMn Blue   │                                                       │
│   │    pigment      │                                                       │
│   │  • 35 products  │                                                       │
│   └─────────────────┘                                                       │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 7.2 Machine Interface Specifications

| Interface | Machine 1 → Machine 2 (Hydro-Refinery) | Machine 1 → Machine 3 (Powder Synth) |
|---|---|---|
| **Physical** | BFRP conveyor, ZrO₂ rollers | Pneumatic dense-phase (N₂ carrier) |
| **Material** | S-11 (mineral), S-10 (RE), S-04 (In) | ZrO₂, B₂O₃, Y₂O₃, TiO₂ powders |
| **Batch Size** | 1-5 kg per slug | 10-50 kg bulk powder |
| **Frequency** | Per forge batch (3.5 hr) | Daily consolidated |
| **Data** | Slug registry UUID, grade, LIBS spectrum | Powder lot ID, PSD, purity cert |
| **QC Handoff** | Inline LIBS + mass → Refinery LIMS | Powder QC (XRD, BET, PSD) → Synth MES |

### 7.3 Single Machine Startup (Phase 1 Self-Sufficiency)

In Phase 1, only the Aegis-Forge I is operational. All outputs except direct-use slugs go to:

| Stream | Phase 1 Disposition | Phase 2 Transition |
|---|---|---|
| S-01 Water | AMLS recirculation (internal) | Same |
| S-02 Polymer | Commercial sale ($0.15/kg) + stockpile | Machine 3 (Elium® MMA recovery) |
| S-03 Char | Activated carbon (internal gas treatment) | Machine 4 (aerogel carbon source) |
| S-04 In-rich | Stockpile (inert atmosphere) | Machine 2 (ionic liquid refining) |
| S-05 Zn/Pb/Sn | Commercial sale ($2/kg blended) | Same |
| S-06 Aluminum | Commercial sale ($1.80/kg) | Same (CSM uses no Al) |
| S-07 Copper | Machine 114 wire drawing (Phase 2) | Direct to Machine 114 |
| S-08 PM (in Cu) | Stockpile → Electrolytic refining | Machine 2 (PM refinery) |
| S-09 Ferrous | Commercial sale ($0.45/kg) + stockpile | Machine 2 (RE leach first) |
| S-10 RE (in Fe) | Stockpile with S-09 | Machine 2 (hydromet RE extraction) |
| S-11 Mineral | Stockpile (inert, N₂ blanketed) | Machine 2 (hydromet) + Machine 3 (powder) |
| S-12 Pyrolysis gas | Combustion for Stage 7-8 heat | Same + Option B (H₂ reforming) |
| S-13 CO₂ | Drum purge supplement | Machine 4 (geopolymer curing) |
| S-14 Scrubber solids | Construction additive sale | Same |

**Phase 1 Revenue Reality Check:**
- Only S-05, S-06, S-07 (Cu), S-09 generate immediate cash
- S-08 (PM in Cu) requires electrolytic refining (Phase 2) for full value
- S-04, S-10, S-11 are **strategic stockpiles** — zero revenue Phase 1, infinite value Phase 2+
- **Net Phase 1 cash flow: ~$1,500/batch** (conservative, excluding PM full value)
- **Phase 1 payback: ~150 batches (19 days at 8/day)** — still viable

### 7.4 Conveyor Handoff Mechanical Interface

**Gravity Conveyor (Forge → Downstream):**
- Incline: 5° decline (slugs roll by gravity, no power)
- Belt: BFRP/Elium® 300mm wide, cleated (15mm pitch) for positive control
- Rollers: ZrO₂ ceramic, 50mm diameter, PEEK CF40 bearings, 200mm spacing
- Side guides: PEEK CF40, adjustable width (100-300mm)
- Speed: 0.3 m/s (gravity-assisted, brake-controlled)
- Emergency stop: Piezo-actuated ZrO₂ brake pads (fail-safe engaged)

**Instrumented Handoff Station (Per Downstream Machine):**
```
HANDOFF STATION
┌─────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│  CONVEYOR IN ──► [LIBS RE-CHECK] ──► [MASS] ──► [DIMENSION] ──► CONVEYOR OUT│
│       │              │               │            │               │         │
│       ▼              ▼               ▼            ▼               ▼         │
│   FBG speed      PMMA POF        Load cell    Laser triang.   Machine     │
│   monitor        LIBS head       (FBG)       (PMMA POF)     specific     │
│                                                                              │
│  DATA PACKET TRANSFERRED TO DOWNSTREAM MACHINE MES:                         │
│  {                                                                           │
│    slug_id: uuid,                                                       │
│    batch_id: BATCH-20261031-042,                                       │
│    grade: DIRECT_USE,                                                   │
│    mass_kg: 1.987,                                                        │
│    dimensions_mm: {w: 100.2, d: 50.1, h: 40.3},                   │
│    libs_hash: sha256...,                                                │
│    timestamp: 2026-10-31T14:23:12Z,                                    │
│    phoenix_gen: 0                                                         │
│  }                                                                           │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 7.5 Commissioning Sequence (Machine 1 → Machine 2 Handoff)

1. **Week 1-2:** Forge standalone, all streams to commercial/stockpile
2. **Week 3:** Hydro-Refinery (Machine 2) cold commissioning (water, N₂, chemicals)
3. **Week 4:** First S-11 mineral slug to Machine 2 — hydromet shakedown
4. **Week 5:** First S-04 In-rich to Machine 2 — ionic liquid loop commissioning
5. **Week 6:** First S-10 RE concentrate to Machine 2 — Cyanex 272 extraction loop
6. **Week 7:** Machine 3 (Powder Synth) receives first Zr/Y feed from Machine 2
7. **Week 8:** First ZrB₂ powder from Machine 3 → Flash Sintering (existing capability)
8. **Week 9:** First BFRP fiber from Machine 5 (basalt from AMLS direct)
9. **Week 10:** First BFRP rebar from Machine 6 → Frame for Machine 2 expansion
10. **Week 12:** Full line operational — Forge feeds 7 downstream machines

**Milestone:** First ZrB₂ panel sintered from Forge-derived powder = **Phase 2 Complete**



