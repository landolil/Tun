# Combined Heuristic Synthesis — PROD-20: Stage 7 Ferrous Cascade
## Three-Way Integration: Williams Constraint + Keymaker Operator + El Segundo Protocol

### Executive Synthesis

PROD-20 Stage 7 Ferrous Cascade is the **rare earth magnet recovery pivot** of the thermal cascade. Stages 1-6 prepare and concentrate; Stage 8 finishes the mineral fraction. But Stage 7 is where the **rare earth economics concentrate** — the NdFeB/SmCo magnets captured by AMLS (PROD-05) at Stage 0 enter Stage 7 as the ONLY viable path to domestic Nd, Sm, Co, Dy supply. The three heuristics converge on a single architectural truth: **Stage 7 must be a dual-port ferrous casting machine with integrated REE partitioning embedded in a thermal cascade**.

The Williams Constraint (ferromagnetic cliff at 770°C + REE oxidation imperative + upstream dross mass balance) dictates the ONLY viable architecture: 2 kHz induction exploiting ferromagnetic coupling, dual-port separation at 30 mm radial gap, zero purchased flux consuming upstream MgO/Al₂O₃. The Keymaker Lock (simultaneous melt-refine-partition-cast-condition in one drum) dictates the CDPPO-RSE operator as the single computational primitive governing film drainage, REE oxidation partitioning, C/Si/Mn control, and dual-port casting kinetics. The El Segundo Protocol (nested verification loops at 1 kHz physics, 1 Hz chemistry, per-mold product, per-batch cascade) dictates the five-fold sensor fusion architecture (FBG + POF + magnetic + XRF + MS) that makes the CDPPO-RSE executable in real-time. These three are not parallel perspectives — they are SEQUENTIAL DEPENDENCIES: the Constraint defines the WHAT, the Operator defines the HOW, the Protocol defines the HOW-WELL.

### Risk Matrix — Convergence of Three Heuristics

| Risk | Williams (Constraint) | Keymaker (Operator) | El Segundo (Protocol) | Integrated Mitigation |
|---|---|---|---|---|
| **REE loss to Stage 8** | Thermodynamic: REEs oxidize to slag | CDPPO-RSE predicts L_Nd=300 at a_FeO=0.15 | XRF slag/metal 1/min verifies L_Nd>100 | Triple lock: thermodynamics + prediction + measurement |
| **Ferromagnetic transition fail** | Magnetic: μᵣ 200→1 at 770°C | Resonance tracker pre-emption window | FBG 1 kHz sees thermal signature, PID pre-ramps | GaN Class E + magnetic sensor + FBG + predictive control |
| **C/Si/Mn off-spec** | Metallurgical: Fe bullion specs | C/Si/Mn control loops in CDPPO-RSE | XRF 2/min during casting, MFC feedback | Closed-loop at 1 Hz + per-mold LIBS verification |
| **Dual-port cross-contamination** | Geometric: 30mm radial separation | CDPPO-RSE predicts r_eq separation | Magnetic sensor monitors μᵣ at r=265mm | Real-time ferromagnetic signature verification |
| **Slag wrong for Stage 8** | Cascade: B=1.2 required for Zr | Slag model in CDPPO-RSE | Batch closure verifies B, MgO/Al₂O₃, T | Feed-forward to PROD-21 recipe |
| **CO/CO₂ supply fail** | Process: carbon control needs gas | p_CO/p_CO₂ setpoint in CDPPO-RSE | MS 10 Hz monitors gas composition | PROD-07 PSA + pyrolysis gas redundancy |
| **REE concentrate grade low** | Economic: 90% batch value in REE | REE grade model in CDPPO-RSE | LIBS per mold + assay per batch | Genealogical traceability from AMLS to FOLLOW-15 |

**Critical Insight:** Every risk in the matrix is addressed by ALL THREE heuristics simultaneously. No single heuristic provides complete coverage. The convergence IS the safety case.

### Cross-Stage Dependency Chain

