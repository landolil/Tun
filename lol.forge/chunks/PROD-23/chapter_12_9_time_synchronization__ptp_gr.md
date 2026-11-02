## 9. Time Synchronization — PTP Grandmaster

### 9.1 Synchronization Architecture

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                         PTP TIME SYNCHRONIZATION                            │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  GRANDMASTER (GM)                                                           │
│  ┌─────────────────────────────────────────────────────────────────────┐   │
│  │ GNSS Receiver (GPS+GLONASS+Galileo, anti-jam, anti-spoof)          │   │
│  │       │                                                             │   │
│  │       ▼                                                             │   │
│  │ OCXO Holdover (Microchip 5071A, ±50 ppb/day, 24h holdover)        │   │
│  │       │                                                             │   │
│  │       ▼                                                             │   │
│  │ PTP Grandmaster (IEEE 1588v2, Power Profile, 2-step)               │   │
│  │       │                                                             │   │
│  │       ├──► Port 1: TSN Ring A (GM)                                 │   │
│  │       └──► Port 2: TSN Ring B (GM)                                 │   │
│  └─────────────────────────────────────────────────────────────────────┘   │
│              │                    │                                        │
│              ▼                    ▼                                        │
│  ┌─────────────────┐    ┌─────────────────┐                              │
│  │ TSN RING A      │    │ TSN RING B      │                              │
│  │ (Boundary Clocks│    │ (Boundary Clocks│                              │
│  │  at each node)  │    │  at each node)  │                              │
│  └────────┬────────┘    └────────┬────────┘                              │
│           │                      │                                        │
│           ▼                      ▼                                        │
│  ┌─────────────────────────────────────────────────────────────────────┐   │
│  │ ALL NODES: RTUs, PLCs, SCADA, SIS, FPGA (via PMMA POF PTP)        │   │
│  │ Sync Accuracy: <1 μs (typical <200 ns)                             │   │
│  │ Holdover: 24 hours (OCXO) if GM lost                               │   │
│  └─────────────────────────────────────────────────────────────────────┘   │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 9.2 PTP Configuration

| Parameter | Value |
|-----------|-------|
| **Profile** | IEEE 802.1AS (TSN) / IEEE 1588v2 Power Profile |
| **Mode** | 2-step (Pdelay_Req/Resp for peer delay) |
| **Sync Interval** | 125 ms (8 Hz) |
| **Announce Interval** | 1 s |
| **Timeout** | 3 announce intervals (3 s) |
| **Best Master Clock Algorithm** | Enabled (GM priority 1: 128, priority 2: 128) |
| **Holdover Spec** | <1 μs drift over 24h (OCXO ±50 ppb) |
| **Asymmetry Calibration** | Performed at commissioning, stored in FRAM |

---
