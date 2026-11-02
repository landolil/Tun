# NEXT_runner_003.md — Runner 003 Instructions
## lol.forge Phase 1: Product Documents 4-6

**Runner ID:** 003
**Phase:** Phase 1 — Product Documents 1-10
**Documents Assigned:** PROD-04, PROD-05, PROD-06
**Start Date:** 2026-10-30 (or next session)
**Prerequisites:** Runner 001 (PROD-01) ✅, Runner 002 (PROD-02, PROD-03) ✅

---

## Document Assignments

### PROD-04: ZrB₂-SiC Drum Engineering
**CSMFAB Number:** CSMFAB000000000108 (Vol 1, Drum Section) + Materials Study Part I
**Target:** 900+ lines body + 200 lines combined heuristic intro
**Focus:** 600mm × 800mm ceramic drum, 35mm wall, 3 liner zones, 8 material exit ports

#### Research Sources:
- `../seed/CSMFAB/CSMFAB0108 Aegis-Forge Thermal Cascade Inductive Material Separator/CSMFAB000000000108 Aegis-Forge I System Overview and Architecture.md` — Drum specs section
- `../seed/CSMFAB/CSMFAB Materials Study 5 Parts/` — Part I: UHTCs (ZrB₂-SiC synthesis, flash sintering, properties)

#### Required Sections:
1. **Header** — CSMFAB000000000108, Series TCIMS, Drum Engineering
2. **Drum Geometry & Material** — 600mm OD × 800mm L, 35mm wall, ZrB₂-SiC (ρ=3120 kg/m³, k=60 W/m·K, E=380 GPa, α=6.5×10⁻⁶/K)
3. **Flash Sintering Process** — 1800°C, 50 MPa, 5 min, 99.8% density, grain size <1 μm
4. **Three Liner Zones** — Zone A: Si₃N₄ (0-250mm), Zone B: ZrB₂-SiC (250-550mm), Zone C: ZrO₂ (550-800mm) — thickness, attachment, thermal gradient
5. **Eight Material Exit Ports** — 44.2° spacing, 12mm aperture, Ti₃AlC₂ actuators, ZrO₂ pistons, 3.6mm deflection at 680°C ΔT
6. **Centrifugal Stress Analysis** — FEA equations, von Mises stress at 500 RPM (σ_max < 150 MPa), safety factor >2.5
7. **Thermal Expansion Management** — Drum growth 8.5mm at 2200°C, liner CTE matching, gap control
8. **Port Valve Actuation Mechanics** — Ti₃AlC₂ MAX phase (σ_y=400 MPa, α=9.2×10⁻⁶/K), bimetal-equivalent deflection, PEEK CF40 spring return
9. **Ceramic Bearing System** — Si₃N₄ races, ZrO₂ balls, 500 RPM, 10,000 hr L10 life
10. **Drum Dynamic Balancing** — <0.1 mm runout, critical speed >1800 RPM
11. **Wear Monitoring** — FBG strain sensors (48 embedded), SiC wear rate <0.1 mm/1000 hrs
12. **Manufacturing & QC** — Flash sintering parameters, NDT (UT, CT), acceptance criteria
13. **Performance Specifications** — 12 parameters table
14. **Downstream Integration** — Assembly line 113, port alignment, seal verification

#### Heuristic Intros:
- Williams: Constraint (rotating ceramic pressure boundary), Necessity (drum is the only moving hot part), Commitment (materials + geometry)
- Keymaker: Lock (thermal stress + centrifugal stress coupling), Key (CTE-matched liner zones + flash sintering), Turn (theory→FEA validation)
- El Segundo: Mirror (FBG strain field), Participation (operator tuning sintering parameters), Protocol (recursive QC sequence)

---

### PROD-05: Acoustic Mineral Liberation Subsystem
**CSMFAB Number:** CSMFAB000000000109 (Vol 2, Stage 0) + Materials Study Part II
**Target:** 900+ lines body + 200 lines combined heuristic intro
**Focus:** Stage 0 pre-processor — LF (20-200 Hz) + ultrasonic (40 kHz) acoustic liberation

#### Research Sources:
- `../seed/CSMFAB/CSMFAB0108 Aegis-Forge Thermal Cascade Inductive Material Separator/CSMFAB000000000109 Aegis-Forge I Thermal Cascade Process Engineering.md` — Stage 0 section
- `../seed/CSMFAB/CSMFAB Materials Study 5 Parts/` — Part II: Piezoceramics (KNbO₃-BaTiO₃)

