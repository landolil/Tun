## 6. Standard Operating Procedures (SOPs)

### 6.1 SOP Index

| SOP ID | Title | Frequency | Duration | Critical Steps |
|---|---|---|---|---|
| **SOP-001** | Daily Startup | Daily (shift start) | 45 min | IC-1..IC-5 abbreviated, recipe load, SIF status |
| **SOP-002** | Batch Execution | Per batch (8/day) | 90 min | Feed prep → cascade → slug pour → data capture |
| **SOP-003** | Stage Transition | Per stage (8/batch) | 2-5 min | Gate verification, port actuation, gas switch |
| **SOP-004** | Daily Shutdown | Daily (shift end) | 60 min | Cool-down ramp, purge, isolation, data backup |
| **SOP-005** | Emergency Shutdown | On demand | <5 min | E-stop, SIF trip log, safe state verification |
| **SOP-006** | Carrington Ride-Through | On GIC alert | 30 min | Grid monitor, staged reconnect, thermal check |
| **SOP-007** | Port Valve Maintenance | Quarterly | 4 hr | Actuation check, leak test, seal inspect |
| **SOP-008** | FBG Calibration Verification | Monthly | 2 hr | 5-point reference sweep, drift check |
| **SOP-009** | DI Water Polisher Regeneration | Weekly | 1 hr | Resin exchange, resistivity verification |
| **SOP-010** | CEMS Calibration | Quarterly | 4 hr | Zero/span gas, drift <2% |
| **SOP-011** | Seismic Post-Event Inspection | Post-seismic | 4 hr | IC-1, IC-2, IC-5 abbreviated + AE review |
| **SOP-012** | Phoenix Feedstock Receipt | Per delivery | 2 hr | LIBS classification, QR scan, depot manifest |

### 6.2 SOP-002: Batch Execution (Core Procedure)

```
PHASE 1: FEED PREPARATION (0-15 min)
├── 1.1 Scan feedstock QR → verify Category A-D (PROD-13)
├── 1.2 Load shredder → verify <150 mm, ferrous removed (PROD-11)
├── 1.3 Confirm drum empty (Carousel position 1, FBG + encoder)
└── 1.4 Operator confirms recipe match → BATCH <ID> RECIPE CONFIRMED

PHASE 2: CASCADE EXECUTION (15-105 min)
├── 2.1 Stage 0-1: Acoustic + Drying (auto, FBG/PID controlled)
├── 2.2 Stage 2: Polymer melt + centrifuge (auto, CFDO-CB operator)
├── 2.3 Stage 3: Pyrolysis + char (auto, CDO-SG operator)
├── 2.4 Stage 4: Indium-First (auto, Port 4A/B/C thermal actuation)
├── 2.5 Stage 5: Aluminum window (auto, Port 5 at 680°C)
├── 2.6 Stage 6: Copper + PM (auto, anode carousel, XRF verify)
├── 2.7 Stage 7: Ferrous + REE (auto, dual-port Port 7A/7)
├── 2.8 Stage 8: Mineral/Zr (auto, ZrSiO₄ dissociation, 3Y-TZP flash)

PHASE 3: SLUG POUR & DATA CAPTURE (105-115 min)
├── 3.1 Carousel positions molds → N₂ quench → mass spec spot check
├── 3.2 Each slug: LIBS scan → QR stamp → weight → mass spec → vault
├── 3.3 Batch mass balance calculated → digital twin sync
├── 3.4 Operator reviews batch record → BATCH <ID> COMPLETE
└── 3.5 Data package auto-signed → Hyperledger commit

PHASE 4: INTER-BATCH RESET (115-120 min)
├── 4.1 Drum rotation to Position 1 (empty)
├── 4.2 Gas purge (N₂ 200 Nm³/hr × 5 min)
├── 4.3 SIF status verify → READY FOR NEXT BATCH
└── 4.4 Shift handover log entry (if shift change)
```

---
