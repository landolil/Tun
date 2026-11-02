## 6. Warehousing & Inventory Management

### 6.1 Warehouse Layout (Forge Site)

| Zone | Function | Area | Environment | Key Controls |
|------|----------|------|-------------|--------------|
| **A: Critical Powders** | ZrB₂, SiC, 3Y-TZP, Si₃N₄, REE | 200 m² | <10% RH, 25°C, N₂ inert | Desiccant dehumid, O₂ monitor, fire suppression (Novec) |
| **B: Composites** | Basalt roving, Elium®, PEEK CF40, PEX-a | 500 m² | 5-25°C, UV protected | Temp/humidity log, FIFO, shelf-life tracking |
| **C: Ceramics/Metals** | In, Co, Ti₃AlC₂, KNbO₃, Cu tube | 150 m² | 25°C, desiccant | Desiccant, tamper seal, ITAR cage (In) |
| **D: Consumables** | NaHCO₃, carbon, gases, PPE | 800 m² | Ambient | FIFO, min/max, Kanban |
| **E: Spares (Critical)** | Drums, vessels, modules, FBG, TSN | 300 m² | 25°C, vibration isolated | Condition monitoring (FBG/AE active), FIFO 24-mo max |
| **F: Phoenix Crates** | Empty BFRP crates (500+) | 1000 m² | Ambient, covered | Crate wash bay, RFID portal, 14-day turn |

### 6.2 Inventory Classification (API 581 Adapted for Zero-Metal)

| Class | Definition | Stocking Policy | Review Cycle | Forge Application |
|-------|------------|-----------------|--------------|-------------------|
| **Critical (A)** | Single-point failure → Forge down | 100% on-site + 1 regional + 1 factory | Monthly | Drum, vessel, modules, FBG, TSN, PTP |
| **Essential (B)** | Degraded perf → down in 30 days | 1 regional + 1 factory | Quarterly | Graphite die, mandrel, ZrO₂ bolts, molds, isolators |
| **Normal (C)** | Scheduled replacement | Factory warehouse | Annual | PEX-a, NaHCO₃, carbon, N₂/Ar, PEEK seals |
| **Phoenix (P)** | Circular, variable demand | Depot network + Forge buffer | Monthly | Elium® monomer, basalt, Zr/Y/In/Co hydroxides |

### 6.3 Inventory Optimization Parameters

| Parameter | Critical (A) | Essential (B) | Normal (C) | Phoenix (P) |
|-----------|--------------|---------------|------------|-------------|
| **Service Level** | 99.9% | 99% | 95% | 90% (dynamic) |
| **Reorder Point** | 1 on-site | 1 regional | Min/Max | Blend-ratio driven |
| **Order Quantity** | 1 (lot-for-lot) | 2 | EOQ | Forecast + 20% |
| **Safety Stock** | 100% demand during LT | 50% demand during LT | 20% demand | 30% forecast |
| **Lead Time** | 0-30 days (on-site) | 30-90 days | 7-14 days | 7-30 days (depot) |
| **Shelf Life** | Ceramics: ∞; Electronics: 5 yr | Ceramics: ∞; Composites: 2 yr | 5 yr | 6 mo (monomer) |

---
