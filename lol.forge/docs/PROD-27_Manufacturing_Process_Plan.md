# PROD-27 Manufacturing Process Plan — Combined Heuristic Introduction

## Williams Heuristic — Architectural Clarity

### Constraint (The Lock)

The manufacturing plan is forced by a single irreducible constraint: **the Aegis-Forge I contains zero structural metals in its hot zone** — every component exposed to the 2200°C induction environment must be ceramic, composite, or dielectric. This is not a material preference; it is the physics of Carrington immunity. A single steel bolt in the drum assembly becomes a GIC antenna at 5000 nT/s, inducing >5 V common-mode on GaN gate drivers (6 V threshold) → shoot-through → 500 kW destruction → drum thermal runaway → catastrophic failure.

This constraint cascades into every manufacturing decision:
- **Flash sintering is mandatory** — no hot pressing achieves 600×800×35 mm monolithic ceramic; no pressureless sintering achieves 99.8% density with sub-micron grains
- **Filament winding is mandatory** — no metal vessel, no autoclave (metal mandrel), no metallic tooling contact
- **Brazing is mandatory** — no welding (metal), no mechanical fasteners in hot zone (CTE mismatch, stress concentration)
- **In-house synthesis is mandatory** — commercial basalt fiber at $14/kg vs. in-house at $2/kg; commercial Elium® at $18/kg vs. in-house at $5/kg; the Forge must make its own materials to close the Phoenix Protocol loop

The constraint writes the entire 18-month critical path: three zero-float parallel streams (Drum, Vessel, Electronics) that cannot be accelerated because each step is the unique solution to a physics lock.

---

### Necessity (The Key)

The empirical gap this document closes is the **fabrication fidelity gap between laboratory-scale ceramic/composite processes and production-scale manufacturing of a 226 L, 2200°C, Carrington-immune industrial machine.**

Three specific gaps demand this manufacturing architecture:

1. **Scale gap:** Lab flash sintering achieves 99.8% density at 50 mm scale. The Forge requires 600 mm diameter × 800 mm length × 35 mm wall — a 1000× volume increase. The key is **vertical sintering with sacrificial support ring** — gravity-assisted densification prevents barreling at scale. The graphite die (672 mm ID) with ZrO₂ fiber board support is the unique tooling that enables this.

2. **Integration gap:** Eight independent subsystems (drum, vessel, 8 coil zones, 8 inverter modules, 8 port valves, carousel, frame, TSN network) must converge in Week 21 with zero float. The key is **synchronization gates (SG-1 through SG-4)** — each stream delivers a verified, tested assembly; integration never waits. The bolt ceremony (dual-verify 160 N·m on 12× M24 ZrO₂ bolts) is the physical instantiation of this gate.

3. **Traceability gap:** Phoenix Protocol requires every element tracked from mine to return. The key is **QR-coded material certificates linked to Hyperledger Fabric** — each drum, vessel, coil, module carries its birth record. The FAT data package (CT-01 through CT-10) is the genesis block for each Forge's digital twin.

---

### Commitment (The Turn)

This document makes the following non-negotiable commitments that constrain all downstream documents:

1. **18-month critical path is immutable** — three zero-float paths (Drum 13 wk, Vessel 11 wk, Electronics 14 wk) converge at Integration Week 21. No schedule compression without physics violation.

2. **Flash sintering is the sole drum manufacturing route** — PROD-28 QA validates the V/I flash signature; PROD-29 deployment installs the sinter furnace; PROD-30 maintenance includes graphite die replacement every 20 drums.

3. **Filament winding ±18°/90° layup is frozen** — PROD-28 acceptance criteria lock fiber angle ±1°; PROD-30 spare vessel program uses same mandrel.

4. **Dual-verify bolt ceremony is mandatory** — 12× M24 ZrO₂ bolts at 160 N·m ±5 N·m, two-person independent verification. PROD-28 audit checks torque records; PROD-29 site commissioning repeats ceremony.

5. **In-house material synthesis targets are binding** — Basalt 100%, Elium® 100%, ZrB₂ 100%, 3Y-TZP 100%, Ti₃AlC₂ 100%. PROD-33 supply chain plans around these; PROD-31 economics depend on them.

6. **FAT test matrix (CT-01 through CT-10) is the shipment gate** — No Forge ships without all 10 tests passed with signed data packages. PROD-39 T&E specification freezes these tests.

These commitments are the **manufacturing load-bearing walls**. PROD-28 (QA), PROD-29 (Deployment), PROD-30 (Maintenance), PROD-31 (Economics), PROD-33 (Supply Chain), PROD-39 (T&E) build on this foundation. They cannot move the walls.

---

## Keymaker Heuristic — Implementation Precision

### The Empirical Lock

The fabrication fidelity gap in Aegis-Forge I manufacturing is the **divergence between aerospace-grade ceramic/composite processes (low rate, high touch) and the production reality of an 18-month, 14-assembly, zero-metal industrial machine.**

Three specific locks prevent traditional manufacturing engineering from closing this gap:

1. **Ceramic scale lock:** Conventional ceramic manufacturing (hot pressing, HIP, pressureless sintering) maxes at ~200 mm. The Forge drum is 600 mm diameter. The lock: **no existing ceramic process achieves production-scale monolithic UHTC components.**

2. **Composite integration lock:** Filament winding is mature for pressure vessels. But the Forge vessel requires: BFRP/Elium® (thermoplastic, no autoclave), 50 mm aerogel infusion gap, YInMn Blue glaze, PEEK CF40 flanges — all integrated on a 900 mm ID mandrel with 18 mm wall. The lock: **no existing composite process integrates thermoplastic winding, aerogel infusion, ceramic glaze, and composite flanges in a single production flow.**

3. **Dielectric assembly lock:** Eight inverter modules, eight coil zones, 384 FBG sensors, dual-ring TSN, PTP grandmaster — all assembled with zero conductive fasteners, zero metallic conduit, zero ground references. The lock: **no existing electronics assembly process operates under all-dielectric constraints at 500 kW.**

**Common thread:** Every lock is a **standard manufacturing practice that inverts under the Forge's zero-metal, Carrington-immune, 2200°C constraints.** The empirical lock is the sum of all manufacturing practices that become hazards or impossibilities in the Forge's unique electromagnetic-thermal environment.

---

### The Mathematical Key

The single computational primitive that generates the manufacturing solution is the **critical path synchronization function executed at each gate, which doubles as the quality convergence operator:**

$$SG_k = \bigwedge_{i \in Stream_k} (A_i.complete \land A_i.verified \land A_i.data\_package\_signed)$$

Where:
- $SG_k$ = Synchronization Gate $k$ (k = 1..4)
- $Stream_k \in \{Drum, Vessel, Electronics\}$
- $A_i$ = Assembly $i$ in stream
- $complete$ = All operations per work instruction complete
- $verified$ = All acceptance criteria passed (UT, CT, CMM, functional)
- $data\_package\_signed$ = Quality engineer + manufacturing engineer dual signature

**This one predicate, evaluated at each gate, is the atomic computation.**

Everything in this document derives from it:

- **18-month schedule (Section 1):** The three zero-float paths are the minimal satisfying assignments to $SG_4$ (Integration Start). Any path compression violates $verified$ or $data\_package\_signed$.

- **Flash sintering parameters (Section 2):** The V/I flash signature (resistivity drop 1000× at 1720°C) is the *in-process verification* of $A_{01}.verified$. The key has no adjustable parameters — the flash event is a physical phase transition.

- **Filament winding layup (Section 3):** The ±18°/90° angle is the solution to $\sigma_{hoop} = \phi \sigma_f \eta_\sigma$ from PROD-06. The laser angle verification (±1°) is the *in-process verification* of $A_{06}.verified$.

- **Bolt ceremony (Section 8):** Dual-verify torque is the *human-in-the-loop verification* of $A_{13}.verified$ for the flange joint. Ceramic bolts have no yield — only fracture. The ceremony is the safety barrier.

- **FAT matrix (Section 9):** Each CT test is a $verified$ predicate for a system-level assembly. CT-04 (SIS proof test) is the $data\_package\_signed$ for all 24 SIL-3 SIFs.

- **Supplier qualification (Section 12):** The audit checklist is the $verified$ predicate for external $A_i$ (powder, fiber, resin, GaN). First-article requirements (3 drums, 3 vessels) are the empirical validation of the supplier's $complete$ predicate.

**The mathematical key is not the schedule, not the tooling, not the test procedures — it is the synchronization function that unifies schedule, quality, traceability, and supplier management into a single gate logic.** If you evaluate this predicate correctly at each gate with the right verification methods, you get a manufacturable Forge. The 18-month Gantt is just the timeline of gate evaluations.

---

### The Turn (Both Directions)

#### Theory→History Validation

The synchronization function predicts historical manufacturing data from the CSMFAB development program:

| Gate | Stream | Prediction | Historical Result | Error | Key Coupling |
|---|---|---|---|---|---|
| **SG-1** | Drum | Flash sinter 1800°C/50MPa/5min → 99.8% density | FA-01/02/03: 99.82%, 99.79%, 99.81% | <0.03% | V/I flash signature |
| **SG-2** | Vessel | ±18°/90° winding → 1100 MPa hoop | Test winding: 1094 MPa | -0.5% | Laser angle ±1° |
| **SG-3** | Electronics | GS66516T Class E → 98.9% efficiency Z8 | Module test: 98.87% | -0.03% | ZVS phase <5° |
| **SG-4** | Integration | 4-week integration → all IC pass | First integration: 3.5 weeks, all PASS | -12% | Pre-staged sub-assemblies |
| **CT-04** | System | 24 SIF injection → all <50 ms | Proof test: max 38 ms | -24% | FPGA dedicated VLAN |

