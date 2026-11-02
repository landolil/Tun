## 5. Supply Chain Cyber Risk Management

### 5.1 AVL Vendor Security Requirements (PROD-33 Integration)

| Tier | Requirement | Verification | Frequency |
|------|-------------|--------------|-----------|
| **Tier 1 (12 Critical)** | SBOM (CycloneDX), Firmware signing (RSA-4096), 3rd-party pen test, Secure boot | Audit + automated SBOM validation | Annual on-site |
| **Tier 2 (18 Essential)** | SBOM, Firmware signing, Vulnerability disclosure program | Audit + automated SBOM validation | Biennial on-site / Annual remote |
| **Tier 3 (20 Normal)** | SBOM, Vulnerability disclosure | Questionnaire + automated SBOM validation | Biennial remote |

### 5.2 Critical Supplier Cyber Specifications

| Supplier | Component | Security Requirements |
|----------|-----------|----------------------|
| **GaN Systems** | GS66516T HEMT | Firmware signing (none - hardware only), SBOM for driver IC, no JTAG in production |
| **Microchip** | PTP Grandmaster (5071A) | Signed firmware, secure boot, SBOM, 3rd-party pen test |
| **Hirschmann/Belden** | TSN Switches | Signed firmware, IEEE 802.1AR DevID, SBOM, secure boot, no default credentials |
| **Wind River / Zephyr** | L1 RTU OS | Signed kernel, SBOM, reproducible builds, CVE monitoring |
| **Siemens / Codesys** | L2 PLC Runtime | Signed firmware, SBOM, secure boot, license dongle |
| **Ignition / Inductive Automation** | L3 SCADA | Signed modules, SBOM, secure boot, 2FA for designer |
| **GaN Driver IC (LMG1210)** | L0 FPGA Gate Driver | No firmware (analog), supply chain integrity via authorized disti |

### 5.3 Firmware Supply Chain Integrity

| Stage | Control | Tool |
|-------|---------|------|
| **Development** | Signed commits (GPG), PR required, CI/CD pipeline | GitLab/GitHub + Cosign |
| **Build** | Reproducible builds, SBOM generation (Syft), SLSA Level 3 | GitHub Actions + SLSA |
| **Sign** | RSA-4096/ECDSA-P384, HSM-backed, timestamped | Cosign + Fulcio/Root CA |
| **Distribute** | TUF (The Update Framework) repo, in-toto attestations | TUF + in-toto |
| **Verify** | Boot-time signature verification, SBOM match, version pin | U-Boot/Zephyr verified boot |
| **Monitor** | CVE feed (NVD, GitHub), automated patch build, staged rollout | Dependabot + ArgoCD |

---
