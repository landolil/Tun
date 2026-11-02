## 3. Network Architecture

### 3.1 OT Network Topology (Physically Air-Gapped)

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│                              IT NETWORK (Corporate)                              │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐  ┌────────────────────┐  │
│  │ Enterprise   │  │ Email/Web    │  │ Cloud/Hybrid │  │ Security Operations │  │
│  │ Applications │  │ Proxy        │  │ Services     │  │ Center (SOC)       │  │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘  └────────┬───────────┘  │
└─────────┼──────────────────┼──────────────────┼──────────────────┼──────────────┘
          │                  │                  │                  │
          ▼                  ▼                  ▼                  ▼
    ┌─────────────────────────────────────────────────────────────────────────┐
    │                         DATA DIODE (Hardware)                            │
    │  ┌─────────────────────────────────────────────────────────────────┐    │
    │  │  Unidirectional: OT → IT ONLY (Protocol Break at App Layer)    │    │
    │  │  1 Gbps Optical | No Return Path | No IP Routes | No Wireless  │    │
    │  │  OPC-UA Historical | Alarm Export | Batch Records | Twin Sync  │    │
    │  └─────────────────────────────────────────────────────────────────┘    │
    └─────────────────────────────────┬───────────────────────────────────────┘
                                      │
                                      ▼
┌─────────────────────────────────────────────────────────────────────────────────┐
│                              OT NETWORK (Forge)                                  │
│  ┌─────────────────────────────────────────────────────────────────────────┐    │
│  │                      DUAL-RING TSN (1 Gbps, BFRP)                        │    │
│  │  ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌────┐  │    │
│  │  │ Z1   │ │ Z2   │ │ Z3   │ │ Z4   │ │ Z5   │ │ Z6   │ │ Z7   │ │ Z8  │  │    │
│  │  └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬──┘  │    │
│  │     │        │        │        │        │        │        │        │      │    │
│  │     └────────┴────────┴────────┴────────┴────────┴────────┴────────┘      │    │
│  │                    │        │        │        │        │        │          │    │
│  │  ┌────────────────┼────────┼────────┼────────┼────────┼────────┼────────┐  │    │
│  │  │ L3 SCADA       │ L2 PLCs       │ L1 RTUs        │ L0 FPGAs          │  │    │
│  │  │ (Dual Linux)   │ (8× Rugged)   │ (8× ARM A53)   │ (16× Artix-7)     │  │    │
│  │  │ Historian      │ Interlock Bus │ Thermal PID    │ Gate Drive        │  │    │
│  │  │ Alarm Mgmt     │ (SIL-3, 2oo3) │ FBG Acq        │ Desat Protect     │  │    │
│  │  │ Batch Track    │ Recipe Mgmt   │ MFC Control    │ ZVS Track         │  │    │
│  │  │ Twin Sync      │ Carousel      │ Resonance      │ Current Sense     │  │    │
│  │  └────────────────┴────────────────┴────────────────┴────────────────┘  │    │
│  │  VLAN 10 (SIS): 24 SIFs, 2oo3, <50ms, highest priority                  │    │
│  │  VLAN 20 (RTU): PID, FBG, MFC, Resonance, 1 kHz                         │    │
│  │  VLAN 30 (PLC): Interlocks, Recipes, Carousel, 100 Hz                   │    │
│  │  VLAN 40 (SCADA): Historian, Alarms, Batch, Twin, 10 Hz (Best Effort)   │    │
│  │  VLAN 50 (Mgmt): PTP, NTP, Firmware, Config (Out-of-band, read-only)    │    │
│  └─────────────────────────────────────────────────────────────────────────┘    │
└─────────────────────────────────────────────────────────────────────────────────┘
```

### 3.2 TSN Security Configuration (IEEE 802.1Qci / 802.1Qbv)

| VLAN | Priority | Traffic Type | Gate Control List | Max Frame Size | FRER |
|------|----------|--------------|-------------------|----------------|------|
| **10 (SIS)** | 7 (Highest) | SIF trip, SOE, 2oo3 votes | Fixed: 0-100 μs | 512 B | Yes (dual path) |
| **20 (RTU)** | 6 | PID, FBG, MFC, Resonance | Fixed: 100-500 μs | 1518 B | Yes (FBG) |
| **30 (PLC)** | 5 | Interlocks, Recipes, Carousel | Fixed: 500-800 μs | 1518 B | No |
| **40 (SCADA)** | 4 | Historian, Alarms, Twin | Best effort: 800-900 μs | 1518 B | No |
| **50 (Mgmt)** | 3 | PTP, Firmware, Config | Best effort: 900-1000 μs | 1518 B | No |
| **Guard Band** | — | — | 900-1000 μs | — | — |

**TSN Security Controls:**
- **Per-Stream Filtering (802.1Qci)**: Each VLAN isolated; no frame can cross VLAN boundaries without explicit gate control entry
- **Frame Preemption (802.1Qbu)**: SIF frames preempt all other traffic; 100 μs guard band ensures SIS latency <50 ms
- **Time-Aware Shaper (802.1Qbv)**: Gate control list frozen at FAT (PROD-39); changes require ECO + CT-04 re-test
- **FRER (802.1CB)**: SIS and FBG streams duplicated on both rings; zero packet loss on single link failure

### 3.3 PTP Security (IEEE 802.1AS)

| Component | Security Feature |
|-----------|------------------|
| **Grandmaster** | GNSS + OCXO (Microchip 5071A), 24h holdover ±1 μs, anti-jamming antenna |
| **Boundary Clocks** | All L1 RTUs, L2 PLCs, L3 SCADA; verify GM identity via certificate |
| **Transparent Clocks** | TSN switches (BFRP-housed); no PTP modification, only residence time |
| **Authentication** | IEEE 802.1AS-2020 TLV-based authentication; reject unauthenticated Announce |
| **Monitoring** | L3 SCADA monitors offset <1 μs; >1 μs → alarm, >10 μs → SIF-24 (comms loss) |

---
