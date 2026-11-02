## Chapter 4: Supply Chain Architecture — Mine to Magnet to Motor

### 4.1 End-to-End Flow Architecture

```
CHILEAN MINE (DOC-16..20)
    │
    ├── IOCG: Norte Grande/Chico (Alpha-1..7)
    ├── Porphyry: Zona Central (Alpha-7..11)
    ├── Ion-Adsorption: Sur/Austral (Bravo-6,8)
    ├── Urban Mining: Santiago/Concepción (Bravo-5,7)
    └── Epithermal/Coal: Sur/Austral (Alpha-13,14,17)
    │
    ▼
AEGIS-FORGE CLUSTERS (Stage 0-8)
    │
    ├── Stage 0-3: Liberation, drying, organics removal
    ├── Stage 4: Low-Temp (Co, Ni, REE from clays/catalysts)
    ├── Stage 5: Al window
    ├── Stage 6: Cu window
    ├── Stage 7: Fe window (magnetite → Fe slugs)
    └── Stage 8: REE Separation (Nd/Dy/Sm/Tb/Co oxides)
    │
    ▼
SEPARATION PRODUCTS (Chile, Qualifying Country)
    │
    ├── Nd₂O₃ ≥99.99% → Metal Reduction
    ├── Dy₂O₃ ≥99.99% → Metal Reduction
    ├── Pr₆O₁₁ ≥99.99% → Metal Reduction
    ├── Sm₂O₃ ≥99.99% → Metal Reduction
    ├── Co₃O₄ ≥99.9% → Metal Reduction
    └── ZrO₂ (mold recycle) / ZrCl₄ (byproduct)
    │
    ▼
METAL REDUCTION (Chile/US/Japan — Qualifying Countries)
    │
    ├── Nd: Ca-reduction (Nd₂O₃ + 3Ca → 2Nd + 3CaO) → Nd ≥99.5%
    ├── Dy: Ca-reduction (Dy₂O₃ + 3Ca → 2Dy + 3CaO) → Dy ≥99.5%
    ├── Pr: Ca-reduction → Pr ≥99.5%
    ├── Sm: Ca-reduction → Sm ≥99.5%
    └── Co: H₂-reduction → Co ≥99.9%
    │
    ▼
ALLOY PRODUCTION (US/Japan — Qualifying Countries)
    │
    ├── Nd-Dy-Fe-B Master Alloy (Nd 28-32%, Dy 1-7%, Fe bal.)
    ├── Sm-Co Master Alloy (Sm 25-35%, Co bal., Fe/Cu/Zr)
    ├── Fe₁₆N₂ Precursor (Fe + N₂ plasma)
    └── Fe-Co Alloy (Fe 50-70%, Co 30-50%)
    │
    ▼
MAGNET MANUFACTURING (US/Japan — DFARS Compliant)
    │
    ├── Sintered NdFeB (N42H-N55UH) — MP Materials, Noveon, Electron Energy
    ├── Sintered SmCo (1:5, 2:17) — Electron Energy, VAC, Arnold
    ├── Fe₁₆N₂ (Niron) — α"-Fe₁₆N₂ 27 MGOe
    └── Bonded/Hybrid — various
    │
    ▼
MOTOR INTEGRATION (CSM — Carrington Storm Motors)
    │
    ├── Fe₁₆N₂ 27 MGOe traction motor
    ├── NdFeB N52EH high-temp motor
    ├── SmCo 2:17 32 MGOe aerospace motor
    └── Hybrid topologies
```

---

### 4.2 Chilean Insertion Point Analysis

| Supply Chain Stage | Location | Qualifying Country? | Chilean Value Capture |
|--------------------|----------|---------------------|----------------------|
| **Mining** | Chile (22 districts) | ✅ Chile | 100% (royalties, FBC/CDC) |
| **Aegis-Forge Processing** | Chile (23 clusters) | ✅ Chile | 100% (OPEX, CAPEX, jobs) |
| **Stage 8 Separation** | Chile | ✅ Chile | 100% (separation margin) |
| **Metal Reduction** | Chile/US/Japan | ✅ All qualifying | 30-50% (if in Chile) |
| **Alloy Production** | US/Japan | ✅ Both | 0% (downstream) |
| **Magnet Manufacturing** | US/Japan | ✅ Both | 0% (downstream) |
| **Motor Integration** | US (CSM) | ✅ US | 0% (downstream) |

**Strategic Recommendation**: **Locate metal reduction in Chile** (qualifying country via CPTPP) to capture **full value chain from mine to master alloy**. Requires **Ca-metal supply** (imported or local from CaO electrolysis).

---

### 4.3 Logistics and Traceability

| Flow | Mode | Frequency | Traceability |
|------|------|-----------|--------------|
| **Mine → Aegis-Forge** | Rail (FCAB/EFE) / Truck | Daily containers | Blockchain heat/lot |
| **Aegis-Forge → Metal Reduction** | ISO containers (μ-metal) | Weekly | Blockchain + MIL-STD-1540 |
| **Metal → Alloy** | Sealed containers | Weekly | Heat/lot + DFARS cert |
| **Alloy → Magnet** | Sealed containers | Weekly | Heat/lot + MIL-STD-1540 |
| **Magnet → Motor** | JIT delivery | Daily | Heat/lot + CSM QC |

**Blockchain Ledger**: Every container = immutable record (heat, lot, grade, origin, transit, assay). **DFARS audit trail** from Chilean ore to US motor.

---

### 4.4 Chapter 4 Summary

Supply chain architecture inserts **Chile at mine + Aegis-Forge + separation + metal reduction** — all in **qualifying countries (Chile/US/Japan)**. **Blockchain traceability** from ore to motor satisfies DFARS audit. **Metal reduction in Chile** captures maximum value (target: 60% of magnet value at mine gate).

**Next Chapter**: Chapter 5 — Recycling Loop: NdFeB Scrap → Aegis-Forge Stage 4/8 → Circular Nd/Dy.

---
