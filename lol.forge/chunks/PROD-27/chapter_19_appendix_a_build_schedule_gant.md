## Appendix A: Build Schedule (Gantt Detail)

### A.1 18-Month Master Schedule (Weeks 1–78)

| WBS | Task | Duration | Start | Finish | Predecessors | Resources |
|---|---|---|---|---|---|---|
| 1.1 | Powder procurement & qualification | 4 wk | W1 | W4 | — | Procurement, Matl Eng |
| 1.2 | Graphite tooling fabrication | 6 wk | W1 | W6 | — | Tooling, CNC |
| 1.3 | Drum flash sinter (FA-01) | 2 wk | W7 | W8 | 1.1, 1.2 | Sintering, QC |
| 1.4 | Drum flash sinter (FA-02/03) | 2 wk | W9 | W10 | 1.3 | Sintering, QC |
| 1.5 | Drum post-sinter machining | 2 wk | W11 | W12 | 1.4 | Machining, CMM |
| 1.6 | Liner tile fabrication | 3 wk | W5 | W7 | 1.1 | Ceramics, QC |
| 1.7 | Liner installation + FBG | 2 wk | W13 | W14 | 1.5, 1.6 | Assembly, FBG |
| 2.1 | Basalt roving qualification | 2 wk | W1 | W2 | — | Procurement, Matl Eng |
| 2.2 | Mandrel fabrication | 4 wk | W1 | W4 | — | Tooling, CNC |
| 2.3 | Vessel winding (FA) | 3 wk | W5 | W7 | 2.1, 2.2 | Winding, QC |
| 2.4 | Vessel winding (production) | 2 wk | W8 | W9 | 2.3 | Winding, QC |
| 2.5 | Aerogel infusion + dry | 2 wk | W10 | W11 | 2.4 | Insulation, QC |
| 2.6 | Glaze application + cure | 1 wk | W12 | W12 | 2.5 | Coatings, QC |
| 2.7 | Flange molding + machining | 2 wk | W6 | W7 | 2.1 | Molding, CNC |
| 3.1 | Cu tube + insulation prep | 2 wk | W1 | W2 | — | Machining, QC |
| 3.2 | Coil winding (8 zones) | 4 wk | W3 | W6 | 3.1 | Winding, QC |
| 3.3 | Vacuum impregnation + cure | 1 wk | W7 | W7 | 3.2 | Impregnation, QC |
| 3.4 | FBG embed + cold plate | 2 wk | W8 | W9 | 3.3 | FBG, Bonding |
| 3.5 | Resonance test (8 zones) | 1 wk | W10 | W10 | 3.4 | Test, QC |
| 4.1 | GaN/module parts kitting | 2 wk | W1 | W2 | — | Procurement, Kitting |
| 4.2 | Module assembly (×8) | 3 wk | W8 | W10 | 4.1 | Assembly, Test |
| 4.3 | Module functional test | 1 wk | W11 | W11 | 4.2 | Test, QC |
| 4.4 | TSN/POF network build | 2 wk | W10 | W11 | — | Network, QC |
| 5.1 | Frame pultrusion + machining | 2 wk | W8 | W9 | — | Pultrusion, CNC |
| 5.2 | Isolator procurement | 4 wk | W1 | W4 | — | Procurement |
| 5.3 | Carousel + bearing assembly | 2 wk | W10 | W11 | 5.1 | Assembly, QC |
| 6.1 | Integration fixture setup | 1 wk | W20 | W20 | — | Tooling, QC |
| 6.2 | System integration | 4 wk | W21 | W24 | All SG | Integration, QC |
| 6.3 | FAT (CT-01 to CT-10) | 3 wk | W25 | W27 | 6.2 | Test, QC, All Eng |

**Critical Path:** 1.1→1.2→1.3→1.4→1.5→1.7→6.2→6.3 (Drum)  
**Critical Path:** 2.2→2.3→2.4→2.5→2.6→6.2→6.3 (Vessel)  
**Critical Path:** 3.1→3.2→3.3→3.4→3.5→6.2→6.3 (Electronics)

### A.2 Float Summary

| Assembly | Total Float | Free Float | Risk Mitigation |
|---|---|---|---|
| A-01 | 0 wk | 0 wk | Dual graphite die sets, parallel sinter furnaces |
| A-06 | 0 wk | 0 wk | Dual mandrels, 2-shift winding |
| A-09 | 0 wk | 0 wk | Parallel winding cells (2×) |
| A-13 | 0 wk | 0 wk | Pre-staged integration, dedicated crew |
| A-14 | 0 wk | 0 wk | 24/7 test operations, parallel CT execution |

---
