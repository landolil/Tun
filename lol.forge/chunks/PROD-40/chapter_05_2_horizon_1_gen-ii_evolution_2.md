## 2. Horizon 1: Gen-II Evolution (2026-2029)

### 2.1 2000L Scale-Up — From 226L to 2000L Working Volume

The Gen-I drum (600 mm diameter × 800 mm length = 226 L) validates the physics. Gen-II targets **2000L** (9× volume) for industrial throughput while maintaining thermal gradient fidelity.

#### 2.1.1 Geometric Scaling Laws

```
Gen-I:  D = 600 mm, L = 800 mm, V = 226 L, A = 1.51 m²
Gen-II: D = 1200 mm, L = 1800 mm, V = 2035 L, A = 6.79 m²
```

**Scaling ratios:**
- Volume ratio: (1200/600)² × (1800/800) = **9.0×**
- Surface area ratio: (1200/600) × (1800/800) = **4.5×**
- Aspect ratio L/D preserved: 800/600 = 1.33 → 1800/1200 = 1.50 (adjusted for thermal gradient length)

**Critical constraint — Thermal gradient preservation:**
The 8-stage temperature profile requires sufficient axial length for discrete zones. Gen-I has 8 zones × 100 mm = 800 mm active length. Gen-II requires **≥ 1600 mm** for equivalent zone resolution at 2× diameter. 1800 mm provides margin for transition zones.

#### 2.1.2 Structural Scaling — ZrB₂-SiC Drum

**Wall thickness scaling (pressure vessel criterion):**
Hoop stress σ_θ = P·r/t. For constant pressure (5 bar operating, 10 bar design):
t_gen2 = t_gen1 × (r_gen2/r_gen1) = 35 mm × (600/300) = **70 mm minimum**

**Reality check — Ceramic drum at 1200 mm diameter with 70 mm wall:**
- Mass: π × (0.65² - 0.58²) × 1.8 × 3200 kg/m³ = **~4.2 metric tons** (vs Gen-I ~650 kg)
- Flash sintering: Requires 2.5 m × 2.5 m sintering furnace (new capital)
- Thermal shock: ΔT across 70 mm wall at 2400°C surface = 120°C gradient (FEA validated in PROD-24)

**Alternative — Segmented drum architecture:**
8 × 200 mm axial segments, each independently replaceable. Joint design: ZrB₂-SiC tongue-and-groove with PEEK CF40 compliant layer (PROD-09 valve seat heritage). Reduces single-piece sintering risk; enables staged replacement.

#### 2.1.3 Induction Power Scaling

```
Gen-I: 500 kW total, 8 zones × 62.5 kW average
Gen-II: Target 4 MW total, 8 zones × 500 kW average
```

**Frequency strategy preserved:**
- Stages 1-2: 100 kHz → 50 kW/zone (indirect heating via susceptor)
- Stage 3: 50 kHz → 200 kW/zone
- Stages 4-5: 10 kHz → 500 kW/zone (Al window)
- Stage 6: 5 kHz → 500 kW/zone (Cu window)
- Stage 7: 2 kHz → 750 kW/zone (Fe window)
- Stage 8: 1 kHz → 1000 kW/zone (mineral window)

**Power electronics evolution:**
| Generation | Switch Technology | Junction Temp | Cooling | Efficiency |
|------------|-------------------|---------------|---------|------------|
| Gen-I      | GaN HEMT (650V)   | 150°C         | Liquid  | 98.5%      |
| Gen-II     | SiC MOSFET (1.7kV)| 200°C         | Two-phase| 99.2%      |
| Gen-III    | Diamond FET       | 400°C         | Direct  | 99.8%      |

**FBG sensor density scaling:**
Gen-I: 16 FBG sensors per zone (128 total). Gen-II: 64 FBG sensors per zone (512 total) — 4× density for thermal gradient mapping at 2× diameter. PMMA fiber survivability to 200°C requires active cooling at drum wall interface (PROD-37 integration).

#### 2.1.4 Throughput Projection

| Parameter | Gen-I (226L) | Gen-II (2000L) | Scaling Factor |
|-----------|--------------|----------------|----------------|
| Batch mass | 500 kg | 4,500 kg | 9× |
| Cycle time | 3.5-5 hrs | 4-6 hrs | 1.2× (thermal inertia) |
| Daily batches | 4-6 | 3-4 | 0.8× |
| **Daily throughput** | **2-3 tons** | **13-18 tons** | **~6-9×** |
| Annual (330 days) | 660-990 tons | 4,300-5,900 tons | **~6×** |

