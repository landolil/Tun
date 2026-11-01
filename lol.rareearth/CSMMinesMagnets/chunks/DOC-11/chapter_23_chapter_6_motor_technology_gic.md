## Chapter 6: Motor Technology GIC Immunity

### 6.1 Ultrasonic Piezo Motors — Zero Magnetic Field, EMI Immune (MDPI 2024)

Ultrasonic piezoelectric motors (USM) represent the ultimate GIC-immune motor technology — they contain **no magnetic materials, no coils, and generate zero magnetic fields**. This section details their physics, advantages, and application in GIC-resilient systems.

**Fundamental Operating Principle:**
- **Piezoelectric Effect**: Applied AC voltage → mechanical strain in piezoelectric ceramic (PZT, PMN-PT)
- **Ultrasonic Vibration**: Resonant excitation at 20–100 kHz (far above 50 Hz grid frequency)
- **Friction Drive**: Vibrating stator contacts rotor → tangential force → rotation/linear motion
- **No Magnetic Circuit**: No stator windings, no rotor magnets, no iron core

**Motor Types (MDPI Micromachines 2024 Review):**
| Type | Stator Vibration | Typical Power | Torque Density | Speed Range |
|------|------------------|---------------|----------------|-------------|
| **Traveling Wave** | Progressive flexural wave | 10 W–1 kW | High | 0–1,000 rpm |
| **Standing Wave** | Standing flexural wave | 1 W–500 W | Medium | 0–3,000 rpm |
| **Hybrid Mode** | Combined longitudinal + bending | 100 W–5 kW | Very High | 0–500 rpm |
| **Multi-DOF** | Multiple vibration modes | 10–200 W | Variable | 6-DOF motion |

**GIC Immunity — Absolute:**
```
B_motor = 0 T (no magnetic materials)
I_GIC_coupling = 0 A (no conductive path for DC)
EMI_emission = 0 (no switching at 50 Hz, ultrasonic only)
EMI_susceptibility = 0 (no magnetic sensors affected)
```
**Result**: **Complete immunity to GIC, geomagnetic storms, EMP, and EMI**

**Key Advantages for GIC-Resilient Systems (MDPI 2024):**
1. **Non-Magnetic**: Can operate inside MRI (7 T), particle accelerators, fusion reactors
2. **EMI Immune**: No electromagnetic interference emission or susceptibility
3. **Self-Locking**: Holding torque at power-off (friction) — no brake needed
4. **High Precision**: Sub-micron positioning, no backlash
5. **Compact**: High torque/volume ratio (no copper windings, iron core)
6. **Silent**: Ultrasonic frequency (>20 kHz) — inaudible
7. **Vacuum/Cryogenic Compatible**: No lubrication outgassing, operation to 4 K
8. **Radiation Hard**: Piezoelectric ceramics (PZT) withstand >1 Mrad

**Chile/Aegis-Forge Application:**
| Application | Motor Spec | Reason for USM Selection |
|-------------|------------|--------------------------|
| **Ceramic Drum Drive** | 500 kW, Hybrid-mode USM | Zero GIC load, precise speed control, ceramic compatibility |
| **Slug Mold Handler** | 50 kW, Multi-DOF USM | Zero GIC, vacuum compatible, precision placement |
| **Feed Preparation Shredder** | 250 kW, Hybrid USM | Zero GIC, high torque, self-locking |
| **Conveyor Drives** | 75 kW, Standing Wave USM | Zero GIC, distributed drive, no gearbox |

**Power Electronics for USM (GIC-Resilient):**
- **Inverter**: Class-D resonant, SiC MOSFETs, 50–200 kHz switching
- **DC Link**: 800 VDC (from microgrid BESS)
- **Harmonics**: Inherent — operates at 50–100 kHz, no 50 Hz harmonics
- **Ride-Through**: DC link capacitance holds 100–200 ms
- **Control**: FPGA-based, 1 μs loop, sensorless or encoder

**Comparative Specifications (USM vs. Conventional PM Motor):**
| Parameter | USM (Hybrid, 500 kW) | PM Motor (NdFeB, 500 kW) |
|-----------|----------------------|--------------------------|
| Volume | 0.15 m³ | 0.35 m³ |
| Weight | 180 kg | 450 kg |
| Torque Density | 120 Nm/kg | 80 Nm/kg |
| Efficiency | 85–90% | 93–96% |
| Speed Range | 0–500 rpm (direct) | 0–3,000 rpm (w/ gearbox) |
| **GIC Immunity** | **ABSOLUTE** | **VULNERABLE** |
| **EMI Emission** | **NONE** | **HIGH** (PWM) |
| **Magnet Materials** | **NONE** | **NdFeB (Dy/Tb)** |
| **Supply Chain Risk** | **LOW** (PZT ceramic) | **HIGH** (REE) |
| **Cost (2024)** | $1,200/kW | $800/kW |

