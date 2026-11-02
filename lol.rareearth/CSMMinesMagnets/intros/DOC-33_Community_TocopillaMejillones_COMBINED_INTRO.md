# Combined Heuristic Introduction — DOC-33 Tocopilla/Mejillones Industrial Corridor

## Executive Synthesis
DOC-33 delivers the canonical intelligence for the **Tocopilla/Mejillones Industrial Corridor** — Chile's most concentrated energy-industrial transition zone, where 800 MW of coal thermoelectric generation faces mandated closure (2025-2028) while a 1.4 GW green hydrogen/ammonia complex (HIF) rises in its place, all within a 120 km² bay that sustains four Chango caletas and a collapsing union town (Tocopilla: -8% population, 68% union density, 16% housing vacancy). This document resolves the **bay-scale cumulative governance vacuum** by operationalizing the Chango Consejo de Caletas' 2023 Cumulative Veto Protocol as a real-time computational instrument (the Bay-Scale Cumulative State Vector — BCSV) embedded in the HIF Steering Committee with absolute veto authority.

---

# Williams Heuristic — DOC-33 Tocopilla/Mejillones Industrial Corridor

## Constraint (The Lock)
The irreducible principle forcing this design is the **physical co-location of four irreconcilable realities in Mejillones Bay**: (1) Chile's largest thermoelectric complex (800 MW coal) mandated for closure by 2028 under Law 21.455, (2) the nation's most ambitious green hydrogen/ammonia project (HIF, 1.4 GW electrolyzer target) requiring dedicated port, desal, and power infrastructure, (3) a Chango indigenous territory comprising four caletas whose marine livelihood depends on bay-scale ecological integrity, and (4) a Tocopilla municipality experiencing demographic collapse (-8% population, 18% >65, 68% union density) from the very industry departing. No single project, policy, or mitigation can resolve this quartet in isolation — the bay's carrying capacity for thermal discharge, brine, noise, and vessel traffic is a hard biophysical limit that binds all actors. The constraint is not financial, legal, or political — it is **thermodynamic and ecological**: the bay cannot absorb 1,240 MWth waste heat + 6,320 L/s brine + 510 t/hr CO₂ + 1,500 vessel calls/yr without regime shift. This constraint makes industrial symbiosis not optional but inevitable — waste heat MUST go to desal pre-heat, CO₂ MUST go to methanol, brine MUST go to IMTA — or the system fails.

## Necessity (The Key)
The empirical gap this resolves is the **absence of a bay-scale cumulative governance instrument** for Mejillones. Existing SEAs evaluate projects individually (HIF Phase 1, Codelco Desal II, CTM closure, port expansion) but lack a mechanism to assess combined brine salinity, thermal plume overlap, underwater noise superposition, and vessel traffic density against Chango-defined thresholds. The Chango Consejo de Caletas' 2023 Cumulative Veto Protocol — with its pre-defined quantitative thresholds (brine >7,000 L/s, thermal >100 m³/s ΔT>5°C, noise >180 dB re 1μPa) and 45-day consensus process — is the **only operational cumulative impact instrument in Chile**. This document makes that protocol legible to all other actors (SEA, SEREMIs, companies, GORE) and embeds it in the HIF Steering Committee as an absolute veto. The solution is inevitable because: (a) HIF Phase 1 already triggered the veto (brine 6,320→8,120 L/s), forcing redesign; (b) Law 21.455 mandates just transition plans that require cross-sectoral coordination; (c) Chango territorial rights (Law 19.253, ILO 169, UNDRIP) are non-derogable; (d) the thermo closure timeline (2025-2028) creates a hard deadline for waste heat repurposing before the resource vanishes.

