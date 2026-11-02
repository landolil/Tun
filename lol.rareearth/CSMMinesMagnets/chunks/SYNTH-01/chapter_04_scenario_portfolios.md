# CHAPTER 4: SCENARIO PORTFOLIOS — THREE FUTURES, ONE STRATEGY

## 4.1 Scenario Architecture — Drivers & Probabilities

### 4.1.1 Scenario Definitions

| Scenario | Name | Probability (2025-2030) | Key Drivers | Water Governance Outcome |
|----------|------|------------------------|-------------|--------------------------|
| **S1** | **Managed Transition** | **45%** | Li price $18-25k/t, Desal II on schedule, CPA renegotiated, Climate SSP2-4.5 | Gradual desal substitution, CPA veto operational, fog pilots scale, basin management committee formed |
| **S2** | **Crisis Cascade** | **30%** | Li price <$15k/t sustained, Desal II delayed, Drought (SSP3-7.0), Social unrest | Emergency rationing, SQM service withdrawal (María Elena), CPA litigation, constitutional crisis |
| **S3** | **Green Transformation** | **25%** | Li price >$30k/t, EU Battery Passport mandate, HIF H₂ commercial, Constitutional reform (water rights) | **Water as priced asset**, basin market, Indigenous co-governance, DLE mandatory, fog rights established |

### 4.1.2 Scenario Impact on 10 Communities (Water Security)

| Community | S1: Managed Transition | S2: Crisis Cascade | S3: Green Transformation |
|-----------|------------------------|-------------------|--------------------------|
| **Atacameño** | CPA renewed + expanded veto, Water Trust $500M | CPA litigation, veto ignored, lagoons collapse | **Co-governance model**, water trust national model, REE value-add funded |
| **Diaguita** | Huasco basin agreement, agro-mining coexistence | Agricultural collapse, migration, mining priority | **Territorial water autonomy**, glacier protection enforced |
| **Pehuenche** | Hydro concessions renegotiated, ecological flow met | Ralco precedent ignored, new dams approved | **Biobío headwaters protected**, Indigenous co-management of hydro |
| **Mapuche-Sur** | Forestry water standards, native forest restoration | Plantation expansion, water conflicts escalate | **Native forest law**, water yield prioritized over timber |
| **Kawéskar/Yagán** | Marine co-management, fog pilots in fjords | Salmon industry water pollution, glacial loss | **Marine territorial rights**, fog rights recognized, glacial melt adaptation fund |
| **Calama** | Desal II complete (2026), Loa recovery begins | Desal II delayed, rationing, social unrest, Codelco strike | **Desal + H₂ + solar**, Loa river restoration, mining water market |
| **Antofagasta** | 100% desal, energy cost managed | Desal cost spike, tariff protests, industrial curtailment | **Green H₂ hub**, desal powered by renewables, water export potential |
| **Tocopilla/Mejillones** | Thermo→H₂/NH₃ transition, fog operational | Industrial collapse, unemployment, port decline | **Green industrial cluster**, fog water for H₂, brine for LiOH |
| **San Pedro** | Carrying capacity enforced, grey water 50%, fog 30% | Tourism collapse, aquifer exhaustion, municipal bankruptcy | **Regenerative tourism**, water-positive, UNESCO biosphere model |
| **María Elena** | SQM service maintained, fog pilot scales, heritage tourism | **SQM withdraws services**, municipal dissolution, ghost town | **Heritage hub + solar + fog**, community trust ownership, diversified |

---

## 4.2 Scenario Quantification — Water Security Metrics

### 4.2.1 Scenario × Community Water Security Index (0-100, higher = more secure)

**Formula 4 — Water Security Index (WSecI) by Scenario**:
```
WSecI_c,s = Base_WSI_c × (1 + Policy_Response_s + Climate_Impact_s + Market_Signal_s + Governance_Shift_s)

Where for each scenario s:
- Policy_Response_s: S1=+0.15, S2=-0.40, S3=+0.35
- Climate_Impact_s: S1=-0.10 (SSP2-4.5), S2=-0.30 (SSP3-7.0), S3=-0.05 (SSP1-2.6)
- Market_Signal_s: S1=0.0 (stable), S2=-0.25 (price crash), S3=+0.20 (green premium)
- Governance_Shift_s: S1=+0.10 (CPA strengthened), S2=-0.20 (fragmentation), S3=+0.30 (co-governance)

BASE_WSI (Current, inverted from Stress Index):
Atacameño: 15, Diaguita: 30, Pehuenche: 40, Mapuche-Sur: 45, Kawéskar: 70,
Calama: 10, Antofagasta: 60, Tocopilla: 50, San Pedro: 20, María Elena: 5
```

### 4.2.2 Scenario Results — Water Security Index

