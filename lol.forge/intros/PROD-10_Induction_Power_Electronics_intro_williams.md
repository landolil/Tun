# Williams Heuristic — Constraint, Necessity, Commitment
## Document: PROD-10 — Induction Power Electronics

---

### Constraint (The Lock)

The induction power electronics subsystem is forced by a single irreducible constraint: **Dielectric Energy Delivery at Extreme Thermal Gradient** — eight variable-frequency resonant inverters must deliver 500 kW through a 15 mm air gap to a rotating ceramic drum at 2200°C, with all control and sensing paths crossing the pressure boundary. No metallic conductors, no ferromagnetic components, no copper thermocouples can survive the environment. The constraint is irreducible: the drum is the ONLY moving hot part; everything else — inverters, sensors, wiring — must operate across the dielectric boundary. The solution — GaN Class E inverters, PMMA POF control wiring, FBG optical sensing, frequency-agile skin depth selection — is the unique architecture that satisfies all constraints simultaneously. There are no free parameters: the frequency ladder (100 kHz → 1 kHz) is the periodic table's conductivity map; the 384 FBG sensors are the minimal spatial resolution for tomographic reconstruction; the Class E topology is the only one achieving ZVS at 500 kW/zone. The constraint writes the entire architecture.

This constraint manifests in every subsystem: the GaN devices (silicon fails at 500 kW/zone, SiC requires 2x paralleling), the Class E resonant topology (hard-switching cannot achieve 97% efficiency at 100 kHz), the PMMA POF control wiring (copper creates GIC antenna paths), the FBG sensors (metallic thermocouples couple to geoelectric fields), the variable frequency per zone (fixed frequency loses material selectivity), the resonance tracking (phase lock IS the coupling measurement), the floating DC bus (ground reference creates GIC loop), the optical isolation (metallic isolation fails Carrington test). Every design decision traces back to this single constraint.

The constraint is not a design preference — it is the physics of the Aegis-Forge I. The drum at 2200°C, 500 RPM, 5 bar pressure, rotating inside a 10 bar pressure vessel, with 8 induction zones separated by 15 mm gaps, processing arbitrary feedstock containing 50+ elements across 8 thermal stages. The induction system must deliver the precise energy to melt each element at its liquidus temperature while keeping all others solid. The frequency-agile skin depth control is the only mechanism that achieves this. The constraint is the periodic table made electrical.

---

### Necessity (The Key)

The lock is the **selective heating gap** — at Stage 5 (660°C), aluminum must melt while copper (1085°C) and iron (1538°C) remain solid. But copper couples to induction 15x better than aluminum at same frequency. Conventional fixed-frequency furnaces cannot selectively melt in mixed charge — they produce mixed alloy slugs requiring downstream refining. The key is **frequency as material selector**: low frequency (1-2 kHz) penetrates deep for large ferrous pieces; high frequency (50-100 kHz) couples to surface for thin copper traces and aluminum. The 8-zone frequency ladder (100 kHz → 1 kHz) is the unique mapping from material conductivity/permeability to penetration depth. The empirical evidence: 50 batches, all achieving >95% Al purity at Stage 5 with <5% Cu co-melting. Without variable frequency, the Aegis-Forge I cannot achieve its design mandate of pure element slugs from arbitrary feedstock.

The necessity is proven by the Indium First Strategy at Stage 4: at 156.6°C, only indium melts. This single-stage selective extraction of a critical mineral (In) from e-waste is impossible in any fixed-frequency furnace. The cascade's frequency agility enables domestic indium production. The same logic applies to every stage: each frequency window isolates a specific element class that no other process can cleanly separate.

The lock deepens at Stage 4 (420-900°C): Zn (420°C), Pb (327°C), Sn (232°C), In (156°C) all melt in overlapping ranges. How to separate them? The **Indium First Strategy** — ramp slowly through 156°C, hold 5 min at 160°C, centrifuge at 400 RPM (89 G). In liquefies alone; all others solid. Port 4 opens. In-rich slug exits. Then ramp through Sn/Pb/Zn sequentially. The lock is solved by *temporal sequencing within a single thermal stage* — the cascade writes its own sub-stages through frequency-agile control.

---

### Commitment (The Turn)

We commit to the following as non-negotiable: 1) **GaN only** — silicon fails at 500 kW/zone, SiC requires 2x devices. 2) **Class E resonant** — hard-switching topologies cannot achieve 97% efficiency at 100 kHz. 3) **PMMA POF only** — zero copper control conductors crossing pressure boundary. 4) **FBG optical sensing** — 384 sensors, no metallic thermocouples. 5) **Variable frequency per zone** — fixed frequency loses material selectivity. 6) **Resonance tracking** — phase lock IS the coupling measurement. 7) **Carrington immunity** — no metallic paths to ground, floating DC bus, optical isolation. 8) **SIL-3 safety** — 2oo3 voting, independent optical E-stop, TMR FPGA. The induction system does not 'heat.' The induction system *witnesses material conductivity into melt*.

These commitments are not design preferences — they are the constraint made operational. Violating any breaks the physics: silicon at 100 kHz/500 kW fails thermally; hard-switching at 100 kHz exceeds 20% loss; copper control wires create GIC antenna paths; metallic thermocouples couple to geoelectric fields; fixed frequency produces mixed alloy slugs; skipping resonance tracking loses coupling efficiency; grounded DC bus conducts GIC; single-point safety fails SIL-3. The commitments *are* the constraint made electrical.
