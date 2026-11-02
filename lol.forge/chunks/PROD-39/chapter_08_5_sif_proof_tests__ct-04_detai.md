## 5. SIF Proof Tests — CT-04 Detail (Expanded)

### 5.1 SIF Proof Test Matrix

Refer to Section 2.5 for the complete 24-SIF inventory and proof test procedure. This section provides the **traceability matrix** linking each SIF to its verification evidence.

| SIF | PROD-23 Ref | PROD-28 CT-04 | PROD-39 FAT | PROD-39 SAT | PROD-30 Quarterly |
|-----|-------------|---------------|-------------|-------------|-------------------|
| SIF-01 | Sec 6.2.1 | Test 1 | Full injection | Logic verify | Partial stroke |
| SIF-02 | Sec 6.2.2 | Test 2 | Full injection | Logic verify | Partial stroke |
| ... | ... | ... | ... | ... | ... |
| SIF-24 | Sec 6.2.24 | Test 24 | CPAT injection | CPAT injection | Logic verify |

### 5.2 SIF Verification Evidence Package

Each SIF proof test generates an **Evidence Package** archived in Git + DQR blockchain:

```
sif-evidence-SIF-XX-YYYYMMDD/
├── test_procedure.pdf (signed)
├── injection_log.csv (timestamped)
├── soe_export.csv (SOE timestamps, 2oo3 votes)
├── fbg_freeze_frame.json (384 channels at trip instant)
├── trip_time_measurement.pdf (oscilloscope trace)
├── pfd_calculation.xlsx (IEC 61508-6)
├── witness_signature.pdf (SIS Engineer)
├── blockchain_anchor.json (DQR tx hash)
└── pass_fail_certificate.pdf (Quality + Plant Manager)
```

### 5.3 SIF Re-Certification Triggers

Per PROD-38 ECO Process, any change affecting SIF envelope requires **full re-certification (CT-04 repeat)**:

- Firmware change to SIS logic (L2 PLC)
- Sensor change (FBG, PT, encoder, gas analyzer)
- Final element change (inverter, valve, brake)
- TSN/PTP infrastructure change
- ECO class Critical/Major on any CI in SIF path

---
