# Keymaker Heuristic — Lock, Key, Turn
## Document: PROD-07 — Gas Capture & Fume Solidification

---

### The Empirical Lock

The lock is the **multi-species gas capture fidelity gap** — a single 50 kg batch generates 7 distinct gas-phase species classes simultaneously: water vapor, polymer organics, pyrolysis gas (CO/CH₄/H₂/CO₂), acid gases (HCl/SO₂/HF), metal vapors (Zn/Pb), CO₂, and trace dioxin precursors. No single unit operation captures all. Scrubbers don't condense organics. Condensers don't neutralize acid gases. Carbon beds don't capture metal vapors. Plasma torches don't recover CO₂. Historical systems use 5-10 separate units in series, each with 80-90% efficiency, yielding 35-60% overall capture. The lock is precise: any unified gas capture system must achieve >95% capture for all 7 species classes in a single integrated architecture with zero metallic construction.

The lock deepens at the **thermal stage coupling** — Stage 1 exhaust (120°C, water-rich) mixes with Stage 2 exhaust (450°C, organic-rich) in the N₂ header. If cooled for water condensation, organics re-polymerize and foul. If kept hot for organic fractionation, water carries HCl into downstream trains. The pressure swing (1.2→2.5 bar) must simultaneously optimize condensation, reaction kinetics, and compressor work. The stage-dependent pressure setpoints (1.2 bar Stage 0-1, 1.8 bar Stage 2, 2.0 bar Stage 3, 2.2 bar Stage 4-5, 2.3 bar Stage 6, 2.4 bar Stage 7, 2.5 bar Stage 8) are not arbitrary — they are the unique solution to the coupled thermodynamic optimization.

The lock deepens further at **materials compatibility** — HCl at 150°C attacks steel. SO₂ at 200°C attacks nickel alloys. Zn vapor at 360°C penetrates grain boundaries. Plasma at 3000°C vaporizes refractory metals. The only materials surviving the full envelope: BFRP/Elium® (shells), ZrO₂/Al₂O₃ ceramics (wetted surfaces), PEEK CF40 (valves/seals), ZrB₂-SiC (plasma housing). No steel, no nickel, no copper in process contact. The lock is the material survival equation at 2200°C thermal / 10 bar pressure / multi-species chemical — solved by the All-Aegis material set.

---

### The Mathematical Key

The key is the **stage-specific train as thermodynamic cell** — each train is a Carnot-efficient separation cell targeting one species class:

| Train | Species Class | Cell Principle | Efficiency |
|-------|---------------|----------------|------------|
| A | H₂O | Condensation curve (80→25→5°C) | 99.6% removal |
| B | Organics | Fractional condensation (80/25/5°C) | 95% + MMA recovery |
| C | Pyrolysis gas | Combustion (92% heat recovery) | 18.5 MJ/m³ → heat |
| D | Acid gases | Dry Ca(OH)₂ stoichiometry (2× excess) | <1 ppm outlet |
| E | Metal vapors | Zn vapor pressure curve + cyclone | Zn >99%, Pb >99.5% |
| Final | CO₂ | PSA Zeolite 13X (60/30s cycle) | 95-99% purity |
| Polish | Trace organics | Plasma torch (0.5s @ 3000°C) | 6-log destruction |

Each cell's governing equation is unique but the form is invariant: **capture = f(thermodynamic driving force, residence time, material compatibility)**. The driving forces are physical constants: water vapor pressure curve, organic boiling points, pyrolysis gas LHV, acid-base neutralization enthalpy, Zn Antoine equation, CO₂ adsorption isotherm, plasma thermal destruction kinetics. The key has no adjustable teeth — the physics is deterministic.

The **pressure setpoint ladder** is the cross-cutting key: a single computational primitive (stage-dependent pressure) simultaneously optimizes all trains. The pressure at each stage is the unique solution to:
- Maximize condensation efficiency (higher P = higher boiling points)
- Maximize reaction kinetics (higher P = higher partial pressures)
- Minimize compressor work (lower P = lower displacement)
- Prevent air ingress (positive gauge pressure)

The solution is the stage-dependent setpoint table — derived from first principles, not tuned.

---

### The Turn (Both Directions)

**Key → Lock (Theory predicts capture):** Input: Feedstock thermal assay → Stage gas signatures → Train design parameters. Output: 7 gas streams captured, 6 solid/liquid products recovered, N₂ recycled. Validation: Mass balance closure >99.5%; all product specs met; zero hazardous waste generated.

**Lock → Key (History validates theory):** Input: Historical gas treatment (wet scrubbers, thermal oxidizers, carbon adsorbers, ESPs, baghouses, SCR/SNCR). Output: Each fails the unified capture requirement — wet scrubbers create liquid waste; thermal oxidizers destroy value; carbon beds require replacement; ESPs need metal plates; SCR uses ammonia. The turn completes when a single GFGS batch captures all 7 species classes, produces 6 salable products, and returns clean N₂ to the drum. The gas header *is* the key turning in the lock.

The turn is not a metaphor — it is the moment the 50 kg batch completes and the mass balance closes: water to AMLS, organics to fuel/refining, pyrolysis gas to Stage 7-8 heat, acid gases to construction materials, Zn to electrolytic refining, PbO to hazardous handling, CO₂ to purge/curing, N₂ recycled. 7 gas classes → 6 products + clean recycle. The periodic table's gas phase has been witnessed into solid products.