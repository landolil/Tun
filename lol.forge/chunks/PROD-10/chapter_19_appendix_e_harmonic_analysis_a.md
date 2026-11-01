## Appendix E: Harmonic Analysis and IEEE 519 Compliance

### E.1 Expected Harmonic Spectrum (Per Inverter)

Class E inverter input current harmonics (dominated by DC link capacitor charging):

| Harmonic | Frequency | Magnitude (% of fundamental) | IEEE 519 Limit |
|----------|-----------|-----------------------------|----------------|
| 1 (fund) | 60 Hz | 100% | — |
| 5 | 300 Hz | 18% | 4.0% |
| 7 | 420 Hz | 12% | 4.0% |
| 11 | 660 Hz | 6% | 2.0% |
| 13 | 780 Hz | 4% | 2.0% |
| 17 | 1020 Hz | 2.5% | 1.5% |
| 19 | 1140 Hz | 2% | 1.5% |
| 23 | 1380 Hz | 1.5% | 0.6% |
| 25 | 1500 Hz | 1.2% | 0.6% |

### E.2 LCL Filter Performance

With LCL filter (L1=200μH, C=10μF, L2=50μH, R<sub>damp</sub>=2Ω):

| Harmonic | Unfiltered | Filtered | Margin |
|----------|------------|----------|--------|
| 5th | 18% | 0.8% | 5× limit |
| 7th | 12% | 0.5% | 8× limit |
| 11th | 6% | 0.3% | 6.7× limit |
| 13th | 4% | 0.2% | 10× limit |

THD after filtering: **2.1%** (well within 5% limit).

---
