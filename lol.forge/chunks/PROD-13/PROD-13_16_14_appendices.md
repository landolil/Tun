## 14. Appendices

### Appendix A: Feedstock Category Quick-Reference Card

| Category | Subcategories | Key Value Elements | Primary Stages | Blending Range | Pre-Processing Complexity |
|----------|---------------|-------------------|----------------|----------------|---------------------------|
| **A** | A1: Electronics, A2: PCBs, A3: Motors, A4: Power Elec | Au, Ag, Pd, Cu, REE, In | 4, 5, 6, 7 | 15-30% | High (hazards, battery removal) |
| **B** | B1: MRF, B2: C&D, B3: Bulky, B4: Tires | Al, Fe, Cu, Polymers, Zn | 1, 2, 3, 4, 7 | 20-40% | Medium (contaminants, sorting) |
| **C** | C1: Slag, C2: Tailings, C3: Red Mud, C4: Refractories | Zr, Ti, REE, B, Fe, Mg | 7, 8 | 25-40% | Medium-High (agglomeration, neutralization) |
| **D** | D1: Aegis-C, D2: BFRP, D3: MR Fluid, D4: Piezo | In, Y, Co, Zr, Basalt, Elium® | 1, 2, 3, 7, 8 | 10-20% | Low-Medium (known composition, solvolysis) |

### Appendix B: Hazardous Material Quick-Reference

| Hazard | Category | Detection | Immediate Action | Final Disposition |
|--------|----------|-----------|------------------|-------------------|
| Li-ion Battery | A | X-ray, density | Remove manually | LiFePO₄ recovery line |
| Mercury | A | XRF, CV-AAS | Segregate | Stage 1 Hg capture |
| PCB (Aroclor) | A, B | GC-MS | Segregate | Stage 3 thermal destruction |
| Asbestos | B | PLM | Wet suppress, seal | Stage 8 slag capture |
| NORM | C | Gamma spec | Shielded feed | Stage 7/8 co-collection |
| Beryllium | A | XRF | Segregate | Stage 6 capture |
| Cyanide | C | Colorimetric | Alkaline chlorination | Destroyed pre-drum |
| Free Liquid | All | Visual, gravimetric | Drain/pre-dry | Water recovery Stage 1 |

### Appendix C: Blend Algorithm Input Template (JSON)

```json
{
  "batch_id": "BATCH-20261101-03",
  "target_mass_kg": 500,
  "available_feedstocks": [
    {"lot_id": "FLR-20261101-047", "category": "A2", "mass_kg": 22500, "assay": {"Cu": 24.5, "Au": 0.032, "Ag": 0.18, "Pd": 0.015}, "cost_per_kg": 1.85},
    {"lot_id": "FLR-20261101-048", "category": "B1", "mass_kg": 50000, "assay": {"Al": 8.5, "Fe": 12.0, "polymers": 35}, "cost_per_kg": -0.02},
    {"lot_id": "FLR-20261101-049", "category": "C1", "mass_kg": 100000, "assay": {"Fe": 28.0, "Mn": 6.0, "TiO2": 1.2}, "cost_per_kg": 0.025},
    {"lot_id": "FLR-20261101-050", "category": "D1", "mass_kg": 5000, "assay": {"Zr": 12.0, "In": 0.004, "Y": 0.0027, "Co": 0.084}, "cost_per_kg": 0.03}
  ],
  "constraints": {
    "stage2_polymer_volume_L": 50,
    "stage5_Al_mass_kg": 100,
    "stage7_Fe_mass_kg": 175,
    "stage8_mineral_mass_kg": 200,
    "moisture_pct": 25,
    "particle_P80_mm": 150
  },
  "market_prices": {"Au": 95000, "Ag": 1200, "Pd": 65000, "Cu": 9.50, "Al": 2.30, "In": 320, "Nd": 70, "Dy": 400, "Co": 35}
}
```

### Appendix D: Revision History

| Rev | Date | Author | Changes |
|-----|------|--------|---------|
| 1.0 | 2026-11-01 | CSM Fabrication Division | Initial release — complete feedstock specification for Aegis-Forge I |

---

*End of PROD-13: Feedstock Specifications (Categories A-D, Pre-Processing)*
*CSMFAB000000000113 — Product Document 13 of 40*
*Next: PROD-14 — Stage 0-1: Acoustic & Drying*