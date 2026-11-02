## 2. Operating Principle: Thermophysical Cascade Separation

### 2.1 The Foundational Physics

Every material has a characteristic melting point (Tm), decomposition temperature (Td), or boiling point (Tb). At any given temperature T, all materials with Tm < T are liquid; all with Tm > T remain solid.

In a rotating drum:

**Centrifugal separation force:**
$$F_c = m \omega^2 r$$

A 5 kg mass at radius r = 0.25 m and rotational speed ω = 100 rpm (10.47 rad/s):
$$F_c = 5 \times (10.47)^2 \times 0.25 = 137 \text{ N}$$

At higher speed (300 rpm, ω = 31.4 rad/s):
$$F_c = 5 \times (31.4)^2 \times 0.25 = 1234 \text{ N}$$

The centrifugal acceleration ratio (G): G = ω²r/g
At 300 rpm, r = 0.25 m: G = (31.4)² × 0.25 / 9.81 = **25.1 G**

Liquids with density ρ_l > ρ_solid phase migrate outward under centrifugal force.
Liquids at 25 G cannot remain centrally mixed — they stratify by density and pool at the drum wall.

**When T rises past Tm(Al) = 660°C:** Aluminum liquefies, spins out to drum perimeter, exits through an aluminum-specific circumferential port (positioned at the 660-700°C thermal zone), and collects outside as a slug.

This selective ejection is the core mechanism of the Aegis-Forge I.

### 2.2 Induction Selectivity Physics

Induction heating selectively couples to materials based on:

- **Electrical conductivity (eddy current heating)**: Copper, aluminum, steel, gold, silver all heat inductively
- **Magnetic permeability (hysteresis heating)**: Ferrous materials (iron, steel, nickel) heat 2-4× more intensely
- **Non-conductive materials**: Ceramics, organics, glass, BFRP — NOT heated inductively; only heated by conduction from surrounding hot materials

This creates a **natural sorting bias**: at any temperature stage, conductive metals heat faster and more thoroughly than surrounding insulating material. Metals liquefy while ceramics and organics remain solid longer, making them easier to separate centrifugally.

Induction power density:
$$P_{induction} = \frac{\pi^2 B_{peak}^2 d^2 f^2}{6 \rho D}$$

For copper (ρ = 1.7 × 10⁻⁸ Ω·m): heating power 15× that of aluminum at same geometry, frequency.
For steel (ferromagnetic): heating power 25-50× that of aluminum.

Skin depth governs penetration:
$$\delta = \sqrt{\frac{2\rho}{\omega\mu}}$$

At 5 kHz, copper (ρ=1.7×10⁻⁸, μ≈μ₀): δ ≈ 1.0 mm
At 2 kHz, steel (ρ=1.0×10⁻⁷, μ=100μ₀): δ ≈ 0.35 mm
At 10 kHz, aluminum (ρ=2.7×10⁻⁸, μ≈μ₀): δ ≈ 0.7 mm

The frequency ladder IS the periodic table's conductivity map.

### 2.3 Eight Thermal Processing Stages

The drum operates across eight consecutive temperature bands. Each band is held for a programmed dwell time before incrementing, allowing complete separation of each material class:

| Stage | Temperature Band | Duration | Target Materials | Output Form | Port |
|---|---|---|---|---|---|
| 0 — Acoustic Pre-liberation | Ambient | 15-30 min | Mineral grain liberation from rock matrix | Liberated powder | — |
| 1 — Drying / Moisture | 80–150°C | 20 min | Free water, hydrations, volatile organics | Vapor → condensed water | 1 |
| 2 — Polymer Flow | 150–450°C | 30 min | Thermoplastics (PE, PP, PVC, ABS, PEEK offcuts) | Plastic slugs | 2 |
| 3 — Pyrolysis / Char | 450–700°C | 30 min | Thermosets, rubber, organics → CO₂ + char | Carbon char pellets + CO₂ captured | 3 |
| 4 — Low-Temp Metals | 420–900°C | 25 min | Zn (420°C), Pb (327°C), Sn (232°C), In (157°C) | Metal slugs (In-first) | 4 |
| 5 — Aluminum | 660–720°C | 25 min | Al alloys (6061, 2024, die-cast A380) | Al ingot slugs | 5 |
| 6 — Copper/Precious | 1085–1200°C | 30 min | Cu wire, bronze, PCB traces, Au/Ag/Pd | Cu billet slugs + PM | 6 |
| 7 — Ferrous/REE | 1200–1600°C | 35 min | Fe, Ni, Cr, stainless, NdFeB, SmCo | Ferrous casting slugs + REE | 7 |
| 8 — Mineral Residue | 1600–2200°C | 20 min | Silicates, oxides, zircon, rare earth oxides | High-temp mineral slag | 8 |

### 2.4 Stage Temperature Ramp Protocol

The complete thermal cycle runs 3.5-5 hours per batch depending on feedstock:

```
TIME (min)  TEMP (°C)  STAGE   ACTIVITY
0-15        20-80      Pre     Acoustic mineral liberation (Stage 0)
15-35       80-150     1       Moisture removal, volatile organics
35-65       150-450    2       Thermoplastic flow, polymer separation
65-95       450-660    3       Pyrolysis, char formation, thermoset combustion
95-120      420-900    4       Low-melting metals: Pb, Sn, Zn (overlap range)
120-145     660-720    5       Aluminum separation (near-pure Al window)
145-175     720-1085   HOLD    Solidus zone: brass, bronze separation
175-205     1085-1200  6       Copper and copper alloys
205-240     1200-1600  7       Iron, steel, nickel, cobalt
240-270     1600-2200  8       Refractory mineral oxide residue
270-300     2200-cool  Cool    Controlled cool under N₂; drum stops rotating
```

---
