# El Segundo Heuristic — Mirror, Participation, Protocol
## Document: PROD-05 — Acoustic Mineral Liberation Subsystem

---

### Mirror (Self-Reflection)

The AMLS's mirror is the **FBG vibration spectrum** — 32 wavelengths recording the chamber's acoustic response at 100 kS/s. The chamber 'sees' its own resonance shift as grains liberate: bandwidth increases, damping decreases, kurtosis spikes at each grain release event.

The autoencoder watches the 32-channel spectral manifold — when the pattern deviates from the 500-batch training set, the AMLS *detects its own malfunction*. The mirror is not passive; it is active self-surveillance: *excite → measure → adapt → excite again*.

The mirror reflects the **liberation index estimate** in real-time: \widehat{LI}(t) = 12.3 + 0.45ΔBW + 0.32ΔP_rms + 8.7Kurtosis. Every 5th batch, the inline sieve + XRF provides ground truth — the Kalman filter updates. The mirror deepens with each batch.

The mineral-specific resonance signatures are the mirror's memory: Zircon 185±15 Hz (25 Hz BW, +23% LI boost), Bastnäsite 120±20 Hz (30 Hz BW, +18%), Ilmenite 250±25 Hz (35 Hz BW, +15%), Quartz 320±30 Hz (40 Hz BW, baseline), Calcite 85±10 Hz (20 Hz BW, +12%). The DSP builds a fingerprint for each batch and optimizes the sweep accordingly.

The zero-waste condition is the asymptotic reflection — the limit where the AMLS's self-measurement stabilizes into perfect liberation prediction.

---

### Participation (Witness)

The operator participates by **witnessing the resonance lock** — not as remote monitor but as the decision point that the feedstock's signature has been captured. When the DSP identifies a resonant peak at 185 Hz (zircon), the operator confirms: this batch contains zircon. This confirmation is the measurement.

The protocol:
1. Load feedstock (50 kg) + water (15 L)
2. Initiate adaptive sweep — watch FBG spectral waterfall
3. Confirm resonance peaks match expected mineralogy
4. Monitor \widehat{LI}(t) convergence
5. Verify direct sieve/XRF (every 5th batch)
6. Log batch fingerprint → next batch optimization

The operator's 'confirm' decision is the recursive self-measurement. The AMLS measures its own completion through the operator's witness of the resonance fingerprint.

The participation extends to **feedstock blending**: the operator assays each batch (XRF, mineralogy), then the DSP solves for optimal sweep profile. The blend *is* the operator's intent made acoustic. The AMLS witnesses the blend into liberation.

The ultimate participation: **Phoenix Protocol returns**. Retired Aegis products re-enter as Category D feedstock. The operator feeds the AMLS its own past transducers. The AMLS witnesses its own history into new liberation. The recursion closes.

The FPGA signal chain closes the loop at 1 kHz: FBG demux (32 ch) → 1024-point FFT → peak detection → Kalman filter (state = resonance frequencies) → drive profile generator → 8× ASIC drivers → transducer array → FBG response. The operator participates by witnessing the 1 kHz loop converge.

---

### Protocol (Recursive)

```
MIRROR:     What mineral resonance does this batch's fingerprint encode?
PARTICIPATE: How does the operator witness the resonance peak into liberation?
PROTOCOL:
  1. Assay feedstock (XRF + mineralogy)
  2. Generate adaptive sweep from fingerprint library
  3. Execute sweep — FBG monitors spectral evolution
  4. Confirm resonance peaks (operator witness)
  5. Track \widehat{LI}(t) convergence
  6. Verify direct measurement (1 in 5 batches)
  7. Update fingerprint library (Kalman)
```
The protocol terminates when \widehat{LI} > 75% for target minerals. The complete spectral log is the fixed point.

The protocol is not a checklist — it is the recursion itself. Each batch deepens the mirror. The liberated grain is the fixed point.

**Detailed recursive sequence per mechanism:**

LF Array (20-500 Hz):
  MIRROR: Grain boundary fatigue vs. matrix constraint
  PARTICIPATE: Operator watches resonance peaks at 120, 185, 250 Hz
  PROTOCOL: Sweep → dwell at peaks → measure bandwidth increase

US Array (40 kHz):
  MIRROR: Cavitation cloud collapse vs. grain boundary toughness
  PARTICIPATE: Operator monitors microjet pressure via FBG kurtosis
  PROTOCOL: Continuous 40 kHz → cloud synchronization → shock delivery

Magnetic Pre-sort (AMC mode):
  MIRROR: Ferrimagnetic response vs. acoustic liberation
  PARTICIPATE: Operator watches dual-stream output (magnetic/non-magnetic)
  PROTOCOL: 50 Hz presonation + pulsed magnet → concentrate split

The protocol is the AMLS's operating system. It does not execute the protocol — the AMLS *is* the protocol made acoustic. Each frequency step is a recursive call; each resonance peak is a return value. The base case is the feedstock assay; the terminal case is the liberated grain entering the drum.

**Stage 0 → Stage 1 Handoff Protocol:**
AMLS complete (15:00) → Drain (0:30) → Chute transfer (0:30) → N₂ purge (0:30) → Drum feed gate (0:15) = 16:45 total. Liberated grains enter drum with 45 min cycle time reduction downstream (Stage 4: -37%, Stage 5: -40%, Stage 6: -38%, Stage 7: -38%). The protocol is the cascade's first recursive call.
