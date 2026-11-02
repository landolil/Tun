## 8. Radiation Hardening (NRC / DOE)

### 8.1 Applicability

| Source | Regulatory Basis | Applicability |
|--------|------------------|---------------|
| **Nuclear Feedstock** | 10 CFR 50 App B / 10 CFR 830 | If processing DOE/DOD nuclear waste |
| **Carrington GIC** | DOE-STD-1023 / IEEE 1547.2 | Mandatory (design basis) |
| **Space Weather** | NOAA SWPC / FEMA | Operational readiness |

**Current Design:** Processes municipal e-waste (Category A-D) + CSM EOL products. No nuclear feedstock in Phase 1. Radiation hardening per DOE-STD-1023 for GIC/EMP immunity.

### 8.2 GIC/EMP Immunity Design (PROD-26 Sec 3.3)

| Threat | Level | Mitigation | Test |
|--------|-------|------------|------|
| **Carrington GIC** | 5 V/km (100 A/m) | Floating secondary, NGR 5A, all-dielectric | CT-07 (annual) |
| **E1 HEMP** | 50 kV/m, 1 ns | Faraday cage (BFRP + YInMn glaze), POF | FOLLOW-27 |
| **E2 HEMP** | 1 kV/m, 1 μs | TSN surge protection, common-mode chokes | FOLLOW-27 |
| **E3 HEMP** | 100 V/km, 100 s | NGR, DC link hold-up, ride-through | CT-07 |

### 8.3 Electronics Survivability

| Component | TID (rad-Si) | DDD (n/cm²) | SEE LET (MeV·cm²/mg) | Mitigation |
|-----------|--------------|-------------|----------------------|------------|
| **GaN (GS66516T)** | 1 Mrad | 1×10¹⁴ | 60 | Rad-hard by design, 200% derating |
| **FPGA (Xilinx Zynq UltraScale+)** | 300 krad | 5×10¹³ | 80 | TMR + scrubbing, PROD-23 |
| **FBG Interrogator** | 100 krad | 1×10¹³ | N/A | PMMA fiber rad-hard, FOLLOW-11 |
| **PMMA POF** | 1 Mrad | N/A | N/A | 10-yr lifetime validated, FOLLOW-11 |

---
