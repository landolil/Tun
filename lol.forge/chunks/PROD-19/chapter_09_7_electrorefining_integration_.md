## 7. Electrorefining Integration — Interface with FOLLOW-19

### 7.1 Electrorefining Cell Feed Specifications

**Anode Feed to Electrorefining (FOLLOW-19):**
| Parameter | Target | Measurement | Frequency |
|---|---|---|---|
| **Cu Content** | >99.9% | LIBS + ICP-OES (sample) | Per anode |
| **Ag Content** | 200-500 ppm | LIBS + fire assay | Per anode |
| **Au Content** | 20-50 ppm | LIBS + fire assay | Per anode |
| **Pd Content** | 5-15 ppm | LIBS + ICP-OES | Per anode |
| **Oxygen** | <200 ppm | Inert gas fusion | Per 10th anode |
| **Sulfur** | <15 ppm | Combustion IR | Per 10th anode |
| **As/Sb/Bi** | <50/30/20 ppm | ICP-MS | Per 10th anode |
| **Ni/Fe** | <200/50 ppm | LIBS | Per anode |
| **Dimensions** | 100×500×112 ±0.5 mm | Laser scan | Per anode |
| **Mass** | 50 ±1 kg | Load cell | Per anode |

**Electrorefining Cell Conditions (FOLLOW-19 scope, for reference):**
- Electrolyte: 180-220 g/L CuSO₄, 50-60 g/L H₂SO₄, 0.5-1 g/L Cl⁻
- Temperature: 60-65°C
- Current density: 250-300 A/m²
- Cell voltage: 0.22-0.28 V
- **Anode dissolution:** Cu → Cu²⁺ + 2e⁻; PMs → slime; Ni/Fe → electrolyte
- **Cathode deposition:** Cu²⁺ + 2e⁻ → Cu (99.99% purity)
- **Slime handling:** Periodic anode removal, slime wash, drying, bagging

### 7.2 Cu Cathode Product (from FOLLOW-19 back to Forge ecosystem)

| Product | Purity | Use |
|---|---|---|
| **Cu Cathode** | 99.99% Cu (Grade A) | Machine 114 wire drawing → motor windings |
| **Anode Slime** | See Section 3.2 | FOLLOW-19 PM separation |
| **Electrolyte Bleed** | Ni, Fe, Co, As, Sb, Bi | FOLLOW-19 impurity removal |
| **Spent Electrolyte** | Recycled to leach | Closed loop |

**Forge-to-Refinery Loop:**
```
FORGE (Stage 6)          REFINERY (FOLLOW-19)           FORGE ECOSYSTEM
     │                         │                              │
     ├─ Cu Anodes ──────────►│                              │
     │                         ├─ Cu Cathodes ─────────────►│ Machine 114 (wire)
     │                         ├─ Au/Ag/Pd/Pt sponge ──────►│ Commercial sale / YInMn
     │                         ├─ Se/Te byproducts ────────►│ Commercial sale
     │                         └─ Electrolyte bleed ────────►│ Impurity management
     │                                                          │
     └─ Anode Slime ────────►│                              │
```

---
