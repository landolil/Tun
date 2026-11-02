# NEXT_runner_007.md — lol.forge Runner 007 Instructions
## PROD-19, PROD-20, PROD-21: Stages 6-8 (Copper, Ferrous, Mineral/Zircon)

**Generated**: 2026-11-02T10:35:00Z
**Previous Runner**: 006 (PROD-16, 17, 18 complete)
**Phase**: Phase 2 — Thermal Cascade Stages 6-8 (Documents 19-21 of 40)

---

## Document Batch Overview

| Document | Title | Target Lines | Source Material |
|----------|-------|--------------|-----------------|
| PROD-19 | Stage 6: Copper & Precious Metals (1085-1200°C) | 900+ body + 200 intro | Aegis-Forge Vol 2 Stage 6, PROD-17 PM carrier, PROD-18 cleared Al |
| PROD-20 | Stage 7: Ferrous Cascade (1200-1600°C) | 900+ body + 200 intro | Aegis-Forge Vol 2 Stage 7, PROD-17/18 dross/slag |
| PROD-21 | Stage 8: Mineral Residue & Zircon (1600-2200°C) | 900+ body + 200 intro | Aegis-Forge Vol 2 Stage 8, PROD-20 mineral residue |

---

## PROD-19: Stage 6 — Copper & Precious Metals (1085-1200°C)

### Research Sources
- `../seed/CSMFAB/CSMFAB0108 Aegis-Forge Thermal Cascade Inductive Material Separator/Vol 2: Thermal Cascade Process Engineering.md` — Stage 6 section
- `../seed/CSMFAB/CSMFAB Materials Study 5 Parts/` — Copper thermophysics, PM partitioning
- `lol.forge/docs/PROD-17_Stage_4_Low_Temp_Metals.md` — PM carrier streams (Au/Ag/Pd to In/Sn)
- `lol.forge/docs/PROD-18_Stage_5_Aluminum_Window.md` — Al cleared, feed composition entering Stage 6
- `lol.forge/docs/PROD-08_Slug_Cooling_Output_Catalog.md` — ZrO₂ molds for Cu/PM slugs
- `lol.forge/docs/PROD-10_Induction_Power_Electronics.md` — 5 kHz GaN inverter specs

### Required Sections (13 minimum)
1. **Stage 6 Parameters and Cascade Context** — Temperature window, feed from Stage 5, throughput targets
2. **Copper Melting and Density Stratification** — Cu MP 1085°C, density 8.96 g/cm³, centrifugal separation
3. **Precious Metal Partitioning to Anode Slime** — Au/Ag/Pd/Pt/Rh/Ir/Ru/Os behavior in Cu melt
4. **Centrifuge Bowl Zones for Cu/PM Separation** — Zone design for Cu + PM enrichment
5. **Oxidation Control and Atmosphere Management** — H₂/N₂ reducing atmosphere, Cu₂O prevention
6. **Anode Casting and Slime Collection** — ZrO₂ molds, anode dimensions, slime capture
7. **Electrorefining Integration** — Cu anode → cathode, slime to PM recovery (FOLLOW-19)
8. **Output Streams** — Cu cathodes, anode slime, off-gas, slag
9. **Throughput and Quality** — 226 L/batch, Cu >99.99%, PM in slime >99%
10. **Energy Balance** — kWh/batch, thermal recovery, 5 kHz induction efficiency
11. **Safety and Emissions** — Cu fume, SO₂, arsenic/antimony/bismuth volatilization
12. **Control System** — Cascade PID, resonance tracking, POF level, XRF composition
13. **Cross-Reference Matrix** — PROD-02, 04, 07, 08, 09, 10, 12, 17, 18, FOLLOW-19

### Key Technical Specifications to Include
- **Temperature**: 1085-1200°C (Cu MP 1085°C, superheat to 1150°C for fluidity)
- **Frequency**: 5 kHz (skin depth δ = 4.2 mm in Cu at 1150°C)
- **Power**: 250 kW per zone × 3 zones = 750 kW peak
- **RPM**: 250 RPM (17.4 G at r=250 mm) — lower G for Cu density
- **Atmosphere**: 5% H₂ / 95% N₂ at 1.2 bar, dew point <-40°C
- **PM Partitioning**: Au >99.9%, Ag >99.5%, Pd >98% to anode slime
- **Anode Slime Composition**: 20-40% Cu, 10-30% Ag, 5-15% Au, 1-5% Pd/Pt, balance Se/Te/As/Sb/Bi
- **ZrO₂ Mold Specs**: 226 L → 4 Cu anodes (50 kg each) + 1 PM slime crucible
- **Energy**: 180 kWh/batch gross, 65 kWh net with 65% thermal recovery

---

## PROD-20: Stage 7 — Ferrous Cascade (1200-1600°C)