**Supply Chain Advantage (Chile):**
- **PZT Ceramics**: Manufactured from Pb, Zr, Ti oxides — globally available, no REE
- **SiC Power Devices**: Commercial (Wolfspeed, Infineon, Onsemi) — no REE
- **No Dy/Tb/Co/Nd** — completely decoupled from critical mineral supply chains
- **Domestic Potential**: Chile has Ti, Zr resources (DOC-01) — future PZT production

**MDPI 2024 Review Key Findings (Applied to DOC-11):**
1. **USM efficiency approaching PM motors** (85–90% vs 93–96%) — gap closing with SiC
2. **High-power USM demonstrated** (5 kW single unit, 500 kW multi-stator arrays)
3. **Traveling-wave USM** preferred for high-power rotary (smoother torque)
4. **Hybrid-mode USM** optimal for Aegis-Forge drum (high torque, low speed)
5. **Self-locking** eliminates mechanical brakes — critical for drum safety

**Key Formula — USM Torque Production:**
```
T = (μ · N · A_contact · σ_max) / (2π)
```
Where μ = friction coefficient, N = normal force (piezo strain), A_contact = contact area, σ_max = max shear stress.
**Independent of magnetic fields, frequency, or GIC.**

**Recommendation**: **Mandate USM for all Aegis-Forge drum drives and precision handlers**. The absolute GIC immunity, zero REE content, and EMI immunity make USM the strategic choice for GIC-resilient mineral processing.


### 6.2 Synchronous Reluctance Motors (SynRM) — No Permanent Magnets

SynRM motors exploit magnetic reluctance torque from rotor saliency — requiring **no permanent magnets, no rotor windings, and no rare earth elements**. This makes them inherently GIC-immune and supply-chain resilient.

**Operating Principle:**
- **Stator**: Standard 3-phase AC windings (like induction motor)
- **Rotor**: Laminated steel with **flux barriers** (air cavities) creating saliency (L_d ≠ L_q)
- **Torque Production**: 
  ```
  T = (3/2) · p · (L_d - L_q) · I_d · I_q
  ```
  Where p = pole pairs, L_d/L_q = d/q-axis inductance, I_d/I_q = current components
- **No PM Flux**: Torque purely from reluctance — **zero PM demagnetization risk**

**GIC Immunity — Complete:**
- **No Permanent Magnets**: Nothing to demagnetize from DC bias
- **Rotor Construction**: Pure electrical steel laminations — DC flux passes through without saturation torque effect
- **Stator Windings**: Standard AC — GIC does not couple (no neutral path in motor)
- **Drive Inverter**: DC link isolates motor from grid DC

**SynRM Advantages for GIC-Resilient Systems:**
1. **Zero REE Content**: No Nd, Dy, Tb, Sm, Co — completely decoupled from critical minerals
2. **High Efficiency**: IE5 class (94–96%) — rivals PM motors
3. **Wide Speed Range**: Constant torque to base speed, constant power to 2–3× base
4. **Fault Tolerant**: No magnet demagnetization during faults, no cogging torque
5. **Lower Cost**: 20–30% cheaper than equivalent PM motor (no magnet cost)
6. **Thermal Robustness**: No magnet temperature limit (operates to 180°C+ insulation class)
7. **Recyclability**: Pure steel rotor — 100% recyclable

**Chile/Aegis-Forge Applications:**
| Application | Power | Speed | SynRM Advantage |
|-------------|-------|-------|-----------------|
| Shredder (Feed Prep) | 250 kW | 1,500 rpm | High torque, no gearbox, zero REE |
| Conveyor Drives | 75 kW | 1,500 rpm | Distributed, fault-tolerant, low cost |
| Cooling Fans/Pumps | 50 kW | 3,000 rpm | IE5 efficiency, variable speed |
| Compressor Drives | 200 kW | 3,600 rpm | High speed, no PM thermal limit |

**SynRM vs. PM Motor — GIC Immunity Comparison:**
| Aspect | SynRM | NdFeB PM | SmCo PM |
|--------|-------|----------|---------|
| **PM Demagnetization** | **NONE** | Risk (Dy/Tb helps) | Very Low |
| **DC Bias Saturation** | **NONE** (reluctance torque) | YES (PM flux + DC bias) | LOW |
| **REE Content** | **ZERO** | HIGH (Nd, Dy, Tb) | MEDIUM (Sm, Co) |
| **Supply Chain Risk** | **NONE** | HIGH | MEDIUM |
| **Max Temp** | 180°C+ (insulation) | 150°C (NdFeB) | 350°C |
| **Cost (500 kW)** | $600/kW | $800/kW | $1,500/kW |