#### Required Sections:
1. **Header** — CSMFAB000000000109, Stage 0 Acoustic Liberation
2. **Liberation Physics** — Grain boundary fracture toughness (K_IC=1.5 MPa·m^0.5), stress wave equation (∇²u = (1/c²)∂²u/∂t²), acoustic stress σ_acoustic = ρcωA
3. **Low-Frequency Array (20-200 Hz)** — 8× KNbO₃-BaTiO₃ piezoceramic rings, 500W each, BFRP-coupled, chirp sweep 20→200 Hz over 15 min, chamber resonance at 100 Hz
4. **Ultrasonic Array (40 kHz)** — 8× submersible probes in water bath, cavitation collapse pressure 1000 bar, microjet velocity 100 m/s, 1-50 μm grain liberation
5. **Transducer Design** — KNbO₃-BaTiO₃ (d₃₃=500 pC/N, k_p=0.65, T_c=320°C), epoxy-free mounting, silicone interlayer, BFRP housing
6. **Cavitation Physics** — Rayleigh-Plesset equation, R_min/R_0 = 0.01, P_collapse ~1 GPa locally, strain rate 10⁹ s⁻¹
7. **Liberation Efficacy Metrics** — Sieve analysis (20% → 70% <2mm free grains), mineral grain preservation (>95% intact), energy cost 5 kWh/ton
7. **Process Integration** — Pre-chamber dimensions (1.7m L × 0.8m D), N₂ atmosphere, gravity + N₂ feed to drum, acoustic isolation from drum
8. **Control System** — Frequency sweep profile, amplitude modulation, liberation index feedback (inline sieve or acoustic emission)
9. **Wear & Maintenance** — Piezo depolarization at >300°C (water-cooled), 10,000 hr replacement interval
10. **Scaling** — 226L → 20,000L (transducer power ∝ V, chamber resonance ∝ D⁻¹)
11. **Performance Specifications** — 10 parameters table
12. **Economic Impact** — 40-60% downstream induction efficiency gain, 5 kWh/ton cost

#### Heuristic Intros:
- Williams: Constraint (mechanical liberation precedes thermal), Necessity (locked grains = 40-60% efficiency loss), Commitment (Stage 0 first, no skipping)
- Keymaker: Lock (grain boundary fracture vs. acoustic stress), Key (chirp sweep + cavitation dual-mode), Turn (basalt validation 20%→70%)
- El Segundo: Mirror (acoustic emission monitoring), Participation (operator tuning chirp profile), Protocol (recursive liberation index measurement)

---

### PROD-06: BFRP Pressure Vessel Design
**CSMFAB Number:** CSMFAB000000000108 (Vol 1, Vessel Section) + Materials Study Part III
**Target:** 900+ lines body + 200 lines combined heuristic intro
**Focus:** 900mm ID × 1200mm L filament-wound BFRP/Elium® vessel, 10 bar design

#### Research Sources:
- `../seed/CSMFAB/CSMFAB0108 Aegis-Forge Thermal Cascade Inductive Material Separator/CSMFAB000000000108 Aegis-Forge I System Overview and Architecture.md` — Vessel section
- `../seed/CSMFAB/CSMFAB Materials Study 5 Parts/` — Part III: Composites (BFRP, Elium®, aerogel, PEEK CF40)

#### Required Sections:
1. **Header** — CSMFAB000000000108, Pressure Vessel Engineering
2. **Vessel Geometry & Requirements** — 900mm ID × 1200mm L, 18mm wall, 10 bar design (ASME BPVC Sec X), 2200°C internal (drum), 200°C external max
3. **BFRP/Elium® Material** — Basalt fiber (σ_t=2500 MPa, E=90 GPa), Elium® thermoplastic resin (T_g=120°C, recyclable), [±18°/90°]₄ quasi-isotropic layup (16 plies)
4. **Filament Winding Process** — CNC mandrel, 18°/90° pattern, tension control (50N), cure 120°C/2h vacuum bag, no autoclave
5. **Barlow Validation** — σ_hoop = P·r/t = 10×450/18 = 250 MPa < 2500/4 = 625 MPa (SF=2.5), longitudinal stress check
6. **Thermal Protection** — YInMn Blue glaze (SRI=115, ε=0.85, 50μm), 50mm polyimide-silica aerogel (λ=0.010 W/m·K) gap, vessel outer surface <200°C
7. **Aerogel Gap Design** — 50mm radial, pyrogel XTE, mechanical standoffs (ZrO₂), convection suppression, radiation shield
8. **PEEK CF40 Flanges** — 30% CF reinforcement, σ_y=150 MPa at 200°C, 8× M24 bolt pattern, ZrO₂ gasket, leak rate <10⁻⁶ mbar·L/s
9. **Dynamic Rotary Seals** — 600mm shaft, ZrO₂ primary + PEEK CF40 secondary, 500 RPM, 10 bar differential, 10,000 hr life
10. **Support Frame & Mounting** — BFRP box beam, 4-point mount, seismic (IEEE 693 high), thermal expansion compensation
11. **Safety Systems** — Burst disc (12 bar), pressure relief (11 bar), FBG strain monitoring (12 sensors), acoustic emission AE
12. **Hydrotest & Certification** — 1.5× design pressure (15 bar), hold 30 min, ASME Sec X stamp, PED Cat III
13. **Performance Specifications** — 12 parameters table
14. **Downstream Integration** — Assembly line 113, drum insertion, flange alignment, gas connections

