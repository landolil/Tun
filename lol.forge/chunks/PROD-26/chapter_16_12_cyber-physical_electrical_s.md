## 12. Cyber-Physical Electrical Security — IEC 62443, Air-Gap

### 12.1 Security Level Target

**SL-3 (IEC 62443-3-3)** — Protection against intentional violation using sophisticated means with moderate resources, generic skills, low motivation.

### 12.2 Architecture — Absolute Air Gap

```
┌─────────────────────────────────────────────────────────────────┐
│                        IT NETWORK (Enterprise)                   │
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────────────────┐  │
│  │ Email/Web   │  │ ERP/MES     │  │ Historian (Read-Only)   │  │
│  │ Domain      │  │ Domain      │  │ (InfluxDB Mirror)       │  │
│  └─────────────┘  └─────────────┘  └─────────────────────────┘  │
└─────────────────────────────────────────────────────────────────┘
                              │
                    ┌─────────▼─────────┐
                    │   DATA DIODE      │  (Unidirectional: OT → IT)
                    │   (Hardware)      │  Optical, no return path
                    │   1 Gbps          │  STANAG 5066 / OPC-UA
                    └─────────┬─────────┘
                              │
┌─────────────────────────────────────────────────────────────────┐
│                        OT NETWORK (Air-Gapped)                   │
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────────────────┐  │
│  │ SCADA (L3)  │  │ PLCs (L2)   │  │ RTUs (L1) + SIS (FPGA)  │  │
│  │ Historian   │  │ Interlocks  │  │ PID, PLL, FBG, TSN      │  │
│  │ OPC-UA Srv  │  │ Recipes     │  │ (All PMMA POF)          │  │
│  └─────────────┘  └─────────────┘  └─────────────────────────┘  │
└─────────────────────────────────────────────────────────────────┘
```

### 12.3 Security Controls (IEC 62443-3-3 SL-3)

| Control | Implementation | Verification |
|---------|----------------|--------------|
| **Network Segmentation** | Air gap + data diode (OT→IT only) | Penetration test quarterly |
| **Access Control** | Dual-factor (badge + biometric) for SCADA | Audit log review weekly |
| **Malware Protection** | Application whitelisting (no AV) | Hash verification at boot |
| **Patch Management** | Offline staging, signed images, MOC | PROD-38 config mgmt |
| **Incident Response** | 4-hour containment, 24-hr recovery | Tabletop exercise quarterly |
| **Supply Chain** | Signed firmware, SBOM, vendor audit | PROD-27 supplier qual |
| **ML Anomaly Detection** | FOLLOW-29 (autoencoder on twin data) | Continuous, <3σ alert |

### 12.4 Secure Boot Chain

```
FPGA/RTU/PLC BOOT SEQUENCE:
1. Hardware Root of Trust (eFuse) → Verify Stage 1 Bootloader (RSA-2048)
2. Stage 1 → Verify Stage 2 Firmware (ECDSA-P256)
3. Stage 2 → Verify Config (FRAM/MRAM, SHA256 + HMAC)
4. Stage 2 → Verify Application (Git tag hash, SHA256)
5. All stages → Measure into TPM 2.0 (PCR 0-7)
6. Remote Attestation → SCADA verifies PCR values at startup
```

**Key Management:** HSM (FIPS 140-2 Level 3) at SCADA. Keys rotated annually. Root key offline.

---
