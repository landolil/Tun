## 8. Network Architecture — TSN Deterministic Ethernet

### 8.1 TSN Configuration (IEEE 802.1Qbv)

| Parameter | Value |
|-----------|-------|
| **Topology** | Dual-ring (counter-rotating), 8 RTUs + 8 PLCs + 2 SCADA |
| **Speed** | 1 Gbps (1000BASE-T1 automotive, PMMA POF media) |
| **Scheduling** | Time-Aware Shaper (TAS), 1 ms cycle, 8 time slices |
| **Time Slices** | Slice 0: SIS (SIL-3), Slice 1: RTU control, Slice 2: PLC, Slice 3: SCADA, Slice 4-7: Best effort |
| **Latency** | <100 μs (SIS), <500 μs (RTU), <1 ms (PLC), <5 ms (SCADA) |
| **Jitter** | <10 μs (SIS), <50 μs (RTU), <100 μs (PLC) |
| **Redundancy** | FRER (Frame Replication and Elimination for Reliability) |
| **VLANs** | VLAN 10: SIS, VLAN 20: RTU, VLAN 30: PLC, VLAN 40: SCADA, VLAN 99: Mgmt |
| **Sync** | IEEE 802.1AS (PTP), <1 μs accuracy |

### 8.2 Time-Aware Schedule (1 ms Cycle)

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                         TSN 1 ms CYCLE (GCL - Gate Control List)            │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  0.000 ms  │►│ SIS (SIL-3)          │ Gate Open: VLAN 10                   │
│            │   │ 2oo3 voting frames │ Duration: 200 μs                     │
│            │   │ Priority: 7        │                                      │
│  0.200 ms  │►│ RTU Control        │ Gate Open: VLAN 20                   │
│            │   │ PID commands, FBG  │ Duration: 300 μs                     │
│            │   │ Priority: 6        │                                      │
│  0.500 ms  │►│ PLC Data           │ Gate Open: VLAN 30                   │
│            │   │ Cascade setpoints  │ Duration: 200 μs                     │
│            │   │ Priority: 5        │                                      │
│  0.700 ms  │►│ SCADA / Mgmt       │ Gate Open: VLAN 40/99                │
│            │   │ OPC-UA, Historian  │ Duration: 200 μs                     │
│            │   │ Priority: 3-4      │                                      │
│  0.900 ms  │►│ Guard Band         │ Gate Closed (all)                    │
│            │   │ Sync margin        │ Duration: 100 μs                     │
│  1.000 ms  │   CYCLE REPEATS                                                │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 8.3 Network Health Monitoring

| Metric | Threshold | Action |
|--------|-----------|--------|
| **Frame loss (SIS)** | >0 frames/hr | Immediate alarm, path switch |
| **Latency (RTU)** | >500 μs | Degrade to 500 Hz control |
| **PTP offset** | >1 μs | Alarm, switch to holdover OCXO |
| **FRER mismatch** | >0.1% | Path degradation alert |
| **Link utilization** | >80% | Traffic shaping, alarm |

---
