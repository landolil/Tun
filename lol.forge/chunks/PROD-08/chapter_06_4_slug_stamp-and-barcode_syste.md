## 4. Slug Stamp-and-Barcode System — Traceability Architecture

Before cooling sets, a ZrO₂ ceramic stamp head presses an alphanumeric code into each slug. This traceability is essential for Phoenix Protocol — knowing the full provenance of recycled material from source through every transformation.

### 4.1 Stamp System Mechanical Design

**Stamp Head:** 3Y-TZP ZrO₂ ceramic, 30mm × 5mm face, 0.3mm character depth
**Character Set:** Alphanumeric (A-Z, 0-9) + 4 special symbols (/, -, :, .) = 40 characters
**Font:** 3mm × 2mm dot-matrix (5×7 pattern), laser-etched into stamp face
**Actuation:** KNbO₃-BaTiO₃ piezoelectric stack, 50μm stroke, 2 kN force
**Cycle Time:** 0.8 seconds (extend → dwell 0.2s → retract)
**Alignment:** FBG-guided position verification (±0.02 mm accuracy)

```
STAMP FORMAT — 24 CHARACTERS
┌─────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│  BATCH-YYYYMMDD-NNN-P-TTTT-SSSS                                             │
│                                                                              │
│  │       │       │ │   │                                                    │
│  │       │       │ │   └─ Sequence within batch (0001-9999)                │
│  │       │       │ └──── Port of origin (1-8, 4a, 4b, 6-PM, 7-RE)          │
│  │       │       └────── Stage temperature band (°C, 4 digits)             │
│  │       └───────────── Batch number within day (001-999)                  │
│  └───────────────────── Date (YYYYMMDD)                                    │
│                                                                              │
│  EXAMPLE: BATCH-20261031-042-5-0680-0015                                   │
│   = Batch 42 on Oct 31 2026, Port 5 (Al), 680°C stage, slug #15            │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 4.2 Barcode / Data Matrix Encoding

**Primary:** Data Matrix ECC200 (ISO/IEC 16022) — 18×18 modules, 4mm × 4mm
**Encoded Data (JSON compact):**
```json
{
  b: 20261031-042,    // Batch ID
  p: 5,               // Port (string for 4a, 4b, 6-PM, 7-RE)
  t: 680,               // Stage temp °C
  s: 15,                // Sequence
  m: Al-6061,         // Material grade (from LIBS)
  w: 1.987,             // Mass kg (load cell)
  c: 2026-10-31T14:23:12Z  // Timestamp UTC
}
```

**Secondary:** Human-readable alphanumeric stamp (as above)
**Tertiary:** RFID tag (optional, for high-value streams S-04, S-08, S-10)
- Tag: Passive UHF, ZrO₂-encapsulated, survives 1600°C
- Range: 3m (handheld), 10m (portal)
- Memory: 512 bytes (full genealogy)

### 4.3 Traceability Database Schema

**Database:** SQLite (local, air-gapped) + PostgreSQL (networked, CSMFAB MES)
**Table: `slug_registry`**

| Column | Type | Description |
|---|---|---|
| slug_id | UUID | Primary key (generated at stamp) |
| batch_id | TEXT | BATCH-YYYYMMDD-NNN |
| port | TEXT | Port identifier |
| stage_temp_c | INTEGER | Stage temperature |
| sequence | INTEGER | Sequence within batch-port |
| material_grade | TEXT | LIBS-assigned grade |
| mass_kg | REAL | Measured mass |
| stamp_time | TIMESTAMP | UTC stamp time |
| demold_time | TIMESTAMP | UTC demold time |
| libs_spectrum_hash | TEXT | SHA256 of LIBS spectrum |
| downstream_route | TEXT | DIRECT / REFINEMENT / SALE |
| downstream_machine | TEXT | Target machine ID (113-119) |
| phoenix_generation | INTEGER | 0 = virgin, 1+ = recycled |

**Phoenix Protocol Closure:** When a slug reaches end-of-life and re-enters as Category D feedstock, its `phoenix_generation` increments. The forge queries the registry to optimize processing parameters for known material history.

### 4.4 Stamp Verification Protocol

1. **Pre-stamp:** Mold FBG confirms slug temperature < 400°C (stampable range)
2. **Stamp:** Piezo actuator extends, dwell 200ms, retract
3. **Verify:** Machine vision (PMMA POF endoscope) reads stamp → OCR → compare to expected
4. **Log:** Write to `slug_registry` with timestamp
5. **Barcode:** Laser-etch Data Matrix adjacent to stamp (same ZrO₂ head, different tip)
6. **RFID:** Write tag (if applicable) → verify readback
7. **Release:** Only after all 3 identifiers match → conveyor advances

**Failure Modes:**
- Stamp illegible (OCR fail) → Flag for manual re-stamp at demold station
- Barcode unreadable → Re-etch (laser has 3 retries)
- RFID write fail → Log warning, continue without RFID (non-blocking)
- Registry write fail → Local buffer → sync when DB available (air-gap tolerant)



