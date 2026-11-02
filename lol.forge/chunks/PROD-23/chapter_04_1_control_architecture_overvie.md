## 1. Control Architecture Overview

### 1.1 Design Philosophy

The Aegis-Forge I control system is a **four-level hierarchical distributed architecture** designed to operate in the most hostile electromagnetic environment on Earth: inside a 500 kW induction furnace at 2200°C, during a Carrington-class geomagnetic storm. Every design decision flows from three irreducible constraints:

1. **All-Dielectric Sensing & Actuation:** No copper wires cross the pressure boundary. All 480+ field devices communicate via PMMA POF optical fiber. This eliminates antenna effects for GIC/EMP.
2. **Deterministic Real-Time Control:** 1 kHz zone-level PID loops with resonance tracking require <1 ms jitter. Achieved via TSN (IEEE 802.1Qbv) time-aware scheduling on a dual-ring 1 Gbps optical network.
3. **SIL-3 Safety Integrity:** 24 safety instrumented functions with 2oo3 voting, <50 ms response, certified to IEC 61508/ISA-84.

### 1.2 Hierarchy Summary

| Level | Name | Hardware | Cycle Time | Scope | Key Functions |
|-------|------|----------|------------|-------|---------------|
| **L0** | **Cell (FPGA)** | Artix-7 FPGA (BFRP board) | 10 μs (100 kHz) | Single inverter leg | GaN gate drive, desat protection, ZVS tracking, current sense |
| **L1** | **Zone RTU** | ARM Cortex-A53 (8×, BFRP) | 1 ms (1 kHz) | One inductive zone | Thermal PID, resonance tracker, FBG acquisition, MFC control |
| **L2** | **Stage PLC** | IEC 61131-3 PLC (8×, rugged) | 10 ms (100 Hz) | One thermal stage | Cascade control, interlock logic, recipe management, carousel |
| **L3** | **Plant SCADA** | Linux workstation (dual, air-gapped) | 100 ms (10 Hz) | Full Forge | Historian, alarm mgmt, batch tracking, MES, digital twin |

### 1.3 Data Flow Architecture

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                           PLANT SCADA (L3) — 10 Hz                          │
│  ┌─────────────┐ ┌─────────────┐ ┌─────────────┐ ┌─────────────────────┐   │
│  │ Historian   │ │ Alarm Mgmt  │ │ Batch Track │ │ Digital Twin Sync   │   │
│  │ (InfluxDB)  │ │ (ISA-18.2)  │ │ (ISA-88)    │ │ (OPC-UA + Kafka)    │   │
│  └──────┬──────┘ └──────┬──────┘ └──────┬──────┘ └──────────┬──────────┘   │
│         │               │               │               │                │
│         └───────────────┼───────────────┼───────────────┘                │
│                         ▼               ▼                                │
│              ┌─────────────────────────────────┐                         │
│              │      OPC-UA Server (TSN)        │ ◄── Unidirectional      │
│              │   (Data Diode to IT Network)    │     Data Diode          │
│              └──────────────────┬──────────────┘                         │
└─────────────────────────────────┼────────────────────────────────────────┘
                                  │ TSN Dual-Ring (1 Gbps, <100 μs latency)
                                  ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│                          STAGE PLCs (L2) — 100 Hz                           │
│  ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐  │
│  │Stg 0 │ │Stg 1 │ │Stg 2 │ │Stg 3 │ │Stg 4 │ │Stg 5 │ │Stg 6 │ │Stg 7 │  │
│  └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘  │
│     │        │        │        │        │        │        │        │       │
│     └────────┴────────┴────────┴────────┴────────┴────────┴────────┘       │
│              │                  Interlock Bus (SIL-3, 2oo3)                 │
└──────────────┼──────────────────────────────────────────────────────────────┘
               │ TSN
               ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│                           ZONE RTUs (L1) — 1 kHz                            │
│  ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐  │
│  │ Z1   │ │ Z2   │ │ Z3   │ │ Z4   │ │ Z5   │ │ Z6   │ │ Z7   │ │ Z8   │  │
│  │100kHz│ │100kHz│ │50kHz │ │10kHz │ │10kHz │ │5kHz  │ │2kHz  │ │1kHz  │  │
│  └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘  │
│     │        │        │        │        │        │        │        │       │
└─────┼────────┼────────┼────────┼────────┼────────┼────────┼────────┼───────┘
      │        │        │        │        │        │        │        │
      ▼        ▼        ▼        ▼        ▼        ▼        ▼        ▼
┌─────────────────────────────────────────────────────────────────────────────┐
│                         CELL FPGAs (L0) — 100 kHz                           │
│  GaN Gate Drive │ Desat Detect │ ZVS Tracker │ Current Sense │ PMMA POF   │
└─────────────────────────────────────────────────────────────────────────────┘
```

---