**Economic threshold:** Gen-II achieves <$200/ton processing cost at 5,000 tons/yr (PROD-31 baseline: $450/ton at 1,000 tons/yr). Breakeven at 2,500 tons/yr.

---

### 2.2 Multi-Drum Parallel Architecture — 3-Drum Cluster

Single 2000L drum creates single-point-of-failure. **3-drum cluster** provides redundancy, continuous operation, and phased commissioning.

#### 2.2.1 Cluster Architecture

```
┌─────────────────────────────────────────────────────────────────┐
│                    GEN-II 3-DRUM CLUSTER                         │
│                                                                  │
│   [FEED SYSTEM] ──┬──▶ [DRUM A] ──┬──▶ [GAS SYSTEM] ──┬──▶ OUT  │
│                   │             │                   │         │
│                   ├──▶ [DRUM B] ──┤                   │         │
│                   │             │                   │         │
│                   └──▶ [DRUM C] ──┘                   │         │
│                                                     ▼         │
│                                              [SLUG COOLING]    │
│                                              [CONVEYOR]        │
└─────────────────────────────────────────────────────────────────┘
```

**Operational modes:**
- **Mode 1 (Commissioning):** 1 drum active, 2 in standby/warm
- **Mode 2 (Production):** 2 drums staggered (180° phase offset), 1 maintenance
- **Mode 3 (Surge):** 3 drums simultaneous, shared gas/slug systems
- **Mode 4 (Redundant):** 2 drums, 1 cold spare

**Staggered cycle timing:**
Drum A starts at t=0, Drum B at t=2.5 hrs, Drum C at t=5 hrs. Continuous slug output every ~1.2 hrs. Gas system sized for peak 2-drum simultaneous Stage 8 (highest gas volume).

#### 2.2.2 Shared Infrastructure

| System | Gen-I (per drum) | Gen-II Cluster (shared) | Savings |
|--------|------------------|-------------------------|---------|
| Gas capture | 1 × full | 1 × 2.5× capacity | 60% capex |
| Slug cooling | 1 × carousel | 1 × 3× carousel | 50% capex |
| Induction PSU | 8 × 62.5 kW | 24 × 500 kW (zone-level) | Modular |
| Control system | 1 × PLC | 1 × cluster PLC + 3 × drum RTUs | Centralized |
| N₂/Ar supply | 1 × tank | 1 × 3× tank + vaporizer | Shared |
| Feed prep | 1 × shredder | 1 × 3× shredder line | Shared |

**Control architecture (PROD-23 evolution):**
- Cluster Supervisory Controller (CSC): TSN backbone, PTP sync <1 μs
- Drum Real-Time Units (DRTU): One per drum, SIL-3 rated, hot-swappable
- Safety Instrumented System: 2oo3 voting across DRTUs for cluster-level ESD
- Digital Twin: One cluster-level twin + 3 drum-level twins (PROD-37)

#### 2.2.3 Commissioning Sequence

| Phase | Duration | Activity | Gate |
|-------|----------|----------|------|
| 0 | 0-3 mo | Site prep, foundations, utilities | Civil complete |
| 1 | 3-6 mo | Drum A install, cold commissioning | Drum A rotation test |
| 2 | 6-9 mo | Drum A hot commissioning (inert feed) | FAT Drum A |
| 3 | 9-12 mo | Drum B install, Drum A production | Drum B FAT |
| 4 | 12-15 mo | Drum C install, 2-drum production | Drum C FAT |
| 5 | 15-18 mo | 3-drum cluster optimization | SAT cluster |
| 6 | 18-24 mo | Gen-II baseline established | TRL 7 achieved |

---

### 2.3 Advanced Induction Control — Beyond GaN

#### 2.3.1 SiC MOSFET Transition (Gen-II)

**Why SiC for 500 kW/zone:**
- 1.7 kV rating matches 480V 3-phase bus with margin
- 200°C junction temperature enables higher power density
- Two-phase cooling (dielectric immersion) handles 500 kW in 0.5U rack
- Body diode reverse recovery <50 ns enables hard-switching at 2 kHz (Stage 7)

**Zone architecture:**
```
[3-Phase 480V] → [Active Front End] → [800V DC Bus] → [8 × Zone Inverter]
                                                                   │
                                                         [FBG Feedback 10 kHz]
                                                         [PID + MPC Control]
```

