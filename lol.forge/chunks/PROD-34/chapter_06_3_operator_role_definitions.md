## 3. Operator Role Definitions

### 3.1 Five Role Tracks

| Role | Primary Responsibility | Certification Level | Forge/Depot |
|------|------------------------|---------------------|-------------|
| **Forge Operator (FO)** | Cascade control, batch execution, Stage transitions | Apprentice → Journeyman → Master | Forge (primary) + Depot (cross) |
| **Depot Technician (DT)** | EOL disassembly, solvolysis, LIBS classification | Apprentice → Journeyman → Master | Depot (primary) + Forge (cross) |
| **Maintenance Technician (MT)** | PM/CBM execution, spares management, tooling | Apprentice → Journeyman → Master | Forge + Depot |
| **QA Inspector (QI)** | NDT execution, NCR/CAPA, audit, traceability | Apprentice → Journeyman → Master | Forge + Depot |
| **Shift Lead (SL)** | Batch authorization, SIF bypass, emergency command | Master → Instructor | Forge (primary) |

### 3.2 Role Competency Boundaries

```
Forge Operator (FO) — Primary: PROD-14-21 Stage control, PROD-23 L1/L2 control, PROD-29 SOPs
    └─ Cross-train: PROD-22 Depot disassembly, solvolysis, LIBS classification (40 hrs)
    
Depot Technician (DT) — Primary: PROD-22 Depot ops, PROD-33 crate/crate wash, PROD-30 PM
    └─ Cross-train: PROD-14-21 Stage control overview, PROD-23 L3 SCADA monitoring (40 hrs)
    
Maintenance Technician (MT) — Primary: PROD-30 PM/CBM, PROD-04/06/09/10 hardware, PROD-25 FEA
    └─ Cross-train: PROD-22 Depot equipment (solvolysis reactor, disassembly cell) (40 hrs)
    
QA Inspector (QI) — Primary: PROD-28 NDT, PROD-38 config mgmt, PROD-39 FAT/SAT
    └─ Cross-train: PROD-22 depot NDT (LIBS/XRF calibration), PROD-30 CBM data review (40 hrs)
    
Shift Lead (SL) — Primary: PROD-29 batch auth, PROD-28 SIF auth, PROD-36 cyber response
    └─ Cross-train: All roles — SL must authorize any role's critical action (80 hrs)
```

---
