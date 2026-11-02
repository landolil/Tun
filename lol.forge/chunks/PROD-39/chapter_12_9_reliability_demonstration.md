## 9. Reliability Demonstration

### 9.1 MTBF/MTTR Demonstration

**Test Plan:** Accelerated life testing on critical components + fleet data aggregation (PROD-37).

| Component | Target MTBF | Demonstration Method | Sample Size |
|-----------|-------------|----------------------|-------------|
| **GaN Inverter** | >50,000 hr | Thermal soak + power cycling + GIC | 8 units (1 per zone) |
| **FBG Interrogator** | >100,000 hr | Continuous operation + thermal cycle | 4 units (redundant) |
| **TSN Switch** | >100,000 hr | Traffic load + thermal + EMI | 2 core + 8 edge |
| **PTP Grandmaster** | >50,000 hr | Holdover + GIC + sync accuracy | 1 primary + 1 hot spare |
| **BFRP Vessel** | >20 yr | Hydrotest + AE + thermal cycle | 3 FA vessels |
| **ZrB₂-SiC Drum** | >500 cycles | Accelerated thermal cycle | 3 FA drums |

### 9.2 Availability Demonstration

| Metric | Target | Demonstration |
|--------|--------|---------------|
| **Operational Availability** | >95% | 10,000 hr fleet operation (10 Forges × 1000 hr) |
| **Planned Maintenance** | <5% downtime | PROD-30 PM schedule compliance |
| **Unplanned Downtime** | <1% | PROD-30 failure database |
| **SIF Spurious Trip Rate** | <1/yr per SIF | 24 SIFs × 10 Forges × 1 yr |

### 9.3 Reliability Growth

| Phase | Activity | Metric |
|-------|----------|--------|
| **Design** | FMEA (PROD-25), FTA (SIFs), RBD | MTBF prediction |
| **FA Testing** | HALT/HASS on components | Failure mode discovery |
| **FAT** | CT-01..10, 72 hr soak | Zero spurious trips |
| **SAT** | 6 batches, 500 hr | Field reliability init |
| **Fleet** | PROD-37 twin aggregation | Bayesian MTBF update |

---
