# CEN Relay Settings for GIC Resilience (Annex to PET 2025)
Transformer_87T:
  harmonic_restraint: {H2: 0.15, H3: 0.18, H5: 0.35, H7: 0.18}
  slope1: 30%, slope2: 50%, breakpoint: 2.0 pu
  min_pickup: 0.3 pu

Neutral_67N:
  enable: true
  polarization: V0 (3V0)
  pickup: 0.1 pu
  time_delay: 0.3 s
  directional_angle: 60°

Neutral_51N_Adaptive:
  base_pickup: 0.2 pu
  k_GIC: 0.5  # pickup increases 0.5 A per 1 A GIC
  max_pickup: 2.0 pu

Distance_21:
  algorithm: full_cycle_DFT
  zone1_reach: 85%
  zone2_reach: 120% (was 110%)
  zone3_reach: 150% (was 130%)
  load_encroachment: enabled
```

**Testing & Validation:**
- **Relay Test Set**: OMICRON CMC 430 / Megger SVERKER 900
- **Test Waveforms**: COMTRADE files with GIC saturation (IEEE C37.111-2013)
- **Test Cases**: 
  1. Normal load → GIC ramp (0→200 A) → verify no false trip
  2. Internal fault + GIC (100 A) → verify trip < 30 ms
  3. External fault + GIC (150 A) → verify restraint
- **Frequency**: Annual (coincide with protection audit)

**Key Formula — Adaptive 51N Pickup:**
```
51N_pickup(t) = 51N_base + k_GIC × I_GIC_HallCT(t)
```
Where I_GIC_HallCT is real-time GIC from Hall-effect CT (Section 3.5). This ensures neutral overcurrent only operates for genuine ground faults, not GIC.


### 4.3 Blackstart Capability & Islanding Schemes

A Carrington-class GIC event can cause widespread blackout. This section defines blackstart resources and islanding schemes to maintain critical loads (mining, Aegis-Forge, essential services) and accelerate system restoration.

**Blackstart Resources in SEN (CEN 2024):**

| Resource | Type | Capacity | Location | Blackstart Capability | GIC Resilience |
|----------|------|----------|----------|----------------------|----------------|
| **Rapel** | Hydro (reservoir) | 377 MW | Central | Yes (self-start) | High (no GIC path) |
| **Cipreses** | Hydro (reservoir) | 106 MW | Central | Yes | High |
| **Colbún** | Hydro (reservoir) | 472 MW | Central | Yes | High |
| **Pangue** | Hydro (run-of-river) | 467 MW | Central | Partial | Medium |
| **Ralco** | Hydro (reservoir) | 690 MW | Biobío | Yes | High |
| **Angostura** | Hydro (reservoir) | 316 MW | Biobío | Yes | High |
| **Cochrane** | Hydro (reservoir) | 531 MW | Aysén | Yes (isolated) | High |
| **HidroAysén** | Hydro (planned) | 2,750 MW | Aysén | Future | High |
| **BESS** | Battery | 2,472 MW | Distributed | Yes (grid-forming) | **Very High** |
| **Diesel (Emergency)** | Thermal | 500 MW | Distributed | Yes | **Very High** (delta GSU) |

**Total Blackstart Capacity: ~3,500 MW (hydro) + 2,472 MW (BESS) + 500 MW (diesel) = 6,472 MW**

**GIC Impact on Blackstart Resources:**
- **Hydro Generators**: Delta GSU transformers (standard) → **No GIC path** → Unaffected
- **BESS Inverters**: Grid-forming inverters with isolation transformers → **No GIC path** → Unaffected
- **Diesel Generators**: Typically delta or HRG → **Minimal GIC** → Unaffected
- **Thermal (Coal/Gas)**: Wye-grounded GSU → **Vulnerable** — not primary blackstart

**Islanding Schemes — Critical Load Preservation:**

**Scheme 1: Norte Grande Mining Island (Autonomous Operation)**
- **Trigger**: 500 kV collapse (Crucero/Antofagasta/Encuentro all offline) OR GIC > 150 A sustained > 5 min
- **Action**: 
  1. Open 500/220 kV autotransformer HV breakers
  2. Close 220 kV tie breakers between mining substations
  3. Start local generation (diesel, BESS, solar curtailment)
  4. Shed non-critical loads (maintain SAG mills, flotation, water pumps)
- **Capacity**: ~800 MW local (BESS 400 MW + Diesel 200 MW + Solar 200 MW)
- **Load**: ~1,200 MW critical mining → **Load shed 400 MW (non-critical)**
- **Duration**: Indefinite (until 500 kV restoration)

**Scheme 2: Aegis-Forge Cluster Island (DOC-05, DOC-08)**
- **Trigger**: Grid frequency < 49.0 Hz OR voltage < 0.85 pu at cluster bus
- **Action**:
  1. Open PCC (Point of Common Coupling) breaker
  2. Transition to grid-forming BESS (cluster microgrid)
  3. Maintain separation process (thermal cascade) — **zero downtime**
- **Capacity**: 50 MW BESS per cluster (Alpha, Beta, Gamma)
- **Load**: 40 MW process + 5 MW auxiliary
- **Duration**: 72 hours (BESS) → Diesel extension

**Scheme 3: Santiago Metropolitan Island**
- **Trigger**: Central 500 kV loop collapse (Polpaico/Alto Jahuel/Charrúa)
- **Action**: 
  1. Island at 220 kV sub-transmission level
  2. Use Rapel/Cipreses/Colbún + BESS for frequency control
  3. Maintain essential services (hospitals, water, metro, comms)
- **Capacity**: 1,500 MW hydro + 800 MW BESS
- **Load**: 2,500 MW essential → **Load shed 1,000 MW (non-essential)**

**Blackstart Sequence (CEN Restoration Plan):**
```
T+0:     Event (GIC-induced collapse)
T+5 min: Automatic islanding schemes activate
T+15 min: Blackstart units online (hydro governors in isochronous)
T+30 min: Cranking paths established to 220 kV substations
T+1 hr:  Critical loads restored (mining, hospitals, water)
T+4 hr:  500 kV backbone re-energized (sectionalized)
T+12 hr: Full SEN synchronization
T+24 hr: Normal operation
```

**GIC-Specific Blackstart Considerations:**
1. **Residual GIC**: After CME passes, GIC decays over hours. Re-energization must verify I_GIC < 10 A before closing 500 kV breakers.
2. **Transformer Assessment**: Visual inspection + DGA + FRA for units exposed to >100 A GIC before re-energization.
3. **Harmonic Clearance**: Verify THD_V < 5% before connecting sensitive loads (VFDs, SVCs).
3. **Phased Restoration**: Prioritize Norte Grande mining corridor (economic impact $400M/day).

**Islanding Detection & Communication:**
- **Communication**: IEC 61850 GOOSE over fiber (latency < 4 ms)
- **Signals**: 
  - `Islanding_Trigger` (from 500 kV breaker status + GIC monitor)
  - `Blackstart_Ready` (from hydro/BESS status)
  - `Load_Shed_Confirm` (from mining SCADA)
- **Automation**: RAS (Remedial Action Scheme) — SIL 3 rated

**Chile-Specific Islanding Challenges:**
1. **Long 500 kV Lines**: High charging current during energization → temporary overvoltage
   - **Solution**: Controlled switching (point-on-wave), reactor switching
2. **Solar PV Penetration**: Daytime islanding requires curtailment coordination
   - **Solution**: IEEE 1547-2018 ride-through + curtailment signals
3. **Seismic Risk**: Post-event inspection of substation structures before re-energization
   - **Solution**: Pre-approved inspection protocols, drone surveys

**Key Formula — Island Frequency Stability:**
```
df/dt = (P_gen - P_load) / (2 · H · f₀)
```
Where H = equivalent inertia constant (MW·s/MVA). For Norte Grande island:
- H ≈ 3 s (hydro + synchronous condensers + grid-forming BESS)
- P_gen - P_load = -400 MW (after shedding)
- df/dt = -400 / (2 × 3 × 50) = -1.33 Hz/s
- **With BESS synthetic inertia (H_syn = 2 s)**: df/dt = -0.8 Hz/s → manageable

**Recommendation**: Formalize islanding schemes in CEN **Operational Procedure PO-GIC-001**, test annually via simulation and tabletop exercise.


### 4.4 NERC TPL-007 Benchmark Planning Cases (Chile Adaptation)

NERC TPL-007-4 (Transmission System Planned Performance for Geomagnetic Disturbances) is the North American standard for GIC resilience planning. This section adapts its benchmark cases for the Chilean SEN.

**TPL-007 Requirements Summary:**
1. **R1**: Maintain GIC System Model (topology, parameters, grounding)
2. **R2**: Benchmark GMD Event — 1-in-100 year (V/km specified)
3. **R3**: Supplemental GMD Event — 1-in-100 year with local enhancement
4. **R4**: Thermal Impact Assessment (transformer heating)
5. **R5**: Corrective Action Plan (if criteria not met)
6. **R6**: GIC Monitoring (at selected transformers)
7. **R7**: Model Validation (compare measured vs. calculated GIC)

**Benchmark GMD Event (TPL-007-4, Attachment 1):**
- **Geoelectric Field**: 8 V/km (northward) over 100 km × 100 km region
- **Duration**: 2 minutes peak, 10 minutes total
- **Waveform**: Double-exponential (rise 30 s, decay 120 s)
- **Application**: Uniform over entire planning area

**Supplemental GMD Event (TPL-007-4, Attachment 2):**
- **Geoelectric Field**: 12 V/km (northward) over localized 50 km × 50 km region
- **Duration**: Same as benchmark
- **Purpose**: Account for localized ground conductivity enhancements

**Chile Adaptation — Key Differences:**
| Parameter | NERC (North America) | Chile Adaptation |
|-----------|---------------------|------------------|
| Latitude | 40–60°N (auroral zone) | 18–55°S (sub-auroral to auroral) |
| Ground Conductivity | Layered (USGS 1D models) | **Atacama hyperarid (ρ = 10,000–50,000 Ω·m)** |
| Benchmark E-field | 8 V/km (uniform) | **30 V/km (Norte Grande), 5 V/km (Central), 2 V/km (South)** |
| Supplemental E-field | 12 V/km (localized) | **50 V/km (Salar edges), 15 V/km (Andes foothills)** |
| Grid Topology | Mesh (Eastern Interconnect) | **Radial N-S (single corridor)** |
| Transformer Grounding | Mostly solid wye | **Solid wye dominant** |
| **Vulnerability** | Moderate | **EXTREME (Norte Grande)** |

**Chile-Specific Benchmark Cases:**

**Case 1: Benchmark GMD — Carrington-Class (National)**
- **E-field**: 30 V/km (18–28°S), 5 V/km (28–38°S), 2 V/km (38–55°S)
- **Orientation**: Eastward (driven by northward B variation)
- **Duration**: 20 min peak, 60 min total (Carrington duration)
- **Waveform**: Measured 1859 dB/dt profile (Boteler 2019)
- **Assessment**: All transformers ≥220 kV

**Case 2: Supplemental GMD — Localized Enhancement (Salar de Atacama)**
- **E-field**: 50 V/km over Salar de Atacama (23.5°S, 50×50 km)
- **Cause**: Conductive brine channel focusing geoelectric field
- **Impact**: S/E Antofagasta, S/E Maitencillo, S/E Mejillones
- **Assessment**: Detailed thermal for 500/220 kV autos

**Case 3: Supplemental GMD — Andes Foothills (Encuentro)**
- **E-field**: 15 V/km over Andes foothills (28°S, 100×50 km)
- **Cause**: 3D conductivity anomaly (partial melt at depth)
- **Impact**: S/E Encuentro, S/E Polpaico

**Thermal Impact Assessment (TPL-007 R4):**
For each transformer, calculate hotspot temperature:
```
ΔT_hotspot = (I_GIC / I_rated)² × K_thermal × t_duration
```
Where K_thermal = transformer-specific thermal factor (°C per pu²).
- **Pass Criterion**: ΔT_hotspot < 200°C above ambient (insulation limit)
- **Chile Result**: 16 of 24 500/220 kV autos **FAIL** benchmark case without mitigation

**Corrective Action Plan (TPL-007 R5) — Chile:**
| Deficiency | Corrective Action | Timeline | Cost |
|------------|-------------------|----------|------|
| 16/24 500/220 kV autos fail thermal | NBC installation (Phase 1) | 18 months | $22.5M |
| SVC harmonic instability | Harmonic filters + GIC-mode | 24 months | $5.5M |
| Relay misoperation risk | 3rd/7th harmonic restraint + 67N | 12 months | $2.0M |
| Monitoring gaps | Hall CT deployment (Phase 1) | 12 months | $1.2M |
| Blackstart validation | Annual islanding test | Ongoing | $0.5M/yr |

**Model Validation (TPL-007 R7) — Chile:**
- **Data Sources**: Hall CT (52 units by 2026), Magnetometers (5 stations)
- **Events for Validation**: 
  - May 2024 Gannon storm (Dst -412 nT) — moderate
  - Sep 2017 storm (Dst -146 nT) — minor
  - Future: Next G2+ storm
- **Metric**: Normalized RMS Error (NRME) < 30% for GIC magnitude
- **Current Status**: Model calibrated to 2024 Gannon (NRME = 22%)

**Chile TPL-007 Compliance Roadmap:**
| Year | Milestone | TPL-007 Requirement |
|------|-----------|---------------------|
| 2025 | GIC System Model complete (R1) | R1 |
| 2026 | Benchmark cases run, deficiencies identified (R2, R3, R4) | R2–R4 |
| 2026 | Phase 1 hardening committed (R5) | R5 |
| 2026 | Hall CT at 12 critical substations (R6) | R6 |
| 2027 | Model validation with 2024/2025 data (R7) | R7 |
| 2028 | Phase 2 hardening complete | R5 |
| 2030 | Full compliance (all requirements met) | All |

**Key Adaptation — Ground Conductivity Model:**
NERC uses USGS 1D models (30 m resolution). Chile requires:
- **Atacama 1D Model**: 7-layer (Section 2.5 table)
- **3D MT Model**: For Salar de Atacama, Andes foothills (Section 2.5)
- **Validation**: MT sounding data from SERNAGEOMIN, Universidad de Chile

**Key Formula — TPL-007 Thermal Screening (Simplified):**
```
I_GIC_screen = 15 × (MVA / 100)^0.5  [A/phase]
```
For 500 MVA: I_screen = 15 × √5 = 33.5 A
**Any transformer with I_GIC > I_screen requires detailed thermal assessment.**
- Chile Norte Grande: All 500/220 kV autos exceed screen (80–250 A)
- **Result**: Full thermal assessment required for all critical transformers


### 4.5 IEEE 1313.2 — GIC Modeling & Assessment Procedures

IEEE Std 1313.2-2013 (IEEE Guide for Geomagnetic Disturbance (GMD) Modeling and Assessment of Power Systems) provides the methodological foundation for GIC studies. This section applies its procedures to the SEN.

**IEEE 1313.2 Modeling Framework:**

1. **Geomagnetic Field Model**: 
   - Plane wave source (uniform B-field over region)
   - Time-series B_x(t), B_y(t) from magnetometers or synthetic benchmark

2. **Earth Conductivity Model**:
   - 1D layered (regional) or 3D (local anomalies)
   - Surface impedance Z(ω) or transfer function E/B

3. **Geoelectric Field Calculation**:
   - E(ω) = Z(ω) × [k̂ × H(ω)]
   - Time-domain convolution for arbitrary waveforms

4. **Power System Model**:
   - Nodal admittance (Y_node) for DC (GIC) network
   - Transmission lines: R_DC, geometry
   - Transformers: Wye-grounded = GIC path, Delta = open
   - Grounding: R_ground per substation

5. **GIC Solution**:
   - Y_node · V_node = J_source
   - GIC = V_node / R_ground (transformer neutral)

6. **Assessment**:
   - Thermal: Hotspot temperature vs. limits
   - Reactive: Var consumption vs. reserves
   - Harmonics: THD_V, relay coordination
   - Voltage: Post-GIC voltage profile

**Chile Implementation of IEEE 1313.2:**

**Step 1: Geomagnetic Field Input**
```python