## 11. Vendor & Third-Party Risk Management

### 11.1 Remote Access Policy

| Vendor Type | Access Method | Duration | Controls |
|-------------|---------------|----------|----------|
| **Tier 1 (GaN, PTP, TSN)** | Dedicated air-gapped laptop (Forge-owned) | 4 hr max per session | SL escort, screen recording, no data egress |
| **Tier 2/3** | No remote OT access; IT-only via corporate VPN | N/A | Standard corporate MFA |
| **Emergency Vendor** | On-site only (travel to Forge) | As needed | SL + Safety Eng + Cyber Eng approval |

### 11.2 Cloud Services Policy

| Service | Allowed | Controls |
|---------|---------|----------|
| **GitHub/GitLab (source)** | Yes (IT network only) | PR required, signed commits, SBOM |
| **Container Registry** | Yes (IT network only) | Signed images, vulnerability scan |
| **CVE Feeds** | Yes (IT → OT via data diode) | Curated, validated, air-gapped import |
| **Telemetry/Analytics** | No (OT→IT only via diode) | Aggregated, anonymized, no PII |
| **Remote Monitoring** | No (air-gap absolute) | On-site only |

### 11.3 Firmware Update Process

```
1. Vendor releases signed firmware + SBOM (CycloneDX) → TUF repo (IT)
2. Cyber Eng validates: signature, SBOM diff, CVE scan, reproducibility
3. ECO raised (PROD-38): impact analysis, test plan, rollback plan
4. SL + Safety Eng approve (if SIS-affected: CT-04 re-test required)
5. Staged deploy via TSN VLAN 50 (read-only from OT):
   a. 1 L1 RTU → 24 hr soak → CT-04 partial
   b. 1 Stage PLC → 24 hr soak → CT-04 partial
   c. All L0 FPGAs → 1 hr soak → CT-04 full
   d. L3 SCADA → 1 hr soak → twin sync verify
6. Git tag release (PROD-38); DQR update (PROD-34); DQR blockchain log
```

---
