## 8. Incident Response

### 8.1 Incident Classification

| Severity | Definition | Examples | Response Time |
|----------|------------|----------|---------------|
| **SEV-1 (Critical)** | Safety impact, SIF compromise, physical damage | SIF bypass unauthorized, FBG tamper + process deviation, firmware malicious | <5 min |
| **SEV-2 (High)** | Operational impact, data integrity loss | TSN schedule corruption, PTP sync loss, unauthorized config change | <15 min |
| **SEV-3 (Medium)** | Detection without confirmed impact | IDS alert single source, CVE in deployed firmware, failed auth | <1 hr |
| **SEV-4 (Low)** | Informational, policy violation | Policy exception request, audit finding, vendor notification | <24 hr |

### 8.2 Incident Response Playbooks

#### Playbook IR-01: Unauthorized SIF Bypass Attempt
```
1. DETECT: IDS-004 triggers (SIF trip without process cause OR dual-key not presented)
2. CONTAIN: SIS FPGA locks all 24 SIFs in armed state; no further bypass possible
3. ERADICATE: SL + Safety Eng investigate; revoke compromised tokens; rotate keys
4. RECOVER: CT-04 partial-stroke test all 24 SIFs; verify SOE integrity
5. LESSONS: Root cause (token theft? insider? supply chain?); update playbook
```

#### Playbook IR-02: FBG Tamper Detected (Physical)
```
1. DETECT: IDS-003 or tamper algorithm >3σ
2. CONTAIN: SL authorizes zone hold; affected zone PID → safe setpoint; SIF-24 armed
3. ERADICATE: MT + QI physical inspection (PPE, <3 min don); fiber continuity test
4. RECOVER: FBG recalibration (CT-06) on affected channels; CT-04 SIF proof
5. LESSONS: Physical security review; camera footage; access log correlation
```

#### Playbook IR-03: Supply Chain Firmware Compromise
```
1. DETECT: IDS-005 (firmware hash mismatch) OR CVE match in deployed version
2. CONTAIN: Block affected version in TUF repo; isolate affected nodes (TSN VLAN 50)
3. ERADICATE: Vendor CAPA; rebuild from source; sign new version; SBOM regenerate
4. RECOVER: Staged rollout (1 zone → 1 stage → full); CT-04 if SIS affected
5. LESSONS: SLSA level review; vendor security reassessment; pen test scope expand
```

#### Playbook IR-04: Carrington Storm + Cyber Event (Combined)
```
1. DETECT: PROD-26 GIC sensors + IDS correlation (GIC + network anomaly)
2. CONTAIN: 5 ms island transition (PROD-23); SIS on LiFePO₄ UPS; data diode holds
3. ERADICATE: Post-storm (30 min grid stable): full SIS CT-04; FBG CT-06; TSN verify
4. RECOVER: Staged grid reconnect (PROD-23); twin state reconciliation (PROD-37)
5. LESSONS: GIC-cyber correlation analysis; update threat model; tabletop exercise
```

### 8.3 Communication & Notification

| Stakeholder | SEV-1 | SEV-2 | SEV-3 | SEV-4 |
|-------------|-------|-------|-------|-------|
| **Shift Lead** | Immediate (voice + HMI) | <5 min (HMI) | <15 min (HMI) | Next shift handover |
| **Safety Engineer** | Immediate (voice) | <10 min (voice) | <30 min (email) | Weekly report |
| **Plant Manager** | <15 min (voice) | <30 min (voice) | <2 hr (email) | Monthly report |
| **CSM VP Engineering** | <30 min (voice) | <1 hr (voice) | <4 hr (email) | Quarterly report |
| **Board (if SEV-1)** | <1 hr (voice) | — | — | — |
| **Regulator (if safety)** | <4 hr (per 10 CFR 50.72) | — | — | — |
| **Law Enforcement (if APT)** | <24 hr (per CISA) | — | — | — |

---
