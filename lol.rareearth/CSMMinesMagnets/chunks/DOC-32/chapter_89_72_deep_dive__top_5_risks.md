## 7.2 Deep Dive — Top 5 Risks

### 7.2.1 R-04: Social Unrest — The Port-Campamento Nexus

**Antofagasta Unrest History**:
| Event | Trigger | Duration | Economic Cost | Resolution |
|-------|---------|----------|---------------|------------|
| **Oct 2019 (Estallido Social)** | Metro fare → inequality | 52 days (Antofagasta) | US$320M (port stoppages, commerce) | Agenda Social, constituent process |
| **Aug 2022 (Port Strike ATI)** | Collective bargaining | 14 days | **US$180M** (Cu/REE export halt) | Agreement +4.5% real, automation clause |
| **Jan 2023 (Campamento Protests La Chimba)** | Water, electricity, eviction threat | 22 days | US$25M (blockades, commerce) | Mesa Migrante formalized, Red Social expansion |
| **Mar 2023 (Migrant Protests Centro)** | Documentation, discrimination, work permits | 10 days | US$15M | SERMIG fast-track, municipal office |
| **Jul 2024 (Tsunami Drill Protest)** | Evacuation route inadequacy, vertical evacuation lack | 3 days | US$5M | EMPORCHA committed 4 towers 2026 |

**Unrest Probability Model (Antofagasta-Specific)**:
```
P(Unrest >7 days in 5 yr) = f(Grievance Index, Collective Action Capacity, Trigger Events)

GRIEVANCE INDEX (2024) = 0.75 / 1.0 (Very High)
├── Inequality (Gini 0.49): 0.85
├── Water Access (Tariff equity): 0.68
├── Housing (Campamento 18k families): 0.82
├── Migrant Integration: 0.58
├── Political Efficacy: 0.42
├── Youth Unemployment (22%): 0.71
└── Port/City Divide: 0.76

COLLECTIVE ACTION CAPACITY = 0.88 / 1.0 (Very High)
├── Port Union Density: 78% (strategic choke point)
├── Campamento JJVV Organization: 83% formal, 58% participation
├── Migrant Mesa: 18 orgs, rotating coordination
├── Protest Experience: 5 major events 2019-2024
├── Communication: WhatsApp networks, radio, asambleas, TikTok
└── Leadership: Federación Portuaria, Mesa Migrante, JJVV La Chimba

TRIGGER EVENTS (5-yr Probability):
├── Cu price crash: 0.30
├── Water crisis (desal failure): 0.25
├── Port automation layoffs: 0.40
├── Migrant-local violence: 0.35
├── Tsunami drill failure: 0.15
├── Campamento eviction attempt: 0.20
├── National political crisis: 0.30
└── REE project conflict (Chango veto): 0.25

COMPOSITE P(UNREST) = **0.72 (Very High)** — **Expected 3.6 events/5yr**
```

### 7.2.2 R-02: Water Supply Failure — The Desal Single Point

**Desal Dependence — 100% Municipal Supply**:
| Plant | Capacity (L/s) | Redundancy | Single Point Failure | Consequence |
|-------|----------------|------------|---------------------|-------------|
| **Desal Norte** | 600 | **NONE** | Pump station, intake, RO train | **Norte/Centro: 0 L/s in 4 hrs** |
| **Desal Sur** | 800 | **NONE** | Pump station, intake, RO train | **Sur/La Chimba: 0 L/s in 4 hrs** |

**Failure Scenarios**:
| Scenario | Probability (5-yr) | Duration | Population Affected | Economic Cost |
|----------|-------------------|----------|---------------------|---------------|
| **Power Outage (Grid + Backup Fail)** | 0.12 | 6–24 hrs | 412,000 | $85M/day |
| **Intake Fouling (Algal Bloom/Jellyfish)** | 0.18 | 3–10 days | 200,000–412,000 | $120M/day |
| **RO Membrane Failure (Scaling/Chemical)** | 0.10 | 2–7 days | 150,000–300,000 | $90M/day |
| **Pipe Rupture (Seismic/Corrosion)** | 0.08 | 1–5 days | 100,000–250,000 | $75M/day |
| **Cyber Attack (SCADA/OT)** | 0.06 | 4–48 hrs | 412,000 | $150M/day |

**Resilience Measures — Layered Defense**:
| Layer | Measure | Status | Capacity | Gap |
|-------|---------|--------|----------|-----|
| **1. Redundancy** | **Interconnection Desal Norte–Sur (Pipeline 15km)** | **Design 2024, Build 2025–2026** | 400 L/s cross-flow | **Funding $45M** |
| **2. Storage** | **Strategic Reservoirs (3 × 50,000 m³)** | **1 built, 2 planned 2025–2027** | 48 hrs autonomy | **Land acquisition, $22M** |
| **3. Alternative Source** | **Camanchaca Harvest (Pilot 50 L/s → Scale 200 L/s)** | **Feasibility done, Pilot 2025** | Supplemental, cultural | **Tech validation, $15M** |
| **4. Demand Management** | **Smart Meters (100% 2026), Tariff Signals, Leak Detection AI** | **Rollout 2024–2027** | 15% demand reduction | **Behavior change, $18M** |
| **5. Emergency** | **Water Trucks (50), Bladders (20), Community Points (42)** | **Stockpiled** | 72 hrs survival | **Logistics, $5M/yr** |
| **6. Governance** | **Cuenca Antofagasta Water Authority (Proposed Law)** | **Legislative 2025** | Integrated mgmt | **Political will** |

