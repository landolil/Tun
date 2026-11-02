## 12. Configuration Management — GitOps for OT

### 12.1 Version Control Strategy

```
Git Repository (lol.forge-control):
├── /rtu/zone_01/...zone_08/        # RTU application code (Zephyr)
├── /plc/stage_01/...stage_08/      # PLC programs (ST/SFC)
├── /sis/sif_001/...sif_024/        # SIS logic (FPGA bitstream + config)
├── /scada/ignition/                # SCADA project (Gateway + Perspective)
├── /network/tsn/                   # TSN GCL, VLAN, PTP config
├── /recipes/stage_01/...stage_08/  # Stage recipes (XML, ISA-88)
├── /firmware/fpga/                 # FPGA bitstreams (signed)
├── /docs/                          # Architecture, interfaces, test plans
└── /ci/                            # Pipeline: lint → test → sign → package
```

### 12.2 Change Control (Management of Change — MOC)

| Change Class | Approval | Testing | Deployment |
|--------------|----------|---------|------------|
| **Emergency** | Shift Lead + Safety | Regression (1 hr) | Hotfix branch → direct |
| **Minor (config)** | Engineer + Safety | Unit + integration (4 hr) | Feature branch → PR → staging |
| **Major (logic)** | Lead Eng + Safety Mgr | Full FAT/SAT subset (1 week) | Release branch → staged rollout |
| **Architecture** | VP Eng + Safety VP | Full V&V (1 month) | Major version tag |

**Rollback:** Every deployment tagged. Rollback = `git checkout <prev-tag> && deploy` (<10 min).

### 12.3 Disaster Recovery

| Scenario | RTO | RPO | Procedure |
|----------|-----|-----|-----------|
| **SCADA server failure** | <1 min | 0 (sync) | VRRP failover to standby |
| **RTU/PLC corruption** | <10 min | 0 (FRAM) | Reflash from signed Git tag |
| **Network partition** | <50 ms | 0 | FRER path switch |
| **Ransomware (IT)** | N/A | N/A | Air-gap — OT unaffected |
| **Facility loss** | 4 hr | 24 hr | Restore from BFRP NAS + GitHub |

---
