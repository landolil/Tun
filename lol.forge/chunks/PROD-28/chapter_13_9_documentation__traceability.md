## 9. Documentation & Traceability

### 9.1 Quality Records (Retention: 10 years minimum)

| Record Type | Format | Storage | Access |
|---|---|---|---|
| Material certificates (3.1/3.2) | PDF + QR code | PROD-37 digital twin + Hyperledger | Plant, QA, Customer |
| Inspection reports (UT, CT, ET, AE, VT, CMM) | Native + PDF | PROD-37 + local archive | Plant, QA, NDT |
| Test data (FAT, SAT, SIF proof, FBG cal, resonance) | Native + CSV | PROD-37 + local archive | Plant, QA, EE |
| NCR/CAPA (8D reports) | PDF | PROD-37 + CAPA tracker | Plant, QA, Design |
| Calibration certificates | PDF | PROD-37 + cal database | Metrology, QA |
| Operator training records | PDF + LMS | PROD-34 + PROD-37 | HR, QA, Plant |
| Design changes (ECO) | PDF + PLM | PROD-38 + PROD-37 | All |
| Batch records (production) | PROD-37 digital twin | Hyperledger Fabric | All (permissioned) |

### 9.2 Traceability — QR Code + Blockchain

| Item | QR Code Data | Blockchain (Hyperledger Fabric) |
|---|---|---|
| **Drum** | CSM-FAB-DRUM-<SN>-<LOT>-<DATE> | Genesis block: powder lot, sinter params, UT/CT, FBG cal |
| **Vessel** | CSM-FAB-VESL-<SN>-<LOT>-<DATE> | Roving lot, winding params, hydrotest, aerogel, glaze |
| **Port Valve** | CSM-FAB-PORT-<SN>-<STAGE>-<DATE> | Braze lot, actuation cal, leak test, FBG cal |
| **Coil Zone** | CSM-FAB-COIL-<ZONE>-<SN>-<DATE> | Conductor lot, FBG embed, resonance, cold plate |
| **Module** | CSM-FAB-MOD-<ZONE>-<SN>-<DATE> | GaN lot, gate driver, cap bank, SIF config, GIC test |

**Phoenix Protocol linkage:** Returned EOL Forge components re-enter with original QR → new batch record links old + new → circular mass balance closed.

---