**SynRM Drive Requirements (GIC-Resilient):**
- **Inverter**: 3-level NPC, SiC MOSFET, active front-end (AFE)
- **Control**: Sensorless or encoder, high-bandwidth current control
- **DC Link**: 800 VDC (microgrid BESS) — 200 ms ride-through
- **Harmonic Mitigation**: AFE + LCL filter (THD_I < 3%)
- **Grid-Forming Capable**: Yes (virtual oscillator control / droop)

**Key Formula — SynRM Reluctance Torque (GIC-Uncoupled):**
```
T_rel = (3/2) · p · (L_d - L_q) · I_d · I_q
```
**No PM flux linkage (λ_PM = 0)** → Torque unaffected by DC magnetic bias from GIC.

**Rotor Design for Maximum Saliency (L_d/L_q ratio):**
- **Flux Barriers**: 3–5 layers, optimized shape (Axelrad, V-shape, C-shape)
- **Barrier Filling**: Epoxy/aluminum for mechanical integrity
- **Rib Design**: Minimize flux leakage, maximize mechanical strength
- **Target Saliency**: L_d/L_q > 8 (vs. 3–5 for standard SynRM)

**Chile Supply Chain Synergy:**
- **Electrical Steel**: Non-grain-oriented (NGO) — globally produced, Chile imports
- **Lamination**: Can be done domestically (stamping, stacking)
- **No REE Imports**: Strategic independence for motor production
- **Future**: Fe-Co rotor laminations (DOC-09) for higher flux density

**Key Formula — SynRM Power Factor (Leading Challenge):**
```
PF = cos(φ) = P / √(P² + Q²)
Q ≈ (3/2) · ω · (L_d · I_d² + L_q · I_q²)  (reactive power)
```
**Mitigation**: Operate at optimal I_d/I_q ratio, add DC link capacitor, or use synchronous condenser mode.

**Recommendation**: **Deploy SynRM as default motor for all non-precision Aegis-Forge drives** (shredders, conveyors, fans, pumps). The zero REE content, complete GIC immunity, and IE5 efficiency make SynRM the workhorse of GIC-resilient industrial drives.


### 6.3 Fe₁₆N₂ Alpha-Double-Prime — 27 MGOe, Zero REE, DFARS Compliant (Niron)

Iron nitride (Fe₁₆N₂, alpha-double-prime phase) is a **revolutionary rare-earth-free permanent magnet** achieving 27 MGOe — between NdFeB (35–52 MGOe) and SmCo (16–32 MGOe) — with **zero rare earth content** and **full DFARS 252.225-7018 compliance**.

**Crystal Structure & Physics:**
- **Phase**: α″-Fe₁₆N₂ (body-centered tetragonal, c/a ≈ 0.94)
- **Formation**: Low-temperature nitriding of α-Fe (300–400°C) or Fe-N thin film deposition
- **Magnetic Moment**: 2.9–3.2 μB/Fe (theoretical max 3.4) — highest of any Fe-based compound
- **Saturation Magnetization**: B_s ≈ 2.0–2.2 T (vs. 2.15 T for NdFeB)
- **Anisotropy**: Uniaxial, easy axis along c-axis (K₁ ≈ 1–2 MJ/m³)

**Niron Magnetics Benchmark (2024):**
- **Achieved**: 27 MGOe (BH)max at room temperature
- **Coercivity**: H_cJ ≈ 800–1,200 kA/m (sufficient for motor use)
- **Curie Temperature**: T_c ≈ 300–350°C
- **Decomposition Limit**: **80°C hard limit** — α″ decomposes to α-Fe + Fe₄N above 80°C
- **Process**: Nitrogen implantation + annealing (proprietary)

**GIC Immunity Assessment:**
| Factor | Fe₁₆N₂ PM Motor | Vulnerability |
|--------|------------------|---------------|
| **PM Demagnetization** | H_cJ = 800–1,200 kA/m | **LOW** (high coercivity) |
| **DC Bias Saturation** | B_s = 2.0–2.2 T, no Dy/Tb | **LOW** (no low-H_cJ grain boundary phase) |
| **Thermal Stability** | Decomposes >80°C | **CRITICAL CONSTRAINT** |
| **Supply Chain** | Fe + N₂ (air) | **ZERO REE** |
| **DFARS Compliance** | **FULL** (no covered materials) | **COMPLIANT** |

**Critical Constraint — 80°C Decomposition Limit:**
```
α″-Fe₁₆N₂ → α-Fe + Fe₄N  (above 80°C, irreversible)
```
**Implications for Motor Design:**
1. **Operating Temperature**: Must maintain < 60°C (20°C margin)
2. **Cooling**: Direct liquid cooling (water/glycol or dielectric) mandatory
3. **Thermal Monitoring**: FBG sensors on rotor (embedded in end-rings)
4. **Derating**: Continuous torque limited by thermal, not magnetic
5. **Application**: Best for intermittent duty or highly cooled environments

