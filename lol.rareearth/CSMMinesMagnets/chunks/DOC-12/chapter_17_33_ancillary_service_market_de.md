## 3.3 Ancillary Service Market Design

Chile currently lacks a formal ancillary services market. The 2025 Storage Bill and DS N°62 capacity payment decree establish the framework:

### 3.3.1 Capacity Payments (DS N°62)
- **Mechanism**: Fixed payment per MW of recognized capacity
- **Derating**: 100% for ≥5 h duration, declining to 50% for 1 h
- **Expected Revenue**: ~40% of BESS revenue stack (capacity payment + energy arbitrage)

### 3.3.2 Ancillary Service Infrastructure Tender
CEN proposes a separate tender for services not covered by capacity market:
- **Inertia Service**: $/MW·s-year (referential 3 GVA system need)
- **FFR Service**: $/MW-year (fast response < 200 ms)
- **Blackstart Service**: $/MW-year (capability + testing)
- **Voltage Support**: $/MVAr-year (reactive power capability)

### 3.3.3 Revenue Stacking for GFM BESS
```math
\text{Revenue}_{total} = R_{arbitrage} + R_{capacity} + R_{inertia} + R_{FFR} + R_{voltage} + R_{blackstart}
```

**Case Study** (100 MW / 400 MWh BESS, Atacama):
- Energy arbitrage: ~$8.2M/yr (high spreads, curtailment avoidance)
- Capacity payment (DS N°62): ~$3.5M/yr (4 h duration, 100% recognition)
- Inertia service (H=4 s): ~$1.2M/yr (referential)
- FFR service: ~$0.8M/yr
- **Total**: ~$13.7M/yr vs. ~$11.7M/yr for GFL (CAPEX premium ~$1.5M)

**Cross-reference**: DOC-11 Ch.8 (Financial Instruments) established CAT bond/parametric insurance frameworks; ancillary service revenues provide similar risk-adjusted cash flows.
