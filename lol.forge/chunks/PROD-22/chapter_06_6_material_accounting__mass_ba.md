## 6. Material Accounting & Mass Balance

### 6.1 Element-Level Tracking

Every element entering the Forge is tracked from **mine to return** via UUID chain:

```
UUID Structure: CSM-<Mine/Source>-<Forge Batch>-<Stage>-<Port>-<Product>-<Return Cycle>
Example: CSM-AUS-ZIRC-2026-11-02-08-21-8A-001-EMBARK-WALL-001-RTN-03
```

**Tracking Points:**
1. **Mine/Source**: Ore body, recycler, EOL depot
2. **Forge Batch**: 50 kg input, timestamped
3. **Stage**: 0-8 processing stage
4. **Port**: Exit port (1-8, PM, RE, Gas)
5. **Product**: Slug UUID, composition, grade
6. **Downstream**: CSMFAB product or commercial sale
7. **Return Cycle**: 0 = virgin, 1+ = recycled

### 6.2 Mass Balance Closure (Per 50 kg Batch)

| Element | Virgin Input (g) | EOL Return (g) | Stage Exit (g) | Recovery % | Loop Closure |
|---------|-----------------|----------------|----------------|------------|--------------|
| **Zr** | 450 | 800 | Stage 8: 1,200 | 98% | Drum material loop |
| **In** | 15 | 320 | Stage 4: 330 | 99.4% | YInMn loop |
| **Y** | 8 | 120 | Stage 8: 125 | 98% | 3Y-TZP / YInMn |
| **Nd** | 220 | 180 | Stage 7/8: 380 | 90% | Magnet loop (FOLLOW-15) |
| **Co** | 45 | 90 | Stage 7: 130 | 98% | Magnet/CoAl₂O₄ loop |
| **Cu** | 11,500 | 2,300 | Stage 6: 13,500 | 99% | Wire loop |
| **Al** | 6,000 | 1,200 | Stage 5: 7,000 | 97% | Commercial sale |
| **Fe** | 7,000 | 4,600 | Stage 7: 11,000 | 99% | Casting loop |
| **C (char)** | 4,000 | 1,800 | Stage 3: 5,500 | 95% | Adsorption/flux loop |
| **Basalt fiber** | 0 | 8,000 | Stage 3: 7,600 | 95% | BFRP loop |

**Closure Metric:** Σ(Recovered) / Σ(Input + Return) > 95% for all Tier 1 elements (Zr, In, Y, Nd, Co, Cu).

### 6.3 Reconciliation Protocol

**Daily Reconciliation (End of Shift):**
1. Forge SCADA exports batch mass balance (input → stage exits)
2. Depot WMS exports return intake (crates → disassembly output)
3. LIBS/XRF assay database exports composition data
4. Automated script compares: Σ(Input) + Σ(Return) = Σ(Outputs) ± 2%
5. Discrepancy >2% → Root cause investigation (hold affected batch)

**Monthly Audit:**
- Third-party assay of 5% random slugs (umbilical samples)
- Mass balance closure report to CSM Board
- Carbon credit verification (MgO carbonation tonnage)

---
