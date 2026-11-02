## Appendix B: FEA Model Summary

| Model | Elements | Type | DOF | Solve Time | Solver |
|-------|----------|------|-----|------------|--------|
| Drum (full 360°) | 2.8M | C3D20R | 8.4M | 4.2 hr | ABAQUS |
| Drum (45° sector) | 350K | C3D20R | 1.05M | 35 min | ABAQUS |
| Vessel (shell) | 50K | S4R | 300K | 8 min | ABAQUS |
| Vessel (solid flange) | 200K | C3D20R | 600K | 45 min | ABAQUS |
| Frame | 100K | S4R/B31 | 600K | 12 min | ABAQUS |
| Port valve (single) | 180K | C3D20R | 540K | 25 min | ABAQUS |
| Cold plate | 85K | C3D20R | 255K | 15 min | ABAQUS |
| Carousel mold | 45K | C3D20R | 135K | 8 min | ABAQUS |

**Mesh convergence (GCI):** All models < 2% GCI on primary stress results
**Hardware:** 2× AMD EPYC 9654 (96 cores each), 1.5 TB RAM

---
