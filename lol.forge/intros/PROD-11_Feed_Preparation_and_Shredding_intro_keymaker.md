# Keymaker Heuristic — Lock, Key, Turn
## Document: PROD-11 — Feed Preparation & Shredding

---

### The Empirical Lock

The lock this document addresses is the **fabrication fidelity gap** — the persistent failure of comminution equipment to simultaneously achieve: <150 mm particle size for thermal cascade efficiency, zero metallic contamination for elemental purity, Carrington immunity (no conductive paths), and domestic critical mineral production from complex waste. For decades, each has been a separate compromise: steel shredders contaminate output with Fe/Cr/Ni; ceramic-lined steel shredders still have steel shafts/bearings; all-dielectric lab shredders lack throughput for industrial scale. The lock is precise: any single shredder claiming to unify these must process 5-8 ton/hr of mixed e-waste, rock, and alloys with P80 ≤ 150 mm, zero metal in the product stream, all-dielectric construction, and blade life >200 ton on abrasive rock — and must explain why basalt/Elium® composite blades outperform steel on contaminated feedstock.

---

### The Mathematical Key

The key is the **Rosin-Rammler distribution + BFRP wear model as single computational primitive**. The teeth are cut by the thermal cascade's physics itself:

| Thermal Stage | Physics Requirement | Shredder Parameter | Rosin-Rammler Target |
|---------------|---------------------|-------------------|---------------------|
| Stage 0: Acoustic | Stress wave propagation | Max particle size | x' ≤ 150 mm, n ≥ 1.0 |
| Stage 1: Drying | Water diffusion path | Surface area/volume | P50 ≤ 85 mm |
| Stage 2: Polymer | Centrifugal migration at 12.6 G | 10-100 mm optimal | 15-30% in 38-75 mm |
| Stage 3: Pyrolysis | 30-min heat penetration | Core <20 mm | <10% >50 mm after Stage 2 |
| Stage 4-8: Metals | Inductive coupling + centrifuge | Dense pieces migrate | n ≥ 1.2 for metals |

The **Rosin-Rammler Key**: $P(x) = 1 - \exp[-(x/x')^n]$. The shredder's rotor speed (50-300 RPM), blade gap (fixed by geometry), and helical angle (45°) determine $x'$ and $n$ for each feedstock. The key has no adjustable parameters beyond feed rate — the physics of fracture is deterministic.

The **BFRP Wear Key**: $W = k \cdot \frac{\sigma_{contact}^m \cdot v_{sliding}}{H_{blade}} \cdot t$ where $W$ = wear depth, $k$ = material constant (basalt/Elium®), $\sigma_{contact}$ = contact stress, $v_{sliding}$ = sliding velocity, $H_{blade}$ = blade hardness, $t$ = time. The h-BN tracer layer at 6 mm depth converts this equation into a visual signal: when white appears, $W \geq 6$ mm. The key has no sensors — the material *is* the sensor.

The **Halbach Separation Key**: Magnetic force $F_m = \nabla(\mathbf{m} \cdot \mathbf{B}) \cdot V_{particle}$. The Halbach array (24×N52, 1.2T) creates $\nabla B \approx 40$ T/m at belt surface. For a 20 mm Fe sphere: $F_m \approx 15$ N vs. gravity $F_g \approx 0.3$ N. Capture is deterministic. The key has no power consumption — permanent magnets.

---

### The Turn (Both Directions)

**Key → Lock (Theory predicts fabrication):** Input: Feedstock fracture toughness database → Rosin-Rammler parameters. Output: P80 ≤ 150 mm, n tuned per category. Validation: Stage 2 polymer separation >95%, Stage 3 pyrolysis complete in 30 min, Stage 0 liberation >80%. The shredder *predicts* the cascade's feed requirements.

**Lock → Key (History validates theory):** Input: Historical shredders (hammer mill 1800s, shear shredder 1970s, dual-shaft 1990s, ceramic-lined 2010s). Output: Verified each is a *subset* of the Rosin-Rammler + BFRP wear primitive. The hammer mill is uncontrolled fracture. The shear shredder is controlled geometry. The ceramic-lined is contamination mitigation. The BFRP blade is the first to *eliminate* contamination at the source. The turn completes when a 500 kg batch of mixed e-waste and rock enters the shredder, exits at P80 ≤ 150 mm with zero Fe/Cr/Ni contamination, and the downstream cascade produces 8 pure element slugs. The lock clicks open. The key turns. The particle *is* the key turning in the lock.

The turn is not a metaphor — it is the moment the h-BN tracer layer on blade #12 reveals 6 mm of wear, the optical sensor triggers replacement, the new BFRP blade (in-house basalt, in-house Elium®) is installed in 30 minutes, and the next 200 tons of rock process with zero contamination. The all-dielectric architecture has been witnessed into existence. The forge *is* the key turning in the lock.