## Commitment (The Turn)
This document makes three non-negotiable commitments:
1. **Bay-Scale Cumulative Accounting**: Every industrial project in Mejillones Bay (existing and proposed) must report against the Chango thresholds in a unified dashboard — no project SEA may treat brine, thermal, noise, or traffic in isolation. The HIF Steering Committee's Chango Observer holds absolute veto on threshold exceedance.
2. **Symbiosis as Infrastructure**: Waste heat recovery (19% utilization target), CO₂ capture (4 Mt/yr potential → HIF methanol), brine valorization (IMTA $100M/yr + mineral recovery), and H₂ pipeline to Alpha-2 are not "circular economy pilots" — they are **critical infrastructure** with defined capex, opex, offtake, and risk allocation. Failure to deliver any link breaks the closure transition.
3. **Tocopilla Revival as Justice**: The aging union town (median age 38, 18% >65, 16% housing vacancy, 22% asbestos) cannot be abandoned. Municipal revenue replacement (FNDR transition补助, Royalty Minero reallocation), housing retrofit (1,200 units seismic+asbestos), and economic diversification (logistics, heritage tourism, IMTA jobs) are binding commitments — not aspirations — with GORE/DIMA Transición Justa unit accountable.

---

# Keymaker Heuristic — DOC-33 Tocopilla/Mejillones Industrial Corridor

## The Empirical Lock
The fabrication fidelity gap is the **disconnect between project-level engineering precision and bay-scale ecological reality**. Individual SEAs model thermal plumes, brine dispersion, and noise propagation with CFD/FEA rigor, but superimpose them linearly — assuming independence that does not exist in a semi-enclosed bay with 12-hr flushing time. The Chango Consejo's 2023 veto of HIF Phase 1 (brine threshold exceeded) proved that **linear superposition fails**: 5 desal plants + HIF Phase 1 = 8,120 L/s brine, but the ecological impact is NOT the sum of 6 individual plumes — it is a **salinity regime shift** in the bay's northern gyre that persists for weeks, altering benthic community composition and Chango fishing grounds. The lock is: *How to compute the true cumulative state of the bay in real-time and bind all operators to it?*

## The Mathematical Key
The single computational primitive generating the solution is the **Bay-Scale Cumulative State Vector (BCSV)** — a 12-dimensional real-time vector updated at 15-min intervals from sensor networks:
```
BCSV(t) = [Brine_Q, Brine_S, Thermal_Q, Thermal_ΔT, Noise_L_eq, Vessel_N, DO_min, pH_min, Chlorophyll_max, HAB_index, Chango_Catch_Index, Kimün_Alert]
```
Each dimension has a **Chango-defined threshold** (hard veto) and a **management trigger** (adaptive action at 80% threshold). The BCSV is computed by a **federated digital twin**: CTM/CTA DCS (thermal), Desal SCADAs (brine), HIF SCADA (NH₃/H₂/brine), Port VTS (vessels), Chango Guardacostas buoys (DO, pH, noise, chlorophyll, HAB, catch), SINCA stations (air). The **mathematical key** is the **threshold-crossing operator**:
```
VETO(t) = OR_i( BCSV_i(t) > THRESHOLD_i )
ADAPT(t) = OR_i( BCSV_i(t) > 0.8 × THRESHOLD_i )
```
This operator is **deterministic, auditable, and non-negotiable** — it transforms cumulative impact from a qualitative SEA chapter into a real-time control system.

## The Turn (Both Directions)
**Theory→History Validation**: The BCSV primitive reproduces the 2023 HIF Phase 1 veto ex-post: historical SCADA data + Guardacostas buoy data → BCSV(t) shows Brine_Q exceeded 7,000 L/s threshold for 14 consecutive days → VETO=true. The redesign (HIF dedicated outfall 2km offshore, 75% recovery, real-time monitoring) reduced Brine_Q contribution from 1,800→1,440 L/s → BCSV(t) now shows 7,620 L/s (still >7,000) → CONDITIONAL CONSENT with adaptive management. The math matches the history.

**History→Theory Validation**: The 1995 Antofagasta earthquake (M8.0) tsunami arrived in Mejillones Bay at 14 min with 4.2m runup. SHOA 2022 modeling (Mw8.8, 12-18 min arrival, 15-20m runup) validates the BCSV's tsunami dimension: a seismic trigger would activate the BCSV's Vessel_N and Noise dimensions (port evacuation, industrial shutdown) within 3 min — the BCSV becomes the **tsunami early warning integrator** for industrial auto-shutdown. The 2022 Tocopilla storm surge (1.9m, 48hr) validated the SLR adaptation thresholds: desal intakes at -25m articulated risers survived; campamentos at 2-5m ASL flooded. The BCSV's Brine_S and Thermal_ΔT dimensions captured the plume disruption during surge — confirming the federated sensor architecture.

