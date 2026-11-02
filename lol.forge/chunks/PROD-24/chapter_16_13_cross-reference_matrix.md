## 13. Cross-Reference Matrix

| Section | Upstream Dependencies | Downstream Dependencies | Interface |
|---------|----------------------|------------------------|-----------|
| 1. Framework | PROD-01, PROD-02 | PROD-23, PROD-25, PROD-37 | Coupling strategy |
| 2. Material Props | PROD-12, PROD-04, 06, 09 | PROD-23 PID, PROD-25 FEA, PROD-37 ROM | 50+ material cards |
| 3. EM-Thermal FEA | PROD-03, PROD-10 | PROD-23 RTU PID, PROD-25 thermal loads | $P_{ind}(T)$, $B(T)$ |
| 4. Drum FEA | PROD-04, PROD-09 | PROD-25 stress, PROD-28 NDT | $\sigma(T, \omega, P)$ |
| 5. Cascade CFD | PROD-14-21, PROD-02 | PROD-23 cascade FF, PROD-27 fixture | $h_{eff}$, RTD, SI |
| 6. Stage Models | PROD-14-21 | PROD-23 cascade, PROD-37 twin | $T(z,t)$, $X(t)$ |
| 7. Vessel FEA | PROD-06, PROD-04 | PROD-25 vessel, PROD-29 deploy | $T_{vessel}(T_{drum})$ |
| 8. Transient Cycling | PROD-02, PROD-23 | PROD-25 fatigue, PROD-30 PM | $N_f$, life |
| 9. V&V Plan | All | PROD-28 QA, PROD-39 T&E | Acceptance criteria |
| 10. UQ | All | PROD-37 ROM calibration | Sobol indices |
| 11. ROM | 3,4,5,6,7 | PROD-37 digital twin | ROM export JSON |
| 12. Scaling | All | PROD-30 scale-up, PROD-40 roadmap | Dimensionless groups |

---
