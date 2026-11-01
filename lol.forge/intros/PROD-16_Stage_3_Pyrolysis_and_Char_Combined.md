# PROD-16: Stage 3 Pyrolysis & Char — Combined Heuristic Intro
## Three-Way Synthesis: Williams (Constraint) + Keymaker (Key) + El Segundo (Protocol)

### Executive Synthesis

**The pyrolysis window (450-700°C) is the thermodynamic gatekeeper of the entire cascade.** Williams identifies the constraint: thermosets cannot be melted, only decomposed — the 30-minute dwell at 5°C/min is physics, not policy. Keymaker provides the key: real-time DAEM inversion using mass spec CO/CO₂ ratio closes the loop between first-principles kinetics and feedstock variability. El Segundo mandates the protocol: Measure → Heat → Separate → Verify recurses across five scales (microsecond control loop → minute ramp segment → 45-minute batch → 20-batch campaign → forge lifetime), with the operator as causal witness at each hold point.

**Three lenses, one conclusion:** Stage 3 must be **thermodynamically disciplined, computationally adaptive, and human-witnessed**. Any deviation — faster ramp, fixed schedule, unattended operation — breaks the cascade's REE partitioning, char quality, and energy recovery.

---

### Risk Matrix: What Fails When Each Lens Is Ignored

| Ignored Lens | Failure Mode | Consequence | Detection |
|--------------|--------------|-------------|-----------|
| **Williams (Constraint)** | Ramp rate increased to 10°C/min to save time | Incomplete epoxy/FR4 decomposition → carbon contamination in Stage 4 Pb/Sn/Zn → metal purity <99% | MS: CO/CO₂ >1.5 at 600°C; char fixed C <80% |
| **Williams (Constraint)** | O₂ allowed to 5% (air leak) | Nd/Fe/B oxidizes → REEs report to slag instead of Stage 7 metal → 90% Nd loss | MS: no direct O₂; slag REE assay post-batch |
| **Keymaker (Key)** | Fixed ramp schedule (no DAEM feedback) | Category B (high filler) under-pyrolyzes; Category D (pure thermoset) over-pyrolyzes → char BET 400-1000 m²/g swing | Activation reactor: burn-off 20-55% at 30 min |
| **Keymaker (Key)** | MS feedback disabled (sensor fault) | Ramp proceeds blind → tar >10 g/Nm³ → PROD-07 scrubber overload → dioxin risk | Post-batch tar gravimetric; PAH quarterly |
| **El Segundo (Protocol)** | No operator hold authorization at 680°C | Marginal batch proceeds → Stage 4 flux char with 75% fixed C → Pb oxidation → dross increase | Stage 4 metal assay; dross weight |
| **El Segundo (Protocol)** | No anomaly declaration culture | Seal leak ignored → N₂ consumption 3× → cost $12k/batch; char oxidation → fixed C drop | N₂ flow meter; post-batch char assay |

**The three lenses are not redundant — they are orthogonal defenses.** Williams catches thermodynamic errors (ramp, atmosphere). Keymaker catches kinetic errors (feedstock variability, sensor drift). El Segundo catches human-system errors (authorization, anomaly response). All three must hold for Stage 3 to deliver its three promises: clean REE partitioning, functional char, recoverable energy.

---

### Decisions Locked by This Document

| Decision | Locked Value | Rationale (Lens) | Change Requires |
|----------|--------------|------------------|-----------------|
| **Ramp rate 450-550°C** | 5°C/min max | Williams: Epoxy/FR4 Ea=160 kJ/mol needs 30 min | New thermoset chemistry (new Ea) + full re-validation |
| **Dwell at 550-700°C** | 30 min (ramp continues) | Williams: Char condensation + tar cracking kinetics | New activation target (different burn-off) |
| **Atmosphere** | N₂/CO₂, <2% O₂ | Williams: REE partitioning fidelity; El Segundo: dust explosion | New redox requirement (e.g., reducing gas) |
| **DAEM feedback** | Mandatory (MS CO/CO₂) | Keymaker: Only primitive that handles Category A-D variability | New real-time sensor (e.g., laser-induced breakdown) |
| **Activation reactor** | In-situ, 850°C, steam/CO₂, 30 min | Williams: 60% energy savings; Keymaker: DAEM burn-off tracking | New char application (different surface area target) |
| **Operator hold points** | 3 mandatory (500°C, 600°C, 680°C) | El Segundo: Human causal witness for irreducible uncertainty | Full automation proof (SIL-3 + 10k batches zero defects) |
| **Anomaly declaration** | Mandatory, logged, reviewed | El Segundo: Batch traceability, continuous improvement | Automated anomaly classification (ML) + 10k batches |

