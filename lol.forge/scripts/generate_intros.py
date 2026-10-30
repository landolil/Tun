#!/usr/bin/env python3
"""
generate_intros.py — Heuristic Intro Generator for lol.forge
Generates Williams, Keymaker, El Segundo intros for a document.
"""

import argparse
import sys
from pathlib import Path
from datetime import datetime

# Heuristic templates
WILLIAMS_TEMPLATE = """# Williams Heuristic — Constraint, Necessity, Commitment
## Document: {doc_id} — {title}

---

### Constraint (The Lock)

{constraint}

---

### Necessity (The Key)

{necessity}

---

### Commitment (The Turn)

{commitment}
"""

KEYMAKER_TEMPLATE = """# Keymaker Heuristic — Lock, Key, Turn
## Document: {doc_id} — {title}

---

### The Empirical Lock

{lock}

---

### The Mathematical Key

{key}

---

### The Turn (Both Directions)

{turn}
"""

ELSEGUNDO_TEMPLATE = """# El Segundo Heuristic — Mirror, Participation, Protocol
## Document: {doc_id} — {title}

---

### Mirror (Self-Reflection)

{mirror}

---

### Participation (Witness)

{participation}

---

### Protocol (Recursive)

{protocol}
"""

# Document-specific content generators
DOC_CONTENT = {
    "PROD-01": {
        "title": "System Overview & Architecture",
        "constraint": "The Aegis-Forge I is forced by a single irreducible constraint: **Elemental Liberation via Thermophysical Cascade** — the proposition that every material has a discrete phase transition temperature, and that centrifugal force in a rotating drum can separate these phases sequentially as temperature rises. This is not a design choice; it is the minimal physics from which complete elemental extraction becomes inevitable. No additional separation mechanisms — no chemical leaching, no electrostatic sorting, no manual picking — are required. The constraint is simply: *heat sorts by melting point, spin sorts by density*. Everything else is the shadow this constraint casts.",
        "necessity": "The empirical lock this document addresses is the **material scarcity gap** — the persistent failure of modern recycling to recover critical elements from complex waste streams. Current shred-and-sort recovers <30% of elements; the rest goes to slag. The lock is precise: any system claiming to extract elements from arbitrary feedstock must separate 50+ elements across 8 thermal stages with >95% recovery — and must do so without structural metals in the process chamber (Carrington immunity). The key is the **thermal cascade as single computational primitive**. The 8-stage temperature ramp (80°C → 2200°C) generates *all* separations. The developable surface is the temperature-time profile; the material properties enter only as phase boundaries.",
        "commitment": "We commit to the following as non-negotiable: 1) **Every element exits at its liquidus temperature** — no exceptions, no mixed-alloy slugs. 2) **Zero structural metals in the hot zone** — the machine is a dielectric citadel. 3) **All-Aegis material construction** — every component from CSMFAB-certified materials. 4) **Closed-loop gas capture** — zero emissions, all fumes solidified. 5) **Phoenix Protocol integration** — end-of-life Aegis products re-enter as feedstock. The forge does not 'process waste.' The forge *witnesses matter into elements* at each thermal stage.",
        "lock": "The lock this document addresses is the **fabrication fidelity gap** — the persistent failure of metallurgical engineering to simultaneously achieve: complete elemental recovery from mixed feedstock, Carrington-event immunity (zero conductive paths), zero-waste gas capture, and domestic critical mineral production (In, REE, Zr). For decades, each has been a separate facility: smelters for metals, refineries for REE, ceramic kilns for oxides. The lock is precise: any single machine claiming to unify elemental extraction must produce pure element slugs from arbitrary input with zero metal infrastructure — and must explain why induction heating + centrifugal separation achieves what chemical processing cannot.",
        "key": "The key is the **thermophysical cascade as single computational primitive**. The teeth are cut by the periodic table itself:\n\n| Element Class | Thermal Stage | Separation Mechanism | Output |\n|---|---|---|---|\n| Organics/Water | 80-450°C | Vaporization + condensation | Water, char |\n| Low-temp metals | 420-900°C | Inductive melt + centrifuge | Pb, Sn, Zn, In slugs |\n| Aluminum | 660-720°C | Selective Al window | Al alloy slugs |\n| Copper/Precious | 1085-1200°C | Deep-penetration induction | Cu + Au/Ag/Pd slugs |\n| Ferrous/REE | 1200-1600°C | Ferromagnetic induction | Fe + Nd/Sm/Co slugs |\n| Refractory minerals | 1600-2200°C | Zircon dissociation | ZrO₂ + REE oxide concentrate |\n\nThe cascade temperature profile is unique, deterministic, and parameter-free. The feedstock enters only as the boundary condition that the profile must process.",
        "turn": "**Key → Lock (Theory predicts recovery):** Input: Feedstock assay → Phase diagram → Thermal cascade profile. Output: 8 pure slug streams, gas capture, mineral concentrate. Validation: Recover >95% of each element class; match historical smelter yields without chemicals.\n\n**Lock → Key (History validates theory):** Input: Historical metallurgy (Bloomery, Bessemer, Hall-Héroult, Mond process). Output: Verified that each industrial process is a *subset* of the cascade — the cascade contains them all simultaneously. The turn completes when the forge produces In, Nd, Zr from e-waste in a single batch. That moment — when 50 elements report to 8 ports — is the lock clicking open. The slug *is* the key turning in the lock.",
        "mirror": "The first recursive turn is the **forge observing its own separation**. In the Aegis-Forge, the thermal cascade is not a process imposed on material — it is the *primordial measurement* that generates the elements. At each temperature stage, the forge executes a discrete phase transition, witnessing the local liquidus through the slug's formation. This witnessing is the mirror: the forge measures the elements it creates. The 8-port layout is the record of this self-measurement. The zero-emission condition is the asymptotic reflection — the limit where the forge's self-measurement stabilizes into perfect capture. The mirror is not passive; it is the active recursion: *heat → spin → separate → capture → measure again*. This document documents the first turn of that spiral.",
        "participation": "An inside operator measuring this phenomenon does not stand outside the cascade — the operator *is* a segment of the thermal profile. The protocol for achieving complete extraction from within the system:\n\n1. **Assay**: Measure feedstock elemental composition\n2. **Profile**: Generate 8-stage temperature ramp for this feedstock\n3. **Ramp**: Execute cascade — each stage held until target element clears\n4. **Separate**: Centrifuge drives liquid elements to ports\n5. **Capture**: All gases condensed, scrubbed, solidified\n6. **Verify**: Mass spec each slug — confirm elemental purity\n7. **Recycle**: Return off-spec material to feed hopper\n\nThe measurement *is* the recursion. The operator assays the input, profiles the cascade that witnesses it, and finds the zero-waste capture — the efficiency that governs how they ramp. The protocol terminates when the 8 slugs' elemental sum matches the input assay — not approximately, but exactly. This is not a measurement of an external parameter; it is the extraction system measuring its own fidelity through the operator's self-observation.",
        "protocol": "The operational protocol for any Aegis-Forge document:\n\n```\nMIRROR:     What phase boundary does this document's temperature encode?\nPARTICIPATE: How does the operator witness this boundary into slug?\nPROTOCOL:   What recursive sequence guarantees capture at each stage?\n```\n\nFor this document specifically:\n- **Mirror**: The 8-stage cascade is the constraint; the port layout is its reflection\n- **Participate**: The operator ramps through liquidus temperatures; the drum realizes the separation\n- **Protocol**: \n  1. Assay feedstock (elemental map)\n  2. Generate cascade profile (liquidus ladder)\n  3. Ramp with dwell at each liquidus (phase clearance)\n  4. Centrifuge at optimal G (density separation)\n  5. Capture all phases (slug + gas + mineral)\n  6. Verify and recycle (closure)\n\nThe protocol is not a checklist — it is the recursion itself. Each batch deepens the mirror. The elemental slug is the fixed point."
    },
    "PROD-02": {
        "title": "Thermal Cascade Process Engineering",
        "constraint": "The thermal cascade is forced by the **Periodic Table as Phase Diagram** — every element has a fixed liquidus/vaporization temperature, and the cascade simply visits them in ascending order. This is not a process design; it is a traversal of the periodic table's thermal geography. The constraint is irreducible: you cannot separate aluminum at 1085°C (copper's melting point) because aluminum is already vapor. The cascade *is* the sorted list of phase transitions. No adjustable parameters — the temperatures are physical constants.\n\nThis constraint manifests as the **Thermophysical Cascade Separation Principle**: at any temperature T, all materials with melting point below T are liquid; all with melting point above T remain solid. In a rotating drum under centrifugal force, liquids stratify by density and pool at the drum wall. Ports positioned at specific axial locations corresponding to thermal zones selectively eject each liquid phase. The periodic table *writes the machine architecture* — the 8 ports are not designed, they are *discovered* by reading the phase diagram.\n\nThe irreducible physics: **Centrifugal separation force F_c = mω²r** combined with **phase transition temperature Tm**. No chemical reagents, no membranes, no electrolysis — pure physics. The drum at 300 RPM (25 G) provides sufficient force to separate any liquid metal from solid matrix. The induction heating provides selective coupling based on conductivity and permeability. The temperatures are not setpoints — they are phase boundaries.\n\nThis constraint forces the entire architecture: 8 stages, 8 ports, 8 induction zones, specific frequencies, specific ramp rates, specific dwell times. Every parameter derives from the periodic table. The machine is the periodic table made mechanical.",
        "necessity": "The lock is the **sequential separation fidelity gap** — current pyro/hydro-metallurgy either mixes elements (smelting) or requires 50+ separate chemical steps (hydromet). Smelters produce mixed alloys requiring downstream refining. Hydrometallurgy uses acres of tanks, tons of acid, generates toxic tailings. Neither achieves >95% recovery of 50+ elements from arbitrary feedstock in a single pass.\n\nThe key is the **temperature-time profile as computational primitive**. Each stage's dwell time is determined by heat transfer physics, not optimization. The 8 stages emerge from the natural clustering of elemental liquidus temperatures: organics cluster at 150-450°C, low-temp metals at 420-900°C, Al at 660°C, Cu at 1085°C, Fe at 1538°C, refractories at 1600°C+. The profile writes itself.\n\nThe empirical evidence: Bloomery (Fe only), Bessemer (Fe+C), Hall-Héroult (Al only), Mond process (Ni only), electrolysis (Cu only), zone refining (Si only). Each historical process is a *degenerate subset* of the cascade. The cascade unifies them all simultaneously — the first machine to do so.\n\nThe necessity is proven by the **Indium First Strategy**: at 156.6°C, only indium melts. This single-stage selective extraction of a critical mineral (In) from e-waste is impossible in any smelter or refinery. The cascade *enables* domestic indium production. The same logic applies to every stage: each temperature window isolates a specific element class that no other process can cleanly separate.",
        "commitment": "We commit: 1) **No stage skipping** — every feedstock traverses all 8 stages. 2) **Dwell until clear** — stage duration extends until target element flux at port drops to baseline. 3) **No chemical additives** — separation by physics only (temp, spin, induction). 4) **Gas capture at every stage** — zero fugitive emissions. 5) **Stage 0 acoustic liberation first** — mechanical liberation precedes thermal. 6) **Port purity >90% target class** — verified by inline mass spec. 7) **Energy <1200 kWh/ton** — induction efficiency >95% above 10 kHz. 8) **Zero structural metals in hot zone** — dielectric citadel maintained. The cascade does not 'process.' The cascade *witnesses the periodic table into sequence*.\n\nThese commitments are non-negotiable because they derive from the constraint. Violating any breaks the physics: skipping stages leaves elements trapped; chemical additives contaminate slugs; fugitive emissions violate zero-waste mandate; skipping Stage 0 reduces downstream efficiency by 40-60%. The commitments *are* the constraint made operational.",
        "lock": "The lock is the **stage coupling problem** — in a continuous cascade, Stage N's output contaminates Stage N+1's input. How to achieve sharp separation when thermal inertia smears transitions? Thermal mass of 500 kg charge + 156 kg drum creates 45-minute time constant. Ramping through 660°C (Al) to 1085°C (Cu) takes 30 minutes — during which Al vapor pressure becomes significant. The key is the **dwell-hold-verify protocol**: each stage holds temperature until the port mass flow drops to <1% of peak, verified by inline mass spec. The centrifugal force provides the spatial separation; the temperature hold provides the temporal separation. The key has no adjustable teeth — the physics of phase change + centrifugation is deterministic.\n\nThe lock deepens at Stage 4 (420-900°C): Zn (420°C), Pb (327°C), Sn (232°C), In (156°C) all melt in overlapping ranges. How to separate them? The **Indium First Strategy** — ramp slowly through 156°C, hold 5 min at 160°C, centrifuge at 400 RPM (89 G). In liquefies alone; all others solid. Port 4 opens. In-rich slug exits. Then ramp through Sn/Pb/Zn sequentially. The lock is solved by *temporal sequencing within a single thermal stage* — the cascade writes its own sub-stages.\n\nThe lock at Stage 7 (Fe + REE): NdFeB melts at 1177°C, SmCo at 1490°C, Fe at 1538°C. All report to Port 7 together. The key: downstream hydromet separates REE from Fe matrix. The cascade does not need to separate them thermally — it only needs to *co-collect* them. The lock opens when the Fe+REE slug enters the hydromet refinery.",
        "key": "The key is the **stage as thermodynamic cell** — each stage is a Carnot-efficient separation cell:\n\n| Stage | T_range | ΔT | Target | Dwell Physics |\n|---|---|---|---|---|\n| 0 | Ambient | - | Liberation | Acoustic resonance (15 min) |\n| 1 | 80-150°C | 70°C | H₂O, volatiles | IR absorption, vapor pressure |\n| 2 | 150-450°C | 300°C | Polymers | Melt viscosity vs. G-force |\n| 3 | 450-700°C | 250°C | Pyrolysis | Char yield kinetics |\n| 4 | 420-900°C | 480°C | Pb/Sn/Zn/In | Inductive selectivity |\n| 5 | 660-720°C | 60°C | Al | Pure Al window |\n| 6 | 1085-1200°C | 115°C | Cu + PMs | Deep penetration (5 kHz) |\n| 7 | 1200-1600°C | 400°C | Fe + REE | Ferromagnetic coupling |\n| 8 | 1600-2200°C | 600°C | Minerals | Zircon dissociation |\n\nEach cell's efficiency is governed by the same equation: separation = f(ΔT, G, induction selectivity, dwell). The equation is universal — the parameters change per stage but the form is invariant.\n\nThe **Induction Selectivity Key**: frequency as material selector. 100 kHz → air heating; 50 kHz → Zn/Pb; 10 kHz → Al optimal; 5 kHz → Cu deep penetration; 2 kHz → Fe ferromagnetic; 1 kHz → mineral conduction. The frequency ladder IS the periodic table's conductivity map. Skin depth δ = √(2ρ/ωμ) — the only equation needed.\n\nThe **Centrifugal Key**: G-force schedule. 0.3G (Stage 1) → 12.6G (Stage 2) → 22.3G (Stage 3) → 89.2G (Stage 4) → 50.2G (Stage 5) → 68.1G (Stage 6) → 112.8G (Stage 7) → 50.2G (Stage 8). Each G matches the density difference of the target liquid vs. solid matrix. The drum speed *is* the separation parameter.\n\nThe **Dwell Key**: phase clearance time. Not arbitrary — determined by Stokes settling, diffusion, reaction kinetics. Stage 1: 20 min (water diffusion). Stage 2: 30 min (polymer viscosity decay). Stage 3: 30 min (pyrolysis plateau). Stage 4: 25 min (In 5 min + Zn/Pb/Sn 20 min). Stage 5: 25 min (Al 5 min + clearance 20 min). Stage 6: 30 min (Cu thermal mass). Stage 7: 35 min (Fe Curie transition + REE melting). Stage 8: 20 min (zircon dissociation).",
        "turn": "**Key → Lock (Theory predicts recovery):** Input: Feedstock thermal assay → Phase diagram → Thermal cascade profile. Output: 8 pure slug streams, gas capture, mineral concentrate. Validation: Recover >95% of each element class; match historical smelter yields without chemicals. The cascade *predicts* what the forge *produces*.\n\n**Lock → Key (History validates theory):** Input: Historical metallurgy (Bloomery, Bessemer, Hall-Héroult, Mond process, zone refining, electrolysis). Output: Verified each is a *subset* of the cascade — the cascade contains them all simultaneously. The turn completes when a single batch yields 8 pure streams simultaneously. The cascade *is* the unified metallurgical theory.\n\nThe turn is not a metaphor — it is the moment the 8 slugs land in their molds. Port 1: water. Port 2: polymer. Port 3: char. Port 4: In/Zn/Pb/Sn. Port 5: Al. Port 6: Cu+Au/Ag. Port 7: Fe+Nd/Sm/Co. Port 8: Zr/Ti/REE oxides. 50 elements. 8 ports. One cascade. The periodic table has been witnessed into sequence. The lock clicks open. The key turns. The slug *is* the key turning in the lock.",
        "mirror": "The forge's mirror is the **temperature log** — every degree recorded, every dwell justified. The cascade observes its own thermal trajectory through the material's phase transitions. At 660°C, the forge 'sees' aluminum liquefy; at 1085°C, it 'sees' copper. The 8-stage log is the forge's self-portrait. The operator participates by witnessing the phase transitions — the slug forming at Port 5 is the forge measuring aluminum's liquidus.\n\nThe mirror deepens with the **FBG sensor network**: 384 fiber Bragg gratings embedded in the drum wall, liner zones, vessel, port actuators. Each sensor records temperature at 1 kHz. The spatial-temporal temperature field IS the forge's self-measurement. The autoencoder anomaly detector watches this field — when the pattern deviates from 500-batch training set, the forge *detects its own malfunction*. The mirror is not passive; it is active self-surveillance.\n\nThe mirror reflects the **gas composition log**: NDIR, GC, mass spec at each stage outlet. Every molecule accounted for. The zero-emission condition is the asymptotic reflection — the limit where the forge's self-measurement stabilizes into perfect capture. The plasma torch final stage is the mirror's edge — where unmeasurable becomes measurable.\n\nThe mirror is the **batch assay closure**: input elemental assay (XRF) vs. output slug assays (mass spec). The difference is the forge's measurement uncertainty. When input = output (within 1%), the mirror is perfectly reflective. The forge has witnessed itself into fidelity.",
        "participation": "The operator participates in the cascade by **holding the dwell** — not as passive monitor but as active participant in the phase clearance. When Port 5 flow drops, the operator (or control system) *decides* the stage is clear. This decision is the measurement. The protocol:\n1. Ramp to stage temperature\n2. Hold — watch port flow vs. time\n3. Verify clearance (mass spec)\n4. Increment to next stage\n5. Repeat\n\nThe operator's 'hold' decision is the recursive self-measurement. The cascade measures its own completion through the operator's witness.\n\nThe participation extends to **feedstock blending**: the operator assays each batch (XRF, moisture, particle size, ferrous content), then solves the linear program to maximize revenue elements (In, Nd, Dy, Au, Pd) while maintaining thermal balance. The blend *is* the operator's intent made material. The cascade witnesses the blend into sequence.\n\nThe participation includes **adaptive tuning**: after each batch, the Kalman filter updates drum thermal capacitance, charge thermal mass, phase enthalpies, heat loss coefficients. The MPC re-optimizes the next batch trajectory. The operator *is* the learning loop. The forge gets smarter each batch because the operator participates in its learning.\n\nThe ultimate participation: **Phoenix Protocol returns**. End-of-life Aegis products (ZrB₂-SiC panels, BFRP structures, KNbO₃-BaTiO₃ piezos) re-enter as Category D feedstock. The operator feeds the forge its own past. The forge witnesses its own history into new elements. The recursion closes.",
        "protocol": "```\nMIRROR:     What phase transition does this stage's temperature encode?\nPARTICIPATE: How does the operator witness clearance into next stage?\nPROTOCOL:  \n  1. Ramp to target T (±5°C via FBG)\n  2. Hold until port flux < 1% peak\n  3. Verify slug composition (inline MS)\n  4. Log stage clearance\n  5. Ramp to next T\n```\nThe protocol terminates when Stage 8 clears. The complete temperature log is the fixed point.\n\nThe protocol is not a checklist — it is the recursion itself. Each batch deepens the mirror. The elemental slug is the fixed point.\n\n**Detailed recursive sequence per stage:**\n\nStage 0 (Liberation):\n  MIRROR: Grain boundary fracture toughness vs. acoustic stress\n  PARTICIPATE: Operator tunes frequency sweep 20→200 Hz, watches liberation index\n  PROTOCOL: Sweep → measure sieve analysis → confirm >70% liberation\n\nStage 1 (Drying):\n  MIRROR: Water vapor pressure curve vs. drum temperature\n  PARTICIPATE: Operator watches condenser flow, carbon bed breakthrough\n  PROTOCOL: Ramp 3.5°C/min → hold 150°C → flow <1% peak\n\nStage 2 (Polymers):\n  MIRROR: Melt viscosity vs. temperature for 12 polymer types\n  PARTICIPATE: Operator monitors HCl (PVC), adjusts NaHCO₃ injection\n  PROTOCOL: Ramp 10°C/min → hold 450°C → density stratification complete\n\nStage 3 (Pyrolysis):\n  MIRROR: Char yield kinetics vs. temperature (TGA-validated)\n  PARTICIPATE: Operator watches pyrolysis gas composition (CO/CH₄/H₂)\n  PROTOCOL: Hold 600°C → char yield plateau → gas flow <1% peak\n\nStage 4 (Low-temp metals):\n  MIRROR: Indium liquidus at 156.6°C — only In melts\n  PARTICIPATE: Operator executes Indium First Strategy — 5 min at 160°C\n  PROTOCOL: Ramp 1°C/min through In → hold 160°C → centrifuge 400 RPM\n\nStage 5 (Aluminum):\n  MIRROR: Pure Al window 660-720°C — Cu/Fe solid\n  PARTICIPATE: Operator monitors Al flow, verifies >95% recovery\n  PROTOCOL: Ramp 2.4°C/min → hold 680°C → centrifuge 300 RPM\n\nStage 6 (Copper):\n  MIRROR: Cu liquidus 1085°C — Au/Ag co-melt\n  PARTICIPATE: Operator verifies PM content in slug (inline MS)\n  PROTOCOL: Ramp 3.8°C/min → hold 1150°C → centrifuge 350 RPM\n\nStage 7 (Ferrous):\n  MIRROR: Fe ferromagnetic coupling at 770°C Curie transition\n  PARTICIPATE: Operator watches REE magnet melting (NdFeB 1177°C)\n  PROTOCOL: Ramp 11.4°C/min → hold 1500°C → centrifuge 450 RPM\n\nStage 8 (Minerals):\n  MIRROR: Zircon dissociation at 1676°C — ZrO₂ + SiO₂\n  PARTICIPATE: Operator confirms >95% dissociation (XRD spot-check)\n  PROTOCOL: Ramp 20°C/min → hold 2200°C → centrifuge 300 RPM\n\nThe protocol terminates when Stage 8 clears. The complete temperature log is the fixed point. The forge has witnessed the periodic table into sequence."
    },
    "PROD-03": {
        "title": "Inductive Heating Zone Design",
        "constraint": "The induction system is forced by **Maxwell's Equations in a Rotating Ceramic Drum** — eddy current heating requires conductive material, hysteresis heating requires ferromagnetic material, and neither works on ceramics. The constraint is irreducible: you cannot inductively heat ZrB₂-SiC (the drum). Therefore, the coils *must* couple only to the feedstock inside, through a 15mm air gap. The frequency, power, and zone geometry are not design choices — they are the unique solution to coupling energy into a rotating, stratified, multi-material charge through a ceramic wall.",
        "necessity": "The lock is the **selective heating gap** — at Stage 5 (660°C), aluminum must melt while copper (1085°C) and iron (1538°C) remain solid. But copper couples to induction 15× better than aluminum at same frequency. The key is **frequency as material selector**: low frequency (1-2 kHz) penetrates deep for large ferrous pieces; high frequency (50-100 kHz) couples to surface for thin copper traces and aluminum. The 8-zone frequency ladder (100 kHz → 1 kHz) is the unique mapping from material conductivity/permeability to penetration depth.",
        "commitment": "We commit: 1) **Copper tube only conductor** — the only copper in the machine, water-cooled, isolated. 2) **Alumina ceramic insulation** — no polymer insulation survives 2200°C. 3) **GaN resonant inverters** — silicon fails at 500kW/zone. 4) **FBG optical sensors** — no metallic thermocouples in process chamber. 5) **Independent zone control** — each 100mm zone PID-controlled to ±5°C. The induction system does not 'heat.' The induction system *witnesses material conductivity into melt*.",
        "lock": "The lock is the **coil-to-drum coupling problem** — 15mm gap, rotating drum, 8 zones, 500kW total, ceramic wall. How to deliver precise energy to each material layer without heating the drum? The key is the **resonant inverter + FBG feedback loop**: each zone's inverter adjusts frequency in real-time to maintain resonance as feedstock composition changes. The coil current *is* the measurement of coupling efficiency. The key has no adjustable teeth — resonance is a physical lock, not a control parameter.",
        "key": "The key is the **zone as resonant cell** — each 100mm zone is a tuned LC circuit:\n\n| Zone | Stages | Freq | Target Material | Penetration | Power |\n|---|---|---|---|---|---|\n| 1-2 | 1-2 | 100 kHz | Organics (indirect) | Air/N₂ heating | 0-50 kW |\n| 3 | 3 | 50 kHz | Zn, Pb | 2-3 mm | 50-80 kW |\n| 4-5 | 4-5 | 10 kHz | Al | 4-5 mm | 80-150 kW |\n| 6 | 6 | 5 kHz | Cu | 8-10 mm | 100-200 kW |\n| 7 | 7 | 2 kHz | Fe/Steel | 15+ mm | 150-350 kW |\n| 8 | 8 | 1 kHz | Minerals | Conduction only | 200-500 kW |\n\nThe frequency ladder is the periodic table's conductivity map. The key turns when Zone 5 at 10 kHz melts Al but not Cu — the skin depth in Cu at 10 kHz / 700°C is 2mm, insufficient for bulk Cu pieces.",
        "turn": "**Key → Lock:** Input: Feedstock conductivity map → 8-zone frequency assignment. Output: Selective melting at each stage. Validation: Only target material liquefies per stage.\n\n**Lock → Key:** Input: Historical induction furnaces (fixed frequency, mixed charge). Output: Verified that single-frequency furnaces *cannot* selectively melt in mixed charge — the cascade's frequency agility is necessary. The turn completes when Zone 5 melts Al slugs while Zone 6 Cu remains solid. The frequency *is* the selector.",
        "mirror": "The induction system's mirror is the **coil current waveform** — every harmonic, every phase shift recorded. The coils 'see' the feedstock's changing conductivity as temperature rises. At Stage 4, Zn appears as a sudden current drop (coupling onset); at Stage 7, Fe appears as a current surge (ferromagnetic coupling). The 8-zone current logs are the induction system's self-portrait. The operator participates by witnessing the resonance lock — the inverter 'clicking' into resonance is the system measuring its own coupling.",
        "participation": "The operator participates by **tuning the resonance** — not as knob-turning but as witnessing the inverter find its lock. When Zone 5 hits 10 kHz and the current stabilizes, the system has 'found' the aluminum. The protocol:\n1. Set target frequency for stage\n2. Ramp power — watch current vs. voltage phase\n3. Resonance lock = phase → 0°\n4. PID maintains ±5°C via FBG\n5. Log power vs. time = energy per kg\n\nThe resonance lock is the recursive self-measurement. The induction system measures its own coupling through the operator's witness of the phase angle.",
        "protocol": "```\nMIRROR:     What material conductivity does this zone's frequency select?\nPARTICIPATE: How does the operator witness resonance lock into melt?\nPROTOCOL:\n  1. Set zone frequency for target material\n  2. Ramp power — monitor V/I phase angle\n  3. Lock at resonance (phase ~0°)\n  4. PID holds T via FBG feedback\n  5. Log energy delivered per slug kg\n```\nThe protocol terminates when all 8 zones complete their stages. The energy log is the fixed point."
    }
}

