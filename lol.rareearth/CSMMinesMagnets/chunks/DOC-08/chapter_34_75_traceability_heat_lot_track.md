## 7.5 Traceability: Heat/Lot Tracking Blockchain Ledger

Full genealogy from **mine face → motor rotor** on Tardigradia blockchain (DOC-04/05).

### 7.5.1 Data Model (Per Lot)

```json
{
  "lotId": "HT-2026-ANTF-0447",
  "material": "NdFeB N48SH",
  "quantity": { "pieces": 2500, "mass_kg": 125000 },
  "genealogy": [
    {
      "stage": "MINE",
      "location": "Antofagasta IOCG, Sector 7",
      "timestamp": "2026-09-01T06:00:00Z",
      "data": { "assay": "HT-2026-ANTF-0447-ASSAY", "grade": "12.4% REO", "operator": "Aegis-Forge Mining" },
      "hash": "0x1a2b...c3d4"
    },
    {
      "stage": "SEPARATION",
      "location": "AF-CH-ANTF-03",
      "timestamp": "2026-09-10T14:30:00Z",
      "data": { "yield": "94.2%", "nd_purity": "99.7%", "operator": "Aegis-Forge Separation" },
      "hash": "0x2b3c...d4e5"
    },
    {
      "stage": "METAL/ALLOY",
      "location": "AF-CH-ANTF-03",
      "timestamp": "2026-09-15T08:00:00Z",
      "data": { "strip_cast_lot": "SC-2026-0447", "composition": "Nd29.5-Fe65.5-B4.5-Dy1.5-Co1.0", "operator": "Aegis-Forge Metallurgy" },
      "hash": "0x3c4d...e5f6"
    },
    {
      "stage": "MAGNET_MFG",
      "location": "AF-CH-ANTF-03",
      "timestamp": "2026-09-20T12:00:00Z",
      "data": { "sinter_lot": "SN-2026-0447", "machining": "CNC-5axis", "coating": "NiCuNi+Epoxy", "operator": "Aegis-Forge Magnets" },
      "hash": "0x4d5e...f6a7"
    },
    {
      "stage": "MIL_STD_1540",
      "location": "AF-CH-ANTF-03 Lab",
      "timestamp": "2026-09-25T16:00:00Z",
      "data": { "cert": "MIL1540-CSM-2026-004271", "results": "ALL_PASS", "operator": "Aegis-Forge QA (NADCAP)" },
      "hash": "0x5e6f...a7b8"
    },
    {
      "stage": "PORT_LOAD",
      "location": "Mejillones TCMN",
      "timestamp": "2026-10-01T10:00:00Z",
      "data": { "vessel": "MSC VALERIA V.241S", "container": "MSCU1234567", "temp_log": "TL-2026-0447", "operator": "TCMN Operations" },
      "hash": "0x6f7a...b8c9"
    },
    {
      "stage": "FACTORY_ACCEPT",
      "location": "CSM Austin, TX",
      "timestamp": "2026-11-15T09:00:00Z",
      "data": { "incoming_qc": "IQC-2026-0447", "disposition": "ACCEPT", "operator": "CSM Incoming QC" },
      "hash": "0x7a8b...c9d0"
    },
    {
      "stage": "MOTOR_PROD",
      "location": "CSM Austin, Line 3",
      "timestamp": "2026-11-20T14:00:00Z",
      "data": { "motor_sn": "CSM-MTR-2026-08921-001", "test": "MOTOR_TEST-2026-0447", "result": "PASS", "operator": "CSM Production" },
      "hash": "0x8b9c...d0e1"
    }
  ],
  "currentStage": "MOTOR_PROD",
  "blockchainAnchor": "0x7a3f...e9b2"
}
```

### 7.5.2 Smart Contracts for Automated Verification

| Contract | Trigger | Action | CSM Value |
|----------|---------|--------|-----------|
| **GradeCompliance** | Lot data written | Auto-verify $B_r$, $H_{cJ}$ vs. spec | Zero manual QC gate |
| **DFARSCompliance** | Specialty metal fields populated | Verify all melts = qualifying country | Audit-ready at any time |
| **TempGuardian** | Fe₁₆N₂ temp logger uploaded | Verify -20°C ± 2°C continuous | Prevent total loss |
| **StrikeBuffer** | Port strike detected | Auto-calc buffer days remaining | Dynamic inventory mgmt |
| **PaymentRelease** | Factory accept + blockchain confirm | Auto-release payment to Aegis-Forge | 30-day → 3-day terms |

---
