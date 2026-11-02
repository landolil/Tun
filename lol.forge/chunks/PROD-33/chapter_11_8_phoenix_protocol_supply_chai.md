## 8. Phoenix Protocol Supply Chain Integration

### 8.1 Circular Material Flow (CMF-RQT from PROD-22)

```
CMF-RQT[M_virgin, M_return, Q_gen, P_blend, Γ_stage, Λ_depot, Ψ_econ]

M_virgin = Virgin feedstock mass vector (7 categories from PROD-13)
M_return = EOL return mass vector (depot LIBS classified, 65 hubs)
Q_gen = Generation-dependent quality (drum: O₂ 0.5%→0.7% over 31 gen)
P_blend = Dynamic blend ratio (MFC controlled ±2%, 40-60% EOL)
Γ_stage = Stage re-entry gate (7 gates: 0, 1, 3, 4, 5, 6, 7, 8)
Λ_depot = Depot logistics cost (transport + disassembly + solvolysis)
Ψ_econ = Economic objective (max NPV s.t. quality constraints)
```

### 8.2 EOL Material Re-Entry Specification

| EOL Category | Re-Entry Stage | Processing Required | Yield Target | Cost/50 kg |
|--------------|----------------|---------------------|--------------|------------|
| **D1 Intact Aegis** | Stage-specific | Disassembly only | 95% mass | $4.20 |
| **D2 Structural BFRP** | Stage 3 (pyrolysis) | Solvolysis 350°C/2h | 99% Elium®, 95% fiber | $2.80 |
| **D3 Ceramic Cores** | Stage 8 (ZrB₂) | Crush → mill → hydromet | 90% Zr, 95% Y | $6.50 |
| **D4 Critical Mineral Glazes** | Stage 4 (In), 7 (Co) | Ionic liquid extraction | 99.9% In, 98% Y/Co | $6.50 |
| **D5 Electronics** | Stage 0 (AMLS) | Discharge → shred | 95% liberation | $1.50 |
| **D6 Energy Storage** | Stage 3/4 | Discharge → hydromet | 98% Li/Co/Ni | $6.50 |
| **D7 MAX Phase** | Stage 7 (Fe) | Chloride-thermal | 90% Ti, 85% Al | $8.20 |

### 8.3 Blend Ratio Optimization (PROD-31 Integration)

| Virgin Blend | Gate Fee ($/ton) | EOL Blend | Net/Batch (10 Forges) | Annual Net/Forge |
|--------------|------------------|-----------|----------------------|------------------|
| 60% | $0 | 40% | $8.50 | $170K |
| 60% | $50 | 40% | $11.00 | $220K |
| 60% | $100 | 40% | $13.50 | $270K |
| 40% | $0 | 60% | $12.00 | $240K |
| 40% | $50 | 60% | $14.50 | $290K |
| 40% | $100 | 60% | $17.00 | $340K |

**Key Insight:** Higher gate fees → higher EOL blend → more high-value In/Y/Co recovery from known-composition Aegis products. The Forge becomes MORE profitable as waste disposal costs rise.

---
