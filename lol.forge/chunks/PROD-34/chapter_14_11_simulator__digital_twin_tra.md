## 11. Simulator & Digital Twin Training

### 11.1 Simulator Architecture

| Component | Specification |
|-----------|---------------|
| **Physics Engine** | PROD-24 thermal model (500 kW step → 1800°C in 42 s) + PROD-10 EM model |
| **Fidelity** | 95% validated against CSMFAB0108 test data (PROD-24 V&V) |
| **Hardware** | 4× RTX 6000 Ada, 128 GB RAM, 10 Gbps TSN interface to SCADA replica |
| **Visualization** | 6× 24 monitors (ISA-101 HMI), 3D digital twin view (Unreal Engine 5) |
| **Interfaces** | L0 FPGA replica, L1 RTU (ARM), L2 PLC (Codesys), L3 SCADA (Ignition) |

### 11.2 Scenario Library (50+ Scenarios)

| Category | Count | Examples |
|----------|-------|----------|
| **Normal Operations** | 10 | Cold startup, Category A-D feed, steady state 8hr, normal shutdown |
| **Degraded Operations** | 15 | Zone 3 FBG drift, Zone 5 varactor sat, Port 4 valve slow, MFC drift |
| **Emergency** | 10 | E-stop Stage 6, H₂ leak, drum crack (AE), TSN partition, GIC storm |
| **Carrington Storm** | 5 | 5000 nT/s, grid disconnect, island mode, ride-through, staged reconnect |
| **Phoenix Depot** | 10 | D1-D7 classification, solvolysis batch, LIBS anomaly, crate damage |

### 11.3 Digital Twin Integration (PROD-37)

- **Fleet Anomaly Auto-Generation**: ML autoencoder (FOLLOW-29) flags >3σ deviation → auto-generates simulator scenario
- **Scenario Aging**: Scenarios tagged with firmware version; obsolete scenarios archived
- **Performance Tracking**: Operator simulator metrics → digital twin → personalized remediation

---
