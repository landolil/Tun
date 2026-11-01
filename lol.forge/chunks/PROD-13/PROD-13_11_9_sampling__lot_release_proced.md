## 9. Sampling & Lot Release Procedures

### 9.1 Lot Definition

| Feedstock Source | Lot Definition | Minimum Lot Size |
|------------------|----------------|------------------|
| **Contract Supplier** | Single shipment (truck/railcar) | 20,000 kg |
| **MRF Output** | 8-hour production shift | 50,000 kg |
| **Mine/Quarry** | Daily crusher output | 100,000 kg |
| **Phoenix Returns** | Palletized shipment (20 panels) | 308 kg |
| **Internal Generation** | Single production batch | 500 kg |

### 9.2 Sampling Protocol (Per ISO 3082 Adapted)

**Primary Increment Collection:**

1. **Stationary lot (pile/bin):** 30 increments minimum, distributed across 3 vertical sections (top/middle/bottom), 10 increments each section
2. **Moving stream (conveyor/belt):** Cross-stream cutter, 1 increment per 500 kg, minimum 40 increments
3. **Increment mass:** 1 kg minimum (coarse) → 50g analytical subsample

**Sample Preparation (ISO 3082 / ASTM E122):**

```
GROSS SAMPLE (30-40 kg)
       │
       ▼
[RIFFLE SPLITTER] ──► 1/2 ──► [RIFFLE SPLITTER] ──► 1/2 ──► ... (repeat)
       │                    │
       ▼                    ▼
  REJECTED             ANALYTICAL SAMPLE (200g)
                              │
                              ▼
                    [PULVERIZER] → <75 µm (200 mesh)
                              │
                              ▼
                    [SPLIT] → 4 × 50g subsamples
                              │
                              ├──► XRF (10g pressed pellet)
                              ├──► ICP-MS (0.5g acid digest)
                              ├──► XRD (5g powder)
                              └──► Archive (35g, sealed, labeled)
```

### 9.3 Lot Release Decision Matrix

| Assay Result vs. Spec | Action |
|----------------------|--------|
| All parameters within acceptance criteria | **RELEASE** — Blend per algorithm |
| 1-2 minor parameters marginal (within 10% of limit) | **CONDITIONAL RELEASE** — Blend with compensatory feedstock, flag for Stage monitoring |
| Any parameter exceeds rejection threshold | **REJECT** — Return to supplier or segregated hazardous processing |
| NORM >50 µR/hr | **SEGREGATED FEED** — Shielded handling, Stage 7/8 only |
| Asbestos/PCB/Hg/Be detected | **QUARANTINE** — Specialized pre-treatment or disposal |

### 9.4 Lot Documentation & Traceability

Each released lot receives a **Feedstock Lot Record (FLR)** containing:

| Field | Format | Example |
|-------|--------|---------|
| **FLR Number** | FLR-YYYYMMDD-XXX | FLR-20261101-047 |
| **Category** | A/B/C/D + Subcategory | A2-PCB-Grade1 |
| **Source** | Supplier/Facility ID | ERI-Fresno-CA |
| **Mass** | kg (net) | 22,500 kg |
| **Date Received** | ISO 8601 | 2026-11-01T06:00:00Z |
| **Assay Results** | JSON (element: mass%) | {"Cu": 24.5, "Au": 0.032, ...} |
| **Physical Tests** | JSON | {"P80": 112, "moisture": 8.2, "bulk_density": 1.8} |
| **Hazard Screen** | PASS/FAIL + values | PASS (Hg: 0.3ppm, NORM: 12µR/hr) |
| **Blend Assignment** | Batch ID + mass fraction | BATCH-20261101-03: 15% (75 kg) |
| **Release Authority** | QA Manager ID | QA-MGR-003 |
| **Release Timestamp** | ISO 8601 | 2026-11-01T08:45:00Z |

---
