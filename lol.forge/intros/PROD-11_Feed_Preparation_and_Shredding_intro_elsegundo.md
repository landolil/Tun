# El Segundo Heuristic — Mirror, Participation, Protocol
## Document: PROD-11 — Feed Preparation & Shredding

---

### Mirror (Self-Reflection)

The feed preparation system's mirror is the **real-time particle size distribution** — the sieve analyzer sampling every 30 minutes, the FBG strain field on the 32 BFRP blades recording each impact, the capacitive moisture sensor measuring dielectric constant at 100 MHz, the Hall probe mapping the NdFeB magnet field decay. The system 'sees' its own output distribution through the sieve; it 'feels' its own blade wear through the FBGs; it 'senses' its own moisture gate accuracy through the gravimetric cross-check; it 'measures' its own ferrous separation through the mass balance.

The mirror deepens with the **Kalman filter RUL prediction**: 32 FBG sensors on the rotor (8 axial strain, 8 circumferential, 8 torsional, 8 temperature) feed a recursive estimator that predicts blade remaining useful life with 95% confidence interval. Every 500 kg batch updates the strain manifold; the autoencoder threshold tightens. The mirror is not passive — it is active self-surveillance: *shred → measure → predict → adapt → shred again*.

The mirror reflects the **acoustic liberation index estimate** in real-time:
$$\widehat{LI}(t) = 12.3 + 0.45\Delta BW + 0.32\Delta P_{rms} + 8.7 \text{Kurtosis}$$
Every 5th batch, inline sieve + XRF provides ground truth — the filter updates. The FBG vibration spectrum (32 wavelengths, 100 kS/s) captures the chamber's acoustic response — bandwidth increases, damping decreases, kurtosis spikes at each grain release event. The mineral-specific resonance signatures are the mirror's memory: Zircon 185±15 Hz, Bastnäsite 120±20 Hz, Ilmenite 250±25 Hz.

The zero-contamination condition is the asymptotic reflection — the limit where the system's self-measurement stabilizes into perfect prediction. When the 32-blade FBG strain field matches the 500-batch manifold within 2σ, when the sieve distribution matches Rosin-Rammler within 3%, when the moisture gate reads within ±0.5% of gravimetric — the mirror is perfectly reflective. The feed preparation system has witnessed itself into fidelity.

---

### Participation (Witness)

An inside operator measuring this phenomenon does not stand outside the shredder — the operator *is* a segment of the particle distribution. The protocol for achieving zero-contamination size reduction from within the system:

1. **Assay**: Measure feedstock elemental composition (XRF), moisture (gravimetric), particle size (sieve), ferrous content (magnetic susceptibility)
2. **Blend**: Solve linear program to maximize revenue elements (In, Nd, Dy, Au, Pd) while maintaining thermal balance and <150 mm max size
3. **Pre-separate**: Run ferrous belt — watch mass flow, confirm >95% capture, divert steel to Stage 7 buffer
4. **Shred**: Feed non-ferrous fraction — watch FBG strain field, verify P80 tracking Rosin-Rammler target
5. **Liberate**: Acoustic pre-chamber — watch FBG vibration spectrum, confirm LI >0.3 boost
6. **Gate**: Moisture check — if >25%, divert to pre-dry, verify exit <15%
7. **Verify**: Drum feed gate — confirm <150 mm, <15% moisture, LI >0.3, handoff to Stage 0

The measurement *is* the recursion. The operator assays the input, blends the feed that witnesses it, and finds the zero-contamination distribution — the fidelity that governs how they ramp the thermal cascade. The protocol terminates when the 8 slugs' elemental sum matches the input assay — not approximately, but exactly. This is not a measurement of an external parameter; it is the preparation system measuring its own fidelity through the operator's self-observation.

The participation extends to **adaptive rotor speed control**: after each sieve analysis (30 min), the MPC adjusts rotor speed ±10 RPM to maintain P80=75 mm. The operator's sieve decision is the recursive self-measurement. The shredder measures its own output distribution through the operator's witness of the sieve curve.

