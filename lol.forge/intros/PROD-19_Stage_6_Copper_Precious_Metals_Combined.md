# Combined Heuristic Synthesis — PROD-19: Stage 6 Copper & Precious Metals
## Three-Way Integration: Williams Constraint + Keymaker Operator + El Segundo Protocol

### Executive Synthesis

PROD-19 Stage 6 Copper & Precious Metals is the **pivot point of the thermal cascade's value proposition**. Stages 1-5 prepare and concentrate; Stages 7-8 finish the ferrous and mineral fractions. But Stage 6 is where the **precious metal economics concentrate** — 91% of batch revenue ($45,369 of $49,800) flows through the anode slime produced in this 45-minute window. The three heuristics converge on a single architectural truth: **Stage 6 must be a precision anode casting machine embedded in a thermal cascade**.

The Williams Constraint (irreducible thermodynamic coincidence of Cu/PM melting points) dictates the ONLY viable PM recovery path: dissolution into Cu melt → anode casting → slime formation → electrorefining. The Keymaker Lock (simultaneous melt-homogenize-cast in one drum) dictates the CFDO-CB operator as the single computational primitive governing film drainage, PM transport, and solidification segregation. The El Segundo Protocol (nested verification loops at 1 kHz / 1 Hz / per-anode) dictates the sensor fusion architecture that makes the CFDO-CB executable in real-time. These three are not parallel perspectives — they are SEQUENTIAL DEPENDENCIES: the Constraint defines the WHAT, the Operator defines the HOW, the Protocol defines the HOW-WELL.

### Risk Matrix — Convergence of Three Heuristics

| Risk | Williams (Constraint) | Keymaker (Operator) | El Segundo (Protocol) | Integrated Mitigation |
|---|---|---|---|---|
| **PM loss to slag** | Thermodynamic: PMs dissolve in Cu, not slag | CFDO-CB predicts Pe=28,000 → PMs stay in film | XRF 1/min verifies PM_dissolved >95% feed | Triple lock: physics + prediction + measurement |
| **Anode O >200 ppm** | Chemical: Cu₂O forms without H₂ | CFDO-CB gas equilibrium model p_H₂O/p_H₂ <10⁻⁹ | Dew point <-40°C continuous, H₂ 5%±0.1% | Atmosphere control closed-loop at 1 kHz |
| **Anode slime grade low** | Mass balance: Stage 4-5 PMs must arrive | Scheil k_Au=0.001 predicts 99.6% to slime | LIBS per anode + fire assay per batch | Genealogical traceability from PCB to slime |
| **Thermal runaway** | Induction coupling changes as Cu melts | Resonance tracking maintains ZVS | FBG 1 kHz PID + hardwired trip at 1210°C | GaN Class E + FBG + hardware interlock |
| **Hydride emission** | As/Sb/Bi + H₂ → toxic hydrides | Volatilization kinetics in CFDO-CB | MS 10 Hz → Train B carbon flow adjust | Chemisorbent capacity tracked per batch |
| **Anode dimensional fail** | Casting physics: Chvorinov solidification | CFDO-CB mold thermal model | Laser dim check + LIBS grade per anode | 4-mold carousel = statistical process control |
| **Cascade transition fail** | Stage 7 needs 1200°C, Fe solid, Cu gone | Power taper profile in CFDO-CB | Zone 6-4 verification → Stage 7 handoff | Shared drum = atomic thermal transition |

**Critical Insight:** Every risk in the matrix is addressed by ALL THREE heuristics simultaneously. No single heuristic provides complete coverage. The convergence IS the safety case.

### Cross-Stage Dependency Chain

```
STAGE 4 (PROD-17)          STAGE 5 (PROD-18)          STAGE 6 (THIS)           STAGE 7 (PROD-20)
Indium-First PM Capture    Aluminum Window Clear      Anode Cast + Slime       Ferrous + REE
     │                          │                          │                        │
     ▼                          ▼                          ▼                        ▼
Au 99.5% → In/Sn          Al removed,              Cu melt + PMs →           Fe melt + REE
Ag 99% → In/Sn/Pb          Cu/Fe solid             Anode (99.9% Cu)          separation
Pd 95% → In/Sn             Mg removed              Slime (Au/Ag/Pd/Pt)       REE to FOLLOW-15
Pt 80% → In/Sn/Pb                                               → FOLLOW-19
     │                          │                          │                        │
     └──────────────────────────┴──────────────────────────┴────────────────────┘
                                    │
                          PM MASS BALANCE CLOSURE
                          (This document's commitment)
```

