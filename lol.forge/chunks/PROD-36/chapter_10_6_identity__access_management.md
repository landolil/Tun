## 6. Identity & Access Management

### 6.1 Role-Based Access Control (RBAC)

| Role | OT Access | IT Access | Authentication | Authorization Gates |
|------|-----------|-----------|----------------|---------------------|
| **Forge Operator (FO)** | L3 SCADA (read), L2 PLC (execute recipe) | None | Badge + PIN + YubiKey | Recipe select, batch start |
| **Depot Technician (DT)** | L3 SCADA (depot view), L2 PLC (depot) | None | Badge + PIN + YubiKey | Depot recipe, LIBS override |
| **Maintenance Tech (MT)** | L3 SCADA (diag), L1 RTU (config), L0 FPGA (bitstream) | None | Badge + PIN + YubiKey | PM mode, firmware update |
| **QA Inspector (QI)** | L3 SCADA (NDT view), L1 RTU (FBG cal) | None | Badge + PIN + YubiKey | CT-04, CT-06, CT-08 |
| **Shift Lead (SL)** | L3 SCADA (full), L2 PLC (bypass), SIS (dual-key) | Read-only (historian) | Badge + PIN + YubiKey + Safety Eng | SG-2, SG-3, CT-04, SAT-05, SIF bypass |
| **Safety Engineer** | L3 SCADA (SIS view), SIS (dual-key) | Read-only | Badge + PIN + YubiKey + SL | SIF bypass, SIF config |
| **Controls Engineer** | L3 SCADA (config), L2/L1/L0 (dev mode) | Dev network (isolated) | Badge + PIN + YubiKey + SL | ECO implementation, PID tuning |
| **Cyber Engineer** | L3 SCADA (diag), TSN switches, PTP GM | Security tools network | Badge + PIN + YubiKey + SL | TSN schedule, PTP config, IDS rules |
| **Plant Manager** | L3 SCADA (read), Business reports | Full IT | Badge + PIN + YubiKey | Business decisions, budget |

### 6.2 Just-In-Time (JIT) Privileged Access

| Privilege | Max Duration | Approval | Audit |
|-----------|--------------|----------|-------|
| **L0 FPGA Bitstream Load** | 30 min | SL + Controls Eng | Full bitstream hash log |
| **L1 RTU Firmware Update** | 60 min | SL + Controls Eng | Signed image, rollback test |
| **L2 PLC Logic Change** | 4 hr | SL + Safety Eng (if SIS) | ECO required, CT-04 re-test |
| **TSN Schedule Change** | 2 hr | SL + Cyber Eng | Frozen schedule, FAT re-verify |
| **PTP GM Config Change** | 30 min | SL + Cyber Eng | Sync verification <1 μs |
| **SIF Bypass** | 4 hr | SL + Safety Eng (dual-key) | Blockchain log, time-limited |
| **Data Diode Config** | 1 hr | SL + Cyber Eng + IT Sec | Unidirectional verification |

### 6.3 Hardware Token Requirements

| Token Type | Use Case | Standard |
|------------|----------|----------|
| **YubiKey 5C NFC** | Primary MFA (FIDO2/WebAuthn, PIV, OTP) | FIPS 140-2 Level 2 |
| **Smart Card (PIV)** | Backup MFA, email signing | NIST SP 800-73 |
| **Hardware Security Module (HSM)** | Firmware signing root CA | FIPS 140-2 Level 3 |
| **Token Policy** | 1 token per person, no sharing, immediate revocation on loss | PROD-38 CM |

---
