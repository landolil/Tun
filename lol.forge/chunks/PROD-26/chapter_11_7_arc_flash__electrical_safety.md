## 7. Arc Flash & Electrical Safety — NFPA 70E

### 7.1 Arc Flash Hazard Analysis

| Location | Voltage | Bolted Fault Current | Clearing Time | Incident Energy (18) | PPE Category |
|----------|---------|---------------------|---------------|----------------------|--------------|
| **Grid Service** | 480 V | 25 kA | 0.1 s (breaker) | 4.2 cal/cm² | Cat 2 |
| **XFMR Secondary** | 400 V | 15 kA | 0.05 s (fuse) | 1.8 cal/cm² | Cat 1 |
| **Inverter DC Link** | 800 VDC | 2 kA (cap limited) | 0.001 s (desat) | 0.3 cal/cm² | Cat 0 |
| **RTU/PLC Power** | 24 VDC | 10 A (current limit) | 0.01 s | <0.1 cal/cm² | Cat 0 |

### 7.2 Arc Flash Mitigation Features

| Feature | Implementation | Standard |
|---------|----------------|----------|
| **No exposed conductors** | All connections inside BFRP enclosures | NFPA 70E 130.5 |
| **Bolted connections only** | Torque-verified, ZrO₂ insulated sleeves | NFPA 70E 110.14 |
| **Incident energy <1.2 cal/cm²** | At working distance (18) for all process areas | NFPA 70E 130.5 |
| **PPE Category 0** | No arc-rated PPE required inside forge boundary | NFPA 70E 130.7 |
| **Arc-resistant boundaries** | BFRP vessel = arc containment | NFPA 70E 200.6 |
| **Labels** | All enclosures labeled (voltage, energy, boundary) | NFPA 70E 130.5(H) |

### 7.3 Lockout/Tagout (LOTO) Procedure

| Step | Action | Verification |
|------|--------|--------------|
| 1 | Notify affected personnel | SCADA broadcast |
| 2 | Shutdown batch (recipe complete) | Stage PLC confirmation |
| 3 | Open grid vacuum contactor | Position indicator (POF) |
| 4 | Apply LOTO to contactor | Physical lock + tag |
| 5 | Verify zero voltage (DC link) | POF voltage sensor <1 V |
| 6 | Verify zero pressure (vessel) | POF pressure sensor <0.1 bar |
| 7 | Verify temperature <50°C | FBG <50°C all zones |
| 8 | Release for maintenance | Dual-key (Shift Lead + Maint) |

---