**Model Predictive Control (MPC) replaces PID:**
State vector x = [T_zone, T_wall, T_drum, ω_drum, P_induction]
Cost function: J = Σ(Q·(T_target - T)² + R·ΔP²) + P·(T_constraint_violation)
Horizon: 20 steps (2 sec at 10 Hz). Solves QP in <1 ms on ARM Cortex-R52 (PROD-37 edge compute).

#### 2.3.2 Diamond Semiconductor Roadmap (Gen-III)

**Diamond FET advantages:**
- Bandgap: 5.47 eV (vs SiC 3.26 eV, GaN 3.4 eV)
- Thermal conductivity: 2200 W/m·K (vs SiC 370, GaN 130)
- Breakdown field: 10 MV/cm (vs SiC 3 MV/cm)
- Enables **direct liquid metal cooling** (GaInSn) at 400°C junction

**Timeline:**
| Milestone | Target | Risk Mitigation |
|-----------|--------|-----------------|
| Diamond wafer 150mm | 2028 | Partner with Element Six / AKHAN |
| 1.7 kV vertical FET demo | 2029 | DARPA DRBE program |
| 500 kW zone inverter | 2031 | Gen-II SiC as fallback |
| Full Gen-III deployment | 2033 | Co-design with PROD-37 twin |

---

### 2.4 Autonomous Operations — Digital Twin Closed-Loop

**Gen-I:** Human-supervised, recipe-based. **Gen-II:** Autonomous with human-on-the-loop.

#### 2.4.1 Autonomy Levels (SAE J3016 Adapted)

| Level | Description | Gen-I | Gen-II Target |
|-------|-------------|-------|---------------|
| 0 | Manual | ✅ | — |
| 1 | Assisted (alarms) | ✅ | ✅ |
| 2 | Partial (recipe exec) | ✅ | ✅ |
| 3 | Conditional (exceptions) | — | ✅ (2027) |
| 4 | High (full batch) | — | ✅ (2028) |
| 5 | Full (self-optimizing) | — | 🎯 2030 |

#### 2.4.2 Autonomous Capabilities

**Feedstock-adaptive recipe generation:**
1. Feed analyzer (LIBS + Raman + NIR) characterizes batch in 5 min
2. Digital Twin simulates 1000 virtual batches with candidate recipes
3. Pareto optimization: max recovery, min energy, min time, min wear
4. Selected recipe downloaded to DRTU with confidence interval
5. Real-time twin comparison: if ΔT > 3σ, autonomous recipe adjustment

**Self-optimizing maintenance:**
- Bearing vibration trends → remaining useful life (RUL) prediction
- FBG drift → refractory wear mapping
- Induction efficiency trend → coil insulation degradation
- Predictive work orders generated 2 weeks before predicted failure

**Autonomous safety:**
- GIC event detection (PROD-26) → <10 ms auto-disconnect + safe cool-down
- SIF demand (PROD-28) → 2oo3 voting, <50 ms trip, auto-NCR generation
- Cyber anomaly (PROD-36) → network segmentation, twin isolation, forensics capture

---

### 2.5 All-Aegis Material Maturity — Zero-Metal Supply Chain

**Gen-I achievement:** 24 All-Aegis components certified (PROD-12). **Gen-II target:** 100% All-Aegis for all new components.

#### 2.5.1 Material Maturity Matrix

| Component | Gen-I Material | Gen-II Target | Gap | Program |
|-----------|----------------|---------------|-----|---------|
| Induction coil conductor | Cu tube | CNT-polymer composite (CSMFAB-P002) | Conductivity | FOLLOW-02 |
| Coil housing | BFRP | BFRP + aerogel integral | Thermal | PROD-09 |
| Drive motor | KNbO₃-BaTiO₃ | KNbO₃-BaTiO₃ (same) | — | Mature |
| Bearing | Si₃N₄ ceramic | Si₃N₄ + DLC coating | Life | FOLLOW-12 |
| Seal | ZrO₂ + PEEK CF40 | ZrO₂ + PEEK CF40 (same) | — | Mature |
| Frame | BFRP pultruded | BFRP + CNT reinforcement | Stiffness | FOLLOW-05 |
| Wiring | PMMA optical | PMMA optical + hollow-core | Bandwidth | FOLLOW-11 |
| Exterior glaze | YInMn Blue | YInMn Blue + self-heal | Durability | FOLLOW-13 |

**Critical path:** CNT-polymer conductor (CSMFAB-P002) must achieve >5×10⁶ S/m at 200°C for 500 kW zone current. Current best: 2×10⁶ S/m. Requires aligned CNT forest integration — FOLLOW-02 priority.

---
