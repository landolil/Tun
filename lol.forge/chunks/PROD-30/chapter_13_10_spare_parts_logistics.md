## 10. Spare Parts Logistics

### 10.1 Inventory Classification (API 581 Adapted)

| Class | Definition | Stocking Policy | Review |
|---|---|---|---|
| **Critical (A)** | Single-point failure → Forge down | 100% on-site + 1 at regional | Monthly |
| **Essential (B)** | Degraded performance → Forge down in 30 days | 1 at regional + 1 at factory | Quarterly |
| **Normal (C)** | Scheduled replacement | Factory warehouse | Annual |

### 10.2 Spare Parts Management

- **QR/Blockchain tracking**: Every spare part carries QR code linking to Hyperledger (PROD-28 Sec 9)
- **Condition monitoring**: Critical spares (drum, vessel, modules) have FBG/AE sensors active in storage
- **Rotation policy**: FIFO with 24-month max shelf life for elastomers/composites; ceramics indefinite
- **Vendor codes**: All parts traceable to AVL (PROD-28 Sec 7) with supplier quality data

### 10.3 Stocking Levels

| Part | Class | On-Site | Regional (30-day) | Factory (90-day) | Total |
|---|---|---|---|---|---|
| Refurbished Drum | A | 0 | 1 | 1 | 2 |
| Refurbished Vessel | A | 0 | 1 | 1 | 2 |
| Coil Zone Set (8) | A | 0 | 1 set | 1 set | 2 sets |
| Inverter Module Set (8) | A | 0 | 1 set | 1 set | 2 sets |
| TSN Switch | A | 1 | 1 | 2 | 4 |
| PTP Grandmaster | A | 1 | 0 | 1 | 2 |
| FBG Interrogator | A | 1 | 1 | 1 | 3 |
| Graphite Die | B | 0 | 0 | 1 | 1 |
| Winding Mandrel | B | 0 | 0 | 1 | 1 |
| ZrO₂ Bolt Set (24) | B | 1 | 1 | 2 | 4 |
| Carousel Mold Set | B | 1 | 0 | 1 | 2 |

---
