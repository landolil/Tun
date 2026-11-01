## Appendix F: Maintenance Schedule

| Interval | Task | Duration | Parts | Personnel |
|----------|------|----------|-------|-----------|
| **Shift** | Visual inspection (blades, liners, belt) | 10 min | — | Operator |
| **Daily** | h-BN wear scan (optical) | 15 min | — | Operator |
| **Daily** | Moisture sensor zero-check | 5 min | — | Tech |
| **Weekly** | Belt tension check + tracking | 30 min | — | Tech |
| **Weekly** | Bearing temperature trend (FBG) | 10 min | — | Tech |
| **Monthly** | Blade edge measurement (caliper) | 1 hr | — | Tech |
| **Monthly** | Liner thickness gauge (4 corners) | 30 min | — | Tech |
| **Quarterly** | Rotor removal, full inspection | 4 hr | — | 2 Techs |
| **Quarterly** | Separator magnet inspection | 1 hr | — | Tech |
| **Annually** | Blade row replacement (Category C) | 2 hr | 4 blades | 2 Techs |
| **Annually** | Liner panel replacement (if needed) | 3 hr | 24 panels | 2 Techs |
| **2 Years** | Si3N4 bearing replacement | 4 hr | 2 bearings | 2 Techs |
| **5 Years** | Housing re-inspection (UT scan) | 8 hr | — | NDT Tech |
| **10 Years** | Major overhaul (rotor, motor, seals) | 24 hr | Full kit | Team |

---

*End of PROD-11: Feed Preparation & Shredding*
*Total Lines: ~950+ (including appendices)*
*Next: PROD-12 All-Aegis Material BOM Deep-Dive*

The feedstock travels through a deterministic pre-processing sequence before entering the ZrB₂-SiC drum. Each step is designed to maximize downstream separation fidelity while maintaining the all-dielectric constraint.

```
FEED HOPPER (5 m³ capacity)
    │
    ▼
[FERROUS SEPARATION BELT] — Permanent magnet NdFeB, 1.2T surface field
    │   Removes 40-60% bulk ferrous → direct to ferrous slug collection
    │   (bypasses drum for Category B ferrous scrap)
    ▼
[BFRP-BLADE SHREDDER] — 800mm rotor, 32 BFRP blades, PEEK CF40 liners
    │   Reduces all feedstock to <150mm maximum dimension
    │   Throughput: 5 ton/hr (Category A), 8 ton/hr (Category B/C/D)
    ▼
[ACOUSTIC PRE-CHAMBER] — Stage 0: LF (20-200 Hz) + Ultrasonic (40 kHz)
    │   Mineral liberation from rock matrix (Category C)
    │   BFRP/Elium® delamination (Category D)
    │   Duration: 1-5 min depending on feedstock
    ▼
[MOISTURE CHECK] — Capacitive sensor array, 10 Hz scan
    │   If >25% moisture: divert to 80°C pre-dry chamber (15 min)
    │   If ≤25%: direct to drum feed gate
    ▼
[DRUM FEED GATE] — Ti₃AlC₂ actuator, ZrO₂ ceramic piston
    │   Batch loading: 500 kg per cycle (226L drum working volume)
    │   Argon backfill to 0.5 bar, purge O₂ <100 ppm
    ▼
[ZrB₂-SiC DRUM] — Thermal cascade begins at Stage 1 (80°C)
```

---