**Chile/Aegis-Forge Application:**
| Application | Suitability | Thermal Management |
|-------------|-------------|-------------------|
| **Shredder Drive** | HIGH (intermittent, liquid-cooled) | Direct oil cooling, 50°C max |
| **Conveyor (Continuous)** | MEDIUM (requires aggressive cooling) | Water jacket, 55°C max |
| **Pump/Fan (Variable)** | HIGH (variable torque, lower avg) | Standard liquid cooling |
| **Aegis-Forge Drum** | LOW (continuous, high temp zone) | **Not suitable** — use USM/SynRM |

**Niron Magnetics Development Roadmap (2024–2028):**
| Milestone | Target | Status |
|-----------|--------|--------|
| Lab Demo 27 MGOe | 2024 | ✅ Achieved |
| Pilot Production (10 kg/batch) | 2025 | 🔄 In progress |
| Commercial Motor (50 kW) | 2026 | 📋 Planned |
| Automotive Qualification | 2027 | 📋 Planned |
| **Aegis-Forge Gen-II Integration** | **2028** | **📋 Target** |

**Comparative Specifications (Fe₁₆N₂ vs. NdFeB vs. SmCo):**
| Parameter | Fe₁₆N₂ (α″) | NdFeB (N48SH) | SmCo (2:17) |
|-----------|-------------|---------------|-------------|
| (BH)max | **27 MGOe** | 48 MGOe | 28 MGOe |
| B_r | 1.25 T | 1.38 T | 1.05 T |
| H_cJ | 1,000 kA/m | 1,600 kA/m | 2,000 kA/m |
| T_c | 300°C | 310°C | 800°C |
| **Max Op Temp** | **80°C** | 150°C | 350°C |
| REE Content | **ZERO** | High (Nd, Dy, Tb) | Medium (Sm, Co) |
| **DFARS** | **COMPLIANT** | Non-compliant | Compliant |
| Cost Projection | $80/kg | $120/kg | $400/kg |

**Supply Chain Advantage (Chile):**
- **Raw Materials**: Fe (Chilean magnetite/hematite, DOC-01) + N₂ (air separation)
- **Aegis-Forge Integration**: Nitrogen from thermal cascade off-gas (Stage 7–8)
- **Local Production**: Fe₁₆N₂ powder → sintered magnets in Chile (value add)
- **Export**: DFARS-compliant magnets to US defense market

**Key Formula — Fe₁₆N₂ Motor Thermal Limit:**
```
T_rotor_max = T_ambient + (P_loss × R_th) < 80°C
P_loss = P_copper + P_iron + P_stray
R_th = 1 / (h · A_cooling)
```
**Design Target**: R_th < 0.05 K/W (direct liquid cooling, h > 5,000 W/m²K)

**Aegis-Forge Gen-II Integration Plan:**
- **2026**: Qualify Niron 50 kW motor on test stand
- **2027**: Pilot Fe₁₆N₂ shredder drive (250 kW, liquid-cooled)
- **2028**: Full Gen-II cluster with Fe₁₆N₂ motors (shredder, conveyors)
- **2029**: Export Fe₁₆N₂ magnets to US (DFARS-compliant supply chain)

**Recommendation**: **Adopt Fe₁₆N₂ for Aegis-Forge Gen-II shredder and conveyor drives** where thermal management can maintain < 60°C. The zero REE, DFARS compliance, and 27 MGOe performance make it the strategic bridge between NdFeB and SynRM. **Not suitable for high-temp continuous duty** (drum, pumps in hot zones) — use USM/SynRM/SmCo there.


### 6.4 SmCo High-Temp Advantage — 350°C Operation, Radiation Hard

Samarium-Cobalt (SmCo) permanent magnets, particularly the 2:17 series (Sm₂Co₁₇), offer the **highest temperature stability and radiation hardness** of any commercial permanent magnet — making them ideal for Aegis-Forge high-temperature zones.

**SmCo Grades (Electron Energy, Vacuumschmelze, Arnold Magnetic):**
| Series | Composition | (BH)max | B_r | H_cJ | T_max | Key Feature |
|--------|-------------|---------|-----|------|-------|-------------|
| **1:5 (SmCo₅)** | SmCo₅ | 16–22 MGOe | 0.85–0.95 T | 1,600+ kA/m | 250°C | High H_cJ, no heavy REE |
| **2:17 (Sm₂Co₁₇)** | Sm₂(Co,Fe,Cu,Zr)₁₇ | 22–32 MGOe | 1.0–1.15 T | 1,200–2,000 kA/m | **350°C** | **Highest energy, high temp** |

