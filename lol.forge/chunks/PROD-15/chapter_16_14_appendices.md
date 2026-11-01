## 14. Appendices

### Appendix A: Stage 2 Quick-Reference Card

| Parameter | Value |
|-----------|-------|
| **Temperature** | 150-450°C |
| **Duration** | 30 min |
| **Drum Speed** | 150 RPM (12.6 G) |
| **Induction** | 0-50 kW @ 100 kHz |
| **Atmosphere** | N₂ + NaHCO₃ aerosol |
| **Key Hardware** | BFRP bowl, ZrO₂ liner, dual ports |
| **Output** | Light (PP/PE) + Heavy (PET/PVC) fractions |
| **Critical Control** | HCl <50 ppm (NaHCO₃ injection) |
| **Energy/Batch** | 54.25 kWh (40.25 net) |

### Appendix B: Polymer Melt Properties Summary Table

| Polymer | Tm (°C) | ρ_melt (g/cm³) | η @ Tm+50°C (Pa·s) | Td (°C) | PVC Risk | Ea,flow (kJ/mol) |
|---------|---------|----------------|-------------------|---------|----------|-----------------|
| LDPE | 110 | 0.78 | 150 | 350 | None | 28 |
| HDPE | 130 | 0.78 | 300 | 360 | None | 35 |
| PP | 165 | 0.74 | 250 | 320 | None | 38 |
| PS | 240 | 1.06 | 500 | 340 | None | 45 |
| PVC | 180 | 1.40 | 1000* | 210 | **HIGH** | 105* |
| ABS | 220 | 1.07 | 800 | 300 | None | 90 |
| PET | 255 | 1.35 | 1200 | 300 | None | 100 |
| PC | 280 | 1.20 | 2000 | 340 | None | 110 |
| PEEK | 341 | 1.22 | 5000 | 580 | None | 165 |
| PTFE | 327 | 1.65 | 10000 | 400 | None | 145 |

*Viscosity rises during dehydrochlorination; Ea increases post-degradation.

### Appendix C: Centrifuge Material BOM (From PROD-12)

| # | Component | Material | Qty | Lead Time |
|---|-----------|----------|-----|-----------|
| 1 | Bowl casing | BFRP/Elium® filament wound | 1 | 4 weeks |
| 2 | Bowl liner | ZrO₂ 3Y-TZP ceramic | 1 | 6 weeks |
| 3 | Drive motor | KNbO₃-BaTiO₃ ultrasonic | 1 | 8 weeks |
| 4 | Bearings | Si₃N₄ ceramic hybrid | 2 | 4 weeks |
| 5 | Seals | ZrO₂ face + PEEK CF40 spring | 2 | 3 weeks |
| 6 | Discharge ports | Ti₃AlC₂ actuator + ZrO₂ piston | 2 | 8 weeks |
| 7 | Candle filters | α-SiC ceramic | 12 | 2 weeks |
| 8 | Filter housing | BFRP/Elium® | 1 | 4 weeks |
| 9 | Vacuum vent | ZrO₂ ceramic tube | 1 | 3 weeks |
| 10 | Vacuum pump | Dry scroll (commercial) | 1 | 1 week |
| 11 | NaHCO₃ feeder | BFRP/PEEK screw, KNbO₃ drive | 2 (redundant) | 4 weeks |
| 12 | HCl sensor | PMMA POF + absorption | 2 (redundant) | 2 weeks |

### Appendix D: Operating Procedures Summary

**STARTUP SEQUENCE (Cold to Run):**
1. Bowl at 25°C → Purge N₂ 30 min (O₂ <2%)
2. Ramp induction 10°C/min to 150°C (no feed)
3. Verify ZrO₂ liner temp uniform (POF Bragg, ΔT <5°C)
4. Start centrifuge 10 RPM → 150 RPM over 5 min
5. Verify bearing temps <80°C, vibration <2 mm/s
6. Start NaHCO₃ feeder (dry run, verify flow)
7. Start melt pump, prime filters (N₂ purge lines)
8. Vacuum pump on, verify 50 mbar
9. **FEED AUTHORIZED** — all green lights

**SHUTDOWN SEQUENCE (Run to Cold):**
1. Stop feed, run 5 min empty (purge melt)
2. Discharge ports open, clear residual melt to molds
3. Stop centrifuge, hold N₂ purge
4. Stop induction, cool 20°C/min (thermal shock limit)
5. At 150°C: stop vacuum, stop melt pump
6. At 80°C: stop N₂ purge, vent to atmosphere
7. **SAFE FOR MAINTENANCE**

### Appendix E: Revision History

| Rev | Date | Author | Changes |
|-----|------|--------|---------|
| 1.0 | 2026-11-01 | CSM Fabrication Division | Initial release — complete Stage 2 specification |

---

*End of PROD-15: Stage 2 Polymer Flow & Separation*
*CSMFAB000000000115 — Product Document 15 of 40*
*Next: PROD-16 — Stage 3: Pyrolysis & Char*