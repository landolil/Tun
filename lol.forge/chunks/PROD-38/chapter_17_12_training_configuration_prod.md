## 12. Training Configuration (PROD-34 Integration)

### 12.1 DQR Blockchain Configuration

The **Digital Qualification Record (DQR)** on Hyperledger Fabric (3 orgs: Forge, Depot, Regulator) is a Configuration Item:

| DQR Element | Version Control | Update Trigger | Retention |
|-------------|-----------------|----------------|-----------|
| **Operator Certificates** | Blockchain transaction | PROD-34 certification | Permanent |
| **Curriculum Versions** | Git tag `curr-vX.Y.Z` + blockchain | ECO Documentation/Major | Permanent |
| **Simulator Scenarios** | Git tag `sim-vX.Y.Z` + blockchain | PROD-37 monthly generation | Permanent |
| **Competency Assessments** | Blockchain transaction | Per shift, per scenario | 7 years |
| **Remediation Records** | Blockchain transaction | PROD-34 personalized | 7 years |

### 12.2 Simulator Configuration Management

| Simulator Component | Config Baseline | Version Sync |
|---------------------|-----------------|--------------|
| **Physics Engine** | PROD-37 ROM export (`rom-vX.Y.Z`) | Auto on ROM ECO |
| **ML Anomaly Models** | PROD-37 ML model cards (`ml-vX.Y.Z`) | Auto on ML ECO |
| **HMI Replica** | PROD-35 ISA-101 screens | Auto on HMI ECO |
| **Scenario Packs** | PROD-37 monthly export | Auto on scenario generation |
| **RCT Tensor** | PROD-34 RCT state | Auto per training session |

---
