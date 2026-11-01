# PROD-15 Combined Heuristic Intro
## Three-Pronged Engineering Synthesis — Carrington Storm Motors

**Document:** PROD-15 Stage 2 Polymer Flow & Separation
**Synthesis:** Williams (Physics) + Keymaker (Architecture) + El Segundo (Operations)
**Author:** CSM Fabrication Division | **Date:** 2026-11-01

---

### COMBINED HEURISTIC: PROD-15 STAGE 2 POLYMER FLOW & SEPARATION

**The Challenge:** Separate 75 kg of mixed molten polymer per batch by density at 150-450°C, in an all-dielectric vessel, with PVC HCl management, delivering two pure fractions to downstream molding — every 35 minutes, 8,000 hours/year.

---

#### I. PHYSICS VERDICT (Williams): IT WORKS

**Density is our friend.** The 44% density gap between polyolefins (0.76) and engineering polymers (1.35) at melt state is enormous. At 12.6 G (150 RPM, r=250 mm), the centrifugal potential Φ = 7.7 J/kg provides 13.9 kJ/kg stratification energy over 30 minutes. Modified Stokes' law in shear-thinning melt gives 1.7 µm/s settling for 1mm PET sphere — 3 mm travel in dwell time, sufficient for annular layer formation.

**Rheology helps, not hurts.** Carreau-Yasuda shear-thinning drops effective viscosity from 150 Pa·s (zero-shear) to 8 Pa·s at bowl wall shear rate (3,925 s⁻¹). This 19× reduction accelerates stratification and reduces centrifuge power.

**Thermal window is tight but usable.** PVC dehydrochlorination at 210°C is the only hard limit. NaHCO₃ in-drum injection at 2× stoichiometric with POF HCl feedback control (50 ppm hold threshold) contains it. All other polymers stable to 300-350°C; PEEK/PTFE to 400°C+. Our 450°C peak is for char formation, not polymer.

**Energy is favorable.** Net 432 kWh/ton polymer recovered vs 3,500 kWh/ton virgin production = 88% embodied energy recovery. Heat recovery from mold cooling (8 kWh), vacuum exhaust (2 kWh), bearing cooling (1 kWh) closes the loop.

**Williams Bottom Line:** The physics is sound. Density separation at 12.6 G in shear-thinning melt works. PVC is manageable. Energy balance is excellent.

---

#### II. ARCHITECTURE VERDICT (Keymaker): INTEGRATED BUT BOTTLENECKED

**Interface contracts are clean.** Stage 2 receives <1% moisture feed at 150°C from PROD-14, discharges 250-280°C melt to PROD-08 mold carousel, sends char/filler to PROD-16 pyrolysis, HCl salts to PROD-07 gas system, oligomers to Stage 1 water recovery. All-dielectric constraint satisfied: BFRP bowl, ZrO₂ liner, Si₃N₄ bearings, PEEK CF40 seals, ultrasonic drive, POF sensors.

**Cross-cutting concerns addressed.** Thermal integration with N₂ pre-heat from Stage 1 exhaust. Control system on existing KNbO₃-BaTiO₃ ASIC/POF bus. Gas system shares N₂/vacuum/scrubber with Stages 1,3-5. Material BOM draws from PROD-12 qualified parts.

**The bottleneck is real.** Stage 2 at 30 min for 75 kg polymer = 2.5 kg/min. Stage 0 (10 min), Stage 1 (20 min), Stage 3 (45 min), Stage 4 (30 min) all process more mass per minute. Stage 2 is the pace-setter.

**Scaling path exists.** Dual centrifuge on same drum (split bowl) doubles throughput. 200 RPM (22.3 G) increases G 2.5× for lighter fractions. Both are Forge II upgrades — Forge I stays single-centrifuge.

**Keymaker Bottom Line:** Architecture integrates cleanly. Stage 2 IS the throughput bottleneck. Accept for Forge I; design dual-centrifuge for Forge II.

---

#### III. OPERATIONS VERDICT (El Segundo): MAINTAINABLE WITH DISCIPLINE

**Consumables drive schedule.** Candle filters (2,500 hr MTBF) and NaHCO₃ feeder screws (3,000 hr) are the weekly/monthly tasks. Designed for 2-hr filter swap, 30-min feeder swap — no bowl entry. ZrO₂ liner (5,000 hr) and bearings (10,000 hr) are annual.

**Maintenance windows fit production.** 20 batches/day = 1 batch/72 min. Daily checks in 15 min between batches. Weekly filter/feeder swap in 2.5 hr (planned downtime). Monthly boroscope/calibration in 1 hr. Annual relining in 8 hr (scheduled outage).

**Emergency procedures are automated and tested.** HCl >200 ppm triggers: induction kill, max NaHCO₃, N₂ flood, eddy-current brake, auto-discharge — all in <30 sec. Operator decision at 5 min: resume or abort. Post-mortem feeds FOLLOW-18 char protocol.

**Spares budget is lean.** $59k/yr for 95% availability. Critical spares: 4 filter packs, 6 feeder screws, 2 liner sets, 4 actuators. All lead times <8 weeks.