```
AMLS (PROD-05)          STAGE 4/5 (PROD-17/18)       STAGE 6 (PROD-19)         STAGE 7 (THIS)           STAGE 8 (PROD-21)
Magnet Capture          Dross/Flux                   Residue                  Ferrous + REE            Mineral/Zircon
      │                       │                         │                         │                        │
      ▼                       ▼                         ▼                         ▼                        ▼
NdFeB/SmCo >95%        MgO/Al₂O₃ 17 kg            Fe 80 kg + minerals      Dual-port:              Slag B=1.2
capture                 (free flux)                  60 kg + Cu <2kg           Fe bullion + REE        MgO/Al₂O₃
                        REE in dross                FeO for REE oxid.         conc. separate          1.3 kg REE
                        S for Stage 7                Slag conditioned          Carbon controlled        oxides
                                                                                Slag to Stage 8
      │                       │                         │                         │                        │
      └───────────────────────┴─────────────────────────┴─────────────────────────┴────────────────────┘
                                          │
                              REE MASS BALANCE CLOSURE
                              (This document's commitment)
```

**Dependency Specifications:**
- **From PROD-05 (AMLS):** NdFeB 3-5 kg, SmCo 1-2 kg captured at Stage 0. Stage 7 feed model assumes these enter as discrete particles.
- **From PROD-17 (Stage 4):** 18 kg dross/slag → 10 kg MgO, 5 kg flux, 2 kg char ash, 0.5 kg PMs, REE oxides. MgO = free flux for Stage 7.
- **From PROD-18 (Stage 5):** 12 kg dross/salt slag → 7 kg MgO/Al₂O₃, 2.5 kg flux, 2 kg Al, 0.5 kg AlN. MgO/Al₂O₃ = free flux.
- **From PROD-19 (Stage 6):** 160 kg residue → 80 kg Fe, 10 kg Ni/Co, 60 kg minerals, 22 kg char/flux, <2 kg Cu. Main Fe feed.
- **To PROD-08:** 4 Fe bullion streams (182 kg) + 2 REE concentrate molds (15 kg) → cooling carousel S-09/S-10.
- **To FOLLOW-15:** REE concentrate (15 kg, Nd 1.5kg, Sm 0.5kg, Co 0.5kg) + Fe bullion REE (Nd 0.15kg, Sm 0.05kg, Co 0.1kg) → hydromet.
- **To FOLLOW-20:** Fe bullion metallurgy specs (C/Si/Mn control) → casting quality.
- **To FOLLOW-33:** REE oxides from FOLLOW-15 → NdFeB magnet manufacturing.
- **To PROD-21 (Stage 8):** 65 kg slag at 1600°C, B=1.2, MgO/Al₂O₃=1.5, 1.3 kg REE oxides, 0.7 kg ZrO₂, 0.7 kg TiO₂.

### Operational Decision Tree — Three-Heuristic Integration

