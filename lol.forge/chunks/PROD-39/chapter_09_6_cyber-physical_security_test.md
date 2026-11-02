## 6. Cyber-Physical Security Tests

### 6.1 Penetration Test (Annual)

| Scope | Method | Standard | Acceptance |
|-------|--------|----------|------------|
| **OT Network** | Black-box + Gray-box (network topology known) | NIST SP 800-115 | Zero Critical/High findings; Medium ≤5 with CAPA |
| **Data Diode** | Protocol fuzzing, rate limit bypass, merkle forge | Custom | Zero bypasses; merkle verification holds |
| **TUF Repository** | Target file replacement, rollback, freeze | TUF spec + in-toto | Zero successful attacks |
| **FBG Tamper** | Optical injection, wavelength spoofing | PROD-36 | Λ_CP >10 on >5 channels → auto-NCR |
| **Physical Access** | Lock bypass, badge clone, USB drop | Physical pen test | Zero unauthorized OT access |

### 6.2 Red Team Exercise (Annual)

| Scenario | Duration | Objective | Success Criteria |
|----------|----------|-----------|------------------|
| **IR-01: SIF Bypass** | 4 hr | Forge SIF-16 bypass via dual-key compromise | Detect at CPAT Λ >100 |
| **IR-02: FBG Tamper** | 8 hr | Spoof drum temps to hide overheating | Detect at Λ_ML >10σ |
| **IR-03: Firmware Compromise** | 4 hr | Deploy malicious RTU firmware via supply chain | Block at TUF/SLSA gate |
| **IR-04: Carrington+Cyber** | 2 hr | GIC storm + coordinated cyber attack | Island transition <5 ms, SIFs hold |
| **IR-05: TSN Corruption** | 2 hr | Corrupt gate control list, VLAN hopping | Detect at TSN frame anomaly |
| **IR-06: PTP Compromise** | 1 hr | Spoof grandmaster, offset >1 μs | Detect at PTP monitor, SIF-08 trip |

### 6.3 Tabletop Exercises (Quarterly)

| Exercise | Participants | Duration | Deliverable |
|----------|--------------|----------|-------------|
| **TT-01: SIF Bypass Authorization** | Shift Lead, Safety Eng, Cyber Eng | 2 hr | Decision log, timing |
| **TT-02: FBG Tamper Response** | Controls Eng, SIS Eng, MT | 2 hr | NCR auto-gen time |
| **TT-03: Firmware Supply Chain** | CM, Cyber, Supply Chain | 2 hr | SCN process validation |
| **TT-04: Carrington+Cyber** | All above + Plant Mgr | 3 hr | Island transition drill |

### 6.4 Vulnerability Scanning (Monthly)

| Scope | Tool | Frequency | SLA |
|-------|------|-----------|-----|
| **OT Passive Scan** | Claroty/Nozomi (read-only) | Monthly | Zero new Critical |
| **IT Active Scan** | Nessus/OpenVAS | Monthly | Patch Critical ≤7d |
| **Firmware CVE Check** | TUF repo + NVD | Weekly | Block deploy if CVSS≥7 |
| **SBOM Drift Check** | CycloneDX diff | Weekly | Zero unexplained drift |

---
