## Appendix L: Chapter 4 Deep Dive — Trust Financial Engineering

### L.1 FBC Equity Valuation — Monte Carlo Simulation (10,000 runs)

**Input Distributions**:
- **Copper price**: Lognormal (μ=$4.00/lb, σ=0.25)
- **REE basket price**: Lognormal (μ=$45/kg, σ=0.35)
- **Production volume**: Normal (μ=nameplate, σ=8%)
- **Operating cost**: Normal (μ=base, σ=10%)
- **Discount rate**: Triangular (min=6%, mode=8%, max=10%)

**Output Percentiles (20-yr NPV, US$M)**:

| Valley | P10 | P25 | P50 (Median) | P75 | P90 | Mean | Std Dev |
|--------|-----|-----|--------------|-----|-----|------|---------|
| **Elqui** | 195 | 235 | 285 | 342 | 410 | 292 | 72 |
| **Limarí** | 285 | 342 | 410 | 485 | 575 | 418 | 98 |
| **Choapa** | 345 | 415 | 495 | 585 | 690 | 505 | 118 |
| **Huasco** | 285 | 342 | 410 | 485 | 575 | 418 | 98 |
| **Total** | 1,110 | 1,335 | 1,600 | 1,900 | 2,250 | 1,633 | 386 |

**Probability of NPV > US$1.0B**: **99.2%** — **extremely robust**.

### L.2 ACSF — Agricultural Compensation Fund Actuarial Model

**ACSF Annual Payment Formula (Per Valley)**:
$$ACSF_v = \sum_{c \in crops} \left[ \max\left(0, \frac{W_{proj,v}}{Q_{avail,v}} \cdot Y_{c,v} \cdot P_c \cdot A_{c,v} \cdot \lambda_c \right) \right]$$

**Crop Parameters (2024)**:

| Crop | Yield (t/ha) | Price (US$/t) | Water Req (m³/ha) | λ (value mult) | Elqui (ha) | Limarí (ha) | Choapa (ha) | Huasco (ha) |
|------|--------------|---------------|-------------------|----------------|------------|-------------|-------------|-------------|
| **Table Grapes** | 35 | 2,800 | 8,500 | 1.00 | 4,200 | 6,800 | 2,800 | 1,500 |
| **Pisco Grapes** | 28 | 1,800 | 7,800 | 0.90 | 2,100 | 1,200 | 800 | 1,200 |
| **Citrus** | 45 | 1,200 | 9,200 | 0.85 | 1,800 | 4,500 | 2,200 | 1,000 |
| **Avocados** | 18 | 4,500 | 11,500 | 1.10 | 1,200 | 2,100 | 1,000 | 800 |
| **Vegetables** | 65 | 800 | 6,500 | 0.70 | 800 | 2,000 | 1,500 | 1,000 |
| **Olives** | 8 | 3,200 | 5,500 | 0.95 | 200 | 500 | 300 | 400 |
| **Walnuts** | 3.5 | 8,500 | 7,200 | 1.20 | 300 | 800 | 500 | 300 |

**ACSF Estimate (Alpha-3..7 + Bravo-3/4 Total Water Demand = 2.3 m³/s)**:

| Valley | Project Water (m³/s) | Available Flow (m³/s) | Revenue at Risk (US$M/yr) | ACSF (US$M/yr) |
|--------|---------------------|----------------------|---------------------------|----------------|
| **Elqui** | 0.5 | 16.7 | 145 | **4.3** |
| **Limarí** | 0.7 | 19.6 | 210 | **7.5** |
| **Choapa** | 0.6 | 11.9 | 125 | **6.3** |
| **Huasco** | 0.5 | 7.1 | 85 | **6.0** |
| **Total** | **2.3** | — | **565** | **24.1** |

**ACSF Paid in Advance, Escrowed** — **Diaguita valley assemblies control disbursement**.

### L.3 WSF — Desalination Co-Investment Financial Model

**Choapa Desalination (Puerto Los Vilos) — 20-Year Concession Model**:

| Year | Capex | Opex | Revenue (Ag) | Revenue (Aegis) | Net Cash Flow | Cumulative |
|------|-------|------|--------------|-----------------|---------------|------------|
| 0 | -$108M (WSF equity) | — | — | — | **-$108M** | -$108M |
| 1 | -$72M (partner debt) | $7.1M | $5.5M | $10.2M | $8.6M | -$99.4M |
| 2–15 | — | $7.1M/yr | $5.5M/yr | $10.2M/yr | $8.6M/yr | **Payback Year 13** |
| 16–20 | — | $7.1M/yr | $5.5M/yr | $10.2M/yr | $8.6M/yr | — |
| **20-yr NPV (8%)** | | | | | | **+$42M** |
| **IRR (WSF equity)** | | | | | | **12.3%** |

**Water Security Value (Non-Financial)**:
- **Avoided agricultural loss**: US$28M/yr (Choapa valley)
- **Avoided social conflict**: Immeasurable — **prevents another Dominga**
- **Glacier protection compliance**: Law 21.435 adherence
- **Diaguita sovereignty**: **Water veto respected, not litigated**

---
