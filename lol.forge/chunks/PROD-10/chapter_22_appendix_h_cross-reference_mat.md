## Appendix H: Cross-Reference Matrix

### H.1 PROD Document Dependencies

| This Document | Depends On | Provides To |
|---------------|------------|-------------|
| PROD-10 | PROD-01 (Architecture), PROD-03 (Coil Design) | PROD-23 (Control System), PROD-24 (Thermal Modeling) |
| PROD-10 | Materials Study IV (GaN, PMMA, PEX-a) | FOLLOW-02 (Coil Optimization), FOLLOW-10 (GaN Thermal) |
| PROD-10 | CSMFAB-P003 (GIC Blocker) | FOLLOW-26 (Fire Protection), FOLLOW-27 (Rad Hardening) |

### H.2 Key Interface Parameters

| Interface | Parameter | Value | Tolerance |
|-----------|-----------|-------|-----------|
| PROD-03 → PROD-10 | Coil inductance (per zone) | 2.5–15 μH | ±5% |
| PROD-03 → PROD-10 | Coil resistance (per zone) | 5–15 mΩ | ±10% |
| PROD-10 → PROD-23 | Power command update rate | 100 ms | ±1 ms |
| PROD-10 → PROD-23 | FBG data rate | 125 Hz/sensor | ±5 Hz |
| PROD-10 → PROD-24 | Thermal model power input | 0–500 kW/zone | ±3% |
| PROD-10 → FOLLOW-10 | Cold plate flow rate | 2 L/min/module | ±0.2 L/min |

---
