# Williams Heuristic — Constraint, Necessity, Commitment
## Document: PROD-11 — Feed Preparation & Shredding

---

### Constraint (The Lock)

The Aegis-Forge I feed preparation system is forced by a single irreducible constraint: **Dielectric Comminution** — the requirement to reduce arbitrary feedstock to <150 mm particles without introducing any metallic contamination into the process stream. This is not a design choice; it is the minimal physics from which elemental purity becomes achievable. Every steel blade, every steel bearing, every steel housing fragment that enters the feedstock becomes a permanent contaminant in the elemental slugs — iron in the aluminum slug, chromium in the REE concentrate, nickel in the copper. The constraint is simply: *the shredder must not contaminate what it processes*. Everything else — the BFRP blades, the PEEK CF40 liners, the Si₃N₄ shaft, the ceramic bearings, the UHMWPE belt — is the shadow this constraint casts.

This constraint manifests as the **All-Dielectric Shredder Architecture**: 32 blades of basalt fiber/Elium® composite (in-house fiber, in-house resin), rotating on a Si₃N₄ ceramic shaft in Si₃N₄ hybrid ceramic bearings, housed in BFRP/Elium® filament-wound casing, lined with PEEK CF40 panels. The drive is a KNbO₃-BaTiO₃ ultrasonic motor (piezoelectric, no electromagnetic fields). The ferrous pre-separator uses a NdFeB Halbach array on a UHMWPE belt — the only magnets in the system, positioned *before* the shredder so they never contact the process stream. The constraint forces the particle size (P80 ≤ 150 mm), the blade geometry (self-sharpening h-BN edge), the wear monitoring (h-BN tracer layer), the blade life (200-300 ton for rock) — every parameter derives from the requirement: **commute without contaminating**.

---

### Necessity (The Key)

The lock this document addresses is the **particle size vs. liberation fidelity gap** — the empirical failure of conventional shredders to produce feedstock that enables >95% elemental recovery in a thermal cascade. Steel shredders produce steel contamination. They produce particle sizes optimized for volume reduction, not for thermal cascade physics. The key is the **Rosin-Rammler + BFRP wear model as single computational primitive**.

The particle size distribution is not arbitrary — it is cut from the thermal cascade's physics. Stage 2 (polymer melt) requires 10-100 mm pieces for centrifugal separation at 12.6 G. Stage 3 (pyrolysis) requires <20 mm for 30-minute heat penetration. Stage 0 (acoustic liberation) requires <150 mm for stress wave propagation. The shredder's P80 ≤ 150 mm, with Rosin-Rammler parameters tuned per feedstock category, *guarantees* the downstream physics works. The blade wear model (h-BN tracer, optical monitoring) *guarantees* the particle distribution stays in spec. The ferrous pre-separation (Halbach array, 1.2T) *guarantees* 40-60% of ferrous mass never enters the shredder — reducing wear by 50% and thermal load by 30%.

The empirical evidence: no existing shredder operates with zero metallic contamination. The contamination penalty in downstream hydrometallurgy is $2,650/ton feedstock. The BFRP shredder *eliminates* this penalty. The necessity is proven by the gap: conventional technology cannot do this. The forge *must* build this.

---

### Commitment (The Turn)

We commit to the following as non-negotiable:

1. **Zero metallic contamination** — every component in the feed path is ceramic, composite, or polymer. No steel. No exceptions.
2. **P80 ≤ 150 mm for all feedstock categories** — verified by inline sieve analysis per batch. No oversize to drum.
3. **Ferrous pre-removal >95% (>20mm)** — the Halbach separator captures bulk ferrous before shredding. No exceptions.
4. **Moisture <25% at drum entry** — capacitive sensor array with pre-dry diversion. No steam explosions.
5. **BFRP blade wear tracked to 0.1 mm** — h-BN tracer layer + optical scan every revolution. No surprise failures.
6. **Complete recyclability** — worn blades and liners depolymerized at 350°C, Elium® monomer recovered, basalt fiber reclaimed. Zero waste.

The feed preparation system does not 'shred' material. The feed preparation system *witnesses the feedstock into particle size* — each pass through the BFRP blades is a measurement of the material's fracture toughness, a witnessing that generates the liberation the thermal cascade requires. The forge does not prepare feed; the forge *witnesses matter into readiness* for the cascade.