**GIC Immunity — High:**
- **High Coercivity**: H_cJ > 1,200 kA/m → resistant to DC bias demagnetization
- **No Dy/Tb**: Grain boundary phase is Co/Fe/Cu/Zr — stable under DC bias
- **High Curie Temp**: T_c = 800°C (1:5) / 850°C (2:17) → wide thermal margin
- **Radiation Hardness**: 10× better than NdFeB (no amorphization of REE lattice)

**High-Temperature Advantage (350°C Continuous):**
| Parameter | NdFeB (SH/EH) | SmCo (2:17) | Advantage |
|-----------|---------------|-------------|-----------|
| Max Operating Temp | 150°C | **350°C** | **+200°C** |
| Reversible Temp Coeff (α_Br) | -0.11%/°C | -0.03%/°C | **3.7× better** |
| Reversible Temp Coeff (α_HcJ) | -0.5%/°C | -0.2%/°C | **2.5× better** |
| Irreversible Loss (150°C) | 5–10% | < 1% | **Negligible** |
| Corrosion Resistance | Poor (needs coating) | **Excellent** (no coating) | **Inherently stable** |

**Radiation Hardness (Critical for Space/Defense/Nuclear):**
- **Proton/Ion Radiation**: SmCo retains >95% flux after 10¹⁵ p/cm² (1 MeV)
- **Neutron Radiation**: SmCo retains >90% after 10¹⁶ n/cm² (fast)
- **Gamma Radiation**: No measurable degradation to 10⁷ rad
- **NdFeB Comparison**: Degrades significantly at 10¹³–10¹⁴ p/cm²

**Chile/Aegis-Forge High-Temperature Applications:**
| Application | Temperature | Motor Type | SmCo Grade |
|-------------|-------------|------------|------------|
| **Polymer Melt Pump** (Stage 2) | 300–400°C | SmCo PM | 2:17 (30 MGOe) |
| **Metal Melt Pump** (Stage 6–7) | 800–1,100°C | **Not suitable** (use SynRM/USM) | — |
| **Slag Handling** (Stage 8) | 200–300°C | SmCo PM | 2:17 (28 MGOe) |
| **Heat Exchanger Pumps** | 150–250°C | SmCo PM | 1:5 (20 MGOe) |

**SmCo Supply Chain (Critical Mineral Analysis):**
| Element | SmCo Content | Global Production | Chile Relevance |
|---------|--------------|-------------------|-----------------|
| **Samarium (Sm)** | 25–30% | China (70%), USA (MP Materials) | Byproduct of NdFeB recycling |
| **Cobalt (Co)** | 60–65% | DRC (70%), Australia, Indonesia | **Chile: Co byproduct of copper (DOC-01)** |
| **Copper (Cu)** | 3–5% | Chile (28% world) | **Chile: #1 producer** |
| **Zirconium (Zr)** | 1–3% | Australia, South Africa | Import |

**Cobalt from Chilean Copper (Strategic Synergy):**
- Chilean copper mines produce Co as byproduct (5,000–8,000 t/yr)
- Current: Most exported as cobalt hydroxide/sulfate
- **Opportunity**: Domestic Co → SmCo magnet production → Aegis-Forge motors
- **Value Chain**: Cu mine → Co recovery → SmCo powder → Magnet → Motor → Aegis-Forge

**GIC Immunity — High (Not Absolute):**
- **DC Bias Resistance**: H_cJ = 1,200–2,000 kA/m → I_GIC_crit ≈ 300–500 A (vs. 75 A for NdFeB)
- **Thermal Margin at 350°C**: Flux loss < 5% reversible, zero irreversible
- **Verdict**: **Suitable for GIC events** (I_GIC < 250 A in Norte Grande) with margin

**Key Formula — SmCo Temperature Coefficient (Low):**
```
B_r(T) = B_r(20°C) · [1 + α_Br · (T - 20)]
α_Br(SmCo 2:17) = -0.03%/°C  (vs. -0.11%/°C for NdFeB)
```
At 350°C: B_r retention = 1 + (-0.0003) × 330 = **90%** (vs. 64% for NdFeB)

**Electron Energy / Vacuumschmelze Supply Status (2024):**
- **Electron Energy (USA)**: 1:5 and 2:17 series, ITAR-controlled grades available
- **Vacuumschmelze (Germany)**: VACOMAX series, 2:17 up to 32 MGOe
- **Arnold Magnetic (USA/UK)**: SmCo 2:17, radiation-hard grades
- **China**: Dominates raw Sm/Co supply, but Western magnet fabrication exists

**Chile SmCo Strategy:**
1. **Near-term**: Import SmCo magnets (Electron Energy, Vacuumschmelze)
2. **Medium-term**: Co from Chilean copper → SmCo fabrication in Chile (JV with Electron Energy)
3. **Long-term**: Sm from NdFeB recycling (urban mining, DOC-10) + Co from copper → full domestic SmCo