The synchronization function **predicts history within measurement uncertainty** when all couplings (flash physics, winding mechanics, GaN switching, integration logistics, SIS architecture) are active.

#### History→Theory Correction

Historical anomalies refine the synchronization function's verification predicates and gate definitions:

1. **Anomaly:** Graphite die cracking at punch corner (Drum FA-02, Week 9).
   **Root cause:** Thermal stress concentration at 90° punch/die transition during 100°C/min ramp.
   **Correction:** Added 5 mm radius fillet to die CAD (TD-002 Rev B). Ramp rate reduced to 50°C/min above 1600°C. Zero die cracks in FA-03 and production.

2. **Anomaly:** Aerogel density gradient (0.10 g/cm³ top vs 0.14 g/cm³ bottom) in first vessel (Week 11).
   **Root cause:** IPA evaporation rate exceeded centrifugal distribution at 10 RPM.
   **Correction:** Reduced slurry solids to 12%, increased rotation to 15 RPM, added vacuum assist during evaporation. Density uniform 0.12 ±0.01 g/cm³.

3. **Anomaly:** GaN module cold plate bond voids (Module 3, Week 10).
   **Root cause:** In foil TIM (50 μm) trapped air at microchannel edges during 150°C/1 MPa bond.
   **Correction:** Added vacuum pre-bake (120°C/30 min/-0.9 bar) before In foil placement. Bond voids <1% (UT scan).

4. **Anomaly:** POF splice loss 1.2 dB (target <0.5 dB) on TSN ring (Week 22).
   **Root cause:** ZrO₂ ferrule bore tolerance ±2 μm exceeded POF core alignment requirement.
   **Correction:** Tightened ferrule spec to ±0.5 μm (TD-011 Rev B). Splice loss now 0.3 dB avg.

5. **Anomaly:** ZrO₂ bolt fracture during dual-verify (Week 24, 2nd flange).
   **Root cause:** Torque wrench calibration drift (+8 N·m over 50 cycles). Ceramic bolts have no yield.
   **Correction:** Added in-situ torque verification (strain-gauged wrench) + bolt acoustic emission monitoring. Zero fractures since.

The synchronization function **absorbs history** — each anomaly tightens a verification predicate ($verified$), adds a monitoring channel (in-situ torque, AE), or restructures a gate definition (SG-2 split into aerogel + glaze sub-gates). The primitive $SG_k = \bigwedge (complete \land verified \land data\_package\_signed)$ remains structurally invariant. This is the signature of a correct primitive: it extends, it does not rewrite.

---

## El Segundo Heuristic — Operational Excellence

### Mirror (Self-Reflection)

How does the fabricator observe their own fabrication? The Aegis-Forge I manufacturing embeds **four nested metrology loops** — the factory watches its own fabrication at the scale of the phenomenon.

#### Level 0 — Process-Level Witness (In-Process, Real-Time)

**What the machine sees during each operation:**

| Process | Sensors | Metric | Action on Deviation |
|---|---|---|---|
| **Flash sinter (A-01)** | Type C TC, V/I, LVDT, RGA | Flash signature (ρ drop 1000× @ 1720°C), dwell T/P, shrinkage rate | Auto-hold if flash delayed >30 s; abort if T >1810°C |
| **Filament winding (A-06)** | Laser angle, tension cells, dielectric cure, ultrasonic thickness | Fiber angle ±1°, tension 50±5 N, cure >95%, ply thickness ±0.05 mm | Auto-pause if angle >2°; compensate next ply |
| **Braze (A-04)** | TC on fixture, vacuum gauge, RGA | 950°C ±5°C, <10⁻⁵ mbar, no O₂ spike | Abort if T drift >10°C; re-pump if vacuum lost |
| **Module assembly (A-10)** | Thermal camera, V/I scope, POF OTDR | ZVS phase <5°, T_j <125°C, IL <0.5 dB | Re-work if ZVS fail; re-splice if IL >0.5 dB |

**Self-reflection logic:** Each process machine evaluates its own output against the *mathematical key* (synchronization function predicates) in real-time. The flash sinter machine *is* the verification of its own density. The winding machine *is* the verification of its own fiber angle. The factory does not inspect — it *measures while making*.

#### Level 1 — Assembly-Level Witness (Gate Verification, Per Assembly)

**What the gate evaluator sees at each synchronization gate:**

| Gate | Assemblies Verified | Data Package Contents | Signatures Required |
|---|---|---|---|
| **SG-1 (Drum)** | A-01, A-02, A-03, A-04, A-05 | CMM report, UT/CT scans, FBG survival log, flash V/I traces, bolt ceremony records | Mfg Eng + QA Eng |
| **SG-2 (Vessel)** | A-06, A-07, A-08 | Winding log, aerogel density map, glaze adhesion, hydrotest cert, flange CMM | Mfg Eng + QA Eng |
| **SG-3 (Electronics)** | A-09, A-10, A-11 | Resonance reports, module test data, TSN latency, PTP sync, FBG calibration | Mfg Eng + QA Eng + EE Lead |
| **SG-4 (Integration)** | All above + A-12, A-13 | Integration checkpoints IC-1 through IC-10, loop closure log | Plant Mgr + Lead EE + Lead ME + Safety Eng |

**Self-reflection logic:** Each gate is a *recursive invocation* of the synchronization function. The data package is the return value. The signatures are the continuation. No gate passes without the mathematical key evaluating TRUE.

#### Level 2 — System-Level Witness (FAT, CT-01 through CT-10)

**What the FAT sees:**

| Test | Stimulus | Observation | Comparison | Act |
|---|---|---|---|---|
| CT-01 | Spin to 500 RPM | Critical speeds, vibration, balance | FEA prediction (PROD-25) | Balance correction |
| CT-02 | 15 bar N₂ | Pressure hold, leak rate | ASME BPVC Sec X | Zero drop |
| CT-04 | 24 SIF injection | Trip time, channel agreement | <50 ms, 2oo3 | SIS config locked |
| CT-07 | 100 A/m Helmholtz | SIF trips, data integrity, comms | Zero trips, zero loss | Ride-through validated |

**Self-reflection logic:** The FAT stimulates the *entire system* and observes against the *mathematical key* (synchronization function at system level). The test data package is the system's self-measurement. The sign-off is the system witnessing its own birth.

#### Level 3 — Fleet-Level Witness (Digital Twin, PROD-37)

**What the fleet twin sees:**
- Aggregated gate data from all Forges in production
- First-article trends (drum density, vessel hoop strength, module efficiency)
- Supplier quality trends (powder D50, fiber angle, GaN R_DS(on))
- Schedule adherence vs. 18-month baseline

**Self-reflection logic:** The fleet twin runs the synchronization function across all production instances. It detects systemic drift before any single Forge hits a gate failure. The manufacturing process *improves itself* through the twin's recursive optimization.

#### The Mirror Protocol (Recursive)

| Tier | Frequency | Scope | Verification |
|---|---|---|---|
| **Tier 0 (Process)** | Real-time (1–100 Hz) | Single operation | In-process sensors vs. physics model |
| **Tier 1 (Gate)** | Per assembly (4 gates) | Assembly cluster | Data package vs. sync function |
| **Tier 2 (FAT)** | Per Forge (10 tests) | Complete system | Test data vs. spec + FEA + history |
| **Tier 3 (Fleet)** | Continuous | All Forges | Trend analysis vs. baseline |

**The mirror is not passive — it closes the loop.** Every tier feeds the next: process data → gate package → FAT package → fleet trend. The fabricator (the factory) watches its own fabrication at every scale.

---

### Participation (Witness)

How does the inside operator witness the manufacturing phenomenon into existence? At what points must human judgment authorize manufacturing consequence?

#### Critical Participation Gates

**Gate 1: First Article Authorization — Drum Flash Sinter (Week 7)**
- **Action:** Sintering Engineer authorizes FA-01 cycle start after verifying powder lot, die condition, electrode life, argon purity.
- **Witness requirement:** Engineer reviews real-time V/I trace for flash signature (resistivity drop). Confirms flash event witnessed in log.
- **Why human:** The flash event is a *physical phase transition*, not a control parameter. No algorithm witnesses the percolation threshold — the engineer sees the V/I trace collapse and *knows* the material has transformed.
- **Cognitive checkpoint:** Did the powder become ceramic? — pattern recognition of the flash signature.

**Gate 2: Synchronization Gate Sign-Off — SG-1, SG-2, SG-3 (Weeks 12, 16, 20)**
- **Action:** Manufacturing Engineer + Quality Engineer dual-sign data package.
- **Witness requirement:** Both review every UT scan, CMM report, test log. Any NCR → gate hold.
- **Why human:** Quality acceptance is organizational, not algorithmic. No mathematical function accepts the UT shows a 200 μm indication but we'll ship anyway. Human judgment weighs risk vs. schedule.
- **Cognitive checkpoint:** Does this assembly meet the mathematical key's verified predicate? — explicit quality judgment.

**Gate 3: Integration Bolt Ceremony — Flange Closure (Week 22)**
- **Action:** Two-person torque verification: Operator A applies 160 N·m, Operator B verifies with independent wrench. Both sign.
- **Witness requirement:** Ceramic bolts have no yield — only fracture. The ceremony *is* the safety barrier.
- **Why human:** Torque verification is a *social protocol*, not a measurement. The second person's presence changes the first person's behavior (Hawthorne effect as safety feature).
- **Cognitive checkpoint:** Did we both witness the same torque? — mutual verification of critical joint.

**Gate 4: FAT Authorization — CT-10 Hot Run (Week 26)**
- **Action:** Plant Manager + Lead EE + Lead ME + Safety Engineer sign CT-10 data package for 6 batches.
- **Witness requirement:** Review all 6 batch records: mass balance >99%, all outputs spec, zero SIF trips, digital twin sync.
- **Why human:** Production readiness is organizational judgment. Data is necessary but not sufficient. Engineer judges: Is the 0.8% mass balance gap on Batch 4 acceptable? (Yes, within measurement uncertainty).
- **Cognitive checkpoint:** Is this Forge ready to ship? — professional engineering judgment on system maturity.

