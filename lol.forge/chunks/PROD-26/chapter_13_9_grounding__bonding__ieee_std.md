## 9. Grounding & Bonding — IEEE Std 142 / IEEE Std 1100

### 9.1 Grounding Philosophy

**Single-Point Ground at Substation Only.** No ground reference anywhere in the process zone. All "grounding" inside the forge is **equipotential bonding via 1 MΩ bleed resistors** for static dissipation only.

```
GROUNDING TOPOLOGY:
Utility Substation (Single Point)
       │
       ▼
Isolation Transformer (Δ-Y, Floating Secondary)
       │
       ▼
Neutral Grounding Resistor (5 A, 400 V) → Earth
       │
       ├──► Transformer Tank (BFRP, no metal)
       ├──► Cable Trays (BFRP, 1 MΩ bleed)
       ├──► Enclosures (BFRP, 1 MΩ bleed)
       ├──► Cooling Water (PEX-a, DI water 18 MΩ·cm)
       └──► Structure (BFRP frame, no steel)
```

### 9.2 Equipotential Bonding Network

| Component | Bonding Method | Resistance |
|-----------|----------------|------------|
| **BFRP Cable Trays** | Carbon fiber braid + 1 MΩ to earth | 1 MΩ |
| **BFRP Enclosures** | Carbon fiber lug + 1 MΩ to tray | 1 MΩ |
| **Ceramic Bushings** | No bonding (inherently insulating) | >10¹³ Ω |
| **PEX-a Pipe** | No bonding (inherently insulating) | >10¹⁴ Ω |
| **PMMA POF** | No bonding (inherently insulating) | >10¹⁵ Ω |
| **Indium Foil (TIM)** | Local to cold plate only | <1 mΩ (thermal) |

### 9.3 Static Dissipation

- **Charge Generation:** Drum rotation (500 RPM), particle flow, gas flow
- **Dissipation Path:** YInMn Blue glaze (SRI=115, conductive surface) → BFRP frame → 1 MΩ bleed → earth
- **Maximum Potential:** <100 V (verified by ESD test IEC 61000-4-2)
- **Spark Prevention:** All ports have ZrO₂ piston with 0.05 mm clearance — no spark gap

---