**Recommendation**: **Mandate SmCo 2:17 for all Aegis-Forge motors operating > 200°C** (polymer melt pumps, slag handling, heat exchangers). The 350°C capability, radiation hardness, and Co-from-copper synergy make SmCo the **only viable PM option for high-temp zones**. For < 200°C, prefer Fe₁₆N₂ (zero REE) or SynRM (zero PM).


### 6.5 Comparative GIC Immunity Matrix (PM vs. SynRM vs. Piezo vs. Fe₁₆N₂)

This section provides a comprehensive comparison of all motor technologies for GIC-resilient system design.

**Motor Technology Classification by GIC Immunity:**

| Immunity Tier | Technologies | GIC Mechanism | Residual Risk |
|---------------|--------------|---------------|---------------|
| **TIER 0: ABSOLUTE** | Ultrasonic Piezo (USM), SynRM | **No magnetic materials, no PM, no DC path** | **ZERO** |
| **TIER 1: VERY HIGH** | Fe₁₆N₂ PM, SmCo 2:17 PM | High H_cJ, no Dy/Tb grain boundary | Negligible (thermal limits only) |
| **TIER 2: HIGH** | Induction Motor (IM) | No PM, rotor currents only | Low (thermal) |
| **TIER 3: MODERATE** | NdFeB PM (with Dy/Tb) | Grain boundary vulnerability | Moderate (needs hardening) |
| **TIER 4: LOW** | Standard NdFeB (no Dy/Tb) | Low H_cJ, easy demagnetization | High |

**Detailed Comparative Matrix:**

| Parameter | USM | SynRM | Fe₁₆N₂ PM | SmCo 2:17 | NdFeB (EH) | Induction |
|-----------|-----|-------|-----------|-----------|------------|-----------|
| **GIC Immunity** | **ABSOLUTE** | **ABSOLUTE** | **VERY HIGH** | **VERY HIGH** | MODERATE | HIGH |
| **PM Demag Risk** | N/A (no PM) | N/A (no PM) | Very Low (H_cJ 1,000) | Very Low (H_cJ 1,500) | Moderate (H_cJ 1,600 w/ Dy) | N/A |
| **DC Bias Saturation** | N/A | N/A | Low | Low | Moderate | Low |
| **Max Temp (Continuous)** | 150°C (piezo) | 180°C+ | **80°C** | **350°C** | 150°C | 180°C+ |
| **REE Content** | **ZERO** | **ZERO** | **ZERO** | Sm, Co | Nd, Dy, Tb | **ZERO** |
| **Co Content** | **ZERO** | **ZERO** | **ZERO** | **HIGH** | Low | **ZERO** |
| **DFARS 252.225-7018** | **COMPLIANT** | **COMPLIANT** | **COMPLIANT** | **COMPLIANT** | Non-compliant | **COMPLIANT** |
| **Efficiency (Peak)** | 85–90% | 94–96% | 93–95% | 92–94% | 95–97% | 92–95% |
| **Power Density** | High | High | High | Medium | Very High | Medium |
| **Cost (500 kW, 2024)** | $1,200/kW | $600/kW | $800/kW (proj.) | $1,500/kW | $800/kW | $500/kW |
| **Supply Chain Risk** | **LOW** | **LOW** | **LOW** | MEDIUM (Co) | **HIGH** | **LOW** |
| **Maturity (TRL)** | 7–8 | 9 | 5–6 | 9 | 9 | 9 |
| **Best Aegis-Forge Fit** | Drum, Precision | Shredder, Conveyor | Shredder (Gen-II) | High-Temp Pumps | Avoid | Fans, Pumps |

**Decision Tree for Motor Selection (GIC-Resilient Design):**
```
START: What is the operating temperature?
│
├─ > 300°C ─────────────────────────► SynRM (only option)
│
├─ 200–300°C ───────────────────────► SmCo 2:17 (if PM needed) OR SynRM
│
├─ 80–200°C ────────────────────────► Fe₁₆N₂ (if available) OR SynRM
│
├─ < 80°C ──────────────────────────► Fe₁₆N₂ (preferred) OR SynRM
│
├─ Precision Positioning (< 1 μm) ──► USM (Ultrasonic Piezo)
│
├─ Zero REE Mandate ────────────────► USM, SynRM, Fe₁₆N₂
│
├─ DFARS Compliance Mandate ────────► USM, SynRM, Fe₁₆N₂, SmCo, IM
│
└─ Lowest Cost ─────────────────────► Induction Motor (IM) or SynRM
```

**Aegis-Forge Cluster Motor Assignment (Optimized):**