### Research Sources
- Aegis-Forge Vol 2 Stage 7
- PROD-17/18 dross/slag streams (MgO-Al₂O₃-SiO₂ flux slag, Fe-rich dross)
- PROD-12 All-Aegis Material BOM — BFRP, ZrB₂-SiC, Ti₃AlC₂
- FOLLOW-15 Rare Earth Hydromet Recovery, FOLLOW-20 Ferrous Slug Metallurgy
- PROD-10 Induction Power Electronics — 2 kHz inverter specs

### Required Sections (13 minimum)
1. **Stage 7 Parameters and Cascade Context** — Feed from Stage 6 slag + Stage 5 dross
2. **Iron Melting and Carbon/Silicon/Manganese Control** — Fe MP 1538°C, C/Si/Mn management
3. **Rare Earth Magnet Recovery (NdFeB, SmCo)** — Selective melting, magnetic separation
4. **Centrifuge Bowl Zones for Fe/REE/Slag** — Multi-zone for Fe bullion, REE concentrate, slag
5. **Slag Engineering** — CaO-SiO₂-MgO-Al₂O₃ flux, basicity control, REE partitioning
6. **Ferrous Alloy Fractionation** — Carbon steel, low-alloy, cast iron streams
7. **REE Concentrate Processing Interface** — To FOLLOW-15 hydrometallurgy
8. **Output Streams** — Fe bullion, REE concentrate, slag, off-gas
9. **Throughput and Quality** — Fe >99%, REE recovery >90%
10. **Energy Balance** — 2 kHz induction, thermal efficiency
11. **Safety and Emissions** — Fe fume, CO, REE dust
12. **Control System** — Cascade PID, magnetic sensor, XRF slag
13. **Cross-Reference Matrix** — PROD-02, 04, 07, 12, 16, 17, 18, 19, FOLLOW-15, 20, 33

### Key Technical Specifications
- **Temperature**: 1200-1600°C (Fe MP 1538°C, superheat to 1600°C)
- **Frequency**: 2 kHz (skin depth δ = 8.5 mm in Fe at 1550°C)
- **Power**: 400 kW per zone × 4 zones = 1.6 MW peak
- **RPM**: 200 RPM (13.9 G at r=300 mm)
- **Carbon Control**: 0.05-4.0% C via CO/CO₂ gas injection
- **REE Recovery**: Nd >90%, Dy >85%, Sm >80% to concentrate

---

## PROD-21: Stage 8 — Mineral Residue & Zircon (1600-2200°C)

### Research Sources
- Aegis-Forge Vol 2 Stage 8
- PROD-20 mineral residue (ZrSiO₄, REE oxides, Al₂O₃, SiO₂, TiO₂)
- FOLLOW-16 Zircon Dissociation Kinetics, FOLLOW-21 Mineral Slag Hydrometallurgy
- FOLLOW-32 Ceramic Composite Development (UHTC)
- PROD-10 Induction Power Electronics — 1 kHz inverter specs

### Required Sections (13 minimum)
1. **Stage 8 Parameters and Cascade Context** — Final residue from Stage 7, composition
2. **Zircon Dissociation at 1676°C** — ZrSiO₄ → ZrO₂ + SiO₂ (g), kinetics, equilibrium
3. **REE Oxide Recovery** — Nd₂O₃, Sm₂O₃, Dy₂O₃, Y₂O₃ separation
4. **3Y-TZP Synthesis** — 3 mol% Y₂O₃ stabilized ZrO₂, flash sintering
5. **Silica Management** — SiO₂ gas capture, condensation, fumed silica product
6. **Alumina/Titania Separation** — α-Al₂O₃, TiO₂ (rutile) streams
7. **Centrifuge Bowl Zones for Mineral Separation** — ZrO₂, REE oxides, Al₂O₃, TiO₂
8. **UHTC Composite Integration** — ZrB₂-SiC drum material production loop
9. **Output Streams** — 3Y-TZP powder, REE oxide concentrates, fumed silica, α-Al₂O₃, TiO₂
10. **Throughput and Quality** — ZrO₂ >99.5%, REE oxide >99%
11. **Energy Balance** — 1 kHz induction, extreme temperature, radiative losses
12. **Safety and Emissions** — SiO gas, REE dust, high-temp radiation
13. **Control System** — Pyrometry, gas analysis, mass spec, thermal imaging
14. **Cross-Reference Matrix** — PROD-02, 04, 07, 12, 19, 20, FOLLOW-16, 21, 32

### Key Technical Specifications
- **Temperature**: 1600-2200°C (ZrSiO₄ dissociation 1676°C, ZrO₂ sintering 2000°C)
- **Frequency**: 1 kHz (skin depth δ = 14 mm in ZrO₂ at 2000°C)
- **Power**: 500 kW per zone × 3 zones = 1.5 MW peak
- **RPM**: 150 RPM (10.4 G at r=300 mm)
- **Atmosphere**: Ar/He inert, slight positive pressure
- **Zircon Dissociation**: 1676°C, 30 min, P_SiO < 10⁻³ atm for complete dissociation
- **3Y-TZP**: 97% theoretical density, 0.5 μm grain size, flash sinter 1800°C/5 min

