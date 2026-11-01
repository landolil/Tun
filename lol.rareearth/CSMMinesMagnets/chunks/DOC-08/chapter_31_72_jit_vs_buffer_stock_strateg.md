## 7.2 JIT vs Buffer Stock Strategy Analysis

CSM motor production operates on **takt time = 45 seconds per rotor** (high-volume line). Magnetic material delivery must synchronize with this cadence while accounting for Chilean export lead times.

### 7.2.1 Lead Time Breakdown (Mine → CSM Factory)

| Segment | Duration | Variability | Control Point |
|---------|----------|-------------|---------------|
| **Mine → Aegis-Forge Plant** | 2-5 days (rail/truck) | ±1 day | Mine dispatch |
| **Aegis-Forge Processing** | 7-14 days (separation, alloying, strip cast) | ±3 days | Plant scheduling |
| **Magnet Manufacturing (sintering, machining)** | 14-21 days | ±5 days | Sintering furnace |
| **MIL-STD-1540 Testing** | 3-5 days | ±1 day | Lab capacity |
| **Packaging/Shielding** | 2-3 days | ±1 day | Packaging line |
| **Port Handling (Mejillones/Antofagasta)** | 2-4 days | ±2 days (strike risk) | Port operations |
| **Ocean Freight (Mejillones → Houston/Rotterdam)** | 22-35 days | ±5 days (weather, canal) | Vessel scheduling |
| **Import Clearance (SICEX/US CBP)** | 1-3 days | ±2 days | Paperless (CPTPP) |
| **Inland Rail (Port → CSM Factory)** | 2-5 days | ±1 day | Rail carrier |
| **TOTAL** | **55-95 days** | **±15 days** | — |

### 7.2.2 Inventory Strategy Comparison

| Strategy | **JIT (Minimal Buffer)** | **Hybrid (Recommended)** | **Full Buffer** |
|----------|--------------------------|--------------------------|-----------------|
| **Mine Stock** | 7 days | 14 days | 30 days |
| **Aegis-Forge WIP** | 14 days | 21 days | 30 days |
| **Port Stock (TCMN Domes)** | 7 days | 14 days | 21 days |
| **In-Transit (Ocean)** | 1 vessel | 2 vessels staggered | 3 vessels |
| **CSM Factory Stock** | 3 days | **7 days** | 14 days |
| **Total System Inventory** | ~32 days | **~60 days** | ~125 days |
| **Working Capital** | Lowest | **Moderate (+$2.8M)** | High (+$8.5M) |
| **Strike Resilience** | Low (7-day buffer) | **Medium (14-day buffer)** | High (30-day buffer) |
| **Fe₁₆N₂ Risk** | High (cold chain) | **Managed (redundant reefers)** | High (long cold storage) |
| **Obsolescence Risk** | Low | Low | Medium (grade changes) |

### 7.2.3 Recommended: Hybrid Strategy with Dynamic Buffering

**Core Principle**: **Buffer at strategic control points, flow everywhere else.**

**Buffer Placement**:
1. **TCMN Dome Storage (Mejillones)**: 14 days (1.6M ton capacity → 60k tons magnetic = 26 days at 2,300 tpd)
2. **CSM Factory (Austin/Texas)**: 7 days finished magnet inventory (kanban pull)
3. **In-Transit Pipeline**: 2 vessels staggered (1 loading, 1 at sea) — continuous flow

**Dynamic Buffer Adjustment**:
$$\text{Buffer}_t = \text{Base Buffer} + \max(0, \text{Strike Probability}_t \times \text{Avg Strike Duration} - \text{Current Stock}_t)$$

Where strike probability is updated weekly from Chilean labor intelligence (DOC-02).

**Fe₁₆N₂ Special Handling**: Dedicated reefer pipeline (2 vessels, 14-day cycle). No commingling with other grades. Buffer at TCMN: 7 days at -20°C (dedicated dome). Buffer at CSM: 3 days at -20°C (factory cold room).

---
