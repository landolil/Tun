## Valuation Methodology for Transition
## 4. Valuation Methodology for Transition

This chapter establishes the independent valuation framework for determining the asset value ($V_{asset}$) that drives the facilitator upfront fee (2.5% × $V_{asset}$) and informs Tardigradia's capital deployment decisions.

### 4.1 Valuation Standards & Principles

| Standard | Application |
|----------|-------------|
| **NI 43-101** (Canada) | Mineral resource/reserve reporting for concessions |
| **JORC Code 2012** (Australia) | Alternative reporting standard (Chile recognizes both) |
| **IVS 2022** (International Valuation Standards) | Business/asset valuation methodology |
| **CIM Definition Standards** | Mineral resource classification |
| **Chilean Mining Code Law 18,248** | Legal framework for concession valuation |

**Core Principles:**
1. **Independent Valuer**: Big 4 mining valuation practice or specialist (SRK, Golder, Wood Mackenzie) — not CSM or Tardigradia affiliated
2. **Multiple Methods**: DCF primary, comparable transactions secondary, option value tertiary
3. **Conservative Bias**: P50 reserves only; 10% WACC; no exploration upside in base case
4. **Chilean Context**: Royalty Minera Law 21,210, 27% corporate tax, 1.5-2% municipal royalty

### 4.2 Valuation Scope — What Is Being Valued

| Asset Component | Included? | Valuation Basis |
|-----------------|-----------|-----------------|
| Constituted mining concessions (Fe, REE) | YES | DCF of mineable reserves |
| Exploration concessions (unconstituted) | YES | Option value (Black-Scholes) |
| Community agreements (FBC/CDC) | YES | Intangible asset — reduces permitting risk |
| Aegis-Forge Chile license | YES | Royalty savings vs. acid processing |
| CSM facilitator know-how | NO | Compensated via facilitator fee |
| Tardigradia equity / brand | NO | Separate valuation |
| Magnet manufacturing facilities | NO | Post-transition CAPEX |

### 4.3 Primary Method: Discounted Cash Flow (DCF)

#### 4.3.1 DCF Structure — Concession Portfolio Level

$$V_{DCF} = \sum_{t=1}^{T} \frac{FCF_t}{(1 + WACC)^t} + \frac{TV}{(1 + WACC)^T}$$

Where:
- $FCF_t$ = Free Cash Flow in Year $t$ (after tax, after Royalty Minera, after community royalties)
- $WACC$ = Weighted Average Cost of Capital (10% base case)
- $TV$ = Terminal Value = $\frac{FCF_{T+1}}{WACC - g}$ (perpetuity growth $g = 1.5\%$)
- $T$ = Explicit forecast period (20 years = concession life)

#### 4.3.2 Key DCF Assumptions — 3-Cluster Deployment (DOC-03 Ch 8)

| Parameter | Value | Source |
|-----------|-------|--------|
| Aegis-Forge units | 30 (10/cluster × 3) | DOC-03 Ch 8 |
| REE oxide output | 1,825 t/yr/cluster (7 units × 18.25 t) | E172 + Ch 5 tailings |
| Magnet manufacturing | 2,000 t/yr NdFeB | DOC-03 Ch 3 |
| Motor integration | 500k motors/yr | DOC-03 Ch 3 |
| REE basket price | $45/kg (2026$) | CSMMagEco2026 V2.0 |
| NdFeB magnet price | $120/kg | CSMMagEco2026 V2.0 |
| Motor premium (CSM) | $200/motor | CSMFAB000000000020 |
| Aegis-Forge OPEX | $4.32/kg REE oxide | E172-NationalMining |
| Metal reduction OPEX | $25/kg NdPr | [TBD:RESEARCH] Molten salt electrolysis |
| Sintering OPEX | $40/kg magnet | [TBD:RESEARCH] Vacuum sintering |
| Corporate tax | 27% | Chilean law |
| Royalty Minera (effective) | 1.5-2% gross revenue | Law 21,210 |
| Community royalty (DOC-03) | 2% gross revenue | FBC trust agreement |
| WACC | 10% (base), 8%/12% (sensitivity) | ICMM 2023 mining WACC survey |
| Concession life | 20 years (renewable) | Law 18,248 |

#### 4.3.3 DCF Calculation — Base Case (Illustrative)

| Year | Revenue ($M) | EBITDA ($M) | Tax ($M) | Capex ($M) | FCF ($M) | PV Factor (10%) | PV ($M) |
|------|--------------|-------------|----------|------------|----------|-----------------|---------|
| 1-2 (Construction) | 0 | -50 | 0 | -300 | -350 | 0.91/0.83 | -600 |
| 3 (Ramp-up 50%) | 225 | 90 | -24 | -100 | -34 | 0.75 | -26 |
| 4 (Ramp-up 75%) | 338 | 135 | -36 | -50 | 49 | 0.68 | 33 |
| 5 (Full ops) | 450 | 180 | -49 | -50 | 81 | 0.62 | 50 |
| 6-10 | 450/yr | 180/yr | -49/yr | -30/yr | 101/yr | 0.56-0.39 | 385 |
| 11-20 | 450/yr | 180/yr | -49/yr | -20/yr | 111/yr | 0.35-0.15 | 520 |
| **Terminal Value (Year 20)** | | | | | 1,270 | 0.15 | **191** |
| **NPV (Base Case)** | | | | | | | **~$553M** |

**Note**: This is illustrative. Actual DCF requires independent valuer with detailed mine plans, metallurgical testwork, and market studies.

### 4.4 Secondary Method: Comparable Transactions

