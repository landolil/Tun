## Chapter 6: Defense Qualification — MIL-STD-1540, DFARS 2027, ITAR, SmCo Traceability

### 6.1 MIL-STD-1540 Test Requirements for SmCo

| Test | Method | SmCo 2:17 Acceptance | SmCo 1:5 Acceptance |
|------|--------|---------------------|---------------------|
| **Magnetic Properties** | MIL-STD-1540 Sec 4.5 | Br ≥1.05T, Hci ≥597 kA/m | Br ≥0.85T, Hci ≥1,592 kA/m |
| **Temperature Coefficients** | MIL-STD-1540 Sec 4.6 | α(Br) -0.03%/°C, β(Hci) -0.2%/°C | α -0.04%/°C, β -0.3%/°C |
| **Thermal Demagnetization** | MIL-STD-1540 Sec 4.7 | <5% loss at 350°C/2hrs | <5% loss at 250°C/2hrs |
| **Corrosion Resistance** | MIL-STD-1540 Sec 4.8 | <5 mg/cm² (salt spray) | <5 mg/cm² |
| **Mechanical Strength** | MIL-STD-1540 Sec 4.9 | Fracture toughness ≥10 MPa·m½ | ≥10 MPa·m½ |
| **Radiation Hardness** | MIL-STD-1540 Sec 4.10 | <10% loss at 10¹⁰ n/cm² | <10% loss |

**Tb-Doped SmCo 2:17** exceeds all: Hci 1,200-2,000 kA/m, 350-400°C operation, superior radiation hardness.

---

### 6.2 DFARS 2027 Compliance Verification

| DFARS Requirement | Verification Method | Chilean Pathway Evidence |
|-------------------|---------------------|-------------------------|
| **Specialty Metal Definition** | SmCo = Co-based alloy | Co separated in Chile (Stage 4) |
| **Qualifying Country** | Chile = CPTPP + FTA partner | Government certification |
| **Melting/Production** | Occurs in qualifying country | Metal reduction in Chile; sintering in US/Japan |
| **Traceability** | Heat/lot from ore to magnet | Blockchain (DOC-21 Ch. 4) |
| **Documentation** | Mill test reports + CoC | Aegis-Forge + sintering facility certs |

**Compliance Package**: **Chilean Government Certificate of Origin** + **Aegis-Forge Assay Reports** + **Sintering Facility MIL-STD-1540 Test Reports** + **Blockchain Traceability Ledger**.

---

### 6.3 ITAR/EAR Classification

| Item | USML/ECCN | Control Level | Chilean Impact |
|------|-----------|---------------|----------------|
| **SmCo Magnets** | USML Cat V (a) | ITAR (defense article) | Export license for magnet export |
| **SmCo Manufacturing Tech** | USML Cat V (c) | ITAR (technical data) | Tech transfer agreement required |
| **Tb Metal/Alloy** | ECCN 1C003 | EAR (dual-use) | Export license for Tb export |
| **Sm/Co/Tb Separation Tech** | ECCN 1E001 | EAR (tech) | Aegis-Forge tech = controlled |
| **Aegis-Forge Stage 8 Design** | ECCN 1E001 | EAR | Licensing for tech transfer |

**Mitigation**: **Chilean separation + US/Japan sintering** keeps **ITAR-controlled steps in US/Japan**. **EAR-controlled tech transfer** via **US-Chile CMA + CPTPP Art 9** investment protection.

---

### 6.4 SmCo Traceability Architecture

```
DFARS/ITAR Traceability Ledger (Blockchain):
    
Block N: Chilean Mine Assay
    ├── Heat ID, GPS coordinates, date, grade (Co/Sm/Tb)
    ├── Sernageomin concession, FBC/CDC consent ref
    └── Hash: SHA-256(prev_block + data)

Block N+1: Aegis-Forge Processing
    ├── Batch ID, cluster ID, stage yields
    ├── Stage 4 Co recovery %, Stage 8 Sm/Tb recovery %
    ├── Purity assays (ICP-MS, 4N cert)
    └── Hash: SHA-256(prev_block + data)

Block N+2: Metal Reduction
    ├── Reduction batch ID, Ca-reduction parameters
    ├── Metal purity (O, C, Fe, impurity ppm)
    ├── Yield %, cathode/ingot IDs
    └── Hash: SHA-256(prev_block + data)

Block N+3: Alloy Production
    ├── Master alloy ID, stoichiometry verification
    ├── ICP-OES composition (Sm, Co, Fe, Cu, Zr, Tb)
    ├── Particle size distribution (laser diffraction)
    └── Hash: SHA-256(prev_block + data)

Block N+4: Sintering (US/Japan)
    ├── Sintering facility, ITAR registration
    ├── MIL-STD-1540 test results (full panel)
    ├── Magnet serial numbers, grade certification
    └── Hash: SHA-256(prev_block + data)

Block N+5: Motor Integration (CSM)
    ├── Motor serial number, magnet lot mapping
    ├── Performance test data (torque, efficiency, temp)
    ├── DFARS compliance certificate
    └── Hash: SHA-256(prev_block + data)
```

**Audit Trail**: **Immutable from Chilean ore to US motor**. **DFARS audit** = query blockchain for any magnet serial number.

---

### 6.5 Chapter 6 Summary

SmCo defense qualification requires **MIL-STD-1540 full panel**, **DFARS 2027 qualifying country chain** (Chile separation → US/Japan sintering), **ITAR compliance** (sintering in US/Japan), and **blockchain traceability** (ore to motor). **Aegis-Forge provides 4N Sm/Tb/Co feedstock** with **complete assay documentation** for ITAR technical data package.

**Next Chapter**: Chapter 7 — Economic Model: SmCo $150-300/kg, Tb $1,500-3,000/kg, Co $30-60/kg.

---
