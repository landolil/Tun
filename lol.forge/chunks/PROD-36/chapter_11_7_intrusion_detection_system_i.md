## 7. Intrusion Detection System (IDS)

### 7.1 Multi-Layer Detection Architecture

| Layer | Data Source | Detection Method | Response |
|-------|-------------|------------------|----------|
| **Network (TSN)** | TSN switch mirrors (VLAN 10-50) | Zeek/ Suricata + custom TSN parsers | Alert → SL + Cyber Eng |
| **Process (L1/L2/L3)** | FBG (384 ch), MFC (32), Pyro (8), XRF (8), AE (16) | ML Autoencoder (FOLLOW-29) >3σ | Auto-NCR → SL review |
| **Safety (SIS)** | 24 SIF SOE, 2oo3 vote, trip timestamps | Deterministic: unexpected trip, vote mismatch | Immediate SIF lockdown |
| **Physical (FBG/PMF)** | FBG wavelength, optical power, channel count | Tamper algorithm (Sec 4.3) | Auto-NCR + SL + physical inspection |
| **Supply Chain** | SBOM drift, CVE matches, firmware hash mismatch | Automated SBOM diff + CVE feed | Block deploy → vendor CAPA |
| **Insider (HR/Access)** | Badge logs, JIT requests, USB port monitors | UEBA (User Entity Behavior Analytics) | HR + Security review |

### 7.2 Detection Rules (Critical)

| Rule ID | Condition | Severity | Auto-Response |
|---------|-----------|----------|---------------|
| **IDS-001** | TSN frame on VLAN 10 from unauthorized MAC | Critical | Port shutdown, SL alert |
| **IDS-002** | PTP offset >1 μs sustained >1 min | High | GM failover, SL alert |
| **IDS-003** | FBG Λ > 10 on >5 channels simultaneously | Critical | Auto-NCR, SIF-24 evaluate |
| **IDS-004** | SIF trip without process cause (SOE analysis) | Critical | SIF lockdown, SL + Safety Eng |
| **IDS-005** | Firmware hash mismatch at boot | Critical | Boot halt, SL + Controls Eng |
| **IDS-006** | Unauthorized JIT request (no SL approval) | High | Request denied, audit log |
| **IDS-007** | Data diode reverse traffic attempt | Critical | Diode alarm, physical inspection |
| **IDS-008** | AE pattern match: non-process impact signature | High | Zone lockdown, SL review |

### 7.3 Correlation Engine (PROD-37 Twin)

The digital twin (PROD-37) runs a correlation engine at 10 Hz that fuses:
- Network flow anomalies (TSN)
- Process variable deviations (FBG, MFC, pyro, XRF)
- Safety system events (SIF trips, 2oo3 votes)
- Physical tamper signals (FBG optical power, wavelength)
- Supply chain signals (SBOM, firmware hashes)

**Correlation Logic:**
```
ALERT = (Network_Anomaly ∧ Process_Deviation) ∨
        (Process_Deviation ∧ Physical_Tamper) ∨
        (Safety_Event ∧ ¬Process_Cause) ∨
        (Supply_Chain_Drift ∧ Deployed_Version)
```

---
