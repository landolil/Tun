## 2. Return Logistics Network

### 2.1 Collection Hub Topology

| Hub Tier | Count (Year 3) | Coverage Radius | Throughput | Function |
|----------|----------------|-----------------|------------|----------|
| **Primary** | 3 (NA, EU, APAC) | 2,000 km | 500 ton/yr | Full disassembly, hazard removal, feedstock classification |
| **Secondary** | 12 | 500 km | 100 ton/yr | Pre-sort, discharge, crate, ship to Primary |
| **Tertiary** | 50+ | 100 km | 20 ton/yr | Consumer drop-off, installer return, warranty claim intake |

**Hub Equipment (Primary):**
- Automated disassembly cell (6-axis + vision, 15 min/product)
- Thermal solvolysis reactor (350°C, 2h, 500L Elium® recovery)
- Ultrasonic cleaning station (PEEK/ZrO₂ hardware)
- LIBS + XRF inline analyzer (composition verification)
- BFRP crate washer (closed-loop water, 99% recycle)

### 2.2 Transport Specification — DUNNAGE-FREE

All EOL material moves in **BFRP/Elium® crates** (CSMFAB-P001 spec):
- Crate dimensions: 1200×800×600 mm (Euro-pallet compatible)
- Mass: 18 kg empty, 500 kg loaded
- Stackable 4-high, forklift pockets, RFID + QR + Data Matrix
- Hermetic seal option (Ar backfill) for reactive fractions
- Crate life: 500 cycles → crushed → BFRP recycling (thermal solvolysis)

**No wood, cardboard, foam, or plastic dunnage.** Ever. The crate IS the packaging.

### 2.3 Collection Triggers

| Trigger | Mechanism | Incentive | SLA |
|---------|-----------|-----------|-----|
| **Warranty Return** | 5-yr CSM warranty requires return for full refund | 100% deposit refund + $50/panel | <30 days from claim |
| **Upgrade Swap** | Embark module replacement program | Trade-in credit toward Gen-II | <14 days scheduled |
| **Decommissioning** | Infrastructure EOL (poles, pipeline, rail) | Scrap value + carbon credit | Contract-defined |
| **Voluntary Return** | Consumer/owner drop-off at Tertiary hub | $25/panel store credit | Immediate |

### 2.4 Reverse Logistics Optimization

**Vehicle Routing Problem (VRP) Solution:**
- **Algorithm**: Clarke-Wright savings + 2-opt local search
- **Objective**: Minimize Σ(distance × carbon intensity) subject to hub capacity
- **Fleet**: Electric Class 8 (500 km range) for Secondary→Primary; Diesel hybrid for Tertiary→Secondary
- **Load Consolidation**: Minimum 80% crate fill before dispatch
- **Backhaul**: Return empty crates + deliver virgin feedstock (BFRP crates, Ar cylinders)

**Network KPIs:**
- Average haul distance: 320 km (Primary←Secondary), 65 km (Secondary←Tertiary)
- Crate turnaround: 14 days (return → clean → redeploy)
- Carbon intensity: 0.08 kg CO₂e/ton-km (electric) vs. 0.22 (diesel)

### 2.5 Depot Network Expansion Roadmap

| Year | Primary Hubs | Secondary Hubs | Tertiary Hubs | Total Capacity | Investment |
|------|--------------|----------------|---------------|----------------|------------|
| Year 1 | 1 (NA) | 4 (NA) | 15 (NA) | 700 ton/yr | $3.2M |
| Year 2 | 2 (NA, EU) | 8 (NA, EU) | 30 (NA, EU) | 1,800 ton/yr | $5.8M |
| Year 3 | 3 (NA, EU, APAC) | 12 | 50+ | 3,500 ton/yr | $4.1M |
| Year 5 | 5 | 20 | 100+ | 8,000 ton/yr | $6.3M |

**Expansion Trigger:** When Secondary hub utilization >80% for 3 consecutive months → promote to Primary.

---
