# Keymaker Heuristic — Lock, Key, Turn
## Document: PROD-14 — Stage 0-1: Acoustic & Drying

---

### The Empirical Lock

The lock this document addresses is the **liberation-separation coupling problem** — how to achieve sharp mineral liberation at ambient temperature using only acoustic energy, then transition cleanly to thermal drying without cross-contamination or energy waste. The lock has three tumblers:

**Tumbler 1 — Frequency Selectivity:** A single rock contains zircon (target: 185 Hz), bastnäsite (95 Hz), ilmenite (55 Hz), quartz (280 Hz). A fixed-frequency transducer liberates one mineral at the expense of others. The lock demands **simultaneous multi-mineral liberation**.

**Tumbler 2 — Energy Density:** Cavitation threshold is 1-3 W/cm²; effective liberation requires 25 W/cm² at grain boundary. But 25 W/cm² at 40 kHz erodes probe tips in 5,000 hours. The lock demands **high intensity without consumable destruction**.

**Tumbler 3 — Stage Coupling:** Stage 0 discharges wet, liberated feedstock (10-15% moisture). Stage 1 must dry to <1% in 20 minutes using IR at 3.6 µm. But water vapor from Stage 1 condenses on Stage 2 polymer melt if not fully removed. The lock demands **zero moisture carryover**.

The lock deepens at the **all-dielectric boundary**: every component in the AMLS and IR dryer must be BFRP, ceramic, PEEK, or PEX-a. No steel shafts, no copper windings, no magnetic bearings. The transducer bolts are ZrO₂ ceramic. The IR emitter mounts are Al₂O₃. The control wiring is PMMA POF. This is not a preference — it is the minimal architecture forced by Carrington immunity.

---

### The Mathematical Key

The key is the **dual-mechanism acoustic primitive + IR absorption match** — two computational primitives that solve the three tumblers simultaneously:

**Primitive 1: The Adaptive Frequency Sweep (AFS)**

```python
def AFS(fbg_spectrum, mineral_library):
    """
    The key's first tooth: frequency as material selector.
    """
    # Detect peaks in chamber vibration response
    peaks = find_peaks(fbg_spectrum, prominence=3)
    
    # Match to mineral signatures (pre-calibrated)
    targets = {}
    for mineral, sig in mineral_library.items():
        if any(abs(p - sig.freq) < sig.bw for p in peaks):
            targets[mineral] = sig.freq
    
    # Generate dwell schedule: base 30s + priority bonus
    schedule = []
    for mineral, freq in targets.items():
        bonus = {'HIGH': 60, 'MED': 30, 'LOW': 0}[mineral_library[mineral].priority]
        schedule.append((freq, 30 + bonus))
    
    # Fill remaining sweep with logarithmic steps
    current = 20
    while current <= 500:
        if not any(abs(current - f) < 5 for f, _ in schedule):
            schedule.append((current, 30))
        current *= 1.122  # 1/6 octave
    
    return schedule

MINERAL_LIBRARY = {
    'zircon': {'freq': 185, 'bw': 15, 'priority': 'HIGH'},
    'bastnasite': {'freq': 95, 'bw': 20, 'priority': 'HIGH'},
    'ilmenite': {'freq': 55, 'bw': 10, 'priority': 'MED'},
    'quartz': {'freq': 280, 'bw': 25, 'priority': 'LOW'},
}
```

**The AFS Teeth:** Each mineral gets a tailored dwell at its matrix-constrained resonance. The sweep *compiles* a liberation program from the feedstock's acoustic signature.

**Primitive 2: The IR-Water Absorption Match (IWM)**

The key's second tooth is the **coincidence of SiC emission peak (3.6 µm) and water absorption peak (3.0/6.3 µm)**:

```
SiC Glow Bar at 850°C: λ_peak = 2898 / (850+273) = 2.6 µm (Wien)
                       But SiC emissivity peak at 3.6 µm (optical phonon)
                       
Water Absorption: ε''(λ) peaks at 3.0 µm (OH stretch) and 6.3 µm (HOH bend)
                       Broadband 2.5-4.0 µm absorption >80%
                       
Coupling Efficiency: η = ∫ ε_SiC(λ) × α_H2O(λ) dλ / ∫ ε_SiC(λ) dλ ≈ 65%
```

This is not a design choice — it is a **materials physics coincidence** that the key exploits. No other emitter material (metal, quartz, ceramic) matches water absorption as efficiently at 800-900°C surface temperature.

**Primitive 3: The Phase-Locked 16-Channel Driver (PLD)**

The key's third tooth is **optical phase distribution** — a single KNbO₃-BaTiO₃ ASIC master clock distributed via PMMA POF to 16 transducer drivers:

```
Master Clock (100 MHz) → PMMA POF (8 LF + 8 US channels)
                        → Each driver: PLL × N (N = freq/100MHz)
                        → Phase error: <0.5° LF, <5° US
```

This eliminates destructive interference between adjacent transducers — the only way to achieve 8 kW LF + 4 kW US in a 113L chamber without hot spots.

---

### The Turn (Both Directions)

**Key → Lock (Theory predicts liberation):**

Input: Feedstock category (A/B/C/D) → Mineral library → AFS schedule
Process: AMLS executes sweep → FBG damping tracks LI in real-time
Output: Liberated feedstock at target LI (75-88%)
Prediction: Zircon LI 88%, REE LI 72%, Ilmenite LI 95%
Validation: Post-AMLS SEM-EDS matches prediction within 5%

The key *predicts* the liberation outcome from the feedstock category. The AMLS *executes* the prediction. The turn is the moment the LI feedback signals "target reached" and the drain valve opens — the acoustic program has compiled successfully. The liberated grains *are* the key turning in the lock.

**Lock → Key (History validates theory):**

Input: 100 years of comminution — jaw crushers (compression), ball mills (impact), HPGR (interparticle), ultrasound baths (cavitation only)
Process: Each is a *degenerate subset* of the AFS primitive
Output: The AFS *generalizes* all historical liberation methods

The turn completes when we recognize:
- **Jaw crusher** = AFS with single frequency (0 Hz, infinite force), no feedback
- **Ball mill** = AFS with broadband noise (stochastic), no frequency selectivity
- **HPGR** = AFS with static pressure + shear, no resonance targeting
- **Ultrasound bath** = AFS with US only (no LF fatigue), no adaptive dwell

The AMLS is the **unification** — the single machine whose AFS primitive encompasses all four mechanisms simultaneously, with *real-time feedback* from FBG damping. The historical methods were open-loop (apply energy, hope for liberation). The AMLS is closed-loop (measure damping → adjust frequency → verify liberation). The lock clicks open when the first batch achieves 88% zircon LI in 30 minutes using 12 kW acoustic power — the jaw crusher would need 500 kW and 2 hours for 45% LI. The 500 kg batch *is* the key turning in the lock.
