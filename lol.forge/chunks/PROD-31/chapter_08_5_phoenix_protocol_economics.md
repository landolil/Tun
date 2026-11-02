## 5. Phoenix Protocol Economics

### 5.1 Depot Network Investment

| Tier | Count (Yr 3) | Capex/Unit | Total Capex | Annual Ops | Throughput |
|------|--------------|------------|-------------|------------|------------|
| Primary | 3 | $2.4M | $7.2M | $2.8M | 500 ton/yr |
| Secondary | 12 | $0.15M | $1.8M | $0.4M | 100 ton/yr |
| Tertiary | 50 | $0.02M | $1.0M | $0.1M | 20 ton/yr |
| **Total** | 65 | — | **$10.0M** | **$3.3M** | **3,500 ton/yr** |

### 5.2 Reverse Logistics Cost Model

| Cost Component | $/50 kg Batch | % of Total |
|----------------|---------------|------------|
| Transport (avg 500 km) | $3.50 | 13% |
| Automated Disassembly (15 min) | $4.20 | 16% |
| Solvolysis Energy (350°C/2h) | $2.80 | 11% |
| Hydromet Processing | $6.50 | 25% |
| Labor (depot + Forge) | $5.00 | 19% |
| Consumables (acids, Ar) | $3.00 | 11% |
| QA/Testing (LIBS, XRD) | $1.50 | 6% |
| **Total** | **$26.50** | 100% |

### 5.3 Blend Ratio Optimization

| Virgin Blend | Gate Fee ($/ton) | EOL Blend | Net/Batch (10 Forges) | Annual Net/Forge |
|--------------|------------------|-----------|----------------------|------------------|
| 60% | $0 | 40% | $8.50 | $170K |
| 60% | $50 | 40% | $11.00 | $220K |
| 60% | $100 | 40% | $13.50 | $270K |
| 40% | $0 | 60% | $12.00 | $240K |
| 40% | $50 | 60% | $14.50 | $290K |
| 40% | $100 | 60% | $17.00 | $340K |

**Key Insight:** Higher gate fees → higher EOL blend → more high-value In/Y/Co recovery from known-composition Aegis products. Forge profitability INCREASES as waste disposal costs rise.

### 5.4 Circular Material Flow Operator (CMF-RQT)

The economic engine of Phoenix Protocol is the **Circular Material Flow with Recursive Quality Tracking**:

```
CMF-RQT[M_virgin, M_return, Q_gen, P_blend, Γ_stage, Λ_depot, Ψ_econ]

Where:
M_virgin = Virgin feedstock mass vector (7 categories)
M_return = EOL return mass vector (depot LIBS classified)
Q_gen = Generation-dependent quality degradation (drum: 0.5%→0.7% O₂ over 31 gen)
P_blend = Dynamic blend ratio (MFC controlled ±2%)
Γ_stage = Stage re-entry gate (7 gates: Stage 0, 1, 3, 4, 5, 6, 7, 8)
Λ_depot = Depot logistics cost (transport + disassembly + solvolysis)
Ψ_econ = Economic objective (max NPV subject to quality constraints)
```

Evaluated at batch (8/day), daily (depot), monthly (PPSC) frequencies. Validated against Apple Daisy, Umicore, Redwood, Carbfix, Arkema data.

---