**El Segundo Bottom Line:** Designed for the 3 AM tech. Filters and feeder accessible externally. Sensors optical (no hot-zone electronics). Emergency sequences automated. Spares affordable. But — ZrO₂ liner crack is single-point-of-failure requiring 8 hr repair. Mitigation: dual liner sets on-site, practiced 4-hr swap.

---

#### IV. SYNTHESIS: THE THREE-LEGGED STOOL

| Dimension | Score | Key Insight |
|-----------|-------|-------------|
| **Physics (Williams)** | 9/10 | Density gap + shear-thinning + energy recovery = green light |
| **Architecture (Keymaker)** | 8/10 | Clean interfaces, all-dielectric satisfied, bottleneck identified |
| **Operations (El Segundo)** | 7.5/10 | Maintainable consumables, automated emergencies, liner risk |

**Composite Score: 8.2/10 — PROCEED TO PRODUCTION**

---

#### V. CROSS-HEURISTIC RISK MATRIX

| Risk | Williams Says | Keymaker Says | El Segundo Says | Resolution |
|------|---------------|---------------|-----------------|------------|
| **PVC HCl spike** | Manageable: NaHCO₃ stoichiometry works | Interface: Feeder + sensor + control loop integrated | Ops: Feeder screw MTBF 3,000 hr — redundant feeder needed | **ADD PARALLEL FEEDER** (Forge I) |
| **Stratification failure** | Physics: Increase RPM to 200 RPM, extend dwell | Architecture: Dual-port discharge handles mixed fraction | Ops: Vibration sensor detects layer interface loss | **AUTO-RPM BOOST** in control loop |
| **Filter blinding** | Physics: Back-pulse restores permeability | Architecture: Filter housing standard, swappable | Ops: 2-hr swap, 4 packs on-site | **ACCEPTED** — designed for it |
| **ZrO₂ liner crack** | Physics: Thermal cycling stress at 300°C ΔT | Architecture: No redundant liner path | Ops: 8 hr repair, line down — SPOF | **DUAL LINER SETS + 4-HR SWAP DRILL** |
| **IV retention <85%** | Physics: PET/PA degradation at 300°C+ | Architecture: Heavy fraction to chem-recycle, not reformulation | Ops: Batch QC catch, divert to char if fail | **QC GATE: IV >85% OR DIVERT** |

---

#### VI. DECISIONS LOCKED FOR PROD-15

1. **Single centrifuge, 150 RPM, 30 min dwell** — Forge I baseline
2. **Dual-port discharge (2A light, 2B heavy)** — no splitter valve
3. **NaHCO₃ feeder: redundant parallel screws** — auto-switchover on current spike
4. **HCl control: POF sensor + DSP PID + temp hold at 50 ppm** — proven tech
5. **SiC candle filters, 50 µm, N₂ back-pulse every 5 min** — standard cartridge
6. **Vacuum vent at bowl center, dry scroll pump, 4°C condenser** — oligomer capture
7. **ZrO₂ liner: 2 full sets on-site, 4-hr swap procedure qualified** — SPOF mitigation
8. **QC gate: IV >85% heavy fraction or divert to Stage 3 char** — protects reformulation

---

#### VII. FOLLOW-UP WORKSTREAMS (Locked to This Document)

| Follow-Up | Trigger Section | Owner | Due |
|-----------|-----------------|-------|-----|
| **FOLLOW-17** Polymer Melt Rheology | 3, 4 | Materials Lab | 2026-12-01 |
| **FOLLOW-18** Char Activation Protocol | 5, 9 | Process Eng | 2026-12-15 |
| **FOLLOW-12** Shredder Wear vs Filter Solids | 7.2 | Mechanical Eng | 2027-01-15 |
| **FOLLOW-22** Dust & Fume Capture | 12.2 | Facilities | 2027-01-15 |
| **FOLLOW-23** Energy Balance & Exergy | 11 | Systems Eng | 2027-02-01 |
| **FOLLOW-24** LCA & Carbon Footprint | 11 | Sustainability | 2027-02-15 |

---

#### VIII. FINAL STATEMENT

**PROD-15 is the pivot point of the thermal cascade.**

Upstream: Acoustic liberation (Stage 0) and IR drying (Stage 1) prepare the feed.
Downstream: Pyrolysis (Stage 3) and metal recovery (Stages 4-8) handle the rest.

**Stage 2 is where polymer value is captured.** 75 kg/batch of separated PP/PE and PET/PS/PVC — 88% of embodied energy recovered, ready for BFRP reformulation (light) or chemical recycling (heavy).

The physics works. The architecture integrates. The operations are maintainable.

**Risk is quantified. Mitigations are designed. Spares are budgeted. Procedures are written.**

**Next: PROD-16 Stage 3 Pyrolysis & Char — where the remaining 425 kg of feedstock becomes char, gas, and metals.**

---

*Three-Pronged Heuristic Synthesis Complete.*
*Williams: Physics validated. Keymaker: Architecture integrated. El Segundo: Operations hardened.*
*PROD-15: Stage 2 Polymer Flow & Separation — READY FOR CHUNKING, VERIFICATION, COMPRESSION, COMMIT.*