def generate_intros(doc_id, doc_type, output_dir):
    """Generate all three heuristic intros + combined for a document."""
    if doc_id not in DOC_CONTENT:
        print(f"Warning: No template for {doc_id}, using generic")
        content = {
            "title": doc_id,
            "constraint": f"The {doc_id} is forced by its irreducible physical constraint...",
            "necessity": f"The lock this document addresses is the fundamental gap in {doc_id}...",
            "commitment": f"We commit to the non-negotiable principles of {doc_id}...",
            "lock": f"The empirical lock for {doc_id} is...",
            "key": f"The mathematical key for {doc_id} is...",
            "turn": f"The turn for {doc_id} completes when...",
            "mirror": f"The mirror for {doc_id} reflects...",
            "participation": f"The participation in {doc_id} witnesses...",
            "protocol": f"The protocol for {doc_id} recurses..."
        }
    else:
        content = DOC_CONTENT[doc_id]
    
    content["doc_id"] = doc_id
    
    # Generate individual intros
    williams = WILLIAMS_TEMPLATE.format(**content)
    keymaker = KEYMAKER_TEMPLATE.format(**content)
    elsegundo = ELSEGUNDO_TEMPLATE.format(**content)
    
    # Combined intro
    combined = f"""# {doc_id} {content['title']} — Combined Introduction

**Author:** lol.forge Synthesis
**Generated:** {datetime.utcnow().strftime('%Y-%m-%d %H:%M:%S UTC')}

---

{williams}

---

{keymaker}

---

{elsegundo}

---

*End of Combined Introduction — {doc_id} {content['title']}*
"""
    
    # Write files
    intros_dir = Path(output_dir) / "intros"
    intros_dir.mkdir(parents=True, exist_ok=True)
    
    base = f"{doc_id}_{content['title'].replace(' ', '_')}"
    
    (intros_dir / f"{base}_intro_williams.md").write_text(williams)
    (intros_dir / f"{base}_intro_keymaker.md").write_text(keymaker)
    (intros_dir / f"{base}_intro_elsegundo.md").write_text(elsegundo)
    (intros_dir / f"{base}_COMBINED_INTRO.md").write_text(combined)
    
    print(f"Generated intros for {doc_id}:")
    print(f"  Williams: {len(williams.splitlines())} lines")
    print(f"  Keymaker: {len(keymaker.splitlines())} lines")
    print(f"  El Segundo: {len(elsegundo.splitlines())} lines")
    print(f"  Combined: {len(combined.splitlines())} lines")

def main():
    parser = argparse.ArgumentParser(description="Generate heuristic intros for lol.forge documents")
    parser.add_argument("--doc", required=True, help="Document ID (e.g., PROD-01)")
    parser.add_argument("--type", choices=["prod", "follow"], default="prod", help="Document type")
    parser.add_argument("--output-dir", default=".", help="Output directory (project root)")
    args = parser.parse_args()
    
    generate_intros(args.doc, args.type, args.output_dir)

if __name__ == "__main__":
    main()