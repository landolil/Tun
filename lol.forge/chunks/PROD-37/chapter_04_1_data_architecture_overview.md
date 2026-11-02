## 1. Data Architecture Overview

### 1.1 Architecture Summary

The Aegis-Forge I data management and digital twin subsystem provides the nervous system for the thermal cascade — fusing 480+ sensor streams across four control hierarchy levels (L0 FPGA at 100 kHz, L1 RTU at 1 kHz, L2 PLC at 100 Hz, L3 SCADA at 10 Hz) into a coherent state representation that drives real-time control, predictive maintenance, fleet optimization, and operator situational awareness.

| Parameter | Specification |
|-----------|---------------|
| **Total Sensor Channels** | 480+ (384 FBG, 24 SIF, 32 EM, 24 thermal, 16 vibration, 4 gas) |
| **Data Rates** | L0: 100 kHz (FPGA), L1: 1 kHz (RTU), L2: 100 Hz (PLC), L3: 10 Hz (SCADA) |
| **Historian** | InfluxDB 2.x on air-gapped SCADA, 10 Hz full state, 1 Hz compressed |
| **Digital Twin Compute** | 512-core HPC cluster, CFD+FEA+EM coupled, 10 Hz update cycle |
| **ML Autoencoder** | 384-dim FBG state → latent 32 → reconstruction error >3σ = anomaly |
| **Data Diode** | Unidirectional OT→IT, 1 Gbps, protocol break at application layer |
| **Retention** | Hot 30 days, Warm 1 yr, Cold 7 yrs (regulatory), Blockchain permanent |
| **Cross-Domain Sync** | OPC-UA + Kafka over data diode, integrity-verified at each hop |

### 1.2 Four-Level Data Hierarchy

The data architecture mirrors the control hierarchy (PROD-23) with time-constant-matched data flows:

```
L0 FPGA (100 kHz)     →  Gate-level: desat, ZVS timestamp, current sense @ 1 MHz
    ↓ decimate/aggregate
L1 RTU (1 kHz)        →  Thermal reconstruction: 48 FBG/zone → T_inner ±5°C @ 2200°C
    ↓ model state publish
L2 PLC (100 Hz)       →  Cascade mass-energy balance: XRF/LIBS feedforward, closure >99.5%
    ↓ state trajectory
L3 SCADA (10 Hz)      →  Digital twin shadow: 512-core HPC runs ROM + CFD + FEA + ML
    ↓ data diode (OT→IT)
IT Data Lake (1 Hz)   →  Fleet analytics, Bayesian updates, training scenarios, compliance
```

### 1.3 Air-Gap Data Flow Enforcement

Per PROD-36 (Cyber-Physical Security), the OT/IT boundary is absolute:

- **No IP routes** OT↔IT — physical air-gap enforced at conduit level
- **Hardware data diode** (Fox DataDiode or equivalent) — unidirectional OT→IT only
- **Protocol break at application layer** — OPC-UA on OT side, Kafka on IT side, no shared protocol stack
- **Integrity verification** — SHA-256 merkle tree root published per 10 Hz frame, verified on IT side
- **Rate limiting** — 1 Gbps diode capacity, traffic shaped to 100 Mbps average with 500 Mbps burst

---