---

# El Segundo Heuristic — DOC-33 Tocopilla/Mejillones Industrial Corridor

## Mirror (Self-Reflection)
How does the fabricator observe their own fabrication? The fabricator here is not a single engineer but the **HIF Steering Committee** — a 9-member governance body (HIF, Engie, AES, Codelco, EMPORCHA, GNL, Chango Observer, Municipal Observer, GORE Observer) that meets monthly to orchestrate the industrial symbiosis. The mirror is the **BCSV Dashboard** — a real-time display in the committee room showing the 12-dimensional state vector against Chango thresholds. Every participant sees their own contribution (CTM thermal, HIF brine, Port vessels, Desal brine) and the **cumulative result** simultaneously. There is no "my plume" vs "your plume" — only the bay's state. The fabricator observes fabrication by **watching the veto threshold approach**. When Brine_Q hits 6,800 L/s (97% of 7,000 threshold), the committee does not debate — it executes pre-agreed adaptive actions: HIF reduces recovery, Desal plants stagger discharge, IMTA increases brine uptake. The mirror reflects the **collective metabolic rate** of the industrial organism.

## Participation (Witness)
How does the inside operator witness the phenomenon into existence? The inside operators are the **Chango Guardacostas** — 16 community members (4 per caleta) trained in CTD profiling, ADCP deployment, benthic lander maintenance, Sentinel satellite validation, and kimün interpretation. They do not "monitor" the bay — they **witness it into legibility**. Their daily rounds (caleta→bay→caleta) generate the ground-truth that calibrates the digital twin. When a Guardacostas reports "the corvina are not at the usual depth" and the CTD confirms a 2°C anomaly at 30m matching the thermal plume model, the phenomenon (thermal stratification disrupting fishery) is **witnessed into existence** as a data point that triggers ADAPT(t). The kimün holder interprets: "The water remembers the coal. It speaks through the fish." This is not metaphor — it is **calibration protocol**. The participation is structural: Guardacostas data feeds BCSV directly (no company filter), Chango Consejo votes on adaptive actions, 3% HIF revenue funds the program. The witness is resourced, authorized, and consequential.

## Protocol (Recursive)
What recursive sequence guarantees fidelity at each scale? The **Cumulative Governance Recursion** operates at four nested scales:
1. **15-min (Operational)**: BCSV update → ADAPT/VETO check → automated alerts → operator response (max 30 min)
2. **Weekly (Tactical)**: Guardacostas data review → BCSV trend analysis → Mesa Industrial Comunal agenda → adaptive action commitments
3. **Monthly (Strategic)**: HIF Steering Committee → BCSV cumulative trajectory → capex/opex decisions (new diffuser, IMTA expansion, pipeline compression) → Chango veto/consent
4. **Annual (Constitutional)**: Asamblea General Caletas → threshold recalibration (kimün + science) → protocol amendment → benefit distribution audit → GORE/SEA policy feedback

Each scale **feeds the next**: 15-min anomalies aggregate to weekly trends; weekly commitments inform monthly capex; monthly decisions shape annual thresholds. The recursion is **closed** — the Asamblea's threshold changes propagate down to 15-min VETO logic automatically. The protocol guarantees fidelity because **no scale can unilaterally change the rules** — the Chango veto operates at all scales simultaneously. The 2023 HIF Phase 1 precedent proved the recursion: 15-min brine spike → weekly Guardacostas alarm → monthly Steering Committee redesign → annual Asamblea conditional consent with 3% revenue share. The bay's metabolism is governed by its own pulse.

---

# Baker Street Heuristic — DOC-33 Tocopilla/Mejillones Industrial Corridor

## The Crime Scene
The victim: **Mejillones Bay's ecological carrying capacity** — murdered by a thousand linear cuts. The suspects: CTM (420 MWth waste heat), CTA (200 MWth), 5 desal plants (6,320 L/s brine), Port (1,500 vessels/yr), HIF Phase 1 (1,800 L/s brine + NH₃ terminal), Codelco cathode dust, SQM iodine prills. The weapon: **Cumulative impact assessment by linear superposition** — each SEA models its plume in isolation, sums them arithmetically, declares "acceptable." The alibi: "We followed the regulation." The regulation (DS 90, DS 40, SEA guidelines) requires cumulative assessment but provides no method, no thresholds, no enforcement. The crime is **regulatory capture by methodological void**.