**Gate 5: Supplier First-Article Acceptance (Ongoing)**
- **Action:** Procurement + Materials Engineering accept supplier FA lots (3 drums, 3 vessels, 8 modules).
- **Witness requirement:** Compare supplier data to CSMFAB spec. Visit supplier for critical processes (flash sinter, winding, braze).
- **Why human:** Supplier capability is relational, not transactional. The visit *is* the audit.
- **Cognitive checkpoint:** Does this supplier understand the mathematical key? — judgment of supplier's process knowledge.

#### The Participation Principle

**The operator witnesses the manufacturing into existence at every irreversible authorization point where:**
1. **Physics phase transition requires human recognition** (flash sinter, braze, ZVS acquisition)
2. **Quality acceptance is organizational, not algorithmic** (gate sign-off, FAT authorization)
3. **Safety barrier is social, not technical** (bolt ceremony, dual-verify)
4. **Supplier relationship is relational, not transactional** (first-article visit)

**Automation executes the process; humans authorize the consequence.** The factory controls the physics; the operator witnesses the physics becoming product.

---

### Protocol (Recursive)

What recursive sequence guarantees manufacturing fidelity at each scale? From the microscopic (flash event) to the macroscopic (fleet production), the Aegis-Forge I manufacturing assurance follows a **fractal gate protocol** — the same pattern repeats at every scale.

#### The Fractal Gate Pattern (Recursive Unit: Prepare → Execute → Verify → Authorize → Feedback)

**At every scale, the protocol is: Prepare → Execute → Verify → Authorize → Feedback**

| Scale | Prepare | Execute | Verify | Authorize | Feedback |
|---|---|---|---|---|---|
| **Process (Flash)** | Powder lot cert, die inspect | 1800°C/50MPa/5min | V/I flash signature, LVDT shrinkage | Sinter Eng flash witnessed | Die life counter, powder lot trace |
| **Process (Winding)** | Mandrel CMM, roving cert | [±18°/90°]₄ @ 50 m/min | Laser angle, tension, cure, thickness | Mfg Eng + QA sign SG-2 | Fiber angle trend, mandrel wear |
| **Assembly (Module)** | Parts kitting, PCB inspect | GaN mount, bond, program | ZVS, thermal, TSN, POF | Mfg Eng + QA sign SG-3 | Module efficiency trend, yield |
| **Gate (Sync)** | All stream data packages | Gate review meeting | All predicates TRUE | Dual-sign (Mfg+QA) | Gate timing, NCR rate |
| **System (FAT)** | Integrated Forge, test procedures | CT-01 through CT-10 | All pass criteria met | 4-sign (Plant+EE+ME+Safety) | FAT duration, first-time yield |
| **Fleet (Twin)** | All Forge gate/FAT data | Twin analysis | Trend within baseline | Continuous deployment | Process parameter updates |

#### Recursive Sequence (The Protocol Execution)

**Level 0 — Process Fabrication (Per Operation):**
```
FOR each critical operation (flash sinter, winding, braze, module assembly, FBG splice):
    Prepare: Inputs certified (material certs, tool cal, operator qual)
    Execute: Run per work instruction, real-time sensor capture
    Verify: In-process data vs. physics model (V/I flash, laser angle, TIM bond, ZVS)
    Authorize: Operator logs event witnessed (flash, ZVS, braze flow)
    Feedback: Update tool life, material lot history, operator qual
```

**Level 1 — Assembly Completion (Per Assembly):**
```
FOR each assembly A_i in stream:
    Prepare: All operations complete, data collected
    Execute: Compile data package (CMM, UT, CT, functional, logs)
    Verify: Package vs. acceptance criteria (all predicates)
    Authorize: Mfg Eng + QA Eng dual-sign
    Feedback: NCRs → CAPA → work instruction update
```

**Level 2 — Synchronization Gate (Per Stream):**
```
FOR each gate SG_k (k=1..4):
    Prepare: All stream assemblies signed, integration fixture ready
    Execute: Gate review meeting (30 min max), walk physical hardware
    Verify: All SG_k predicates TRUE (complete ∧ verified ∧ data_package_signed)
    Authorize: Stream Lead + QA Lead sign gate release
    Feedback: Gate timing vs. baseline, float consumption, risk update
```

**Level 3 — System Integration & FAT (Per Forge):**
```
FOR integration + FAT:
    Prepare: All 3 streams at SG-4, integration checklist IC-1..IC-10
    Execute: 4-week integration per sequence, then 3-week FAT CT-01..CT-10
    Verify: All IC pass, all CT pass, data packages complete
    Authorize: Plant Mgr + Lead EE + Lead ME + Safety Eng sign FAT release
    Feedback: FAT duration, first-time yield, NCR trend → next Forge baseline
```

**Level 4 — Fleet Production (Across Forges):**
```
FOR each Forge n in production sequence:
    Prepare: Fleet baseline from Forges 1..n-1
    Execute: Run Levels 0-3 with baseline parameters
    Verify: Gate timing, FAT yield, NCR rate vs. fleet baseline
    Authorize: Continuous — twin auto-adjusts parameters within guard bands
    Feedback: Fleet baseline updated, parameter guards tightened, best practices deployed
```

#### The Recursive Guarantee

**The protocol is recursive because the output of each level becomes the input validation for the next level:**

- Process verification (Level 0) → Assembly data package (Level 1)
- Assembly package (Level 1) → Gate release (Level 2)
- Gate release (Level 2) → Integration readiness (Level 3)
- FAT release (Level 3) → Fleet baseline (Level 4)
- Fleet baseline (Level 4) → Process parameters (Level 0)

**This is the fractal pattern:** Prepare→Execute→Verify→Authorize at scale N → Feedback to scale N-1 and N+1. The same logic applies whether N = flash event, assembly, gate, FAT, or fleet.

**The protocol guarantees fidelity because it never assumes — it always executes and verifies against the mathematical key (synchronization function) and authorizes through human participation.** If the physics model predicts the verification, and the verification corrects the model, the recursion converges. If it diverges, the protocol catches it at the next gate.

**No scale is exempt.** The flash event is verified like the fleet. The fleet is optimized like the flash event. The operator participates at every authorization boundary. The factory mirrors itself at every metrology tier. This is the recursive sequence that guarantees the Aegis-Forge I is not just manufactured — it is *witnessed into existence*.

---

*End of Combined Heuristic Introduction — PROD-27 Manufacturing Process Plan*# PROD-27: Manufacturing Process Plan
## CSMFAB000000000127 — Aegis-Forge I Build Sequence, Tooling, Fixturing, and Factory Acceptance
### 14 Major Assemblies, 18-Month Critical Path, Zero-Metal Construction
**Document Number:** CSMFAB000000000127 (Product Document 27 of 40)
**Series:** Aegis-Forge Thermal Cascade Inductive Material Separator (TCIMS)
**Prepared by:** Carrington Storm Motors, Safe Pod Engineering Company, Fabrication Division
**Date:** November 2026 | **Classification:** Product Specification — Manufacturing Engineering

---

## 1. Build Sequence Overview

### 1.1 Assembly Architecture — 14 Major Assemblies

The Aegis-Forge I is manufactured as 14 major assemblies across three parallel work streams that converge at System Integration (Assembly 8). Each assembly is a self-contained manufacturing unit with defined inputs, processes, outputs, and acceptance criteria. The three streams — Drum, Vessel, Electronics — share only the final integration fixture and test floor.

| Assembly | Name | Stream | Duration | Critical Path | Key Dependencies |
|---|---|---|---|---|---|
| A-01 | ZrB₂-SiC Drum Body Flash Sinter | Drum | 4 weeks | **YES** | Powder supply, graphite tooling |
| A-02 | Drum Liner Zone Fabrication (A/B/C) | Drum | 3 weeks | No | Ceramic tiles, pin stock |
| A-03 | Drum Liner Installation & FBG Embed | Drum | 2 weeks | **YES** | A-01, A-02, FBG arrays |
| A-04 | Port Valve Sub-assemblies (×8) | Drum | 3 weeks | **YES** | Ti₃AlC₂, ZrO₂, PEEK CF40 |
| A-05 | Ceramic Bearing System | Drum | 2 weeks | No | Si₃N₄ races, ZrO₂ balls |
| A-06 | BFRP Vessel Filament Winding | Vessel | 5 weeks | **YES** | Basalt roving, Elium® resin, mandrel |
| A-07 | Vessel Aerogel Infusion & Glaze | Vessel | 2 weeks | **YES** | A-06, aerogel, YInMn Blue |
| A-08 | PEEK CF40 Flange Fabrication (×2) | Vessel | 2 weeks | **YES** | PEEK CF40, ZrO₂ lugs |
| A-09 | Coil Bank Manufacturing (8 zones) | Electronics | 6 weeks | **YES** | Cu tube, Al₂O₃, PEX-a, BFRP |
| A-10 | Power Electronics Module Assembly (×8) | Electronics | 4 weeks | **YES** | GaN, gate drivers, caps, BFRP |
| A-11 | TSN/POF Network Fabrication | Electronics | 2 weeks | No | PMMA POF, BFRP switches |
| A-12 | Frame & Carousel Manufacturing | Vessel | 3 weeks | No | BFRP pultrusion, Si₃N₄ bearings |
| A-13 | System Integration & Loop Closure | All | 4 weeks | **YES** | All prior assemblies |
| A-14 | Factory Acceptance Test (FAT) | All | 3 weeks | **YES** | A-13 complete |

**Total Critical Path: 18 months (78 weeks)**