| Community | Current WSecI | S1: Managed (2030) | S2: Crisis (2030) | S3: Green (2030) | **Delta (S3-S2)** |
|-----------|---------------|---------------------|---------------------|---------------------|-------------------|
| **Atacameño** | 15 | **28** (+87%) | **3** (-80%) | **45** (+200%) | **+42** |
| **Diaguita** | 30 | **42** (+40%) | **12** (-60%) | **58** (+93%) | **+46** |
| **Pehuenche** | 40 | **52** (+30%) | **16** (-60%) | **72** (+80%) | **+56** |
| **Mapuche-Sur** | 45 | **58** (+29%) | **22** (-51%) | **78** (+73%) | **+56** |
| **Kawéskar/Yagán** | 70 | **82** (+17%) | **42** (-40%) | **92** (+31%) | **+50** |
| **Calama** | 10 | **25** (+150%) | **2** (-80%) | **48** (+380%) | **+46** |
| **Antofagasta** | 60 | **72** (+20%) | **35** (-42%) | **85** (+42%) | **+50** |
| **Tocopilla/Mejillones** | 50 | **65** (+30%) | **20** (-60%) | **80** (+60%) | **+60** |
| **San Pedro** | 20 | **35** (+75%) | **5** (-75%) | **55** (+175%) | **+50** |
| **María Elena** | 5 | **18** (+260%) | **0** (-100%) | **40** (+700%) | **+40** |

**Critical Insight**: **María Elena has the highest upside in Green Transformation (+700%) but total collapse in Crisis (-100%)** — the company town model creates extreme binary outcomes. **Calama shows highest absolute gain in Green (+380%)** due to desal+H₂+solar convergence.

### 4.2.3 Scenario Narrative Deep Dives

#### S1: Managed Transition — The Baseline Case

**Probability**: 45% — **Most likely path** given current trajectories.

**Water Governance Trajectory**:
- **2025-2026**: Codelco Desal II completes (800 L/s). Loa aquifer drawdown slows from -1.2 to -0.3 m/yr. Calama municipal deficit reduced to 20 L/s.
- **2026-2027**: CPA Atacameño renewal (2026) expands veto to brine monitoring (not just puri). Water Trust capitalized at $200M (FBC 40% allocation). RMHC-Atacama expands to 60 piezometers.
- **2027-2028**: Fog capture scales to 5,000 m² regionally (María Elena 2,000, Tocopilla 2,000, San Pedro 1,000). DGA issues first atmospheric water guidelines (non-binding).
- **2028-2030**: Basin Management Committee formed (DGA + CPA + Municipal + Corporate). Voluntary extraction caps for brine (10% reduction). Green Li certification (IRMA + EU Battery) becomes market standard.

**Brokerage Positioning**: **Long desal infrastructure, long CPA equity (FBC), long fog options**. Hedge: Short legacy brine-only operators without desal pathway.

#### S2: Crisis Cascade — The Tail Risk

**Probability**: 30% — **Plausible downside** given lithium price volatility and climate uncertainty.

**Water Governance Trajectory**:
- **2025**: Li price drops to $12k/t. SQM announces capex freeze, 20% workforce reduction. María Elena municipal services deteriorate (clinic hours cut, school staff reduced).
- **2026**: Desal II delayed 18 months (contractor disputes, energy cost overrun). Loa aquifer drawdown accelerates to -2.0 m/yr. Calama implements severe rationing (50 L/person/day).
- **2027**: CPA Atacameño exercises veto on SQM expansion. SQM challenges in court. Constitutional crisis: Supreme Court rules on territorial title vs mining code. Social unrest in Calama, Antofagasta, San Pedro.
- **2028-2030**: Emergency legislation: Water Nationalization Law (draft). All mining water rights subject to review. Foreign investment flight. Li supply disruption 25% global.

**Brokerage Positioning**: **Short Chilean Li exposure, long distressed asset fund, long water trust capitalization**. Opportunity: Buy SQM/Salar assets at 0.3x NAV if nationalization risk materializes.

#### S3: Green Transformation — The Strategic Upside

**Probability**: 25% — **Policy-driven upside** if EU/Chile alignment accelerates.

**Water Governance Trajectory**:
- **2025**: EU Battery Regulation 2023/1542 enters force. IRMA certification mandatory for EU market access. SQM, Albemarle, Codelco pursue IRMA 75+.
- **2026**: Chile Constitutional Reform (water as human right + nature rights) passes plebiscite. National Water Authority restructured. Indigenous co-governance mandatory for all basins.
- **2027**: DLE (Direct Lithium Extraction) mandated for all new brine projects. SQM/Albemarle commit 80% reinjection. Pond area reduced 60%. Freshwater lens stabilizes.
- **2028**: Fog capture regulated as water right (DGA Resolution). 20,000 m² deployed regionally = 10,000 L/day. María Elena community trust owns 50% of fog infrastructure.
- **2029**: Basin water market operational (fintech platform). Tradable rights price discovery. Mining pays $0.50/m³ for brine, $2.00/m³ for freshwater equivalent.
- **2030**: Green Li trades at $45k/t premium. Aegis-Forge Alpha-1/2 fully permitted, zero-puri, CPA co-design. REE from brine valorization at scale.

**Brokerage Positioning**: **Maximum long Green Li premium, long Aegis-Forge equity, long water rights futures, long Indigenous co-governance vehicles**. This is the fund-returning scenario.