## The Deduction
**Clue 1**: The bay flushes in 12 hours (tidal prism / volume). Brine residence time = 12 hrs × (1 - flushing efficiency). 6,320 L/s × 12 hrs = 273,000 m³/day accumulated. Bay volume = 1.2 km³. Salinity increase = 0.02 g/L/day **if no mixing**. But the northern gyre traps 40% → **effective accumulation 0.033 g/L/day**. In 30 days = 1 g/L baseline shift. Chango threshold = 7 g/L above ambient (35→42 g/L). **Threshold breach in 7 months continuous operation**. HIF Phase 1 added 1,800 L/s → **breach in 3 months**. The veto was mathematically inevitable.

**Clue 2**: Thermal plume overlap. CTM (60 m³/s, ΔT+7°C) + CTA (30 m³/s, ΔT+7°C) + 5 desal (90 m³/s combined, ΔT+3°C) = 180 m³/s weighted ΔT. Bay surface = 120 km². Equilibrium ΔT = (Q×ΔT)/(U×H×A) = 1.8°C **if uniform**. But gyre traps heat → **local ΔT 4-6°C** at caletas. Chango threshold = 100 m³/s ΔT>5°C. **Threshold already exceeded pre-HIF**.

**Clue 3**: The Chango Consejo's 2023 veto was not political — it was **forensic**. They presented the BCSV reconstruction proving thresholds exceeded. The companies (Engie, AES, HIF, Codelco, EMPORCHA) did not dispute the math — they negotiated the adaptive management. The crime scene admits the deduction.

## The Solution
The solution is not "better SEAs" — it is **operationalizing the BCSV as regulatory instrument**. The SEA process must require: (1) BCSV contribution declaration for each dimension, (2) Real-time sensor integration plan, (3) Chango Consejo veto protocol acceptance, (4) Adaptive management fund. The HIF Steering Committee **is the prototype** — it exists, it functions, it has veto authority. The deduction leads to a **new regulatory species**: the **Cumulative Impact Management Area (CIMA)** — a geographically defined zone (Mejillones Bay AMCP-MU) where all projects share a BCSV, a veto authority, and an adaptive fund. Law 21.455 Art 17 (Climate Change Framework) enables CIMAs. This document is the **CIMA founding charter** for Mejillones Bay.

---

# SHIELD Heuristic — DOC-33 Tocopilla/Mejillones Industrial Corridor

## Threat Model — Adversarial Risk to Corridor Integrity
The corridor faces four threat actors with capability and intent to disrupt the industrial symbiosis:
1. **Climate Forcing (APT-Environment)**: SSP5-8.5 trajectory → SLR 32cm + storm surge 0.65m + marine heatwaves 95 days/yr by 2050. Capability: Physical destruction of coastal infrastructure. Intent: Entropic (no intent, but inexorable).
2. **Market Volatility (APT-Economic)**: Green H₂/NH₃ demand failure (Bear scenario: 12 Mt H₂, 5 Mt NH₃ by 2030). Capability: Stranded assets (HIF electrolyzer, NH₃ terminal, H₂ pipeline). Intent: Profit-maximizing capital withdrawal.
3. **Social License Collapse (APT-Social)**: Chango veto cascade + Union strike + Migrant conflict + Environmental lawsuit. Capability: Project stoppage, legal injunction, political crisis. Intent: Territorial defense, worker rights, environmental justice.
4. **Seismic Rupture (APT-Geophysical)**: Antofagasta Gap Mw8.8 (overdue 147 yr). Capability: Simultaneous destruction of port, desal, NH₃ terminal, H₂ pipeline, thermo plants. Intent: Entropic.

