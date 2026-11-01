# PROD-15 Keymaker Heuristic Intro
## Systems Integration & Architecture Lens — Safe Pod Engineering Company

**Document:** PROD-15 Stage 2 Polymer Flow & Separation
**Heuristic:** Keymaker — Systems integration, interfaces, architectures, cross-cutting concerns
**Author:** CSM Fabrication Division | **Date:** 2026-11-01

---

### KEYMAKER HEURISTIC: PROD-15 STAGE 2 POLYMER FLOW & SEPARATION

**Core Question:** How does Stage 2 integrate into the 8-stage thermal cascade without becoming the bottleneck?

---

#### 1. INTERFACE CONTRACTS — UPSTREAM

**From PROD-14 (Stage 1 Drying):**
- Feed moisture: <1% — CRITICAL. Steam voids in melt = stratification failure
- Feed size: P80 < 150 mm — fits through 200 mm feed port
- Feed temp: 150°C — pre-heated, reduces Stage 2 induction load by ~15 kWh/batch
- Throughput: 500 kg/batch → 75 kg polymer (15%) to Stage 2

**From PROD-11 (Shredding):**
- Liberation index >0.85 — ensures polymers are free, not encapsulated in metal/fiber
- No copper paths, no structural metals — ALL-DIELECTRIC constraint satisfied
- Shredder wear: SiC blades (PROD-12) last 200 hrs — Stage 2 filters catch fines

---

#### 2. INTERFACE CONTRACTS — DOWNSTREAM

**To PROD-08 (Mold Carousel):**
- Light fraction: 40-60 kg/batch, 250°C, 2-3 kg/min discharge
- Heavy fraction: 20-40 kg/batch, 280°C, 1-2 kg/min discharge
- Mold cycle: 4 min — carousel must accept 15 kg/cycle → 4 molds rotating
- BFRP molds (PROD-12) handle 300°C, 50 cycles before reline

**To PROD-16 (Stage 3 Pyrolysis):**
- Filtration solids: 2-5 kg char/filler/batch
- Vacuum condensate: 0.5-2 kg oligomers → Stage 1 water recovery
- HCl scrubber salts: 1-3 kg NaCl → gas system (PROD-07)
- Stage 3 expects <5% polymer in char feed — our filtration achieves <2%

**To PROD-12 (Material BOM):**
- Centrifuge bowl: BFRP/Elium® + ZrO₂ liner (PROD-12 Sec 3.1)
- Bearings: Si₃N₄ hybrid (PROD-12 Sec 3.2)
- Seals: ZrO₂ face + PEEK CF40 spring (PROD-12 Sec 3.3)
- Candle filters: α-SiC flash-sintered (PROD-12 Sec 3.1)
- Drive motor: KNbO₃-BaTiO₃ ultrasonic (PROD-12 Sec 3.4)

---

#### 3. CROSS-CUTTING CONCERNS

**ALL-DIELECTRIC ARCHITECTURE (Non-Negotiable):**
- Zero structural metals in process chamber
- Bowl: BFRP composite (dielectric)
- Liner: ZrO₂ ceramic (dielectric)
- Bearings: Si₃N₄ ceramic (dielectric)
- Seals: ZrO₂ + PEEK CF40 (dielectric, CF < percolation)
- Drive: Ultrasonic motor — no copper windings in chamber
- Sensors: PMMA POF optical (dielectric)
- Heating: Induction at 100 kHz — N₂/air heated, no metal elements in melt

**THERMAL INTEGRATION:**
- Stage 2 induction: 100 kHz, 50 kW max — same generator as Stages 3-5 (PROD-10)
- N₂ pre-heat: Stage 1 exhaust (150°C) → Stage 2 inlet
- Mold cooling: PEX-a water loop → AMLS thermal battery (PROD-03)
- Heat recovery: 11 kWh/batch recovered (20% of input)

**CONTROL SYSTEM ARCHITECTURE:**
- Local DSP: KNbO₃-BaTiO₃ ASIC (rad-hard, no Si)
- Sensors: POF HCl, POF temp (fiber Bragg), POF vibration
- Actuators: Ultrasonic motors, thermal actuators (Ti₃AlC₂)
- Comm: POF bus to central controller (PROD-05)
- NO copper, NO silicon in hot zone

**GAS SYSTEM INTEGRATION (PROD-07):**
- N₂ supply: 1.2 bar, 99.999% purity, 50 m³/hr
- NaHCO₃ aerosol: Injected at feed port, 2× stoichiometric
- Vacuum vent: 10-50 mbar, dry scroll pump
- HCl capture: In-drum + activated carbon bed (Stage 3 char)
- CO₂ from neutralization: To gas scrubber

---

#### 4. SCALING & MODULARITY

**Current Design:** 500 mm ID × 750 mm L, 150 RPM
**Scale Path:**
- 2× diameter → 1 m ID → 4× G at same RPM → 4× throughput
- 2× RPM → 300 RPM → 4× G → 2× throughput (bearing limit)
- Modular bowl: Swap ZrO₂ liner for different pore sizes
- Filter housing: Standard 12-candle pattern, swappable

**Bottleneck Analysis:**
| Stage | Time | Throughput | Bottleneck? |
|-------|------|------------|-------------|
| 0 Acoustic | 10 min | 500 kg | No |
| 1 Drying | 20 min | 500 kg | No |
| **2 Polymer** | **30 min** | **75 kg polymer** | **YES — slowest per-kg** |
| 3 Pyrolysis | 45 min | 400 kg | No |
| 4 Metals | 30 min | 50 kg | No |

**Mitigation:** Stage 2 can run 2 parallel centrifuges on same drum (split bowl). Or increase to 200 RPM (G=22.3) for lighter fractions.

---

#### 5. FAILURE MODES & GRACEFUL DEGRADATION

| Failure Mode | Detection | Graceful Response |
|--------------|-----------|-------------------|
| HCl >50 ppm | POF sensor | Temp hold, increase NaHCO₃, alarm |
| Filter ΔP >5 bar | POF pressure | Back-pulse, reduce feed rate |
| Stratification fail | POF vibration (layer interface) | Increase RPM to 200, extend dwell |
| Port actuator stuck | POF position | Reverse centrifuge, thermal release |
| Vacuum loss | POF pressure | Abort discharge, cool under N₂ |

---

#### 6. KEYMAKER VERDICT

**Integration Score: 8.5/10**

**Strengths:**
- Clean interfaces with PROD-11, 14, 08, 16, 12, 07
- All-dielectric constraint fully satisfied
- Heat recovery integrated at 3 points
- Control system uses existing POF/ASIC architecture

**Risks:**
- Stage 2 IS the throughput bottleneck (30 min for 75 kg polymer)
- PVC management adds complexity (feeder, sensor, control loop)
- Heavy fraction IV retention at 85% is borderline for reformulation

**Action Items:**
1. FOLLOW-17: Validate rheology for PP/PET blend at interface shear
2. PROD-16: Confirm char feed spec accepts our filtration solids
3. PROD-08: Verify mold carousel handles 250-280°C dual-stream discharge
4. FOLLOW-18: Define char activation for PVC-neutralized char

**Architecture Decision:** Stage 2 stays single-centrifuge for Aegis-Forge I. Dual-centrifuge is Forge II upgrade.

---

*Keymaker Heuristic: "The interface is the system. Everything else is implementation."*
*This document: Interfaces defined. Implementation specified.*