The participation includes **blade wear learning**: after each 500-ton blade change, the operator reviews the FBG strain history, the actual vs predicted wear, the feedstock mix, and updates the Kalman filter coefficients (k_a, k_e, k_f, m). The wear model *is* the operator's intent made predictive. The shredder witnesses the operator's learning into its own RUL prediction.

The ultimate participation: **Phoenix Protocol returns**. End-of-life Aegis products (ZrB₂-SiC panels, BFRP structures, KNbO₃-BaTiO₃ piezos) re-enter as Category D feedstock. The operator feeds the shredder its own past blades and liners. The BFRP blades pyrolyze cleanly in Stage 3 (Elium® depolymerizes at 350°C); the ZrB₂-SiC panels report to Stage 8 mineral concentrate. The shredder witnesses its own history into new elements. The recursion closes.

The operator does not stand outside the shredder — the operator *is* the decision boundary that the particle distribution requires. The measurement *is* the recursion.

---

### Protocol (Recursive)

```
MIRROR:     What particle size does this feedstock's fracture toughness encode?
PARTICIPATE: How does the operator witness the sieve curve into rotor speed?
PROTOCOL:
  1. Assay feedstock (elemental, moisture, size, ferrous)
  2. Blend for revenue elements + thermal balance
  3. Ferrous belt ON → confirm >95% capture
  4. Shredder ON → FBG strain <800 µε, rotor speed per MPC
  5. Acoustic chamber ON → FBG vibration LI >0.3 boost
  6. Moisture gate → <25% or pre-dry to <15%
  7. Drum feed gate → <150 mm, <15% moisture, handoff
  8. Log batch: assay vs. output distribution closure
```

The protocol terminates when the drum feed gate closes for the batch. The complete particle distribution log is the fixed point.

The protocol is not a checklist — it is the recursion itself. Each batch deepens the mirror. The elemental slug is the fixed point.

**Detailed recursive sequence per station:**

**Station 1 — Ferrous Belt:**
```
MIRROR:     Ferrous mass flow vs. feedstock assay
PARTICIPATE: Operator watches belt discharge, confirms Stage 7 buffer fill
PROTOCOL:   Start belt → load cell mass flow → Hall probe field map → divert steel
```

**Station 2 — BFRP-Blade Shredder:**
```
MIRROR:     FBG strain field (32 sensors) vs. 500-batch manifold
PARTICIPATE: Operator reviews sieve at 30 min, adjusts rotor speed ±10 RPM
PROTOCOL:   Feed → FBG <800 µε → sieve → MPC adjusts RPM → log strain + size
```

**Station 3 — Acoustic Pre-Chamber:**
```
MIRROR:     FBG vibration spectrum (32 ch, 100 kS/s) vs. resonance fingerprint
PARTICIPATE: Operator watches LI estimate, confirms >0.3 boost at exit
PROTOCOL:   N₂ purge → LF sweep 20→500 Hz + US 40 kHz → LI estimate → log
```

**Station 4 — Moisture Gate & Pre-Dry:**
```
MIRROR:     Capacitive ε_bulk (100 MHz) vs. gravimetric reference
PARTICIPATE: Operator verifies >25% → divert, exit <15% confirmed
PROTOCOL:   Measure → if >25% divert 15 min @ 80°C N₂ → re-measure → release
```

**Handoff — Drum Feed Gate:**
```
MIRROR:     Particle size (sieve) + moisture + LI vs. drum acceptance criteria
PARTICIPATE: Operator confirms all green → gate opens synchronized with drum port
PROTOCOL:   Verify <150 mm + <15% moisture + LI>0.3 → sync port → gate open 2.5s
```

The protocol is the feed preparation system's operating system. It does not execute the protocol — the system *is* the protocol made mechanical. Each station is a recursive call; each measurement is a return value. The base case is Station 1 (ferrous removal); the terminal case is Station 4 (drum gate). The system computes the particle distribution that the thermal cascade requires.