| Comparable | Year | Commodity | Jurisdiction | EV/Resource ($/t) | EV/EBITDA (x) | Relevance |
|------------|------|-----------|--------------|-------------------|---------------|-----------|
| MP Materials Mountain Pass | 2020 | REE | USA | 12.5 | 18x | REE mining + processing |
| Lynas Mt Weld + Malaysia | 2021 | REE | Australia/MY | 8.2 | 15x | Integrated REE |
| Rare Element Resources Bear Lodge | 2022 | REE | USA | 15.0 | — | Permitted, unbuilt |
| Aclara Penco Module | 2023 | REE (ionic clay) | Chile | 6.8 | 12x | **Chile REE, clay-hosted** |
| Codelco Salvador + Potrerillos | 2022 | Cu/Fe | Chile | 4.1 | 8x | **Chile IOCG, state-owned** |
| CAP Minería (Los Colorados) | 2021 | Fe (magnetite) | Chile | 3.2 | 7x | **Chile IOA, magnetite** |

**Valuation Range from Comparables:**
- Low (CAP magnetite): $3.2/t × 695 Mt Fe resource = $2.2B (resource multiple)
- High (Bear Lodge REE): $15/t × 101 kt REO = $1.5B (resource multiple)
- **Mid-point (Aclara Chile REE + Codelco IOCG): ~$1.8B enterprise value**

**Adjustments for Tardigradia:**
- Discount for early stage (no reserves yet): -40%
- Premium for Aegis-Forge zero-waste processing: +15%
- Premium for community agreements de-risked: +10%
- Premium for vertical integration (magnet + motor): +20%
- **Adjusted comparable EV: ~$1.8B × 1.05 = ~$1.9B**

### 4.5 Tertiary Method: Real Option Value — Strategic Flexibility

Tardigradia holds valuable options not captured in DCF:

| Option | Description | Valuation Approach |
|--------|-------------|-------------------|
| **Expansion Option** | Add 4th/5th Aegis-Forge cluster (Austral, Patagonia) | Black-Scholes: $S = PV(additional clusters), K = CAPEX, σ = 30%, T = 5 yr |
| **Technology Option** | Switch to Fe₁₆N₂ (Niron) if 27 MGOe scales | Binomial tree: savings from REE-free motors |
| **Abandonment Option** | Sell concessions if REE prices collapse | Put option: floor = scrap value of concessions |
| **DFARS 2027 Option** | Priority DoD supply chain access | Decision tree: probability × premium margin |

**Option Value Estimate (Illustrative):**
- Expansion: $120M (3 additional clusters × $40M option value each)
- Technology: $80M (Fe₁₆N₂ adoption probability 40% × $200M savings)
- Abandonment: $50M (downside protection)
- DFARS: $150M (20% probability × $750M DoD premium)
- **Total Option Value: ~$400M**

### 4.6 Synthesis — Triangulated Valuation

| Method | Valuation ($M) | Weight | Weighted ($M) |
|--------|----------------|--------|---------------|
| DCF (Base Case) | 553 | 50% | 277 |
| DCF (Bull: 8% WACC, +20% price) | 890 | 15% | 134 |
| DCF (Bear: 12% WACC, -20% price) | 310 | 15% | 47 |
| Comparable Transactions | 1,900 | 10% | 190 |
| Real Options | 400 | 10% | 40 |
| **Weighted Average** | | **100%** | **$688M** |

**Facilitator Fee Base (Conservative):** Use DCF Base Case = **$553M**
- $F_{upfront} = 2.5\% × $553M = **$13.8M**
- **Not** the weighted average (which includes optionality Tardigradia captures)

**Rationale**: Facilitator fee compensates for *origination of de-risked assets*, not the strategic optionality that Tardigradia's capital and technology create.

### 4.7 Valuation Process & Timeline

| Step | Activity | Responsible | Timeline |
|------|----------|-------------|----------|
| 1 | Valuer engagement letter | Tardigradia | Trigger 6 (capital committed) |
| 2 | Data room preparation | CSM + Tardigradia | 15 days |
| 3 | Site visits (concessions, communities) | Valuer | 10 days |
| 4 | Draft valuation report | Valuer | 30 days |
| 5 | Management review & questions | CSM + Tardigradia | 10 days |
| 6 | Final valuation report | Valuer | 5 days |
| 7 | Facilitator fee calculation | CSM (formula) | Immediate |

**Dispute Resolution:** If CSM/Tardigradia disagree >10% on $V_{asset}$, independent expert determination (ICC Rules, 3 experts, 60 days).

### 4.8 Traceability Matrix — Chapter 4

| Claim | Source | Verification |
|-------|--------|--------------|
| NI 43-101 / JORC / IVS 2022 | Standards bodies | Current editions |
| WACC 10% mining | ICMM 2023 Survey | Member report |
| Royalty Minera effective rate | Law 21,210 + Cochilco 2024 | Primary + analysis |
| Aclara Penco transaction | Aclara 2023 Annual Report | Public filing |
| CAP Minería transaction | CAP 2021 Annual Report | Public filing |
| Aegis-Forge OPEX $4.32/kg | E172-NationalMining.md | Para 3 (Baker Street) |
| REE basket $45/kg | CSMMagEco2026 V2.0 | Section 2.1 |
| NdFeB $120/kg | CSMMagEco2026 V2.0 | Section 2.3 |
| DCF perpetuity growth 1.5% | Chile GDP long-term forecast | Central Bank Chile |
| Black-Scholes option parameters | Hull "Options, Futures, Derivatives" | Standard text |