## Appendix F: Reliability and MTBF Analysis

### F.1 Component Failure Rates (MIL-HDBK-217F, Ground Benign, 25°C)

| Component | Qty/Zone | λ (failures/10⁶ hrs) | Total λ/Zone |
|-----------|----------|---------------------|--------------|
| GS66516T GaN | 2 | 0.5 | 1.0 |
| LMG1210 Driver | 1 | 0.3 | 0.3 |
| Film Capacitors | 12 | 0.02 | 0.24 |
| Varactor Diodes | 4 | 0.1 | 0.4 |
| Nanocrystalline Inductor | 1 | 0.05 | 0.05 |
| Cold Plate (Cu) | 1 | 0.01 | 0.01 |
| FBG Sensors | 48 | 0.005 | 0.24 |
| PMMA POF (60m) | 1 | 0.1 | 0.1 |
| PEX-a Tubing | 10m | 0.02 | 0.02 |
| **Total per Zone** | | | **2.36** |

### F.2 System MTBF

For 8 zones in series (any zone failure stops process):
$$\lambda_{system} = 8 \times 2.36 = 18.88 \text{ failures/10}^6 \text{ hrs}$$
$$MTBF = \frac{1}{\lambda_{system}} = 52,966 \text{ hours} \approx 6.0 \text{ years}$$

With redundancy (N+1 spares for inverters): MTBF > 20 years.

---