### 1.2 Parallel Stream Gantt — Critical Path Highlighted

```
MONTH:        1    2    3    4    5    6    7    8    9   10   11   12   13   14   15   16   17   18
┌──────────────────────────────────────────────────────────────────────────────────────────────────────┐
│ DRUM STREAM                                                                                          │
│ A-01 Flash Sinter          ████████                                                                 │
│ A-02 Liner Fabrication            ███████                                                           │
│ A-03 Liner Install + FBG                 ████████████                                                │
│ A-04 Port Valves                   ████████████████                                                  │
│ A-05 Bearings                              ██████████                                                │
├──────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ VESSEL STREAM                                                                                        │
│ A-06 Filament Winding       ████████████████████████████████████                                     │
│ A-07 Aerogel + Glaze                                                  ████████████                   │
│ A-08 Flanges                          ████████████████████                                           │
│ A-12 Frame & Carousel                        ████████████████████████                                │
├──────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ ELECTRONICS STREAM                                                                                   │
│ A-09 Coil Bank              ██████████████████████████████████████████████████████████████████████████ │
│ A-10 Power Electronics Modules                      ████████████████████████████████████████████████ │
│ A-11 TSN/POF Network                                                 ████████████████████████████████ │
├──────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ INTEGRATION & TEST                                                                                   │
│ A-13 Integration                                                                     ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████ ████████████████████████████████
│ A-14 FAT                                                                                      ████████████████████████████████ ████████████████████████████████ ████████████████████████████████
└──────────────────────────────────────────────────────────────────────────────────────────────────────┘
```

### 1.3 Stream Synchronization Gates

Three synchronization gates enforce alignment between parallel streams:

| Gate | Timing | Requirement | Verification |
|---|---|---|---|
| **SG-1: Drum Ready** | Week 12 | A-01, A-02, A-03, A-04, A-05 complete; drum UT baseline passed | CMM + UT report |
| **SG-2: Vessel Ready** | Week 16 | A-06, A-07, A-08 complete; vessel hydrotest 15 bar passed | Hydrotest certificate |
| **SG-3: Electronics Ready** | Week 20 | A-09, A-10, A-11 complete; all 8 inverters resonance tested | Resonance test reports |
| **SG-4: Integration Start** | Week 21 | All three streams at ready gates; integration fixture calibrated | Fixture CMM report |

### 1.4 Critical Path Float Analysis

| Assembly | Duration | Early Start | Late Start | Float | Risk Level |
|---|---|---|---|---|---|
| A-01 Drum Sinter | 4 wk | W1 | W1 | **0 wk** | **CRITICAL** |
| A-03 Liner Install | 2 wk | W10 | W10 | **0 wk** | **CRITICAL** |
| A-04 Port Valves | 3 wk | W5 | W7 | 2 wk | HIGH |
| A-06 Vessel Winding | 5 wk | W1 | W1 | **0 wk** | **CRITICAL** |
| A-07 Aerogel/Glaze | 2 wk | W13 | W14 | 1 wk | HIGH |
| A-09 Coil Bank | 6 wk | W1 | W1 | **0 wk** | **CRITICAL** |
| A-10 Power Electronics | 4 wk | W8 | W10 | 2 wk | MEDIUM |
| A-13 Integration | 4 wk | W21 | W21 | **0 wk** | **CRITICAL** |
| A-14 FAT | 3 wk | W25 | W25 | **0 wk** | **CRITICAL** |

**Three zero-float paths converge at Integration (Week 21):**
1. Drum: A-01(4) → A-02(3) → A-03(2) → A-13(4) = 13 weeks + Integration
2. Vessel: A-06(5) → A-07(2) → A-13(4) = 11 weeks + Integration
3. Electronics: A-09(6) → A-10(4) → A-13(4) = 14 weeks + Integration

---

## 2. Drum Manufacturing — ZrB₂-SiC Flash Sintering

### 2.1 Process Flow — Flash Sintering (FAST)

```
POWDER PREP → DIE LOAD → SINTER CYCLE → POST-SINTER MACHINING → INSPECTION
     │           │            │                  │                │
     ▼           ▼            ▼                  ▼                ▼
  Ball mill   Graphite die  1800°C/50MPa/      Diamond grind    CMM + UT + CT
  24h IPA     672mm ID      5min dwell         50μm stock       200μm voxel
  0.5μm D50   ZrO₂ felt     Resistivity drop   OD/ID/faces      FBG survival
```

### 2.2 Flash Sintering Parameters (Per PROD-04 Section 3)

| Parameter | Value | Control Tolerance | Monitoring |
|---|---|---|---|
| Peak temperature | 1800°C | ±5°C | Embedded Type C TC (mid-plane) |
| Applied pressure | 50 MPa | ±2 MPa | Hydraulic ram load cell |
| Dwell time | 5 min | ±15 s | Timer at 1795°C |
| Heating rate | 100°C/min → 50°C/min | ±10°C/min | TC derivative |
| Electric field | 120 V/cm | ±5 V/cm | Electrode voltage/current |
| Atmosphere | Argon 99.999% | <10 ppm O₂ | Residual gas analyzer |
| Graphite electrodes | POCO AXF-5Q | Replace/20 cycles | Visual + resistance |

### 2.3 Graphite Die Assembly (CSMFAB000000000001 V2.0)

| Component | Specification | Qty | Life |
|---|---|---|---|
| Die body | Isostatic graphite, ID 672 mm, 800 mm L | 1 | 20 drums |
| Upper punch | Graphite, 800 mm dia, 50 mm thick | 1 | 20 drums |
| Lower punch | Graphite with Type C TC pocket | 1 | 20 drums |
| Radial insulation | Graphite felt 15 mm + carbon felt 25 mm | 1 set | 20 drums |
| Axial insulation | Graphite felt 30 mm (end caps) | 2 | 20 drums |
| Sacrificial support ring | ZrO₂ fiber board (Zircar ZAL-15) | 1 | 1 drum |
| Water-cooled electrodes | Copper clamps, isolated | 2 sets | 50 drums |

**Distortion control:** Vertical sintering (axis || press ram). 25 kg graphite top weight on upper punch for seating. Support ring at mid-length prevents barreling.

### 2.4 Post-Sinter Machining

| Operation | Tool | Stock Removal | Tolerance | Time |
|---|---|---|---|---|
| OD grind | Diamond wheel (D64) | 2 mm/side | ±0.05 mm | 8 hr |
| ID grind | Diamond wheel (D64) | 2 mm/side | ±0.05 mm | 10 hr |
| Face grind | Diamond cup wheel | 1 mm/face | ±0.05 mm, parallelism 10 μm | 6 hr |
| Port sleeve bores (×8) | Ultrasonic drilling | 12.0 mm +0.02/-0 | Position ±0.1 mm | 16 hr |
| FBG channel grooves | Laser ablation | 0.5 mm wide × 1 mm deep | Position ±0.2 mm | 8 hr |

### 2.5 Liner Zone Installation (A-02, A-03)

**Zone A — Si₃N₄ (4 tiles, 200 mm arc × 250 mm):**
1. Tiles sintered 1800°C/2h/N₂, diamond ground, pin holes drilled
2. 12 × ZrO₂ pins (Ø6×20 mm) inserted through tile/drum
3. Pins peened, heads laser-welded (ZrO₂ fiber laser)

**Zone B — ZrB₂-SiC (6 tiles, 100 mm arc × 300 mm):**
1. Tiles flash-sintered same as drum body (matched CTE)
2. 18 × ZrO₂ pins (Ø6×20 mm) through overlap joint with Zone C
3. Tiles matched to drum curvature ±0.1 mm

**Zone C — 3Y-TZP (4 tiles, 200 mm arc × 250 mm):**
1. Isostatic press 200 MPa, sinter 1500°C/4h, HIP 150 MPa/1400°C/2h
2. 12 × ZrO₂ pins (Ø8×25 mm) through overlap with Zone B
3. Larger pins for higher thermal loads

**Installation sequence (vertical, feed-end up):**
1. Zone C installed first (bottom): pins inserted, seated, peened
2. Zone B installed: overlap with Zone C aligned, pins through both
3. Zone A installed last (top): overlap with Zone B aligned, pins inserted
4. All pin heads laser-welded for positive retention
5. Final ID scan: roundness <25 μm, taper <10 μm over 800 mm

### 2.6 FBG Sensor Embedding (128 sensors during A-03)

| Sensor Type | Qty | Location | Installation Method |
|---|---|---|---|
| Temperature (FBG-T) | 96 | 12 per zone × 8 circumferential × 1 axial | Grooved during machining, epoxy-bonded (Hysol EA 9394) |
| Strain (FBG-ε) | 32 | 4 per zone × 8 circumferential × 1 axial | Surface-mounted in grooves, same epoxy |
| Reference (unstrained) | 16 | 2 per zone, adjacent to strain | Same thermal path, mechanically isolated |

**Survival rate target:** 100% (all first articles achieved 100% survival)

---

## 3. Vessel Manufacturing — BFRP/Elium® Filament Winding

### 3.1 Filament Winding Process (A-06)

**Mandrel:** Collapsible steel mandrel, 900 mm ID, 1200 mm L, ±0.1 mm tolerance, 8-segment breakdown for extraction.

**Winding Parameters:**

| Parameter | Value | Control |
|---|---|---|
| Fiber | Basalt roving, 2400 tex, Mafic USA | Tension 50 N ±5 N |
| Resin | Elium® 188 O (MMA + 1.5% peroxide) | In-line viscosity 150 mPa·s |
| Layup | [±18°/90°]₄ = 16 plies | Fiber angle ±1° (laser verified) |
| Fiber volume fraction | 60% ±2% | In-line dielectric cure monitor |
| Winding speed | 50 m/min (hoop), 30 m/min (helical) | CNC 5-axis winder |
| Wall thickness | 18 mm ±0.3 mm | 16 plies @ 1.125 mm/ply |
| Cure cycle | 80°C/4h + 120°C/2h post-cure | Oven ±5°C, ramp 2°C/min |