```
STAGE 7 OPERATIONAL DECISION TREE
═══════════════════════════════════

BATCH START
    │
    ├─► FEED VERIFICATION (Williams: feed composition constraint)
    │     LIBS at feed entry vs PROD-19/17/18/05 predictions
    │     IF Fe <100kg OR NdFeB <3kg: HOLD, investigate upstream
    │
    ├─► ATMOSPHERE VERIFICATION (Keymaker: gas equilibrium operator)
    │     H₂ 5.0±0.1%, dew point <-40°C, pressure 1.2±0.05 bar
    │     IF fail: PURGE with N₂, re-establish, re-verify
    │
    ├─► RAMP THROUGH FERROMAGNETIC REGION (El Segundo: micro-loop physics)
    │     FBG 1 kHz PID tracks CDPPO-RSE thermal model
    │     Magnetic sensor monitors μᵣ collapse at 770°C
    │     Resonance tracker pre-empts ZVS loss at transition
    │     IF ramp deviation >5°C at t>5 min: ADJUST power profile
    │
    ├─► CAST IRON MELT (1250°C) (Williams: melting point sequence)
    │     POF level confirms cast iron fraction melted
    │     Magnetic sensor confirms ferromagnetic coupling
    │
    ├─► MAIN MELT DWELL 1580°C (40 min) (Williams: REE dissolution necessity)
    │     XRF 1/min (2/min during cast): C, Si, Mn, Nd, Sm, Co
    │     MS 10 Hz: H₂, CO, CO₂, H₂O
    │     C_control: CO/CO₂ MFC → target C per upcoming stream
    │     Si_control: CaO feed → slag basicity B=1.2
    │     Mn_control: FeO via C_level → oxygen potential
    │     REE_control: L_Nd, L_Sm, L_Co via XRF slag/metal
    │     IF L_Nd < 100: INCREASE FeO (reduce C), ALERT
    │     IF L_Sm < 80: INCREASE basicity (add CaO), ALERT
    │
    ├─► DUAL-PORT CASTING (Keymaker: CDPPO-RSE casting operator)
    │     PORT 7A (REE) OPENS FIRST at 1500°C:
    │       2 molds × 15 kg, N₂ quench 20°C/min
    │       LIBS per mold: Nd, Sm, Co grade → DIRECT_USE/STOCKPILE
    │     PORT 7 (Fe) OPENS at 1550°C:
    │       4 molds × 50 kg, temperature-banded:
    │         Mold 1: 1550-1560°C → Low-C (C=0.5-1.5%)
    │         Mold 2: 1560-1570°C → Med-C (C=1.5-3.0%)
    │         Mold 3: 1570-1580°C → High-C (C=3.0-4.0%)
    │         Mold 4: 1580°C → Ni/Co (Ni=5-15%, Co=2-5%)
    │       XRF 2/min per mold: C, Si, Mn, Ni, Co, Nd, Sm
    │       LIBS per mold: full grade → DIRECT_USE/REFINEMENT
    │
    ├─► REE CONCENTRATE TRANSFER (El Segundo: batch witness protocol)
    │     2 REE concentrate molds → crush <5mm → sealed ZrO₂ containers
    │     N₂ purge 5 min → weigh → LIBS spectrum → seal
    │     UUID linked to batch, Port 7A, Stage 7 temp, Phoenix gen
    │     Transfer manifest signed → Machine 113 (FOLLOW-15)
    │
    ├─► TRANSITION TO STAGE 8 (Williams: cascade commitment)
    │     Power taper 400→0 kW over 5 min
    │     Temp 1580→1600°C, atmosphere maintained
    │     Slag verified: B=1.2±0.1, MgO/Al₂O₃=1.5±0.2, T=1600±10°C
    │     Residue verified: Fe<5kg, minerals 60kg, REE oxides 1.3kg
    │     Port 7/7A sealed at 1600°C
    │
    └─► BATCH CLOSE (Three-heuristic closure)
          Mass balance: Fe_in vs Fe_bullion+REE_conc+slag+gas
          REE balance: Nd/Sm/Co/Dy to Port 7A + bullion + slag
          C/Si/Mn: per-stream specs met
          Energy: net kWh vs prediction
          Genealogy: all slugs registered, phoenix_gen updated
          Slag packet: composition → PROD-21 recipe
          Anomaly log: deviations, root causes, corrective actions
          Operator + Supervisor digital signature
          Archive: 10 yr cold storage + MES live
```

### Performance Targets — Three-Heuristic Derived

