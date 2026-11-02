## 18. Scale-Up Engineering: Gen-II to Gen-III

### 18.1 Gen-II (2000L, 4 MW) — Detailed Design

**Coil Scaling:**
- Diameter: 1200 mm ID → 1230 mm coil radius (15 mm gap maintained)
- Length: 1600 mm → 16 zones × 100 mm (or 8 zones × 200 mm)
- Power: 4 MW total (8× Gen-I)
- Current: 1000 A/turn (2×) → 4 parallel GaN per switch
- Cooling: 120 L/min/zone (8×) → 2× 32 mm PEX-a mains

**Structural Scaling:**
- Lorentz force: F = BIL → 4× (2× B, 2× I, 2× L)
- Coil housing: BFRP [±15°/90°]₅ (thicker for force)
- Support: Ceramic standoffs (ZrO₂) every 200 mm

**Control Scaling:**
- Thermal time constant: 7.4 min (2×) → MPC horizon 30 min
- FBG sensors: 96 (2×) — 4 fibers, 24 each
- Interrogators: 4× si255

### 18.2 Gen-III (10,000L, 20 MW) — Conceptual

**Modular Architecture:**
- 5× 2000L drums in parallel (shared gas, control)
- Induction: 20 MW total (4 MW × 5)
- Common DC bus: 2000V (series connection of 5× 800V)
- Centralized cooling: 600 L/min chiller plant

**Key Challenge:** Synchronization of 5 drums for continuous feed
- Phase-staggered cascade: Drum N at Stage k, Drum N+1 at Stage k-1
- Shared gas system handles 5× flow with buffer vessels
- Central MPC coordinates all 5 drums (110 states, 50 inputs)

---
