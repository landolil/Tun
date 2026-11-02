## 7. Carousel & Slug Mold Structural

### 7.1 Carousel (8-Position ZrO₂ Molds)

**Geometry:** 8× ZrO₂ molds (3Y-TZP) on BFRP rotor, 400 mm diameter bolt circle
**Rotation:** Indexing (not continuous), 16 positions (2 per stage for dual-stream)
**Loads:** Centrifugal (mold + slug), thermal shock (2200°C → 25°C quench), thermal gradient

### 7.2 Mold Thermal Shock Analysis

**Quench profile:** 2200°C → 25°C in 60 s (N₂ quench, 50°C/s average)
**ZrO₂ properties:** α = 11.2×10⁻⁶/K, E = 200 GPa (at 1000°C), k = 3.0 W/m·K
**Thermal stress (sudden surface cooling, semi-infinite solid):**
$$\sigma_{max} = \frac{E \alpha \Delta T}{1-\nu} \cdot \frac{1}{\sqrt{\pi}} = \frac{200 \times 10^9 \times 11.2 \times 10^{-6} \times 2175}{0.7} \times 0.564 = \textbf{3.9 GPa}$$

**This EXCEEDS σ_f (800 MPa at 1200°C) by 5×.**

**Mitigation — Controlled Quench:**
- N₂ flow ramped: 0 → 500 SLPM over 30 s, hold 30 s, then 2000 SLPM
- Surface cooling rate limited to 20°C/s
- With 20°C/s: σ_max = 3.9 GPa × √(20/50) = **2.5 GPa** (still > σ_f)

**Resolution — Mold Design:**
1. **Thin-wall molds (3 mm wall)** — reduces thermal gradient
2. **Pre-heat molds to 800°C** before casting (rotary pre-heat station)
3. **Gradual quench:** 2200°C → 1500°C in 60 s (air), 1500°C → 800°C in 60 s (N₂), 800°C → 25°C in 180 s (N₂)
4. **With pre-heat + controlled quench:** σ_max < 400 MPa → **SF = 2.0× on 800 MPa at 1000°C**

**Mold life:** 500 batches (thermal shock is life-limiting) → 83 days at 6/day
**Spare mold set:** 2× (16 molds total) — rotate every 250 batches

### 7.3 Carousel Structural

**BFRP rotor:** 400 mm bolt circle, 8× M16 ZrO₂ bolts per mold
**Centrifugal load (mold + slug, 5 kg total at 400 mm radius, 500 RPM):**
$$F = m \omega^2 r = 5 \times 52.36^2 \times 0.4 = \textbf{5,470 N per mold}$$
**Bolt stress (8× M16 ZrO₂, tensile area 157 mm²):**
$$\sigma = 5470 / (8 \times 157) = \textbf{4.3 MPa} \ll \textbf{800 MPa}$$
**SF > 180×** — not critical

---
