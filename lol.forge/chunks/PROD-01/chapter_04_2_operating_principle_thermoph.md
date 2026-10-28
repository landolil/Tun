## 2. Operating Principle: Thermophysical Cascade Separation

### 2.1 The Foundational Physics

Every material has a characteristic melting point (Tm), decomposition temperature (Td), or boiling point (Tb). At any given temperature T, all materials with Tm < T are liquid; all with Tm > T remain solid.

In a rotating drum:

**Centrifugal separation force:**
$$F_c = m \omega^2 r$$

A 5 kg mass at radius r = 0.25 m and rotational speed omega = 100 rpm (10.47 rad/s):
$$F_c = 5 \times (10.47)^2 \times 0.25 = 137 \text{ N}$$

At higher speed (300 rpm, omega = 31.4 rad/s):
$$F_c = 5 \times (31.4)^2 \times 0.25 = 1234 \text{ N}$$

The centrifugal acceleration ratio (G): G = omega²r/g
At 300 rpm, r = 0.25 m: G = (31.4)² × 0.25 / 9.81 = **25.1 G**

Liquids with density rho_l > rho_solid phase migrate outward under centrifugal force.
Liquids at 25 G cannot remain centrally mixed — they stratify by density and pool at the drum wall.

**When T rises past Tm(Al) = 660°C:** Aluminum liquefies, spins out to drum perimeter, exits through an aluminum-specific circumferential port (positioned at the 660-700°C thermal zone), and collects outside as a slug.

This selective ejection is the core mechanism of the Aegis-Forge I.

### 2.2 Eight Thermal Processing Stages

The drum operates across eight consecutive temperature bands. Each band is held for a programmed dwell time before incrementing, allowing complete separation of each material class:

| Stage | Temperature Band | Duration | Target Materials | Output Form |
|---|---|---|---|---|
| 0 — Acoustic Pre-liberation | Ambient | 15-30 min | Mineral grain liberation from rock matrix | Liberated powder |
| 1 — Drying / Moisture | 80–150°C | 20 min | Free water, hydrations, volatile organics | Vapor → condensed water |
| 2 — Polymer Flow | 150–450°C | 30 min | Thermoplastics (PE, PP, PVC, ABS, PEEK offcuts) | Plastic slugs |
| 3 — Pyrolysis / Char | 450–700°C | 30 min | Thermosets, rubber, organics → CO₂ + char | Carbon char pellets + CO₂ captured |
| 4 — Zinc/Lead/Tin | 420–900°C | 25 min | Zn (420°C), Pb (327°C), Tin (232°C), Solder | Metal slugs |
| 5 — Aluminum | 660–720°C | 25 min | Al alloys (6061, 2024, die-cast) | Al ingot slugs |
| 6 — Copper/Bronze | 1085–1200°C | 30 min | Cu wire, bronze fittings, PCB traces | Cu slug billets |
| 7 — Iron/Steel/Nickel | 1200–1600°C | 35 min | Fe, Ni, Cr, stainless (induction-selective) | Ferrous casting slugs |
| 8 — Mineral Residue | 1600–2200°C | 20 min | Silicates, oxides, rare earth concentrates | High-temp mineral slag |

### 2.3 Selective Induction Heating — The Invisible Sorter

Induction heating selectively couples to materials based on:
- **Electrical conductivity (eddy current heating):** Copper, aluminum, steel, gold, silver all heat inductively
- **Magnetic permeability (hysteresis heating):** Ferrous materials (iron, steel, nickel) heat 2-4× more intensely
- **Non-conductive materials:** Ceramics, organics, glass, BFRP — NOT heated inductively; only heated by conduction from surrounding hot materials

This creates a **natural sorting bias**: at any temperature stage, conductive metals heat faster and more thoroughly than surrounding insulating material. Metals liquefy while ceramics and organics remain solid longer, making them easier to separate centrifugally.

$$P_{induction} = \frac{\pi^2 B_{peak}^2 d^2 f^2}{6 \rho D}$$

For copper (rho = 1.7 × 10⁻⁸ Ohm·m): heating power 15× that of aluminum at same geometry, frequency.
For steel (ferromagnetic): heating power 25-50× that of aluminum.

---
