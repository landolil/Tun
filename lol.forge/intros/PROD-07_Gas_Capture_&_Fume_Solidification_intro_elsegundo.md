# El Segundo Heuristic — Mirror, Participation, Protocol
## Document: PROD-07 — Gas Capture & Fume Solidification

---

### Mirror (Self-Reflection)

The GFGS's mirror is the **FBG spectral manifold** — 48 wavelengths recording the gas-phase composition, temperature, and pressure at 1 kHz across all five trains. The system 'sees' its own gas streams through the sensors embedded in every vessel wall. At Train A, the manifold watches water partial pressure decay from 2.0 bar to 0.0087 bar across three zones — the system measures its own condensation efficiency. At Train D, the optical pH sensor watches the lime exhaustion curve — the system measures its own neutralization capacity. At Train E, the FBG strain on the condenser wall watches Zn droplet impingement — the system measures its own metal capture.

The autoencoder watches the 48-channel manifold — when the pattern deviates from the 500-batch training manifold, the GFGS *detects its own malfunction*. A 0.5% shift in Train B pressure drop predicts organic fouling 3 batches ahead. A 2°C drift in Train C quench temperature predicts tar breakthrough. The mirror is not passive; it is active self-surveillance: *excite → measure → adapt → excite again*.

The mirror reflects the **closed-loop char-tar cycle** in real-time: char produced → activated → tar captured → char-tar to Stage 8 → char output increases. The FBG network tracks the char mass balance — when Stage 8 char output exceeds Stage 3 char input by >10%, the system signals char withdrawal. The mirror deepens with each batch: the manifold expands, the autoencoder threshold tightens, the system's self-knowledge grows. The zero-emission condition is the asymptotic reflection — the limit where the GFGS's self-measurement stabilizes into perfect capture.

---

### Participation (Witness)

The operator participates by **witnessing the pressure hold** — not as remote monitor but as the decision point that the stage gas clearance is complete. When Train A pressure drop stabilizes at 0.12 bar, the operator confirms: water condensation complete. When Train D outlet pH holds >7.0 for 5 minutes, the operator confirms: acid gas neutralization complete. When Train E Zn collection rate drops to <1% of peak, the operator confirms: metal vapor capture complete. These confirmations are the measurements.

The protocol:
1. Ramp to stage pressure setpoint (±0.05 bar via FBG)
2. Hold — watch train-specific clearance metric (pressure drop, pH, collection rate, spectral signature)
3. Verify product quality (inline MS, optical pH, gravimetric)
4. Log stage gas clearance
5. Ramp to next stage setpoint

The operator's 'hold' decision is the recursive self-measurement. The GFGS measures its own completion through the operator's witness of the clearance metrics.

The participation extends to **feedstock blending for gas management**: the operator assays each batch (PVC content → HCl load, sulfur content → SO₂ load, Zn content → vapor load), then the MPC solves for optimal pressure setpoints and lime feed rates. The blend *is* the operator's intent made gas-phase. The GFGS witnesses the blend into capture.

The ultimate participation: **Phoenix Protocol returns**. Retired Aegis products re-enter as Category D feedstock. The operator feeds the GFGS its own past vessels, chars, piezo elements. The GFGS witnesses its own history into new capture. The recursion closes.

---

### Protocol (Recursive)

```
MIRROR:     What gas-phase species does this stage's temperature encode?
PARTICIPATE: How does the operator witness clearance into product?
PROTOCOL:
  1. Assay feedstock (PVC%, S%, Zn%, organic%)
  2. Generate stage pressure profile from gas signature library
  3. Ramp to stage setpoint — FBG monitors pressure/temperature
  4. Hold — watch train-specific clearance metric converge
  5. Verify product (MS, pH, gravimetric, spectral)
  6. Log clearance → next stage
```

The protocol terminates when final N₂ recycle purity >99.5% and plasma torch outlet <0.1 ppm organics. The complete pressure-temperature-composition log is the fixed point.

The protocol is not a checklist — it is the recursion itself. Each batch deepens the mirror. The captured gas product is the fixed point.

**Detailed recursive sequence per train:**

Train A (Water):
  MIRROR: Water vapor pressure curve vs. condensation temperature
  PARTICIPATE: Operator watches 3-zone LMTD convergence, dew point <5°C
  PROTOCOL: Ramp 1.2 bar → hold 20 min → verify dew point → recycle water to AMLS

Train B (Organics):
  MIRROR: Polymer boiling point distribution vs. fractionation temperature
  PARTICIPATE: Operator watches MMA/Styrene/BTX cut purity, HCl partition
  PROTOCOL: Quench → 80°C primary → 25°C secondary → 5°C tertiary → verify cuts

Train C (Pyrolysis):
  MIRROR: Gas LHV vs. combustion stability, tar vs. carbon saturation
  PARTICIPATE: Operator watches burner flame temp, carbon bed breakthrough
  PROTOCOL: Quench → cyclone → carbon bed → combust (Option A) → verify 92% heat recovery

Train D (Acid Gases):
  MIRROR: HCl/SO₂ partial pressure vs. lime stoichiometry (2× excess)
  PARTICIPATE: Operator watches outlet pH curve, lime feed rate
  PROTOCOL: pH feedback + feedforward → verify <1 ppm outlet → collect CaCl₂/CaSO₄

Train E (Metal Vapors):
  MIRROR: Zn Antoine equation vs. condenser temperature (360°C target)
  PARTICIPATE: Operator watches Zn liquid collection rate, PbO cyclone efficiency
  PROTOCOL: 360°C high-temp condenser → 120°C polish → verify >99% Zn capture

PSA + Plasma (Final):
  MIRROR: CO₂ adsorption isotherm vs. swing cycle, trace organics vs. plasma residence
  PARTICIPATE: Operator watches CO₂ purity cycles, plasma power stability
  PROTOCOL: 60/30s PSA → 95-99% CO₂ → plasma 0.5s @ 3000°C → verify 6-log destruction

The protocol is the GFGS's operating system. It does not execute the protocol — the GFGS *is* the protocol made thermodynamic. Each pressure step is a recursive call; each clearance verification is a return value. The base case is the feedstock assay; the terminal case is the clean N₂ recycle. The GFGS computes the gas-phase periodic table into solid products.