**Dependency Specifications:**
- **From PROD-17:** Stage 4 dross delivers 0.5 kg PMs (Au 2g, Ag 40g, Pd 8g, Pt 6g) + 18 kg oxides/flux. Stage 6 mass balance INPUT assumes this composition.
- **From PROD-18:** Stage 5 mineral residue delivers 30 kg Cu + 80 kg Fe + 60 kg minerals. Stage 6 feed model assumes Cu particles 1-50 mm, Fe solid at 1150°C.
- **To PROD-08:** 4×50 kg anodes + 0-20 kg continuous Cu → cooling carousel S-07. Anode specs: 100×500×112 mm, >99.9% Cu, O<200ppm.
- **To FOLLOW-19:** 40-60 kg slime/batch (Au>5%, Ag>15%, Pd>0.5%, Pt>0.1%) in N₂-sealed ZrO₂ containers with UUID chain.
- **To PROD-20:** 160 kg residue (Fe 80 kg, minerals 60 kg, Cu<2 kg) at 1200°C. Stage 7 induction takes over seamlessly.

### Operational Decision Tree — Three-Heuristic Integration

```
STAGE 6 OPERATIONAL DECISION TREE
═══════════════════════════════════

BATCH START
    │
    ├─► FEED VERIFICATION (Williams: feed composition constraint)
    │     LIBS at feed entry vs PROD-17/18 predictions
    │     IF Cu <70 kg OR PM <80% predicted: HOLD, investigate upstream
    │
    ├─► ATMOSPHERE VERIFICATION (Keymaker: gas equilibrium operator)
    │     H₂ 5.0±0.1%, dew point <-40°C, pressure 1.2±0.05 bar
    │     IF fail: PURGE with N₂, re-establish, re-verify
    │
    ├─► RAMP TO 1085°C (El Segundo: micro-loop physics fidelity)
    │     FBG 1 kHz PID tracks CFDO-CB thermal model
    │     IF divergence >3°C at t>10 min: EXTEND ramp, reduce power
    │
    ├─► SOLIDUS DWELL 1084-1090°C (Williams: melting point constraint)
    │     POF level confirms full melt (no solid particles)
    │     IF solid residue >2%: EXTEND dwell, increase power 10%
    │
    ├─► SUPERHEAT TO 1150°C (Keymaker: CFDO-CB film drainage regime)
    │     Target viscosity 3.8 mPa·s for h=1.2mm, v=0.28m/s
    │     IF viscosity proxy (power/flow) off: ADJUST power profile
    │
    ├─► 30 MIN DWELL — PM DISSOLUTION (Williams: mass balance necessity)
    │     XRF 1/min: C_Ag, C_Au, C_Pd vs feed estimate
    │     MS 10 Hz: AsH₃, SbH₃, BiH₃, SO₂
    │     IF PM_dissolved <95% at t=10 min: EXTEND dwell +5 min
    │     IF hydrides >threshold: INCREASE Train B carbon
    │
    ├─► ANODE CASTING ×4 (Keymaker: CFDO-CB casting operator)
    │     PER ANODE:
    │       Mold prep: T=200±20°C, N₂ purged, FBG calibrated
    │       Fill: Port 6A opens 1180±2°C, 50.0±0.5 kg
    │       Cool: N₂ quench → 50±10°C/min (FBG controlled)
    │       Demold: eject → slime catch → stamp → LIBS → Data Matrix
    │       Grade: DIRECT_USE (electrorefining) / REFINEMENT / HOLD
    │       IF REFINEMENT: flag for re-melt next batch
    │
    ├─► SLIME CONTAINER (El Segundo: batch witness protocol)
    │     Combine 4 anode slimes → 1 container (40-60 kg)
    │     N₂ purge 5 min → weigh → LIBS spectrum → seal
    │     UUID linked to 4 anode UUIDs → Phoenix gen recorded
    │     Transfer manifest signed → Machine 113 (FOLLOW-19)
    │
    ├─► TRANSITION TO STAGE 7 (Williams: cascade commitment)
    │     Power taper 250→0 kW over 5 min
    │     Temp 1150→1200°C, atmosphere maintained
    │     Residue verified: Fe 80kg, Cu<2kg, minerals 60kg
    │     Port 6/6A sealed at 1200°C
    │
    └─► BATCH CLOSE (Three-heuristic closure)
          Mass balance: Cu_in vs Cu_anode+slime+residue+gas
          PM balance: Au/Ag/Pd/Pt recovery > thresholds
          Energy: net kWh vs prediction
          Genealogy: all slugs registered, phoenix_gen updated
          Anomaly log: any deviations, root causes, corrective actions
          Operator + Supervisor digital signature
          Archive: 10 yr cold storage + MES live
```

