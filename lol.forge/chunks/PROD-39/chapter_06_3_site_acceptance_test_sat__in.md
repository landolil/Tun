## 3. Site Acceptance Test (SAT) — Installation, Integration, Performance, Safety

### 3.1 SAT Scope & Sequence

The SAT is executed at the customer site after installation, utility hookup, and cold commissioning.

```
SAT SEQUENCE (5 Days):
┌─────────────────────────────────────────────────────────────────────────────┐
│ DAY 1: SAT-01 Site Power Quality + SAT-02 Ground Resistance                 │
│ DAY 2: SAT-03 POF Attenuation + SAT-04 TSN/PTP Sync                         │
│ DAY 3-4: SAT-05 Performance Benchmarks (6 batches)                          │
│ DAY 5:   SAT-06 Safety Systems Verification + Commissioning Gate            │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 3.2 SAT-01: Site Power Quality

| Parameter | Standard | Acceptance | Method |
|-----------|----------|------------|--------|
| **THD (Total)** | IEEE 519 | <5% | Power quality analyzer (Fluke 438) |
| **Individual Harmonics** | IEEE 519 | <3% each | Same |
| **Voltage Unbalance** | NEMA MG-1 | <1% | Same |
| **Frequency Stability** | IEEE 1159 | ±0.5 Hz | Same |
| **Transient Immunity** | IEEE C62.41 | Cat B3 passes | Surge generator |

**Documentation:** Utility compliance certificate + analyzer logs.

### 3.3 SAT-02: Ground Resistance

| Parameter | Acceptance | Method |
|-----------|------------|--------|
| **Combined Ground Resistance** | <5 Ω | Fall-of-potential (3-pole) |
| **UFER Resistance** | <10 Ω | Clamp-on method |
| **Ring Ground Resistance** | <15 Ω | Fall-of-potential |
| **Equipotential Bonding** | <0.1 Ω between all metallic structures | Micro-ohmmeter |

**Note:** Forge has no metallic structures in hot zone (PROD-26). Grounding applies to frame, vessel external, power electronics enclosures only — all isolated from process.

### 3.4 SAT-03: POF Attenuation

| Link | Length | Acceptance | Method |
|------|--------|------------|--------|
| **FBG Interrogator → Drum** | 50-100 m | <0.2 dB/m | OTDR (EXFO FTB-1) |
| **TSN Switch → RTU (8 zones)** | 30-80 m | <0.2 dB/m | OTDR |
| **TSN Switch → PLC (8 stages)** | 20-60 m | <0.2 dB/m | OTDR |
| **PTP GM → Boundary Clocks** | 40-100 m | <0.2 dB/m | OTDR |
| **Splices (all)** | N/A | <0.5 dB each | OTDR event table |
| **Connectors (all)** | N/A | <0.3 dB each | OTDR event table |
| **Return Loss (all)** | N/A | >50 dB | OTDR |

### 3.5 SAT-04: TSN/PTP Sync

| Parameter | Acceptance | Method |
|-----------|------------|--------|
| **TSN Latency (max)** | <100 μs end-to-end | Traffic generator (Spirent) + timestamp |
| **TSN Jitter** | <10 μs | Same |
| **PTP Offset (GM to BC)** | <1 μs | PTP monitor (Meinberg) |
| **PTP Offset (BC to Node)** | <100 ns | Same |
| **Sync Class** | IEEE 802.1AS Class C | Verify |
| **Gate Control List** | Matches PROD-23 frozen schedule | Verify |

### 3.6 SAT-05: Performance Benchmarks

Identical to CT-10: 6 batches (Cat A, B, C, D, A, Phoenix) with all outputs spec, mass balance >99%, energy within budget, twin sync <3σ.

### 3.7 SAT-06: Safety Systems Verification

| System | Test | Acceptance |
|--------|------|------------|
| **Optical E-stop (SIF-16)** | Pull all 12 E-stop POF loops | All 24 SIFs trip <10 ms |
| **Fire Suppression** | Inert gas (N₂) discharge test | Discharge <10 s, pressure hold 30 min |
| **Gas Detection** | Calibration gas challenge (H₂, HCl) | All 6 sensors alarm <5 s |
| **Radiation Monitor** | Check source (Cs-137) | Alarm at setpoint |
| **Emergency Lighting** | Power cut | 90 min battery, all exits lit |

---