**In-line monitoring:**
- Fiber tension: load cells ±5 N
- Resin viscosity: inline viscometer, 100–300 mPa·s
- Fiber angle: laser triangulation, ±1°
- Ply thickness: ultrasonic gauge, ±0.05 mm
- Degree of cure: dielectric sensor, target >95%

### 3.2 Aerogel Infusion (A-07)

**Aerogel specification:** Polyimide-silica hybrid (PISi), λ = 0.010 W/m·K, ρ = 0.12 g/cm³, 50 mm radial gap.

**Infusion process:**
1. Vessel placed on rotation fixture (2 RPM)
2. Aerogel slurry (PISi + IPA, 15% solids) pumped into annulus
3. Centrifugal casting at 10 RPM for 30 min — uniform radial distribution
4. IPA evaporation: 80°C/4h vacuum oven
5. Supercritical CO₂ drying: 120°C/100 bar/2h (prevents capillary stress)
6. Final density verification: gamma densitometer, 0.12 ±0.01 g/cm³

**Mechanical standoffs (ZrO₂, 12× circumferentially):**
- 50 mm tall × 25 mm dia, spaced 300 mm axial
- Prevent aerogel compression under thermal expansion
- ZrO₂ chosen for CTE match to drum (10.5×10⁻⁶/K)

### 3.3 YInMn Blue Glaze Application (A-07)

**Glaze composition:** YIn₀.₈Mn₀.₂O₃ (SRI=115) + CoAl₂O₄ spinel (SRI=85) complementary layer.

**Application:**
1. Plasma spray YInMn Blue: 150 μm, 800°C substrate
2. Plasma spray CoAl₂O₄: 100 μm, over YInMn
3. Seal coat: SiO₂ sol-gel, 25 μm, hydrophobic
4. Cure: 120°C/1h

**Performance:**
- Solar Reflectance Index: 115 (YInMn), 85 (CoAl₂O₄)
- Emissivity: 0.88 @ 10 μm
- Thermal resistance: R = 0.005 m²K/W (negligible vs. aerogel)
- Adhesion: >10 MPa pull-off (ASTM D4541)

### 3.4 PEEK CF40 Flange Fabrication (A-08)

**Flanges:** 2× end flanges, 1050 mm OD, 900 mm ID, 60 mm thick.

| Feature | Specification |
|---|---|
| Material | PEEK CF40 (40% carbon fiber, Victrex) |
| Bolt pattern | 12× M24 on 950 mm PCD, 30° spacing |
| ZrO₂ lugs | 12× insert-molded, Ø50 mm × 30 mm |
| Gasket groove | ZrO₂ flat gasket, 3 mm, graphite-loaded |
| Seal surface | Ra < 0.8 μm, flatness 25 μm |
| Mold | Steel, heated to 380°C, 150 bar injection |

**Bolt ceremony (dual-verify):**
1. ZrO₂ bolts (M24, 160 N·m ±5 N·m)
2. Two-person torque verification (independent wrenches)
3. Bolt stress: 490 MPa (SF 1.63× on 800 MPa UTS)
4. Ceramic paste (ZrO₂ in Elium®) on threads

---

## 4. Port Valve Assembly — Ti₃AlC₂/ZrO₂ Thermal Actuation (A-04)

### 4.1 Sub-Assembly Sequence (×8 ports)

```
Ti₃AlC₂ ACTUATOR BRAZE → ZrO₂ PISTON HONE → PEEK CF40 SPRING INSTALL → LEAK TEST → THERMAL CAL
      │                        │                    │                 │            │
      ▼                        ▼                    ▼                 ▼            ▼
   Ag-CuO-TiO₂            0.05mm clearance    3-wave spring     He 10⁻⁶        3.6mm @ 680°C
   50μm joint             hone finish          50 N preload      mbar·L/s     ΔT
```

### 4.2 Actuator Brazing (Critical Process)

| Parameter | Value | Verification |
|---|---|---|
| Braze alloy | Ag-26.7Cu-4.5Ti-2.5O (wt%) | XRD phase confirmation |
| Braze temperature | 950°C | TC on fixture ±5°C |
| Braze time | 10 min hold | Timer |
| Atmosphere | High vacuum (<10⁻⁵ mbar) | RGA |
| Joint thickness | 50 μm ±10 μm | Cross-section + SEM |
| Fixture | Graphite, CTE-matched | CMM pre/post |

**Braze qualification:** 10× magnification — no voids >50 μm. Deflection test: 3.6 mm ±0.2 mm at 680°C ΔT.

### 4.3 Piston Honing & Spring Installation

| Operation | Specification | Equipment |
|---|---|---|
| Piston OD | 12.00 mm +0/-0.01 | CNC honing machine |
| Clearance to sleeve | 0.05 mm (ZrB₂-SiC sleeve) | Air gauge |
| Surface finish | Ra < 0.1 μm | Profilometer |
| Spring | PEEK CF40, 3-wave, 50 N @ 3 mm deflection | Load test |
| Spring install | Press-fit into actuator pocket | Arbor press, force curve |

### 4.4 Leak Test & Thermal Calibration

| Test | Acceptance | Equipment |
|---|---|---|
| Helium leak (valve closed) | <10⁻⁶ mbar·L/s | He mass spectrometer |
| Thermal actuation | 3.6 mm ±0.2 mm at 680°C ΔT | Furnace + LVDT |
| Cycle life (accelerated) | 500 cycles (25→700°C) | Thermal cycler |
| Re-seat leak after cycling | <10⁻⁶ mbar·L/s | He mass spectrometer |

---

## 5. Coil Bank Manufacturing — 8-Zone Resonant Inductors (A-09)

### 5.1 Zone Winding Specification

Each zone: Cu tube conductor (12 mm OD × 2 mm wall) + Al₂O₃ insulation tape + PEX-a coolant tube, wound on BFRP housing.

| Zone | Turns | Conductor | Insulation | Coolant | Housing |
|---|---|---|---|---|---|
| Z1–Z2 | 12 | Cu 12×2 mm | Al₂O₃ tape 0.5 mm | PEX-a 8×1 mm | BFRP [±30°/90°]₃ |
| Z3 | 10 | Cu 12×2 mm | Al₂O₃ tape 0.5 mm | PEX-a 8×1 mm | BFRP [±30°/90°]₃ |
| Z4–Z5 | 8 | Cu 15×2.5 mm | Al₂O₃ tape 0.5 mm | PEX-a 10×1.5 mm | BFRP [±30°/90°]₃ |
| Z6 | 6 | Cu 18×3 mm | Al₂O₃ tape 0.75 mm | PEX-a 12×2 mm | BFRP [±30°/90°]₃ |
| Z7 | 5 | Cu 20×3 mm | Al₂O₃ tape 0.75 mm | PEX-a 12×2 mm | BFRP [±30°/90°]₃ |
| Z8 | 4 | Cu 25×4 mm | Al₂O₃ tape 1.0 mm | PEX-a 16×2 mm | BFRP [±30°/90°]₃ |

### 5.2 Winding Process

1. **BFRP housing layup:** Filament wind on collapsible mandrel, [±30°/90°]₃, Elium®, 120°C cure
2. **Conductor preparation:** Cu tube annealed (400°C/1h), Al₂O₃ tape spiral wrapped (50% overlap)
3. **Coolant tube:** PEX-a coiled inside conductor, brazed connections (Ag-Cu)
4. **Winding:** CNC 4-axis winder, tension 30 N, layer insulation (Nomex 0.2 mm)
5. **Vacuum impregnation:** Elium® resin, -0.9 bar/30 min, 120°C/4h cure
6. **FBG embed:** 48 sensors/zone (384 total) in grooves between layers
7. **Microchannel cold plate bond:** In foil TIM (50 μm), 150°C/1 MPa/10 min

### 5.3 Resonance Testing (Per Zone)

| Test | Target | Acceptance |
|---|---|---|
| Resonant frequency | Per zone table ±1% | Impedance analyzer |
| Q factor | >150 | Ring-down |
| ZVS verification | Phase <5° at 100% load | V/I scope trace |
| Thermal balance | ΔT <10°C across zone | IR camera @ 500 kW |

---

## 6. Power Electronics Assembly — GaN Inverter Modules (A-10)

### 6.1 Module Architecture (×8 identical modules)

```
MODULE HOUSING (BFRP, 400×300×150 mm)
├─ GS66516T GaN HEMT ×2 (half-bridge)
├─ LMG1210 Gate Driver ×2 (transformer isolated)
├─ Film Capacitor Bank (500 VDC, 500 μF, PP)
├─ Varactor Array (32×, 0.5–30 pF, 30 V)
├─ Switched Cap Bank (6-bit binary, C to 32C)
├─ DC Link Shunt (500 A, 50 μΩ, 4-wire)
├─ TSN Switch Port (PMMA POF, 1 Gbps)
├─ FBG Interrogator Interface (POF)
├─ SIL-3 FPGA (Artix-7, dedicated)
└─ Microchannel Cold Plate (AlSiC, In foil TIM)
```

### 6.2 Assembly Sequence

| Step | Operation | Specification |
|---|---|---|
| 1 | BFRP housing machining | CNC, ±0.05 mm, PTFE-coated |
| 2 | Cold plate bond | AlSiC + In foil (99.99%), 150°C/1 MPa/10 min |
| 3 | GaN mount | Solder (SAC305) on DBC, 240°C peak |
| 4 | Gate driver install | Transformer isolated, creepage 11 mm |
| 5 | Cap bank install | Film caps, busbar bolted (PEEK CF40) |
| 6 | Varactor/cap bank PCB | 8-layer, PTFE, controlled impedance |
| 7 | TSN/POF termination | BFRP bulkhead, ZrO₂ ferrules |
| 8 | FPGA program load | Bitstream + SIL-3 config (MRAM) |
| 9 | Conformal coat | Parylene C, 25 μm (except connectors) |
| 10 | Module test | Full functional @ 24 VDC + 800 VDC |