| Metric | Williams (Constraint) | Keymaker (Operator) | El Segundo (Protocol) | Final Spec |
|---|---|---|---|---|
| **Fe Recovery** | >92% (thermodynamic) | CDPPO-RSE predicts 94% | Mass balance per batch | >92% |
| **Nd to Hydromet** | >88% (L_Nd>300 + dual-port) | Port 7A captures 77% | LIBS + assay per batch | >88% |
| **Sm to Hydromet** | >82% (L_Sm>200 + dual-port) | Port 7A captures 71% | LIBS + assay per batch | >82% |
| **Co to Hydromet** | >73% (L_Co>10 + dual-port) | Port 7A captures 55% | LIBS + assay per batch | >73% |
| **C Control (per stream)** | ±0.2% (equilibrium) | MFC feedback 1 Hz | XRF 2/min + LIBS per mold | ±0.2% |
| **Slag Basicity** | B=1.2 (Zr dissociation) | CaO feed control | XRF slag per batch | 1.2±0.1 |
| **MgO/Al₂O₃ Ratio** | 1.5 (dross mass balance) | Free flux from dross | XRF slag per batch | 1.5±0.2 |
| **Cycle Time** | 60 min (cascade sync) | CDPPO-RSE trajectory | State machine enforcement | 60±5 min |
| **REE Concentrate Grade** | Nd₂O₃ 5-15% (value) | Slag REE capacity model | LIBS + assay per batch | Nd 5-15% |
| **Traceability** | Phoenix Protocol mandate | UUID per mold/slime | Registry write per event | 100% |

### Economic Sensitivity — Three-Heuristic View

| Scenario | Williams (REE Recovery) | Keymaker (Throughput) | El Segundo (Quality) | Net Margin |
|---|---|---|---|---|
| **Nominal** | Nd 88%, Sm 82%, Co 73% | 1,200 batches/yr | 100% DIRECT_USE grade | $3.13M/yr |
| **REE Price -30%** | Same recovery | Same throughput | Same quality | $1.8M/yr |
| **Feed Fe -20%** | REE recovery % same | 960 batches/yr | Same quality | $2.5M/yr |
| **L_Nd drops to 50** | Nd to hydromet 65% | — | FOLLOW-15 recovery drops | -$1.2M/yr (REE loss) |
| **Ferromagnetic fail** | — | 800 batches/yr (downtime) | — | -$1.0M/yr (lost batches) |
| **C control fail** | — | — | 30% REFINEMENT grade | -$0.4M/yr (re-melt cost) |

**Key Economic Lever:** REE recovery percentage (Williams) × batch throughput (Keymaker) × first-pass yield (El Segundo). The three-heuristic view shows that **REE partitioning (Williams/Keymaker) is the highest leverage** — a 10% drop in L_Nd costs more than a 20% drop in throughput.

### Final Integration Statement

PROD-20 is not a document about iron melting. It is a document about **rare earth stewardship at the ferromagnetic cliff**. The Williams heuristic reveals that the periodic table FORCES REE oxidation by FeO — there is no alternative path for Nd/Sm/Co recovery from Fe-bearing streams. The upstream dross MgO/Al₂O₃ FORCES zero purchased flux — waste from Stages 4-5 becomes the slag former for Stage 7. The ferromagnetic transition FORCES 2 kHz induction — no other frequency navigates the μᵣ cliff. The Keymaker heuristic reveals that the CDPPO-RSE operator — a unified film drainage/partitioning/control/casting model — is the single mathematical primitive that makes the dual-port separation work inside a thermal cascade drum. The El Segundo heuristic reveals that the five-fold sensor fusion (FBG + POF + magnetic + XRF + MS) with nested verification loops is the recursive protocol that guarantees the furnace witnesses its own fabrication correctly.

These three are inseparable. Remove the Constraint understanding, and you might try to keep REEs in the iron bullion (thermodynamically impossible). Remove the Operator, and you cannot separate REE droplets from Fe stream in a rotating drum (uncontrolled). Remove the Protocol, and you cannot trust the REE concentrate entering FOLLOW-15 (unguaranteed). **The convergence of the three heuristics IS the Stage 7 architecture.**

The Stage 7 REE concentrate is the **periodic table witnessed into sequence**: Fe matrix releasing Nd, Sm, Co, Dy into slag, captured at 30 mm radial separation, delivered to hydromet with a complete chain of evidence from AMLS magnet capture. This is not metallurgy. This is **elemental custody**. The Forge does not process iron. The Forge **custodies rare earths through the ferrous phase** and delivers them to the Refinery with a complete chain of evidence.

*End of Combined Heuristic Synthesis — PROD-20*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*