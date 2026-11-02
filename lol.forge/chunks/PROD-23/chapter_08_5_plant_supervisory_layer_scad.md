## 5. Plant Supervisory Layer (SCADA) — 10 Hz Operations

### 5.1 SCADA Architecture

| Component | Technology | Specification |
|-----------|------------|---------------|
| **OS** | Ubuntu 24.04 LTS (hardened, no network services) |
| **SCADA SW** | Ignition Perspective (Inductive Automation) + custom modules |
| **Historian** | InfluxDB 2.7 (time-series, 10-year retention, downsampling) |
| **Alarm System** | ISA-18.2 compliant, shelving, escalation, annotation |
| **Batch System** | ISA-88 compliant (Procedural Function Chart) |
| **MES Interface** | OPC-UA (CSMFAB companion spec), ERP integration |
| **Digital Twin** | Kafka + gRPC → PROD-37 (512-core HPC) |
| **HMI** | 3× 55 4K displays (control room), 2× tablet (field) |
| **Redundancy** | Hot standby (dual servers, VRRP, <1 s failover) |
| **Backup** | Hourly config, daily historian, weekly full (BFRP NAS) |

### 5.2 HMI Design — High-Performance Graphics

**Design Principles (ISA-101 / ASM Consortium):**
- **Situation Awareness:** Gray backgrounds, color only for abnormalities
- **Alarm Rationalization:** <1 alarm/10 min normal, <10 alarm/hr upset
- **Navigation:** 3-level hierarchy (Overview → Stage → Zone)
- **Trending:** 1 hr, 8 hr, 24 hr, 7 day pre-configured
- **Faceplates:** Standardized for RTU, PLC, SIS, Inverter

**Key Displays:**
1. **Forge Overview:** All 8 zones thermal profile, drum RPM, gas flows, batch progress
2. **Stage Detail:** Zone power, FBG trends, port status, carousel position
3. **Zone Detail:** PID trends, resonance tracker, FBG spatial map, efficiency
4. **Safety Overview:** SIF status, bypass register, proof test schedule
5. **Digital Twin:** Predictive vs actual, anomaly flags, optimization suggestions

### 5.3 Batch Tracking & Genealogy (ISA-88)

```
Batch Record Structure:
Batch_2026-11-02_08 = {
  batch_id: FB-2026-11-02-08,
  recipe: CASCADE-STD-REV-12,
  feedstock: {
    category: A,
    mass_kg: 50,
    composition: {...},
    uuid: CSM-RECYCLER-NA-2026-10-15
  },
  stages: [
    {stage: 0, duration_s: 1800, energy_kwh: 12, li_avg: 0.82},
    {stage: 1, duration_s: 1200, energy_kwh: 8, moisture_final: 0.02},
    ...
    {stage: 8, duration_s: 5400, energy_kwh: 245, zircon_diss: 0.96}
  ],
  outputs: {
    slugs: [
      {port: 8, mass_kg: 12.5, grade: 3Y-TZP, uuid: SLG-2026-11-02-08-8A},
      ...
    ],
    gas: {pyrolysis_kwh: 45, co2_tonne: 0.08}
  },
  quality: {pass: true, deviations: []},
  digital_twin_hash: sha256:abc123...,
  blockchain_anchor: tx:0xdef456...
}
```

### 5.4 MES & ERP Integration

| Interface | Protocol | Data Exchanged | Frequency |
|-----------|----------|----------------|-----------|
| **MES → Forge** | OPC-UA | Work orders, recipe selection, material lots | Per batch |
| **Forge → MES** | OPC-UA | Batch completion, yield, quality, genealogy | Per batch |
| **ERP → Forge** | HTTPS (unidirectional diode) | Inventory, demand forecast, maintenance | Daily |
| **Forge → ERP** | HTTPS (unidirectional diode) | Production, scrap, cost, carbon credits | Hourly |

---
