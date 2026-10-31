# Williams Heuristic — Constraint, Necessity, Commitment
## Document: PROD-08 — Slug Cooling & Output Catalog

---

### Constraint (The Lock)

The output catalog is forced by a single irreducible constraint: **Every Element Must Exit Characterized** — the Aegis-Forge I processes 50+ elements across 8 thermal stages through 8 ports, producing 14 distinct output streams. Each stream must be cooled, solidified, analyzed, stamped for traceability, graded, and routed to its designated downstream destination. The constraint is irreducible because the forge's purpose is not separation alone — it is *seed material generation* for the entire CSMFAB portfolio. An uncharacterized slug is a broken link in the Phoenix Protocol chain. The 16-position ZrO₂ carousel, LIBS inline spectrometry, alphanumeric stamp + Data Matrix + RFID traceability, and three-way routing conveyors form the complete characterization architecture.

---

### Necessity (The Key)

The lock is the **output anonymity gap** — conventional recycling produces mixed alloy ingots, ungraded scrap, and unspecified residues. Downstream processes (wire drawing, magnet manufacturing, pigment synthesis) require known composition, traceable provenance, and consistent grade. The Aegis-Forge I produces 14 streams per batch from arbitrary feedstock — without characterization, the downstream CSMFAB machines (Hydro-Refinery, Powder Synthesis, YInMn Kiln) cannot operate reliably. The key is the **LIBS + stamp + registry triad** — 2-second elemental analysis, permanent alphanumeric + Data Matrix marking, and SQLite/PostgreSQL registry with phoenix generation tracking. Every slug carries its genealogy. No anonymous material enters the CSMFAB ecosystem.

---

### Commitment (The Turn)

We commit to the following as non-negotiable:

1) **Every liquid slug cools in ZrO₂ mold** — no metal molds, no water quench (hydrogen risk), controlled N₂ only.
2) **Every slug receives LIBS analysis** — 70+ elements, 2-second cycle, CF-LIBS quantification.
3) **Every slug is stamped** — alphanumeric batch/port/temp/sequence, Data Matrix ECC200, RFID for high-value.
4) **Every slug enters registry** — UUID, batch_id, port, grade, mass, LIBS hash, phoenix_generation.
5) **Three-way routing only** — Direct Use / Refinement / Commercial Sale. No 'storage limbo'.
6) **ZrO₂ molds only** — non-wetting, survives 1600°C, no mold release, interchangeable inserts.
7) **N₂ quench only** — 5-25 SLPM, 10-200°C/min controlled, no hydrogen generation.
8) **Phoenix generation tracked** — 0=virgin, 1+=recycled, enables processing optimization.

The output catalog does not 'sort slugs.' The output catalog *witnesses the periodic table into accountable sequence*.
