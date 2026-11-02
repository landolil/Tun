## 9. Resilience & Recovery

### 9.1 Recovery Objectives

| System | RTO | RPO | Recovery Strategy |
|--------|-----|-----|-------------------|
| **L0 FPGA (16×)** | 30 min | 0 | Golden bitstream on HSM; JTAG load via BFRP cable |
| **L1 RTU (8×)** | 1 hr | 0 | Signed firmware on TUF; PXE boot from TSN VLAN 50 |
| **L2 PLC (8×)** | 2 hr | 1 hr | Codesys project from Git; recipe restore from historian |
| **L3 SCADA (2×)** | 4 hr | 1 hr | Cold standby VM (air-gapped); InfluxDB restore; twin resync |
| **TSN Switches (4×)** | 30 min | 0 | Golden config on HSM; IEEE 802.1AS re-sync |
| **PTP Grandmaster** | 15 min | 0 | Hot standby GM (dual); GNSS+OCXO failover |
| **Data Diode** | 1 hr | 0 | Spare diode (cold); config from Git; unidirectional verify |
| **Historian (InfluxDB)** | 2 hr | 1 hr | Continuous backup to air-gapped cold storage; WAL replay |
| **Digital Twin (PROD-37)** | 4 hr | 1 hr | HPC checkpoint restore; model parameter sync from Git |

### 9.2 Cold Standby Forge Configuration

| Component | Standby Strategy | Activation |
|-----------|------------------|------------|
| **L0/L1/L2/L3 Firmware** | Golden images in HSM, version-pinned | Automated on primary failure |
| **TSN Schedule** | Frozen at FAT; backup on all switches | FRER failover <1 ms |
| **PTP Configuration** | Dual GM (primary + hot standby) | Automatic <1 μs |
| **SIS Logic** | Identical FPGA bitstream on all 24 SIFs | 2oo3 voting masks single failure |
| **Historian Data** | Continuous replication to air-gapped cold store | Manual restore + WAL replay |
| **Digital Twin Models** | Git-tagged (PROD-38); containerized on HPC | PROD-37 auto-resync from historian |

### 9.3 Disaster Recovery Testing

| Test | Frequency | Scope | Pass Criteria |
|------|-----------|-------|---------------|
| **L0/L1/L2 Firmware Restore** | Quarterly | Single zone RTU + FPGA | <30 min, CT-04 pass |
| **L3 SCADA Failover** | Monthly | Dual SCADA switchover | <4 hr, historian continuity |
| **TSN Ring Failure** | Monthly | Single ring cut | FRER <1 ms, zero SIF trips |
| **PTP GM Failover** | Monthly | Primary → standby | <1 μs offset maintained |
| **Data Diode Verify** | Quarterly | Unidirectional test | Zero reverse traffic |
| **Full Forge Cold Restore** | Annual | All systems from cold | <4 hr RTO, <1 hr RPO |
| **Carrington + Cyber Tabletop** | Quarterly | IR-04 playbook | All decision gates <5 min |

---