### 7.2.3 R-05: Climate Extremes — Compound Coastal Desert Events

**Antofagasta Climate Projections (CMIP6, SSP2-4.5, 2050)**:
| Variable | Current | 2050 Projection | Delta | Impact |
|----------|---------|-----------------|-------|--------|
| **Mean Temp** | 16.8°C | 19.2°C | +2.4°C | Energy demand, health, worker safety |
| **Max Temp (Summer)** | 28°C | 33°C | +5°C | **Heat stress (WBGT >30°C), port ops limit** |
| **Min Temp (Winter)** | 8°C | 11°C | +3°C | Disease vectors, agriculture |
| **Annual Precip** | 3.2 mm | 1.8 mm | **-44%** | **Zero natural recharge** |
| **Extreme Precip (1-day max)** | 8 mm | 18 mm | **+125%** | **Flash floods, debris flows, infrastructure** |
| **Heat Wave Days (>30°C)** | 5/yr | 28/yr | **+460%** | Health, energy, worker stops |
| **Fog (Camanchaca) Days** | 120/yr | 75/yr | **-38%** | **Water harvesting, ecosystem, culture** |
| **Sea Level Rise** | 0 cm | 22 cm | +22 cm | **Port infrastructure, coastal erosion, salinity** |

**Compound Event: Atacama Coastal Squeeze — Heat Wave + Flash Flood + Fog Loss**:
- **Frequency**: Current 1/100 yr → 2050 **1/20 yr**
- **Sequence**: 10-day heat wave (35°C+) → intense rainfall (25mm/2hr) on impermeable soil → debris flows destroy campamentos in quebradas → fog decline prevents natural recovery
- **Antofagasta Vulnerability**: **La Chimba quebradas (19 campamentos), port infrastructure at sea level, desal intakes at risk**

### 7.2.4 R-03: Copper Price Crash — The Fiscal Transmission

**Transmission Channels to Antofagasta**:
| Channel | Mechanism | Lag | Magnitude (at $1.80/lb) |
|---------|-----------|-----|------------------------|
| **Royalty Minera** | Ad valorem + margin → municipal + regional | 0-3 months | **-55% ($55M → $25M municipal, $185M → $85M regional)** |
| **FDC Private Mines** | Profit-linked contributions | 6-12 months | **-65% ($20M → $7M municipal)** |
| **Patentes Mineras** | Fixed (production-based) | 12-24 months | **-20% (lower production)** |
| **Port Throughput** | Concentrate volume ↓, REE volume ↓ | 3-6 months | **-30% tonnage, -40% revenue** |
| **Contractor Employment** | Maintenance deferral, project cancellation | 3-9 months | **-25% jobs (13,000 lost)** |
| **Local Commerce** | Income effect, credit contraction | 6-12 months | **-25% sales, 15% business closure** |
| **Municipal Budget** | Revenue -50% (mining-linked) | Immediate | **Severe austerity, debt risk** |

**Antofagasta Municipal Contingency (Approved 2024)**:
| Trigger | Action | Timeline |
|---------|--------|----------|
| **Cu <$3.00 (3-mo avg)** | Hiring freeze, non-essential capex -50%, reserve draw | Immediate |
| **Cu <$2.50 (3-mo avg)** | Central gov emergency transfer (Ley Presupuestos Art. 21) | 30 days |
| **Cu <$2.00 (3-mo avg)** | **Estado de Excepción Comunal**, debt restructure, essential only | 60 days |
| **Royalty <$20M/qtr** | FBC distribution 4% → 2% NAV (preserve corpus) | Next quarter |

### 7.2.5 R-08: Regulatory Shift — The Moving Policy Landscape

| Regulation | Status | Proposed Change | Antofagasta Impact | Probability |
|------------|--------|-----------------|-------------------|-------------|
| **Water Code Reform** | Senate 2024 | Human/eco priority, reduce private rights | **Desal priority for human, mining curtailment** | **High (0.7)** |
| **Glacier Law (21.435) Reglamento** | 2025 | Periglacial protection, no industry in buffer | **High Andes projects blocked, water rights review** | **High (0.8)** |
| **Royalty Minera 2.0** | Discussion 2025 | Higher rates, regional fund, community direct | **Antofagasta +20% OR -15% (national pool)** | **Medium (0.4)** |
| **Mining Closure Law** | Congress 2024 | Stricter guarantees, perpetual care, community fund | **Codelco/BHP closure cost +50% (US$5B+)** | **High (0.75)** |
| **Indigenous Consent Law** | Draft | FPIC statutory, Chango marine veto = legal block | **Chango veto = project stop (not just SEA)** | **Medium (0.5)** |
| **Data Localization / Sovereign Cloud** | Law 2024 | Gov data in Chile, critical infra Chilean control | **Antofagasta data center boost, compliance cost** | **High (0.8)** |
| **Automation/Just Transition Law** | Draft | Worker retraining fund, automation tax, port clause | **Port/Minning capex +5-8%, social license** | **Medium (0.4)** |

---
