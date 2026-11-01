## 6. Pre-Processing Requirements Per Category

### 6.1 Universal Pre-Processing Flow (All Categories)

```
FEEDSTOCK RECEIVING
       │
       ▼
[RADIATION SCREEN] ──► REJECT (>50 µR/hr NORM) or SEGREGATED FEED
       │
       ▼
[XRF HAZARD SCREEN] ──► REJECT (Hg, Be, As > threshold) or SEGREGATED FEED
       │
       ▼
[FERROUS SEPARATION] ──► NdFeB Halbach Belt (PROD-11)
       │                    │
       │                    └─► FERROUS SLUG MOLD (PROD-08)
       ▼
[BFRP SHREDDER] ──► P80 < 150mm
       │
       ▼
[STAGE 0 ACOUSTIC PRE-CHAMBER] (PROD-14)
       │                    │
       │                    ├─► LF 20-200 Hz (15 min) — matrix loosening
       │                    └─► US 40 kHz (15 min) — fine grain liberation
       ▼
[MOISTURE CHECK] ──► IF >25% ──► PRE-DRY 80°C (entry chamber)
       │
       ▼
[BLENDING & ASSAY] ──► XRF at hopper → Blend Algorithm (PROD-11 Sec 1.5)
       │
       ▼
[VIBRATORY FEEDER] ──► KNbO₃-BaTiO₃ ultrasonic drive → DRUM ENTRY
```

### 6.2 Category-Specific Pre-Processing Parameters

| Parameter | Category A | Category B | Category C | Category D |
|-----------|------------|------------|------------|------------|
| **Ferrous Separation** | Mandatory (magnet extraction) | Mandatory (belt) | Optional (slag) | Not needed (D1-D4) |
| **Shred Target** | P80 < 150mm | P80 < 150mm | P80 < 150mm (agglomerate if <50µm) | D1: acoustic only; D2: solvolysis; D3: thermal; D4: direct |
| **Moisture Limit** | <15% (battery-free) | <25% | <10% (tailings) | <5% (ceramic) |
| **Stage 0 Duration** | 15 min LF + 15 min US | 20 min LF + 10 min US | 30 min LF + 15 min US | 20 min LF + 20 min US |
| **Hazard Screening** | Battery, Hg, PCB, Be | Asbestos, Pb, PCB | NORM, acid-generating sulfides | None (known composition) |
| **Blending Weight** | 15-30% of batch | 20-40% of batch | 25-40% of batch | 10-20% of batch |

### 6.3 Sizing Requirements

| Feedstock Type | Pre-Shred Max | Post-Shred P80 | Post-Shred P50 | Notes |
|----------------|---------------|----------------|----------------|-------|
| Whole electronics | 300mm | <150mm | <80mm | Battery removed first |
| PCB panels | 400mm | <150mm | <70mm | Depanel first |
| Motors/drives | 200mm | <100mm | <50mm | Rotor/stator separate |
| C&D debris | 500mm | <150mm | <80mm | Wet suppression |
| Tires (whole) | 1200mm | <150mm (2-pass) | <60mm | Steel belt removed pass 1 |
| Mineral concentrates | 50mm | <150mm | <50mm | Already sized |
| Tailings (fine) | N/A | Agglomerate 10-20mm | — | CBPC binder |
| Aegis-C panels | 600mm (panel) | Acoustic only | — | No shred — liberation only |

### 6.4 Drying Requirements

| Category | Typical Moisture | Pre-Dry Threshold | Pre-Dry Method | Target Moisture |
|----------|------------------|-------------------|----------------|-----------------|
| A (Electronics) | 5-10% | >15% | Entry chamber 80°C, 30 min | <5% |
| B (MRF/C&D) | 15-30% | >25% | Entry chamber 80°C, 60 min | <15% |
| C (Mineral) | 2-8% (tailings up to 20%) | >10% | Entry chamber 80°C, 45 min | <5% |
| D (Phoenix) | <2% | N/A | N/A | <2% |

**Stage 1 IR Drying Capacity (PROD-14):** 50 kg water/hr evaporation at 150°C. Batch moisture load must not exceed 50 kg water per 20-min Stage 1 dwell.

### 6.5 Contamination Limits — Rejection Thresholds

| Contaminant | Limit | Detection Method | Action if Exceeded |
|-------------|-------|------------------|-------------------|
| **Li-ion batteries** | 0 (zero tolerance) | X-ray + density sort | Manual removal, separate LiFePO₄ recovery line |
| **Mercury** | <1 ppm | XRF + cold vapor AAS | Segregated feed, Hg capture Stage 1 |
| **PCBs (polychlorinated biphenyls)** | <50 ppm | GC-MS screening | Thermal destruction Stage 3 (700°C confirmed) |
| **Asbestos** | 0 (zero tolerance) | PLM microscopy | Sealed feed, Stage 8 capture in slag |
| **Radioactive (NORM)** | <50 µR/hr | Gamma spectrometer | Shielded feed, Stage 7/8 co-collection |
| **Beryllium** | <10 ppm | XRF Be detection | Segregated feed, Stage 6 capture |
| **Cyanide** | <10 ppm | Colorimetric | Alkaline chlorination pre-treatment |
| **Free liquids** | 0 | Visual + gravimetric | Reject / pre-drain |

---
