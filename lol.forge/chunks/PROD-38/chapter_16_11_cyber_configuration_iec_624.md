## 11. Cyber Configuration (IEC 62443 SL-C)

### 11.1 Security Level Mapping

| SL-C | Forge Implementation | Evidence |
|------|---------------------|----------|
| **SL-C 1** | All components identified in CI taxonomy (Sec 1.3) | CI registry, CUUID linkage |
| **SL-C 2** | Version control (Git), change control (ECO), access control (IAM) | Git history, ECO records, PROD-36 IAM |
| **SL-C 3** | Signed firmware (HSM), SBOM (CycloneDX), secure boot, TUF | SFP packages, SBOMs, in-toto, TUF repo |
| **SL-C 4** | Supply chain integrity (SLSA L3), hardware root of trust, tamper detection (FBG) | SLSA attestations, HSM keys, PROD-36 FBG tamper |

### 11.2 Firmware Integrity Verification

**Boot-time (Every Power Cycle):**
```
1. FPGA: Bitstream SHA-256 vs. HSM-stored golden hash → mismatch = halt
2. RTU: Firmware SHA-256 vs. TUF target → mismatch = halt + alert
3. PLC: Program CRC vs. signed manifest → mismatch = halt + alert
4. SCADA: Container image digest vs. signed SBOM → mismatch = alert
5. Twin: ROM/ML model checksums vs. Git tags → mismatch = alert
```

**Runtime (Continuous):**
- FBG tamper detection → CPAT update (PROD-36)
- TSN frame anomaly → CPAT update (PROD-36)
- PTP offset > 1 μs → CPAT update (PROD-36)
- Weekly SBOM diff vs. TUF repo → drift = block deploy + vendor CAPA

### 11.3 Secure Boot Chain

```
HSM Root CA (Offline, air-gapped)
    │
    ├── HSM-CM (Configuration Manager) → signs Git tags, ECO approvals
    ├── HSM-BUILDER (CI/CD Pipeline) → signs SFP packages, SBOMs
    ├── HSM-SAFETY (Safety Engineering) → signs SIL-3 artifacts, CT-04
    ├── HSM-CYBER (Cyber Security) → signs CPAT params, TUF root
    └── HSM-OPS (Operations) → signs batch recipes, operator certs

Each Forge node (FPGA, RTU, PLC, SCADA, Twin, Switch, Diode):
  - Stores HSM-CM + HSM-BUILDER + HSM-SAFETY public keys
  - Verifies signature chain: artifact → builder → CM → root
  - Rejects any artifact with broken chain
```

---