### 6.3 Module Test Protocol

| Test | Condition | Pass Criteria |
|---|---|---|
| DC link charge | 0→800 V in 500 ms | No overshoot >850 V |
| ZVS acquisition | 0→100% load ramp | Phase <5° all points |
| Thermal soak | 500 kW/30 min | T_j < 125°C (IR) |
| GIC ride-through | 100 A/m Helmholtz | No trip, data intact |
| EMI | CISPR 11 Class A | >20 dB margin |
| SIL-3 SIF injection | All 3 SIFs/module | <50 ms response |

---

## 7. Frame & Carousel Manufacturing (A-12)

### 7.1 BFRP Box Beam Frame (Pultrusion)

| Parameter | Specification |
|---|---|
| Profile | 200×200×12 mm box, [±30°/90°]₃ layup |
| Length | 2400 mm (base), 1800 mm (uprights) |
| Fiber | Basalt 2400 tex, 60% FVF |
| Resin | Elium® 188 O |
| Pultrusion speed | 1 m/min, die temp 150°C |
| Cut tolerance | ±1 mm length, ±0.5 mm diagonal |
| Machining | CNC 5-axis, bolt holes ±0.1 mm |

### 7.2 Elastomeric Isolators (×4)

| Parameter | Specification |
|---|---|
| Type | Double-acting, 2.5 MN/m vertical, 0.8 MN/m horizontal |
| Damping | 15% critical (viscoelastic) |
| Natural frequency | 3 Hz (vertical) |
| Temperature range | -40°C to +150°C |
| Life | 20 years / 10⁷ cycles |
| Mounting | PEEK CF40 bushings, 12× M20 ZrO₂ bolts |

### 7.3 Carousel Rotor & Molds

| Component | Specification |
|---|---|
| Rotor | BFRP, 800 mm dia × 100 mm, [±30°/90°]₃ |
| Molds | 8× ZrO₂ 3Y-TZP, 3 mm wall, firing schedule per PROD-08 |
| Bearings | Si₃N₄ races, ZrO₂ balls (Ø12 mm, 16/brg), PEEK CF40 cage |
| Lubrication | N₂ film (0.1 bar, 5 SLPM), no oil |
| Indexing | Piezo drive, 8-position, 45° steps, <2 s |
| Encoder | FBG-based, 0.01° resolution |

---

## 8. System Integration & Loop Closure (A-13)

### 8.1 Integration Sequence (4 Weeks)

**Week 1 — Foundation & Frame:**
1. Install elastomeric isolators on foundation (tiltmeter 0.1 μrad level)
2. Mount BFRP frame, torque PEEK CF40 bolts (dual-verify)
3. Install carousel rotor, bearing preload verification
4. Route PEX-a coolant mains, POF cable trays (BFRP)

**Week 2 — Vessel & Drum Insertion:**
1. Lower vessel onto frame (crane 10t, spreader bar, load cells)
2. Install aerogel gap standoffs (12× ZrO₂, verified gap 50 mm ±2 mm)
3. Insert drum into vessel (vertical, guided by alignment pins)
4. Verify drum-to-vessel concentricity: <0.5 mm radial runout

**Week 3 — Flange Closure & Port Valves:**
1. Install drum-end PEEK CF40 flanges (12× M24 ZrO₂ bolts, 160 N·m dual-verify)
2. Install port valve assemblies (×8) into drum sleeves
3. Connect actuator FBG leads to POF bulkheads
4. Install ZrO₂ gaskets, torque sequence (star pattern)

**Week 4 — Coil Bank, Electronics, Loop Closure:**
1. Install 8-zone coil bank around vessel (alignment pins, BFRP brackets)
2. Connect PEX-a coolant: zone → cold plate → manifold → chiller
3. Mount 8 power electronics modules on frame
4. Route POF: TSN ring (dual), PTP grandmaster, FBG interrogators
5. TSN ring closure: verify <100 μs latency, PTP <1 μs sync
6. FBG splices: all 384 channels verified (IL <0.5 dB)
7. SIL-3 SIS FPGA config load + self-test

### 8.2 Integration Verification Checkpoints

| Checkpoint | Verification | Acceptance |
|---|---|---|
| IC-1: Frame level | Tiltmeter | <0.1 mrad |
| IC-2: Drum concentricity | Laser tracker | <0.5 mm |
| IC-3: Aerogel gap | Ultrasonic thickness | 50 mm ±2 mm |
| IC-4: Flange bolt torque | Torque wrench + angle | 160 N·m ±5 N·m |
| IC-5: Port valve actuation | Thermal cal (680°C ΔT) | 3.6 mm ±0.2 mm |
| IC-6: Coolant circuit | Pressure decay | <0.1 bar/hr @ 10 bar |
| IC-7: POF attenuation | OTDR | <0.2 dB/m, splice <0.5 dB |
| IC-8: TSN latency | Traffic generator | <100 μs guard band |
| IC-9: PTP sync | Offset monitor | <1 μs all nodes |
| IC-10: SIS self-test | Built-in test | All 24 SIFs PASS |

---

## 9. Factory Acceptance Test (FAT) — CT-01 through CT-10 (A-14)

### 9.1 Test Matrix

| Test | ID | Description | Duration | Pass Criteria |
|---|---|---|---|---|
| CT-01 | Drum Rotordynamics | Spin to 500 RPM, measure critical speeds, balance | 4 hr | 1st critical >1890 RPM, balance G0.4 |
| CT-02 | Vessel Hydrotest | 15 bar N₂, hold 30 min, leak check | 2 hr | Zero pressure drop, zero leaks |
| CT-03 | Flange Leak Test | He leak test all 24 bolted joints | 4 hr | <10⁻⁶ mbar·L/s each |
| CT-04 | SIS Proof Test | Inject all 24 SIL-3 SIF trip conditions | 8 hr | All trip <50 ms, PFD_avg <10⁻³ |
| CT-05 | Coil Resonance | Sweep 50–100 kHz, verify ZVS all zones | 6 hr | ZVS phase <5° at full power |
| CT-06 | FBG Calibration | 25/500/1000/1500/2000°C reference points | 8 hr | Drift <0.5%/1000 hrs |
| CT-07 | GIC Ride-Through | 100 A/m Helmholtz, 30 min, full operation | 2 hr | No spurious trips, data intact |
| CT-08 | Thermal Cycle | Stages 0-8 no feed, full ramp/hold/cool | 24 hr | All stages ±5°C, no anomalies |
| CT-09 | Seismic Shake | IEEE 693 High, 3 axes, 5 OBE + 1 SSE | 4 hr | HCLPF >1.6g, no structural damage |
| CT-10 | Integrated Hot Run | 6 batches, Category A feedstock | 48 hr | All outputs spec, mass balance >99% |

### 9.2 CT-04 SIS Proof Test — Detailed Procedure

**Test philosophy:** Each of 24 SIL-3 SIFs tested via direct signal injection on TSN VLAN 10.

| SIF Tag | Function | Injection Method | Response | Reset |
|---|---|---|---|---|
| SIF-00-01 | Drum over-temp | FBG simulator >T_lim | All inverters OFF | Manual + SIS |
| SIF-00-02 | Vessel over-pressure | Pressure simulator >5 bar | Vent + OFF | Manual + SIS |
| SIF-00-03 | Atmosphere breach | pO₂ simulator >10⁻⁶ | N₂ purge + OFF | Manual + SIS |
| SIF-00-04 | Cooling loss | Flow simulator <10 L/min | Ramp to 20% | Manual + SIS |
| SIF-00-07 | Ground fault | NGR simulator >5 A | All OFF + isolate | Manual + SIS |
| SIF-00-22 | Optical E-stop | POF loop break (×8) | All OFF (HW) | HW latch |
| SIF-00-23 | Crane interlock | POF interlock break (×4) | Zone OFF + hold | Manual + SIS |
| SIF-00-24 | Fire detection | IR/UV simulator | Suppression + OFF | Manual + SIS |

**Test data package per SIF:** Trip time (ms), reset time (s), channel agreement (2oo3), logic solver scan record.

### 9.3 CT-10 Integrated Hot Run — 6 Batch Protocol

| Batch | Feedstock | Key Verification Points |
|---|---|---|
| 1 | Category A (PCB-rich) | Port 4 In yield >99%, Port 5 Al >99.7% |
| 2 | Category B (mixed e-waste) | Port 6 Cu >99.9%, PM recovery >95% |
| 3 | Category C (battery) | Port 7 RE concentrate grade, H₂ <4% |
| 4 | Category D (EOL CSM) | Phoenix re-entry blend, drum wear check |
| 5 | Category A (repeat) | Reproducibility, SIF stability |
| 6 | Full Phoenix blend | Circular mass balance, digital twin sync |

---

## 10. Shipping & Site Preparation

### 10.1 Component Weights & Shipping Configuration

| Component | Weight | Shipping Frame | Protection |
|---|---|---|---|
| Drum (with liners) | 178 kg | BFRP cradle, elastomeric isolation | N₂ purge, desiccant |
| Vessel (with aerogel/glaze) | 215 kg | BFRP cradle, vertical orientation | N₂ purge, tilt sensor |
| Frame (base + uprights) | 480 kg | Steel skid, ISO corners | Weather wrap |
| Coil bank (8 zones) | 640 kg | 8× BFRP modules, horizontal | N₂ purge, shock mounts |
| Power electronics (×8) | 320 kg | ESD-safe cases, foam inserts | N₂ purge, humidity indicator |
| Carousel + molds | 185 kg | BFRP crate, vertical | N₂ purge |

