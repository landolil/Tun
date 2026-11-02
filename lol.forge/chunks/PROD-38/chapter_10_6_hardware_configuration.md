## 6. Hardware Configuration

### 6.1 Drum Generations & Traceability

| Generation | Spec Baseline | Key Changes | Serial Range | Status |
|------------|---------------|-------------|--------------|--------|
| **Gen-1** | PROD-04 rev 1.0 | Initial design, Liner A/B/C, 48 FBG/zone | DRM-2025-00001 to 00010 | Retired (test) |
| **Gen-2** | PROD-04 rev 2.1 | Liner B +2mm, FBG 64/zone, YInMn glaze | DRM-2026-00011 to 00050 | Production |
| **Gen-3 (ECO-1042)** | PROD-04 rev 3.2 | Liner B +2mm, FBG 64/zone, YInMn glaze, port reinforcement | DRM-2026-00051+ | In production |

**QR Traceability:** Each drum carries laser-etched QR code on cold flange:
```
CUUID:CI-02-01-DRUM-2026-00042|GEN:3|BATCH:ZRB2-2026-087|FAT:CT01-10|DATE:20261015
```

### 6.2 Vessel Lots & Filament Winding Parameters

| Lot | Spec Baseline | Layup | Aerogel | Glaze | Serial Range |
|-----|---------------|-------|---------|-------|--------------|
| **VSL-2026-A** | PROD-06 rev 2.0 | ±18°/90° | 50 mm λ=0.010 | YInMn Blue SRI=115 | VSL-2026-001 to 010 |
| **VSL-2026-B (ECO-1038)** | PROD-06 rev 2.1 | ±18°/90° | 50 mm λ=0.010 | YInMn Blue SRI=115, +crack detect | VSL-2026-011+ |

### 6.3 Module Variants & Interchangeability

| Module | Variants | Interchangeability | Qualification |
|--------|----------|---------------------|---------------|
| **Zone RTU** | Standard (all 8) | Fully interchangeable | FA: 3 units CT-01..10 |
| **Inverter** | Z1-2 (100 kHz), Z3 (50 kHz), Z4-5 (10 kHz), Z6 (5 kHz), Z7 (2 kHz), Z8 (1 kHz) | Frequency-specific only | FA: 1 per frequency |
| **Port Valve** | Port 1A-8B (16 total) | Position-specific (actuator stroke) | FA: 2 per position |
| **TSN Switch** | 2× Core, 8× Edge | Core ↔ Core, Edge ↔ Edge | FA: 1 core, 2 edge |

### 6.4 Hardware Change Control

Hardware modifications follow **ECO process (Sec 3)** with additional gates:

1. **Engineering Prototype** — 1 unit built, CT tests, FA data package
2. **First Article (3 units)** — Production line, full CT, supplier FA
3. **Production Cut-in** — ECO-approved, staged per Sec 3.1, serial number break
4. **Field Retrofit** — ECO class Major/Critical, scheduled PM window, As-Maintained update

---