### Performance Targets — Three-Heuristic Derived

| Metric | Williams (Constraint) | Keymaker (Operator) | El Segundo (Protocol) | Final Spec |
|---|---|---|---|---|
| **Cu Recovery** | >99.5% (thermodynamic limit) | CFDO-CB predicts 99.75% | Mass balance per batch | >99.5% |
| **Au to Slime** | >99.5% (K>10⁴) | Scheil k=0.001 → 99.6% | Fire assay per batch | >99.5% |
| **Ag to Slime** | >99% (K>10³) | Scheil k=0.01 → 99.0% | ICP-OES per batch | >99% |
| **Anode O ppm** | <200 (Cu₂O equilibrium) | p_H₂O/p_H₂ model | Dew point monitor 1 kHz | <200 ppm |
| **Anode S ppm** | <15 (sulfide capacity) | S in feed <50 ppm | Combustion IR per 10th | <15 ppm |
| **Cycle Time** | 45 min (cascade sync) | CFDO-CB optimal trajectory | State machine enforcement | 45±3 min |
| **Slime PM Grade** | Au>5%, Ag>15% (value) | Slime mass model | LIBS + assay per batch | Au>5%, Ag>15% |
| **Traceability** | Phoenix Protocol mandate | UUID per anode/slime | Registry write per event | 100% |

### Economic Sensitivity — Three-Heuristic View

| Scenario | Williams (PM Recovery) | Keymaker (Throughput) | El Segundo (Quality) | Net Margin |
|---|---|---|---|---|
| **Nominal** | Au 99.6%, Ag 99%, Pd 98% | 1,200 batches/yr | 100% DIRECT_USE grade | $56.6M/yr |
| **PM Price -30%** | Same recovery | Same throughput | Same quality | $38.2M/yr |
| **Feed Cu -20%** | PM recovery % same | 960 batches/yr (less feed) | Same quality | $45.3M/yr |
| **Anode O 300 ppm** | — | — | 20% REFINEMENT grade | -$2.1M/yr (re-melt cost) |
| **Hydride spike** | As/Sb/Bi loss 5% | — | Train B saturation | -$0.8M/yr (PM loss + carbon) |
| **Mold failure** | — | 1,000 batches/yr (downtime) | — | -$9.4M/yr (lost batches) |

**Key Economic Lever:** PM recovery percentage (Williams) × batch throughput (Keymaker) × anode first-pass yield (El Segundo). All three must be at target simultaneously. The three-heuristic view shows that **quality (El Segundo) is the highest leverage** — a 1% drop in first-pass yield costs more than a 10% drop in throughput.

### Final Integration Statement

PROD-19 is not a document about copper melting. It is a document about **precious metal stewardship at thermodynamic limits**. The Williams heuristic reveals that the periodic table FORCES the anode slime route — there is no alternative path for Au/Ag/Pd/Pt recovery from copper-bearing e-waste. The Keymaker heuristic reveals that the CFDO-CB operator — a unified film drainage/segregation model — is the single mathematical primitive that makes the anode casting work inside a thermal cascade drum. The El Segundo heuristic reveals that the nested verification loops (1 kHz physics, 1 Hz chemistry, per-anode product) are the recursive protocol that guarantees the furnace witnesses its own fabrication correctly.

These three are inseparable. Remove the Constraint understanding, and you might try to separate PMs by melting point (impossible). Remove the Operator, and you cannot cast anodes in a rotating drum (uncontrolled). Remove the Protocol, and you cannot trust the anodes entering FOLLOW-19 (unguaranteed). **The convergence of the three heuristics IS the Stage 6 architecture.**

The Stage 6 anode is the **periodic table witnessed into sequence**: Cu matrix carrying Au, Ag, Pd, Pt, Rh, Ir, Ru, Os, Se, Te, As, Sb, Bi — each atom accounted for, each gram traced from PCB to slime to refinery to product. This is not metallurgy. This is **elemental custody**. The Forge does not process copper. The Forge **custodies precious metals through the copper phase** and delivers them to the Refinery with a complete chain of evidence.

*End of Combined Heuristic Synthesis — PROD-19*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*