### 10.2 Transportation Qualification (ASTM D4169)

| Test | Level | Acceptance |
|---|---|---|
| Truck vibration | 1g RMS, 1–200 Hz, 4 hr | No structural damage, bolt torque retention |
| Shock | 30g, 11 ms half-sine, 3 axes | No component displacement, FBG survival |
| Stacking | 2× weight, 24 hr | No permanent deformation |
| Climate | -40°C to +70°C, 95% RH | Seal integrity, material stability |

### 10.3 Site Requirements

| Requirement | Specification |
|---|---|
| Foundation | Reinforced concrete, 1.5 m thick, tiltmeter 0.1 μrad |
| Power service | 480 VAC 3φ, 1200 A, IEEE 519 compliant |
| Ground grid | <5 Ω combined, UFER + ring electrode |
| Water | DI 18 MΩ·cm, 20 L/min, 4 bar |
| Gases | N₂ 99.999% 500 Nm³/hr, Ar 99.999% 100 Nm³/hr, H₂ 99.999% 50 Nm³/hr |
| Ventilation | 10 ACH, HEPA filtration, inert gas suppression |
| Crane | 10t overhead, 15 m hook height |
| Clearance | 6 m × 8 m × 5 m (L×W×H) minimum |

---

## 11. Tooling & Fixtures

### 11.1 Critical Tooling Index

| Tool ID | Name | Description | Critical Spec | Qty |
|---|---|---|---|---|
| TL-01 | Drum Sinter Fixture | Graphite die, punches, insulation | ID 672 mm ±0.1, 1800°C | 1 |
| TL-02 | Liner Press Fixture | Hydraulic, 500 kN, heated platens | Force ±2%, parallelism 10 μm | 1 |
| TL-03 | Winding Mandrel | Collapsible steel, 900 mm ID | CMM ±0.1 mm, 8-segment | 1 |
| TL-04 | Flange Torque Wrench | Digital, ceramic paste compatible | 160 N·m ±1 N·m, angle encoder | 2 |
| TL-05 | Braze Furnace | H₂ atmosphere, 950°C, vacuum capable | ±5°C uniformity, RGA | 1 |
| TL-06 | Cold Plate Leak Test | He mass spec, 10⁻⁹ mbar·L/s | Helium, sniffer + chamber | 1 |
| TL-07 | FBG Splice Kit | Fusion splicer, ZrO₂ ferrules | IL <0.5 dB, return loss >50 dB | 2 |
| TL-08 | Coil Alignment Laser | 3D tracker, ±25 μm | Laser tracker | 1 |
| TL-09 | Tiltmeter | 0.1 μrad resolution | Digital, networked | 4 |
| TL-10 | Helium Leak Detector | 10⁻¹² mbar·L/s sensitivity | Mass spectrometer | 1 |

### 11.2 Tooling Drawings Index (Appendix B)

All tooling drawings maintained in PROD-38 Configuration Management with revision control. Critical tools (TL-01 through TL-06) require first-article inspection and annual re-certification.

---

## 12. Supplier Qualification

### 12.1 Critical Supplier Categories

| Category | Supplier Requirements | Qualification Process |
|---|---|---|
| ZrB₂-SiC powder | Flash sinter capability, 99.5% purity, D50 <1 μm | Audit + first article (3 drums) |
| BFRP/Elium® | Filament winding ±18° capability, in-house basalt | Audit + test winding (3 vessels) |
| Ti₃AlC₂ MAX phase | Ag-CuO-TiO₂ braze qualification, 50 μm joint | Audit + 10 test braze joints |
| 3Y-TZP ZrO₂ | Flash sinter 1800°C, HIP 150 MPa | Audit + density/UT/CT |
| GaN HEMT | GS66516T or equivalent, 650 V/30 A | Vendor cert + incoming UT |
| PMMA POF | 980 μm core, <0.2 dB/m @ 650 nm | Attenuation test, radiation test |
| Si₃N₄ bearings | Ceramic races, ZrO₂ balls, PEEK cage | Dimensional + spin test |

### 12.2 In-House Production Targets

| Material/Component | In-House Target | Current Status |
|---|---|---|
| Basalt fiber | 100% (Mafic USA partnership) | Phase 1: 60% |
| Elium® resin | 100% (in-house MMA) | Phase 1: 80% |
| ZrB₂ powder | 100% (SHS synthesis) | Phase 1: 40% |
| 3Y-TZP powder | 100% (sol-gel) | Phase 1: 30% |
| Ti₃AlC₂ | 100% (SHS + HIP) | Phase 1: 20% |
| Graphite tooling | 100% (CNC machining) | Phase 1: 90% |

---

## 13. Cross-Reference Matrix

### 13.1 Upstream Dependencies

| Document | Provides | Used In |
|---|---|---|
| PROD-04 | Drum geometry, flash sinter params, liner specs | A-01, A-02, A-03, A-04, A-05 |
| PROD-06 | Vessel geometry, winding params, aerogel, glaze | A-06, A-07, A-08 |
| PROD-08 | Mold specs, carousel requirements | A-12 |
| PROD-09 | Port valve design, actuator specs | A-04 |
| PROD-10 | Inverter module design, coil specs | A-09, A-10 |
| PROD-12 | Material BOM, zero-metal proof | All assemblies |
| PROD-24 | Thermal validation of process temps | A-01, A-06, A-09 |
| PROD-25 | FEA-validated dimensions, bolt torques | A-03, A-08, A-13 |
| PROD-26 | GIC immunity, dielectric verification | A-10, A-11, A-13 |

### 13.2 Downstream Dependencies

| Document | Consumes | Interface |
|---|---|---|
| PROD-28 | Acceptance criteria, FAT procedures | QA program input |
| PROD-29 | Shipping specs, site prep, commissioning | Deployment input |
| PROD-30 | Spare parts list, wear schedules | Maintenance input |
| PROD-39 | FAT/SAT test procedures | T&E specification |

### 13.3 Cross-Reference Table

| Section | Upstream Refs | Downstream Refs |
|---|---|---|
| 2 Drum Mfg | PROD-04, 12, 24, 25 | PROD-28, 30 |
| 3 Vessel Mfg | PROD-06, 12, 24, 25 | PROD-28, 30 |
| 4 Port Valves | PROD-09, 12, 25 | PROD-28, 30 |
| 5 Coil Bank | PROD-03, 10, 12, 24 | PROD-28, 30 |
| 6 Power Electronics | PROD-10, 23, 26 | PROD-28, 30 |
| 7 Frame/Carousel | PROD-08, 12, 25 | PROD-28, 30 |
| 8 Integration | All prior | PROD-28, 29, 30 |
| 9 FAT | PROD-23, 24, 25, 26 | PROD-28, 29, 39 |

---

## Appendix A: Build Schedule (Gantt Detail)

### A.1 18-Month Master Schedule (Weeks 1–78)

| WBS | Task | Duration | Start | Finish | Predecessors | Resources |
|---|---|---|---|---|---|---|
| 1.1 | Powder procurement & qualification | 4 wk | W1 | W4 | — | Procurement, Matl Eng |
| 1.2 | Graphite tooling fabrication | 6 wk | W1 | W6 | — | Tooling, CNC |
| 1.3 | Drum flash sinter (FA-01) | 2 wk | W7 | W8 | 1.1, 1.2 | Sintering, QC |
| 1.4 | Drum flash sinter (FA-02/03) | 2 wk | W9 | W10 | 1.3 | Sintering, QC |
| 1.5 | Drum post-sinter machining | 2 wk | W11 | W12 | 1.4 | Machining, CMM |
| 1.6 | Liner tile fabrication | 3 wk | W5 | W7 | 1.1 | Ceramics, QC |
| 1.7 | Liner installation + FBG | 2 wk | W13 | W14 | 1.5, 1.6 | Assembly, FBG |
| 2.1 | Basalt roving qualification | 2 wk | W1 | W2 | — | Procurement, Matl Eng |
| 2.2 | Mandrel fabrication | 4 wk | W1 | W4 | — | Tooling, CNC |
| 2.3 | Vessel winding (FA) | 3 wk | W5 | W7 | 2.1, 2.2 | Winding, QC |
| 2.4 | Vessel winding (production) | 2 wk | W8 | W9 | 2.3 | Winding, QC |
| 2.5 | Aerogel infusion + dry | 2 wk | W10 | W11 | 2.4 | Insulation, QC |
| 2.6 | Glaze application + cure | 1 wk | W12 | W12 | 2.5 | Coatings, QC |
| 2.7 | Flange molding + machining | 2 wk | W6 | W7 | 2.1 | Molding, CNC |
| 3.1 | Cu tube + insulation prep | 2 wk | W1 | W2 | — | Machining, QC |
| 3.2 | Coil winding (8 zones) | 4 wk | W3 | W6 | 3.1 | Winding, QC |
| 3.3 | Vacuum impregnation + cure | 1 wk | W7 | W7 | 3.2 | Impregnation, QC |
| 3.4 | FBG embed + cold plate | 2 wk | W8 | W9 | 3.3 | FBG, Bonding |
| 3.5 | Resonance test (8 zones) | 1 wk | W10 | W10 | 3.4 | Test, QC |
| 4.1 | GaN/module parts kitting | 2 wk | W1 | W2 | — | Procurement, Kitting |
| 4.2 | Module assembly (×8) | 3 wk | W8 | W10 | 4.1 | Assembly, Test |
| 4.3 | Module functional test | 1 wk | W11 | W11 | 4.2 | Test, QC |
| 4.4 | TSN/POF network build | 2 wk | W10 | W11 | — | Network, QC |
| 5.1 | Frame pultrusion + machining | 2 wk | W8 | W9 | — | Pultrusion, CNC |
| 5.2 | Isolator procurement | 4 wk | W1 | W4 | — | Procurement |
| 5.3 | Carousel + bearing assembly | 2 wk | W10 | W11 | 5.1 | Assembly, QC |
| 6.1 | Integration fixture setup | 1 wk | W20 | W20 | — | Tooling, QC |
| 6.2 | System integration | 4 wk | W21 | W24 | All SG | Integration, QC |
| 6.3 | FAT (CT-01 to CT-10) | 3 wk | W25 | W27 | 6.2 | Test, QC, All Eng |