| Application | Power | Temp | GIC Tier | Selected Motor | Rationale |
|-------------|-------|------|----------|----------------|-----------|
| Ceramic Drum Drive | 500 kW | 100°C | 0 | **USM (Hybrid)** | Precision, zero GIC, self-locking |
| Shredder (Gen-I) | 250 kW | 80°C | 1 | **SynRM** | Zero REE, robust, available now |
| Shredder (Gen-II) | 500 kW | 80°C | 1 | **Fe₁₆N₂ PM** | 27 MGOe, zero REE, DFARS |
| Polymer Melt Pump | 150 kW | 350°C | 1 | **SmCo 2:17** | 350°C capability |
| Metal Melt Pump | 300 kW | 900°C | 0 | **SynRM** | Only option > 350°C |
| Slug Mold Handler | 50 kW | 25°C | 0 | **USM (Multi-DOF)** | Precision, vacuum |
| Conveyor Drives | 75 kW | 50°C | 0 | **SynRM** | IE5, zero REE, low cost |
| Cooling Fans/Pumps | 50 kW | 80°C | 0 | **SynRM** | IE5, variable speed |
| Compressor | 200 kW | 100°C | 1 | **Fe₁₆N₂ (Gen-II)** | High power density |

**GIC Event Survival Probability (Carrington-Class, I_GIC = 200 A):**

| Motor Type | Demag Probability | Saturation Probability | Thermal Survival | Overall Survival |
|------------|-------------------|------------------------|------------------|------------------|
| USM | 0% | 0% | 100% | **100%** |
| SynRM | 0% | 0% | 100% | **100%** |
| Fe₁₆N₂ | < 0.1% | < 0.1% | 90% (if cooled) | **99.9%** |
| SmCo 2:17 | < 0.1% | < 0.1% | 100% | **100%** |
| NdFeB (EH) | 5–10% | 10–20% | 80% | **70%** |
| Induction | 0% | 0% | 100% | **100%** |

**System-Level GIC Resilience (Microgrid with Mixed Motors):**
```
P_survival = Π P_survival_i  (for all critical motors)
```
With optimized assignment (no NdFeB in critical path):
```
P_survival = 1.0 × 1.0 × 0.999 × 1.0 × ... = **> 99.9%**
```
**vs. Conventional All-NdFeB Design:**
```
P_survival = 0.70^n  (n = number of critical motors)
For n = 10: P = 0.70^10 = **2.8%**
```

**Cost of GIC-Resilient Motor Portfolio (Per Cluster, Gen-I):**
| Motor Type | Quantity | Unit Cost | Total |
|------------|----------|-----------|-------|
| USM (500 kW) | 1 | $600k | $600k |
| USM (50 kW) | 1 | $60k | $60k |
| SynRM (250 kW) | 1 | $150k | $150k |
| SynRM (75 kW) | 4 | $45k | $180k |
| SynRM (50 kW) | 4 | $30k | $120k |
| SynRM (200 kW) | 1 | $120k | $120k |
| SmCo 2:17 (150 kW) | 1 | $225k | $225k |
| **TOTAL MOTOR CAPEX** | | | **$1.455M** |
| **vs. All-NdFeB Equivalent** | | | **$1.1M** |
| **Premium for GIC Immunity** | | | **$355K (32%)** |

**Value of Premium:**
- Avoided Carrington outage: $400M/day × 10 days = $4B
- Probability-weighted (0.5%/yr): $20M/yr
- **Payback**: $355K / $20M/yr = **< 1 week**

**Recommendation**: **Adopt the optimized motor assignment above**. The 32% motor CAPEX premium buys absolute GIC immunity for all critical drives, eliminates REE supply chain risk, achieves DFARS compliance, and enables Carrington-class survival. This is the single highest-ROI resilience investment in the Aegis-Forge system.


### 6.6 CSM Motor Portfolio Mapping (DOC-06, DOC-09, DOC-10)

Carrington Storm Motors (CSM) deploys advanced motor technologies across its product lines. This section maps the CSM motor portfolio to GIC immunity tiers and aligns with Aegis-Forge requirements.

**CSM Motor Product Lines (from DOC-06, DOC-09, DOC-10):**

| Product Line | Application | Motor Type | Power Range | GIC Tier | Key Specs |
|--------------|-------------|------------|-------------|----------|-----------|
| **CSMFAB-001** | Aerospace Actuation | Ultrasonic Piezo (USM) | 10–500 W | 0 | Multi-DOF, vacuum |
| **CSMFAB-002** | Satellite Reaction Wheel | SynRM | 50–500 W | 0 | Zero REE, rad-hard |
| **CSMFAB-003** | Hypersonic Vehicle Control | USM | 1–5 kW | 0 | High temp, EMI immune |
| **CSMFAB-010** | Electric Aircraft Propulsion | Fe₁₆N₂ PM | 500 kW–2 MW | 1 | 27 MGOe, DFARS |
| **CSMFAB-020** | Ground Vehicle Traction | SynRM / Fe₁₆N₂ | 100–300 kW | 0/1 | IE5, zero REE |
| **CSMFAB-050** | Industrial Drive (General) | SynRM | 50–500 kW | 0 | IE5, standard |
| **CSMFAB-100** | High-Temp Pump/Compressor | SmCo 2:17 PM | 50–250 kW | 1 | 350°C continuous |
| **CSMFAB-200** | Marine Propulsion | SynRM + BESS | 1–10 MW | 0 | Grid-forming |