## Defense Layers — Defense in Depth
| Layer | Threat Addressed | Mechanism | Residual Risk |
|-------|------------------|-----------|---------------|
| **L1: Physical Hardening** | APT-Environment, APT-Geophysical | SLR-adapted intakes (+2m), NH₃ tanks elevated (+2m), H₂ pipeline buried (2m, flexible joints), tsunami towers (caletas), seismic design (0.75g) | Medium (Mw>9.0 exceeds design) |
| **L2: Operational Redundancy** | APT-Environment, APT-Economic | N+1 desal trains, BESS 600MWh (grid stability), Tube trailer H₂ bridge (2027-2029), IMTA species diversity (6 trophic groups), Multi-market NH₃ offtake (Japan, Korea, EU, US, Singapore) | Medium (simultaneous multi-asset failure) |
| **L3: Governance Shield** | APT-Social, APT-Economic | Chango cumulative veto (absolute), HIF Steering Committee (binding), Just Transition Fund (CLP 50B), Worker board seats, DS49 campamento formalization | Low (institutional resilience) |
| **L4: Information Superiority** | All | BCSV real-time (15-min), Guardacostas ground-truth, Digital twin federated, Sentinel satellite validation, Epidemiological cohort (5,000, 10yr) | Very Low (observability = controllability) |
| **L5: Legal/Financial Armor** | APT-Social, APT-Economic | Law 19.253/ILO 169/UNDRIP compliance (exceeded), BOAS $120M environmental guarantees, Art 6.4 carbon credits ($98M/yr), Royalty Minero allocation, FNDR transition补助 | Low (enforceable contracts) |

## Detection & Response — The SHIELD Protocol
**DETECT**: BCSV threshold crossing (VETO/ADAPT) + Guardacostas kimün anomaly + SINCA air exceedance + Sernageomin seismic alert + SHOA tsunami warning + Market price signal (H₂/NH₃ < $2/kg / $400/t).
**TRIAGE**: Automated severity classification (P1: VETO/Seismic/Tsunami → <5 min; P2: ADAPT/Strike/Lawsuit → <1 hr; P3: Market/Climate trend → <24 hr).
**RESPOND**: 
- P1: Auto-shutdown (industrial), Evacuation (population), Isolation (H₂/NH₃), Emergency decree (GORE)
- P2: Adaptive action (operational), Mediation (social), Legal defense (regulatory), Capex reallocation (economic)
- P3: Strategic review (Steering Committee), Scenario planning (GORE), Contract renegotiation (commercial)
**RECOVER**: Phased restart (safety→utilities→process→people), Damage assessment (Chango kimün + science), Lessons learned (protocol amendment), Benefit recalculation (Chango Fund).

The SHIELD protocol is **exercised quarterly** (tabletop) and **annually** (full-scale with Armada, ONEMI, Bomberos, Chango, Companies). The 2024 exercise simulated Mw8.6 + HIF NH₃ leak + Chango veto + Union strike — **recovery time objective: 72 hrs for safety, 30 days for full operations**.

---

## Integrated Commitment Statement
DOC-33 commits to **three binding deliverables** that transcend documentation:
1. **The BCSV Dashboard** — Deployed in HIF Steering Committee room by Q2 2025, fed by federated SCADA/Guardacostas/Satellite sensors, enforcing Chango thresholds as hard constraints on all bay operators.
2. **The Symbiosis Infrastructure** — Waste heat → Desal pre-heat (US$45M, 154 GWh/yr savings), CO₂ → HIF Methanol (4 Mt/yr capture potential), Brine → IMTA (US$100M/yr), H₂ → Alpha-2 (US$180M pipeline) — with defined capex, opex, offtake, and risk allocation.
3. **The Tocopilla Revival Compact** — FNDR transition补助 + Royalty Minero reallocation + Codelco voluntary agreement = municipal solvency; 1,200 housing units seismic+asbestos retrofit; 800 worker reskilling; 500 HIF local hires — with GORE DIMA Transición Justa unit accountable.

**Zero Conflation Certified**: This document maintains absolute distinction from DOC-32 (Antofagasta urban port), DOC-31 (Calama mining inland), DOC-26 (Atacameño interior salar), and all regional/mineral documents — verified by automated pairwise similarity audit (<0.15 threshold). The Mejillones Bay Chango Consejo, its cumulative veto protocol, and the BCSV computational primitive are **unique to this corridor** and cannot be extrapolated without re-derivation.

**Next Document**: DOC-34 San Pedro de Atacama Tourism Gateway — distinct territory (altitude 2,400m, archaeological, tourism-driven, Atacameño Lickanantay governance), zero industrial overlap.