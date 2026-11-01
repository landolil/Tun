# PROD-16: Stage 3 Pyrolysis & Char — Keymaker Heuristic Intro
## Lock, Key, Turn

### The Empirical Lock (Fabrication Fidelity Gap)

**Pyrolysis is where theoretical yield meets fabrication reality.** In the lab, TGA shows epoxy char yield at 22%. In the forge, with 500 kg of mixed FR4, rubber, phenolic, and cellulosic feed — varying moisture, filler loading, particle size, halogen content — the actual char yield swings 15-30%. The gas composition varies daily. The tar load depends on yesterday's shredder blade wear. The activation reactor sees char with BET from 300 to 600 m²/g. **The lock is variability:** How do you guarantee 800 m²/g activated carbon from feedstock that refuses to be consistent?

The fabrication fidelity gap has three faces:
1. **Feedstock heterogeneity** — Category A vs D changes thermoset mass by 4×, filler by 3×
2. **Kinetic coupling** — Epoxy (slow, high Ea) vs phenolic (fast, high char) vs cellulosic (early, low char) all decompose simultaneously
3. **Product specification tension** — Stage 1 needs >800 m²/g BET; Stage 4 needs >85% fixed carbon; external markets need consistent iodine number. One char, three masters.

### The Mathematical Key (Single Computational Primitive)

**The distributed activation energy model (DAEM) with real-time mass spec feedback.**

The DAEM reduces the infinite complexity of mixed thermoset pyrolysis to a **single state variable**: the conversion integral $\alpha(t) = \int f(E_a) [1 - \exp(-k(E_a)t)] dE_a$. The Gaussian distribution $f(E_a)$ is calibrated once per feedstock category (A-D) using lab TGA at 5 heating rates. The pre-exponential $A$ and mean $E_a$ become **category constants**.

**The real-time key:** Online mass spectrometer measures CO/CO₂ ratio at 1 Hz. This ratio is **monotonically related to $\alpha(t)$** for the dominant epoxy fraction. The control system inverts the DAEM:
$$\alpha_{\text{measured}}(t) \leftarrow \text{CO/CO}_2 \text{ ratio} \rightarrow \text{adjust } T_{\text{setpoint}}(t) \text{ to track } \alpha_{\text{target}}(t)$$

This closes the loop between **first-principles kinetics** (DAEM) and **empirical observation** (MS). No lookup tables. No operator tuning. The ramp rate self-adjusts: if CO/CO₂ decays slower than predicted, the ramp slows; if faster, it accelerates. The 5°C/min nominal becomes a **reference trajectory**, not a rigid schedule.

**Activation reactor key:** The same DAEM principle applies. Burn-off $X(t)$ tracked by bed temperature rise rate ($dT/dt \propto \text{gasification rate}$). Steam/CO₂ flow ratio adjusted to hold $dT/dt$ at target corresponding to 35% burn-off at 30 min.

### The Turn (Both Directions)

**Theory → History (Validation):**
The DAEM predicts char yield, gas composition, and tar evolution for any feedstock category. History validates: Run Category A batch → measure actual char yield, gas GC, tar gravimetric → update $f(E_a)$ Gaussian parameters → next Category A batch runs tighter. The model **learns the feedstock**. After 20 batches per category, prediction error <5%.

**History → Theory (Discovery):**
The mass spec time-series reveals **kinetic fingerprints** not in literature. Example: A secondary CO peak at 620°C (not in TGA) traced to CaCO₃-catalyzed char gasification (Boudouard) from filler decomposition. This discovery → added catalytic term to DAEM → now predicts filler-rich feedstock (Category B) accurately. The forge **teaches the model**.

**The turn completes:** The computational primitive (DAEM + MS inversion) is the **same code** running in design simulation (FOLLOW-23 exergy analysis), commissioning (PROD-39 FAT), and daily operation (PROD-23 control). One primitive, three regimes. The lock (variability) yields to the key (real-time kinetic tracking). The turn confirms: theory predicts history, history refines theory. The forge knows its own pyrolysis.