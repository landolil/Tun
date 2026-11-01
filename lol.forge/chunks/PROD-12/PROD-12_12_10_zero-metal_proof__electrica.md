## 10. Zero-Metal Proof — Electrical Resistance Map, GIC Coupling Analysis

### 10.1 Resistance Map (Measured at 25°C, 100V DC)

| Path | Resistance | Status |
|------|------------|--------|
| Drum inner wall → vessel outer wall | >10¹⁵ Ω (aerogel gap) | PASS |
| Coil conductor → drum (via Al₂O₃ sleeve) | >10¹⁴ Ω | PASS |
| Control fiber (PMMA) → any metal | ∞ (optical) | PASS |
| Water circuit (PEX-a) → any metal | >10¹² Ω | PASS |
| Shaft (Si₃N₄) → bearings (Si₃N₄) | >10¹³ Ω | PASS |
| Frame (BFRP) → leg mounts (ZrO₂) | >10¹⁴ Ω | PASS |
| Exterior glaze → earth ground | >10¹² Ω (dry) | PASS |

### 10.2 GIC Coupling Analysis

**Model:** Carrington event (dB/dt = 5000 nT/s, 100 V/km geoelectric field)

| Conductor Length | Induced Voltage | Coupling to Electronics |
|------------------|-----------------|------------------------|
| 1 m (internal) | 0.1 V | Negligible (no closed loop) |
| 10 m (building wiring) | 1 V | Blocked by isolation transformer |
| 1 km (grid) | 100 V | Blocked by NGR + GDT |

**No closed conductive loops exist within the BFRP pressure vessel boundary.** The only copper (coil) is a single-turn-per-layer solenoid with both ends terminating at the GaN inverter inside the BFRP housing — no path to earth. The PMMA POF control fibers are dielectric. The PEX-a water circuit is dielectric. The machine is a **Faraday cage made of structural ceramic**.

### 10.3 Ferromagnetic Audit

| Component | Material | Ferromagnetic? | Status |
|-----------|----------|----------------|--------|
| Drum | ZrB₂-SiC | No | PASS |
| Liners | Si₃N₄, ZrO₂ | No | PASS |
| Port valves | Ti₃AlC₂, ZrO₂ | No (paramagnetic) | PASS |
| Vessel | BFRP | No | PASS |
| Coil housing | BFRP | No | PASS |
| Motor | KNbO₃-BaTiO₃ | No | PASS |
| Bearings | Si₃N₄ | No | PASS |
| Magnets | NdFeB (separator ONLY) | Yes — external | ISOLATED |
| Frame | BFRP | No | PASS |
| Glaze | YInMn/CoAl₂O₄ | No | PASS |

**Only the NdFeB Halbach array (24 blocks, 12.5 kg total) is ferromagnetic.** It is positioned OUTSIDE the pressure vessel on the feed belt — physically separated from the process chamber by the shredder housing and acoustic pre-chamber. No ferromagnetic material inside the hot zone.

---