#### Heuristic Intros:
- Williams: Constraint (dielectric pressure boundary at 10 bar + 2200°C), Necessity (metal vessels couple GIC), Commitment (BFRP + aerogel + glaze)
- Keymaker: Lock (thermal gradient 2000°C across 68mm wall), Key (layup + aerogel + glaze triad), Turn (Barlow + hydrotest validation)
- El Segundo: Mirror (FBG strain + AE monitoring), Participation (operator winding parameters), Protocol (recursive hydrotest sequence)

---

## Execution Protocol

### For Each Document (PROD-04, PROD-05, PROD-06):

#### Phase 1: Research (15 min)
```bash
# Read source documents
cat ../seed/CSMFAB/CSMFAB0108 Aegis-Forge Thermal Cascade Inductive Material Separator/CSMFAB000000000108 Aegis-Forge I System Overview and Architecture.md | grep -A 50 -i drum\|vessel\|port
cat ../seed/CSMFAB/CSMFAB Materials Study 5 Parts/*.md | head -500
```

#### Phase 2: Write Body (Micro-subtasks, <30 sec each)
```bash
# Append to document
python3 << 'PYEOF'
from pathlib import Path
content = ## Section Title
Content here with equations, tables, physics...

Path(docs/PROD-04_ZrB2SiC_Drum_Engineering.md).write_text(
    Path(docs/PROD-04_ZrB2SiC_Drum_Engineering.md).read_text() + \n + content
)
PYEOF

# Verify line count
wc -l docs/PROD-04_ZrB2SiC_Drum_Engineering.md
```

#### Phase 3: Generate Intros
```bash
python3 scripts/generate_intros.py --doc PROD-04 --type prod
wc -l intros/PROD-04_*intro*.md
```

#### Phase 4: Chunk/Verify/Compress
```bash
python3 Research/__Python_Tools/write_large_file.py split docs/PROD-04_ZrB2SiC_Drum_Engineering.md chunks/PROD-04 chapter .md
python3 Research/__Python_Tools/write_large_file.py manifest chunks/PROD-04
python3 Research/__Python_Tools/write_large_file.py verify chunks/PROD-04
python3 Research/__Python_Tools/write_large_file.py compress docs/PROD-04_ZrB2SiC_Drum_Engineering.md
```

#### Phase 5: Git Commit
```bash
git add -A
git commit -m lol.forge: PROD-04 ZrB2-SiC Drum Engineering — 900+ lines + 200 line combined intro
git push
```

#### Phase 6: Update Tracking
- Update TODO.md (check off subtasks)
- Update Master_Todo.md (check off document)
- Append to memory/2026-10-30.md
- Update HEARTBEAT_LOLFORGE.md

---

## Heartbeat Protocol
```bash
# Update every 2 minutes
echo $(date -u +%Y-%m-%dT%H:%M:%SZ) Runner 003 PROD-04 Section X title Y lines Z total OK >> HEARTBEAT_LOLFORGE.md
```

---

## Success Criteria (Per Document)
- [ ] Body ≥ 900 lines (wc -l)
- [ ] 3 heuristic intros generated (Williams, Keymaker, El Segundo)
- [ ] Combined intro ≥ 200 lines
- [ ] 16 logical chapters in chunks/PROD-XX/
- [ ] Manifest generated with SHA256
- [ ] All chunks verified
- [ ] Document compressed (.gz)
- [ ] Git committed and pushed
- [ ] TODO.md updated
- [ ] Master_Todo.md updated
- [ ] Memory log appended

---

## Quick Commands Reference

```bash
# Line count
wc -l docs/PROD-04_ZrB2SiC_Drum_Engineering.md

# Generate intros
python3 scripts/generate_intros.py --doc PROD-04 --type prod

# Chunk/verify/compress
python3 Research/__Python_Tools/write_large_file.py split docs/PROD-04_ZrB2SiC_Drum_Engineering.md chunks/PROD-04 chapter .md
python3 Research/__Python_Tools/write_large_file.py manifest chunks/PROD-04
python3 Research/__Python_Tools/write_large_file.py verify chunks/PROD-04
python3 Research/__Python_Tools/write_large_file.py compress docs/PROD-04_ZrB2SiC_Drum_Engineering.md

# Git commit
git add -A && git commit -m lol.forge: PROD-04 ZrB2-SiC Drum — 900+ lines + 200 line combined intro && git push

# Heartbeat
echo $(date -u +%Y-%m-%dT%H:%M:%SZ) Runner 003 PROD-04 Drum specs 25 lines 250 total OK >> HEARTBEAT_LOLFORGE.md

# Session resume
cat NEXT_runner_003.md
cat RESUME_SESSION_LOLFORGE.md
git status
```

---

## Session Resume Checklist
- [ ] Read this file (NEXT_runner_003.md)
- [ ] Read RESUME_SESSION_LOLFORGE.md
- [ ] Check git status
- [ ] Check HEARTBEAT_LOLFORGE.md
- [ ] Begin PROD-04 research

---

*Runner 003 — Execute PROD-04 → PROD-05 → PROD-06 sequentially*
*Each document: Research → Write → Intros → Chunk → Commit → Track*
*Micro-subtask methodology: <30 sec, verified, logged, committed frequently*