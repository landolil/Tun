## Appendix D: Mesh Convergence Study Results

| Mesh Level | Elements | $T_{max}$ (°C) | $\sigma_{vm}$ (MPa) | $h_{conv}$ Stage 6 | Solve Time |
|------------|----------|----------------|---------------------|-------------------|------------|
| Coarse | 450K | 2201.5 | 410 | 650 | 120 s |
| Medium | 1.2M | 2200.3 | 392 | 685 | 380 s |
| Fine | 2.8M | 2200.0 | 385 | 700 | 950 s |
| **Extrapolated** | **∞** | **2199.8** | **382** | **708** | **—** |
| **GCI (fine)** | — | **0.14%** | **1.8%** | **2.1%** | — |

**Conclusion:** Fine mesh (2.8M elements) achieves <2% GCI for all quantities of interest. Used for all production FEA.

---

*End of CSMFAB000000000124 — PROD-24 Thermal Modeling & Simulation*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*