**These decisions are not negotiable within PROD-16.** They are the **architectural commitments** that enable downstream documents (PROD-17, PROD-20, PROD-21, FOLLOW-15, FOLLOW-18, FOLLOW-21) to assume Stage 3 delivers: char with 85%+ fixed C and 800+ m²/g BET; gas at 18-22 MJ/Nm³ with <5 g/Nm³ tar; slag with partitioned REEs; REE metal/slag split >95%/98%.

---

### Follow-Up Workstreams (Cross-Document Dependencies)

| Workstream | Owner Document | Dependency on PROD-16 | Status |
|------------|----------------|----------------------|--------|
| **FOLLOW-18: Char Activation Protocol Deep-Dive** | FOLLOW-18 | PROD-16 Sections 4, 5, 6 (char properties, activation kinetics, reactor design) | Queued |
| **FOLLOW-15: Rare Earth Hydromet Recovery** | FOLLOW-15 | PROD-16 Section 8.2 (Nd/Sm/Co partition coefficients, Stage 7 metal composition) | Queued |
| **FOLLOW-21: Mineral Slag Hydrometallurgy** | FOLLOW-21 | PROD-16 Section 7.3 (slag composition), Section 8.3 (Ce/La/Y partition) | Queued |
| **FOLLOW-06: Gas Scrubber Chemistry** | FOLLOW-06 | PROD-16 Section 5.3 (gas composition, tar, NH₃/HCN), Section 12.2 (emission limits) | Queued |
| **FOLLOW-22: Dust & Fume Capture** | FOLLOW-22 | PROD-16 Section 12.1 (dust explosion prevention), Section 12.2 (particulate limits) | Queued |
| **FOLLOW-23: Energy Balance & Exergy** | FOLLOW-23 | PROD-16 Section 11 (full energy balance, heat recovery integration) | Queued |
| **FOLLOW-24: LCA & Carbon Footprint** | FOLLOW-24 | PROD-16 Section 11 (energy), Section 9 (output streams, circular char loop) | Queued |
| **PROD-17: Stage 4 Low-Temp Metals** | PROD-17 | PROD-16 Section 9.1 (char flux spec), Section 11.3 (heat recovery to Stage 4) | Next Runner |
| **PROD-20: Stage 7 Ferrous Cascade** | PROD-20 | PROD-16 Section 8.2 (REE partitioning to metal phase) | Runner 007 |
| **PROD-21: Stage 8 Mineral Residue** | PROD-21 | PROD-16 Section 8.3 (REE partitioning to slag), Section 7.3 (slag composition) | Runner 007 |

---

### Closing the Three-Way Turn

**Williams asks:** What forces this design? → **Thermodynamics of crosslinked networks.** The pyrolysis window is non-negotiable.

**Keymaker asks:** What computes the solution? → **DAEM + real-time MS inversion.** The forge adapts to its feedstock.

**El Segundo asks:** Who witnesses the fidelity? → **The operator, at three hold points, with recursive verification.** The process is witnessed into existence.

**Together:** The Aegis-Forge I Stage 3 is a **thermodynamically rigorous, computationally self-correcting, human-witnessed pyrolysis reactor**. It transforms the liability of mixed thermoset waste into the assets of the cascade: energy gas, functional char, partitioned REEs, and a mineral slag ready for critical mineral recovery. The three lenses agree — this is the only way to build a forge that separates elements from entropy.