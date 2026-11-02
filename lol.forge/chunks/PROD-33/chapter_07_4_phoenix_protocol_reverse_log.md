## 4. Phoenix Protocol Reverse Logistics

### 4.1 Depot Network Specification (Year 3)

| Tier | Count | Throughput | Function | Equipment |
|------|-------|------------|----------|-----------|
| **Primary** | 3 (NA, EU, APAC) | 500 ton/yr | Full disassembly, hazard removal, feedstock classification, LIBS/XRF | Auto disassembly cell, solvolysis reactor, ultrasonic clean, crate washer |
| **Secondary** | 12 | 100 ton/yr | Pre-sort, discharge, crate, ship to Primary | Manual disassembly, discharge station, crate staging |
| **Tertiary** | 50+ | 20 ton/yr | Consumer drop-off, installer return, warranty intake | Collection bins, QR scanner, crate staging |

### 4.2 BFRP/Elium® Crate System (CSMFAB-P001)

| Parameter | Specification |
|-----------|---------------|
| **Dimensions** | 1200×800×600 mm (Euro-pallet) |
| **Empty Mass** | 18 kg |
| **Loaded Mass** | 500 kg max |
| **Stackability** | 4-high (static), 2-high (transit) |
| **Forklift Pockets** | 4-way, 100 mm clearance |
| **Identification** | RFID (UHF Gen2), QR (ISO 18004), Data Matrix (ISO 16022) |
| **Seal** | Mechanical latch + tamper-evident zip tie + Ar backfill option |
| **Life** | 500 cycles → thermal solvolysis (350°C) → BFRP recycle |
| **Traceability** | UUID: CSM-CRATE-<Forge>-<Depot>-<Sequence>-<Cycle> |
| **Cost** | $450/crate (Year 1), $320/crate (Year 3, scale) |

### 4.3 Reverse Logistics Flow

```
EOL Product Return (Tertiary)
    ↓ QR scan → Category D1-D7 classification
    ↓ Crate load (max 500 kg, 80% fill min)
    ↓ Electric truck → Secondary hub (65 km avg)
        ↓ Pre-sort, discharge (batteries, capacitors)
        ↓ Crate consolidate → Electric Class 8 → Primary hub (320 km avg)
            ↓ Full disassembly (15 min/product auto)
            ↓ Solvolysis (350°C, 2h) → Elium® monomer + basalt fiber
            ↓ Ceramic cores → crush/mill → hydromet feed
            ↓ Critical mineral glazes → ionic liquid extraction
            ↓ LIBS/XRF classification → Feedstock Category A-D (PROD-13)
            ↓ BFRP crate wash → redeploy
    ↓ Classified feedstock → Rail/flatbed → Forge (dedicated siding)
    ↓ Forge receiving → LIBS verification → Blend ratio MFC → Stage 0-8
```

### 4.4 Vehicle Routing Optimization

**Algorithm:** Clarke-Wright Savings + 2-opt Local Search (VRP with time windows)
**Objective:** Minimize Σ(distance × carbon intensity) subject to:
- Hub capacity constraints (Primary 500 t/yr, Secondary 100 t/yr)
- Crate turnaround ≤14 days
- Minimum 80% crate fill before dispatch
- Backhaul: empty crates + virgin feedstock delivery

| Metric | Target | Current (Year 3) |
|--------|--------|------------------|
| **Primary←Secondary Distance** | 320 km | 320 km |
| **Secondary←Tertiary Distance** | 65 km | 65 km |
| **Electric Truck Utilization** | >85% | 82% |
| **Crate Turnaround** | 14 days | 14.3 days |
| **Carbon Intensity** | 0.08 kg CO₂e/ton-km | 0.09 kg CO₂e/ton-km |
| **Annual Transport Cost** | $3.50/50 kg batch | $3.50/50 kg batch |

---