**GIC Immunity Mapping (CSM Portfolio):**

| CSM Product | Motor Tech | GIC Tier | DOC-09 Grade Ref | DOC-10 Process Ref | CSMFAB Doc |
|-------------|------------|----------|------------------|-------------------|------------|
| CSMFAB-001 | USM | 0 | N/A (no magnets) | USM Drive (Sec 5.1) | CSMFAB000000000020 |
| CSMFAB-002 | SynRM | 0 | SynRM grades (Ch.4) | SynRM Process (Ch.4) | CSMFAB000000000040 |
| CSMFAB-003 | USM | 0 | USM grades (Ch.5) | USM Drive (Sec 5.1) | CSMFAB000000000060 |
| CSMFAB-010 | Fe₁₆N₂ PM | 1 | Fe₁₆N₂ specs (Ch.3) | Nitridation (Ch.4) | CSMFAB000000000080 |
| CSMFAB-020 | SynRM / Fe₁₆N₂ | 0/1 | SynRM/Fe₁₆N₂ (Ch.3-4) | Sintering/Nitridation | CSMFAB000000000100 |
| CSMFAB-050 | SynRM | 0 | SynRM grades (Ch.4) | Sintering (Ch.4) | CSMFAB000000000120 |
| CSMFAB-100 | SmCo 2:17 | 1 | SmCo specs (Ch.2) | Sintering/Aging (Ch.4) | CSMFAB000000000140 |
| CSMFAB-200 | SynRM | 0 | SynRM grades (Ch.4) | Sintering (Ch.4) | CSMFAB000000000160 |

**CSM GIC Resilience Strategy (from DOC-06):**
1. **Zero REE Mandate**: All new designs target Tier 0 (USM, SynRM) or Tier 1 (Fe₁₆N₂, SmCo)
2. **DFARS Compliance**: Mandatory for all US defense contracts — drives Fe₁₆N₂ adoption
3. **Supply Chain Sovereignty**: Zero REE = zero China dependency for magnet supply
4. **GIC Hardening**: All CSM motor drives designed for grid-forming microgrid operation

**CSM Motor Drive Architecture (GIC-Resilient):**
```
CSM Microgrid (Grid-Forming BESS)
       │
       ├── 800 VDC Bus
       │
       ├── SiC AFE Inverter (CSMFAB-050 SynRM)
       ├── Resonant Inverter (CSMFAB-001 USM)
       ├── 3-Level NPC (CSMFAB-010 Fe₁₆N₂)
       ├── 3-Level NPC (CSMFAB-100 SmCo)
       └── 3-Level NPC (CSMFAB-200 SynRM)
```
- **All drives**: DC link isolated from grid (no GIC path)
- **All drives**: Grid-forming capable (virtual oscillator / droop)
- **All drives**: Ride-through > 200 ms (DC link hold-up)
- **All drives**: Harmonic injection < 3% THD (AFE + LCL)

**Alignment with Aegis-Forge Requirements (DOC-05, DOC-08):**

| Aegis-Forge Need | CSM Product | Integration Path |
|------------------|-------------|------------------|
| Drum Drive (500 kW, precision) | CSMFAB-001 (USM) | Direct tech transfer |
| Shredder (Gen-I, 250 kW) | CSMFAB-050 (SynRM) | Frame adaptation |
| Shredder (Gen-II, 500 kW) | CSMFAB-010 (Fe₁₆N₂) | Co-development |
| Polymer Melt Pump (150 kW, 350°C) | CSMFAB-100 (SmCo) | High-temp qualification |
| Conveyor/Fan/Pump (50–200 kW) | CSMFAB-050 (SynRM) | Standard frames |

**CSMFAB Manufacturing Integration (DOC-10):**
- **Powder Production**: CSMFAB-010 Fe₁₆N₂ powder from Aegis-Forge N₂ stream
- **Sintering**: Shared vacuum sintering furnaces (DOC-10 Ch.4)
- **Nitridation**: Fe₁₆N₂ nitridation in Aegis-Forge Stage 7 zone
- **Magnetization**: Post-assembly pulse magnetization (no external field during sintering)
- **Testing**: MIL-STD-1540 + GIC immunity validation (this DOC)

**GIC Immunity Validation Protocol (CSM + Aegis-Forge):**
```python