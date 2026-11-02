# Keymaker Heuristic — Lock, Key, Turn
## Document: PROD-01 — System Overview & Architecture

---

### The Empirical Lock

The lock this document addresses is the **fabrication fidelity gap** — the persistent failure of metallurgical engineering to simultaneously achieve: complete elemental recovery from mixed feedstock, Carrington-event immunity (zero conductive paths), zero-waste gas capture, and domestic critical mineral production (In, REE, Zr). For decades, each has been a separate facility: smelters for metals, refineries for REE, ceramic kilns for oxides, gas scrubbers for emissions. The lock is precise: any single machine claiming to unify elemental extraction must produce pure element slugs from arbitrary input with zero metal infrastructure — and must explain why induction heating + centrifugal separation achieves what chemical processing cannot.

The lock has teeth cut by industrial history: Bloomery (Fe only, charcoal, slag waste), Bessemer (Fe+C, air blast, no PM recovery), Hall-Héroult (Al only, cryolite, 15 kWh/kg, CF₄ emissions), Mond process (Ni only, CO toxicity), electrolysis (Cu only, anode slime for PM), zone refining (Si only, ultra-slow). Each process is a degenerate subset — it extracts one element class while discarding or contaminating the rest. The smelter mixes Cu/Fe/PM into anode copper requiring downstream refining. The hydromet plant uses acres of tanks, tons of acid, generates radioactive tailings. Neither achieves >95% recovery of 50+ elements from arbitrary feedstock in a single pass.

The lock deepens at the **inductive selectivity problem**: at Stage 5 (660°C), aluminum must melt while copper (1085°C) and iron (1538°C) remain solid. But copper couples to induction 15× better than aluminum at same frequency. Iron couples 25-50× better. How to selectively melt Al without overheating Cu/Fe? The lock demands frequency as material selector — a physics solution, not a control workaround.

---

### The Mathematical Key

The key is the **thermophysical cascade as single computational primitive**. The teeth are cut by the periodic table itself:

| Element Class | Thermal Stage | Separation Mechanism | Output |
|---|---|---|---|
| Organics/Water | 80-450°C | Vaporization + condensation | Water, char |
| Low-temp metals | 420-900°C | Inductive melt + centrifuge | Pb, Sn, Zn, In slugs |
| Aluminum | 660-720°C | Selective Al window | Al alloy slugs |
| Copper/Precious | 1085-1200°C | Deep-penetration induction | Cu + Au/Ag/Pd slugs |
| Ferrous/REE | 1200-1600°C | Ferromagnetic induction | Fe + Nd/Sm/Co slugs |
| Refractory minerals | 1600-2200°C | Zircon dissociation | ZrO₂ + REE oxide concentrate |

The cascade temperature profile is unique, deterministic, and parameter-free. The feedstock enters only as the boundary condition that the profile must process. The induction frequency ladder (100 kHz → 1 kHz) is the skin-depth mapping of this profile. The 8-zone coil bank is the spatial instantiation. The 8 circumferential ports are the temporal instantiation. The ZrB₂-SiC drum is the mechanical instantiation. The BFRP vessel is the safety instantiation. All derive from one primitive: the cascade.

The key has no adjustable teeth. The skin depth equation δ = √(ρ/πfμ) has no free parameters — ρ and μ are material properties, f is the zone frequency. The centrifugal force F_c = mω²r has no free parameters — m is the liquid mass, ω is drum speed, r is radius. The phase transition temperatures are physical constants. The machine *is* the periodic table's thermal geography made operational.

---

### The Turn (Both Directions)

**Key → Lock (Theory predicts recovery):**
Input: Feedstock assay (XRF) → Phase diagram → Thermal cascade profile. Output: 8 pure slug streams, gas capture, mineral concentrate. Validation: Recover >95% of each element class; match historical smelter yields without chemicals. The cascade *predicts* what the forge *produces*.

**Lock → Key (History validates theory):**
Input: Historical metallurgy (Bloomery, Bessemer, Hall-Héroult, Mond process, zone refining, electrolysis). Output: Verified that each industrial process is a *subset* of the cascade — the cascade contains them all simultaneously. The turn completes when a single batch yields 8 pure streams simultaneously. The cascade *is* the unified metallurgical theory.

The turn is not a metaphor — it is the moment the 8 slugs land in their molds. Port 1: water. Port 2: polymer. Port 3: char. Port 4: In/Zn/Pb/Sn. Port 5: Al. Port 6: Cu+Au/Ag. Port 7: Fe+Nd/Sm/Co. Port 8: Zr/Ti/REE oxides. 50 elements. 8 ports. One cascade. The periodic table has been witnessed into sequence. The lock clicks open. The key turns. The slug *is* the key turning in the lock.