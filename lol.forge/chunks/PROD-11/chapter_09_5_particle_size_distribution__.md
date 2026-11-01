## 5. Particle Size Distribution — Rosin-Rammler Analysis

The shredder output particle size distribution follows the Rosin-Rammler (Weibull) distribution, critical for predicting thermal cascade performance.

### 5.1 Rosin-Rammler Parameters by Feedstock

| Category | x' (characteristic size, mm) | n (spread parameter) | P80 (mm) | P50 (mm) |
|----------|------------------------------|---------------------|----------|----------|
| A (Electronics) | 45 | 1.2 | 120 | 45 |
| B (Metals) | 65 | 1.5 | 140 | 65 |
| C (Rock/Ore) | 85 | 1.0 | 150 | 85 |
| D (Phoenix) | 35 | 1.4 | 100 | 35 |

### 5.2 Sieve Analysis Protocol (Per Batch)

| Sieve Size | Category A | Category B | Category C | Category D |
|------------|------------|------------|------------|------------|
| >150 mm | <1% | <1% | <2% | 0% |
| 75–150 mm | 15% | 25% | 35% | 10% |
| 38–75 mm | 30% | 35% | 30% | 25% |
| 19–38 mm | 25% | 20% | 15% | 30% |
| 9.5–19 mm | 15% | 10% | 10% | 20% |
| <9.5 mm | 14% | 9% | 8% | 15% |

**Acceptance Criteria:** P80 ≤ 150 mm for all categories. Oversize (>150 mm) recirculated to shredder.

### 5.3 Rosin-Rammler Distribution Function

The cumulative passing fraction:
$$P(x) = 1 - \exp\left[-\left(\frac{x}{x'}\right)^n\right]$$

Where $x$ = particle size, $x'$ = characteristic size, $n$ = spread parameter.

**Derivation of x' and n from shredder physics:**
- $x' \propto \frac{\text{blade gap} \times \text{rotor speed}}{\text{material toughness}}$
- $n \approx 1.0–1.5$ for brittle materials (rock, ceramics)
- $n \approx 1.5–2.0$ for ductile materials (metals, polymers)

---