---

## Heuristic Intro Requirements (Per Document)

### Williams Heuristic (~67 lines)
- **Constraint (The Lock)**: What irreducible thermodynamic/material principle forces this stage design?
- **Necessity (The Key)**: What empirical gap in metal/mineral recovery does this stage resolve?
- **Commitment (The Turn)**: What non-negotiable commitments (temperature, chemistry, geometry) does this document make?

### Keymaker Heuristic (~67 lines)
- **The Empirical Lock**: What fabrication fidelity gap in multi-element separation does this address?
- **The Mathematical Key**: What single computational primitive generates the separation solution?
- **The Turn (Both Directions)**: Theory→History validation AND History→Theory validation

### El Segundo Heuristic (~67 lines)
- **Mirror (Self-Reflection)**: How does the fabricator observe their own fabrication at this temperature?
- **Participation (Witness)**: How does the inside operator witness the phenomenon into existence?
- **Protocol (Recursive)**: What recursive sequence guarantees fidelity at each thermal scale?

### Combined Intro (~200 lines)
Three-way synthesis with risk matrix and cross-stage dependencies.

---

## Execution Checklist (Per Document)

### Research Phase (30 min each)
- [ ] Read Aegis-Forge Vol 2 Stage X section
- [ ] Read relevant Materials Study parts
- [ ] Read upstream PROD documents for feed composition
- [ ] Read downstream FOLLOW documents for interface specs
- [ ] Note key equations, temperatures, compositions

### Write Phase (3-4 hours each)
- [ ] Write 13+ sections per template above
- [ ] Include all equations in LaTeX format
- [ ] Include tables for parameters, compositions, energy
- [ ] Include architectural diagrams as ASCII/mermaid
- [ ] Target 900+ lines body

### Intro Generation (45 min each)
- [ ] Generate Williams intro (~67 lines)
- [ ] Generate Keymaker intro (~67 lines)
- [ ] Generate El Segundo intro (~67 lines)
- [ ] Generate Combined intro (~200 lines)
- [ ] Save to `intros/PROD-XX_...`

### Verification (15 min each)
- [ ] `node scripts/split_chunks.js split docs/PROD-XX_... chunks/PROD-XX`
- [ ] `node scripts/split_chunks.js manifest chunks/PROD-XX`
- [ ] `node scripts/split_chunks.js verify chunks/PROD-XX`
- [ ] `node scripts/split_chunks.js compress docs/PROD-XX_... docs/PROD-XX_....compressed.md`

### Git & Trackers (10 min each)
- [ ] `git add -A && git commit -m "lol.forge: PROD-XX Title — NNN lines + 200 intro" && git push`
- [ ] Update TODO.md micro-subtasks
- [ ] Update Master_Todo.md
- [ ] Update memory/2026-11-02.md
- [ ] Update HEARTBEAT_LOLFORGE.md

---

## Timeline Estimate

| Document | Research | Write | Intros | Verify | Git | Total |
|----------|----------|-------|--------|--------|-----|-------|
| PROD-19 | 30 min | 4 hr | 45 min | 15 min | 10 min | ~5.7 hr |
| PROD-20 | 30 min | 4 hr | 45 min | 15 min | 10 min | ~5.7 hr |
| PROD-21 | 30 min | 4 hr | 45 min | 15 min | 10 min | ~5.7 hr |
| **Total** | **1.5 hr** | **12 hr** | **2.25 hr** | **45 min** | **30 min** | **~17 hr** |

---

## Quick Start Commands

```bash
cd /workspace/app/Tun/lol.forge

# 1. Resume session
./scripts/resume_runner.sh 007

# 2. Check status
./scripts/resume_runner.sh --status

# 3. Start PROD-19 research
# Read Aegis-Forge Vol 2 Stage 6
cat "../seed/CSMFAB/CSMFAB0108 Aegis-Forge Thermal Cascade Inductive Material Separator/Vol 2: Thermal Cascade Process Engineering.md" | grep -A 200 "Stage 6"

# 4. Write PROD-19 (use cat > or editor)
# 5. Generate intros
# 6. Chunk, verify, compress, commit, push
# 7. Repeat for PROD-20, PROD-21
```

---

## Git Identity
```
git config user.name "Kilo Agent"
git config user.email "kilo@carringtonstormmotors.com"
```

---

## Success Criteria for Runner 007
- [ ] PROD-19: 900+ lines body + 200 combined intro, committed and pushed
- [ ] PROD-20: 900+ lines body + 200 combined intro, committed and pushed
- [ ] PROD-21: 900+ lines body + 200 combined intro, committed and pushed
- [ ] All 3 chunked, verified, compressed
- [ ] Master_Todo.md updated: Phase 1 progress 21/40 (52.5%), Phase 2 progress 6/10 (60%), Overall 30/80 (37.5%)
- [ ] NEXT_runner_008.md created for PROD-22, 23, 24