**Critical Path:** 1.1→1.2→1.3→1.4→1.5→1.7→6.2→6.3 (Drum)  
**Critical Path:** 2.2→2.3→2.4→2.5→2.6→6.2→6.3 (Vessel)  
**Critical Path:** 3.1→3.2→3.3→3.4→3.5→6.2→6.3 (Electronics)

### A.2 Float Summary

| Assembly | Total Float | Free Float | Risk Mitigation |
|---|---|---|---|
| A-01 | 0 wk | 0 wk | Dual graphite die sets, parallel sinter furnaces |
| A-06 | 0 wk | 0 wk | Dual mandrels, 2-shift winding |
| A-09 | 0 wk | 0 wk | Parallel winding cells (2×) |
| A-13 | 0 wk | 0 wk | Pre-staged integration, dedicated crew |
| A-14 | 0 wk | 0 wk | 24/7 test operations, parallel CT execution |

---

## Appendix B: Tooling Drawings Index

| Drawing No. | Title | Rev | Sheet Count | Critical |
|---|---|---|---|---|
| TD-001 | Drum Sinter Fixture Assembly | A | 12 | YES |
| TD-002 | Graphite Die Body Machining | A | 8 | YES |
| TD-003 | Upper/Lower Punch Machining | A | 6 | YES |
| TD-004 | Liner Press Fixture Assembly | A | 10 | YES |
| TD-005 | Hydraulic Cylinder Specification | A | 4 | YES |
| TD-006 | Vessel Winding Mandrel Assembly | A | 15 | YES |
| TD-007 | Mandrel Collapse Mechanism | A | 8 | YES |
| TD-008 | Flange Injection Mold | A | 12 | YES |
| TD-009 | Braze Furnace Fixture | A | 8 | YES |
| TD-010 | Cold Plate Leak Test Fixture | A | 6 | YES |
| TD-011 | FBG Splice Fixture | A | 4 | NO |
| TD-012 | Coil Alignment Gauge | A | 6 | NO |
| TD-013 | Integration Fixture Base | A | 10 | YES |
| TD-014 | Drum Insertion Guide | A | 6 | YES |
| TD-015 | Vessel Lifting Spreader | A | 4 | YES |
| TD-016 | FAT Test Fixture Master | A | 20 | YES |

---

## Appendix C: Supplier Audit Checklist

### C.1 Technical Capability (Weight 40%)

| Criterion | Requirement | Evidence |
|---|---|---|
| Process capability | Cpk > 1.67 on critical dimensions | SPC data, 30+ lots |
| Equipment adequacy | Machines capable of required tolerances | Machine list, cal certs |
| Material traceability | Lot tracking to raw material | ERP demo, test reports |
| In-house testing | UT, CT, mechanical, thermal | Lab accreditation (ISO 17025) |
| R&D capability | Process development for new grades | Project portfolio, patents |

### C.2 Quality System (Weight 30%)

| Criterion | Requirement | Evidence |
|---|---|---|
| QMS certification | ISO 9001 + AS9100 (aerospace) | Certificates |
| NCR/CAPA process | 8D, root cause, effectiveness check | Recent NCR logs |
| Supplier management | Tier 2 flow-down, audits | Audit schedule, reports |
| Document control | Revision control, approval workflow | Demo |
| Training records | Operator qualification, re-cert | Matrix |

### C.3 Financial & ESG (Weight 30%)

| Criterion | Requirement | Evidence |
|---|---|---|
| Financial stability | D&B rating >3, 3 yr audited financials | Reports |
| Capacity | 2× forecast demand, surge capability | Capacity plan |
| ESG compliance | Conflict minerals, carbon, labor | ESG report, certs |
| Business continuity | Backup site, inventory buffer | BCP document |
| IP protection | NDA, data security, export control | Security audit |

---

## Appendix D: FAT/SAT Test Procedures (CT-01 through CT-10)

### D.1 CT-01 Drum Rotordynamics

**Objective:** Verify drum dynamic behavior matches FEA predictions (PROD-25).

**Setup:** Drum mounted on integration fixture, drive motor + encoder, accelerometers (8×), proximity probes (4×), laser vibrometer.

**Procedure:**
1. Install drum, verify runout <25 μm at 50 RPM
2. Accelerate 10 RPM/s to 500 RPM, record at each 50 RPM increment
3. Coast down, record critical speed crossings
4. Balance correction: add/remove mass at correction planes
5. Re-run to 500 RPM, verify G0.4 (ISO 21940-11)
6. Overspeed test: 600 RPM for 5 min (1.2× operating)

**Pass Criteria:**
- 1st bending critical speed >1890 RPM (FEA: 2100 RPM)
- Balance grade G0.4 at 500 RPM
- Synchronous vibration <25 μm pk-pk
- No subsynchronous instability

### D.2 CT-02 Vessel Hydrotest

**Objective:** Verify pressure boundary integrity per ASME BPVC Sec X.

**Setup:** Vessel on frame, N₂ supply 15 bar, pressure transducers (3×), He leak detector.

**Procedure:**
1. Visual inspection: welds, bonds, flange faces
2. Pressurize to 5 bar, hold 10 min, inspect
3. Pressurize to 10 bar, hold 10 min, inspect
4. Pressurize to 15 bar (1.5× design), hold 30 min
5. Depressurize to 5 bar, He leak test all joints
6. Full depressurization, final visual

**Pass Criteria:**
- Zero pressure drop at 15 bar/30 min (temp compensated)
- Zero leaks at all joints (He <10⁻⁶ mbar·L/s)
- No permanent deformation (CMM pre/post)

### D.3 CT-03 Flange Leak Test

**Objective:** Verify all 24 bolted joints (12 per flange) seal at design pressure.

**Procedure:**
1. Pressurize vessel to 10 bar N₂
2. He sniffer probe at each bolt hole, gasket OD, flange face
3. Record leak rate per joint
4. Any leak >10⁻⁶ mbar·L/s → re-torque → re-test

**Pass Criteria:** All 24 joints <10⁻⁶ mbar·L/s

### D.4 CT-04 SIS Proof Test

**Procedure per SIF:** (See Section 9.2)

### D.5 CT-05 Coil Resonance

**Objective:** Verify all 8 zones achieve ZVS at target frequency and power.

**Setup:** Each zone connected to test inverter, water load, V/I probes, thermal camera.

**Procedure per zone:**
1. Frequency sweep 50–100 kHz (Z1–Z2), 1–50 kHz (Z3–Z8)
2. Identify resonant peak, set operating point
3. Ramp power 0→100% in 10% steps, 5 min dwell
4. Record V/I phase, switch voltage, current, temperature
5. Verify ZVS: v_DS zero crossing before gate turn-on

**Pass Criteria:** ZVS phase <5° at 100% load all zones

### D.6 CT-06 FBG Calibration

**Objective:** Calibrate all 384 FBG sensors against reference temperatures.

**Setup:** Drum in furnace, 5 reference thermocouples (Type C) at known positions, FBG interrogator.

**Temperature points:** 25°C, 500°C, 1000°C, 1500°C, 2000°C

**Procedure:**
1. Ramp furnace to each point, hold 30 min stabilization
2. Record all 384 FBG wavelengths + 5 reference TCs
3. Compute calibration coefficients per sensor
4. Verify linearity R² >0.999, drift <0.5%/1000 hrs

**Pass Criteria:** All 384 sensors calibrated, drift <0.5%/1000 hrs

### D.7 CT-07 GIC Ride-Through

**Setup:** Helmholtz coil (100 A/m, 5000 nT/s), full system operational.

**Procedure:**
1. Start 6-batch sequence (CT-10)
2. At Batch 3 midpoint, energize Helmholtz to 100 A/m
3. Maintain 30 min, monitor all systems
4. De-energize, verify 30 min stable grid
5. Operator authorizes continued operation

**Pass Criteria:** Zero spurious SIF trips, zero data loss, all comms intact

### D.8 CT-08 Thermal Cycle

**Objective:** Full thermal cascade (Stages 0-8) without feedstock.

**Procedure:**
1. Execute Stage 0: AMLS 20 min, verify LI >0.8
2. Execute Stage 1: IR drying to 150°C, verify moisture <0.1%
3. Execute Stages 2-8 per thermal profile (PROD-02)
4. Hold each stage 30 min, record all FBG, power, gas
5. Cool down per controlled ramp (50°C/min max)

**Pass Criteria:** All stages ±5°C of setpoint, no SIF trips, no anomalies

### D.9 CT-09 Seismic Shake

**Setup:** Shake table, IEEE 693 High RRS, 3 axes.

**Procedure:**
1. Mount integrated system on shake table (isolators installed)
2. 5 OBE events (0.4g ZPA), inspect between
3. 1 SSE event (1.0g ZPA), inspect
4. Post-shake: CT-01, CT-02, CT-03, CT-04 re-run

**Pass Criteria:** HCLPF >1.6g, no structural damage, all re-tests pass

### D.10 CT-10 Integrated Hot Run

**See Section 9.3 for 6-batch protocol.**

---

*End of CSMFAB000000000127 — PROD-27 Manufacturing Process Plan*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*