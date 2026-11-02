## 9. Disaster Recovery

### 9.1 DR Strategy & Objectives

| Objective | Target | Mechanism |
|-----------|--------|-----------|
| **RTO (Recovery Time Objective)** | ≤ 4 hours | Cold standby Forge config, golden images, pre-staged spares |
| **RPO (Recovery Point Objective)** | ≤ 1 hour | Historian backup (1 Hz compressed), blockchain anchor (100 s) |
| **MTTR (Mean Time To Restore)** | ≤ 2 hours (single Forge) | Automated restore scripts, validated quarterly |
| **Data Integrity** | Zero loss (merkle) | SHA-256 merkle chain, DQR blockchain, cross-site replication |

### 9.2 Cold Standby Configuration

**Per Forge Site:** One cold standby configuration package stored off-site (geographically separate, EMP-hardened):

| Component | Storage | Update Frequency | Validation |
|-----------|---------|------------------|------------|
| **Git Repo Mirror** | Encrypted LTO-9 + S3 Glacier | Continuous (push mirror) | Quarterly full clone verify |
| **Golden Images (L0-L3)** | Encrypted NVMe (offline) | Per ECO deployment | Quarterly boot + CT-04 |
| **ROM/ML Models** | Encrypted NVMe | Per twin update | Quarterly twin validation |
| **SBOM/In-toto** | Encrypted NVMe | Per firmware release | Quarterly SLSA verify |
| **AVL/SCN Records** | Encrypted NVMe | Continuous (Git mirror) | Quarterly audit |
| **DQR Blockchain Snapshot** | Encrypted NVMe | Per 1000 blocks | Quarterly chain verify |
| **Site-Specific Config** | Encrypted NVMe | Per As-Operated update | Quarterly SAT rehearsal |

### 9.3 DR Activation Procedure

```
DR ACTIVATION (Shift Lead Authority):
1. DECLARE: Shift Lead declares DR event (site loss, cyber, GIC, seismic)
2. NOTIFY: CCB, CSMFAB HQ, Safety, Cyber, Regulatory (per PROD-32)
3. MOBILIZE: Deploy cold standby config to alternate site (pre-identified)
4. RESTORE:
   a. Clone Git mirror → verify signatures, tags, merkle chain
   b. Load golden images (L0 FPGA, L1 RTU, L2 PLC, L3 SCADA)
   c. Load ROM/ML models → verify checksums
   d. Restore historian from 1 Hz backup → verify merkle continuity
   e. Re-establish data diode → verify IT→OT integrity
   f. Re-establish PTP → verify <1 μs sync across all nodes
   g. Run CT-04 partial-stroke (6 SIFs) → verify safety envelope
5. VALIDATE: 30-min soak, zero spurious alarms, twin sync <3σ
6. AUTHORIZE: Shift Lead + Safety Engineer dual-key → resume production
7. DOCUMENT: NCR auto-generated, ECO if permanent, lessons learned
```

### 9.4 Golden Image Management

Golden images are **immutable, signed, versioned artifacts**:

| Image | Build Source | Signature | Test Validation | Storage |
|-------|--------------|-----------|-----------------|---------|
| **L0 FPGA** | `fpga-vX.Y.Z` tag | HSM-CM + HSM-SAFETY | HIL 10⁶ cycles, CT-04 SIS | Offline NVMe + LTO |
| **L1 RTU** | `rtu-vX.Y.Z` tag | HSM-CM + HSM-BUILDER | 72 hr soak, mutation >90% | Offline NVMe + LTO |
| **L2 PLC** | `plc-vX.Y.Z` tag | HSM-CM + HSM-SAFETY | Formal verify + SIF injection | Offline NVMe + LTO |
| **L3 SCADA** | `scada-vX.Y.Z` tag | HSM-CM | Container scan, integration test | Offline NVMe + LTO |
| **Twin** | `twin-vX.Y.Z` tag | HSM-CM | ROM <2% error, ML F1>0.95 | Offline NVMe + LTO |
| **ROM** | `rom-vX.Y.Z` tag | HSM-CM | GCI <2%, PROD-24 validation | Offline NVMe + LTO |

---
