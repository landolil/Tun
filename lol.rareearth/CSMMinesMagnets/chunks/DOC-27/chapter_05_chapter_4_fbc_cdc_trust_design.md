## Chapter 4: FBC/CDC Trust Design

### 4.1 Valley-Specific Trust Architecture

Per DOC-03 (Mutual Benefit Frameworks) and DOC-04 (Brokerage Protocol), the **FBC (Community Benefit Fund) / CDC (Community Development Corporation)** structure for Diaguita territory is **valley-differentiated** — not a single regional trust. Four trusts, one per valley, with **cross-valley coordination** through Nación Diaguita Council:

| Valley | FBC Equity | CDC FCF Share | Trust Name | Governance Board |
|--------|------------|---------------|------------|------------------|
| **Elqui** | 15% (Alpha-3/6, Bravo-3) | 15% FCF | **Fondo Valle Elqui Diaguita** | 3 valley reps + 2 elder council + 1 Tardigradia + 1 independent |
| **Limarí** | 18% (Alpha-3/4, Bravo-4) | 18% FCF | **Fondo Valle Limarí Diaguita** | 3 valley reps + 2 elder council + 1 Tardigradia + 1 independent |
| **Choapa** | 20% (Alpha-5/7, Bravo-3) | 20% FCF | **Fondo Valle Choapa Diaguita** | 3 valley reps + 2 elder council + 1 Tardigradia + 1 independent |
| **Huasco** | 20% (Alpha-4/7, Bravo-4) | 20% FCF | **Fondo Valle Huasco Diaguita** | 3 valley reps + 2 elder council + 1 Tardigradia + 1 independent |

**Equity Gradient**: Higher in Choapa/Huasco (**20%**) due to **critical water stress (WSI > 1.0)** and **Los Pelambres cumulative impact** — compensates for higher risk burden. Elqui/Limarí at **15–18%** reflecting lower (but still significant) water stress.

### 4.2 Agricultural Compensation Fund

**Core Innovation**: Unlike Atacameño Salar Trust (brine-focused), Diaguita trusts include **dedicated Agricultural Compensation Sub-Fund (ACSF)** — compensates for **water opportunity cost** when mining/Aegis-Forge uses valley water:

$$ACSF_{annual,v} = \max\left(0, \frac{W_{project,v}}{Q_{available,v}} \cdot Revenue_{agriculture,v} \cdot \lambda_{crop}\right)$$
Where $W_{project,v}$ = project water consumption in valley $v$, $Q_{available,v}$ = available flow after eco-reserve, $Revenue_{agriculture,v}$ = valley agro-export revenue, $\lambda_{crop}$ = crop value multiplier (table grapes: 1.0, pisco: 0.9, citrus: 0.85, vegetables: 0.7). **Paid annually in advance** — escrowed at project financial close.

**Elqui ACSF Estimate**: Alpha-3 (IOA) + Alpha-6 (IOCG) + Bravo-3 (ion-clay) = 0.8 m³/s total water demand → **US$4.2M/yr ACSF** (2024 prices).

### 4.3 Water Security Fund

**Separate from ACSF** — **Water Security Fund (WSF)** finances **aquifer recharge, canal technification, desalination co-investment, watershed restoration**:

| Valley | WSF Capitalization | Priority Projects |
|--------|-------------------|-------------------|
| **Elqui** | US$25M (Alpha-3/6, Bravo-3) | Elqui aquifer recharge (Cerro Tololo infiltration), canal lining 40 km |
| **Limarí** | US$35M (Alpha-3/4, Bravo-4) | Limarí aquifer recharge, Recoleta reservoir optimization, drip conversion 5,000 ha |
| **Choapa** | US$50M (Alpha-5/7, Bravo-3) | **Desalination co-invest (Puerto Los Vilos, 500 L/s)**, Choapa aquifer recharge, tailings seepage barrier |
| **Huasco** | US$40M (Alpha-4/7, Bravo-4) | **Desalination co-invest (Puerto Huasco, 300 L/s)**, Huasco aquifer recharge, glacier monitoring (Cerro Huasco) |

**WSF Governance**: **Diaguita majority (4/7 board seats)** — Tardigradia 2, independent hydrologist 1. **Veto power** on any project affecting water quality/quantity.

### 4.4 Cultural Revitalization Fund

**Cultural Revitalization Fund (CRF)** — **US$2M/valley/yr** (indexed to CPI) for:
- Diaguita-Kakán language revitalization (bilingual schools, elder apprenticeships)
- Ceramic/pottery tradition (Diaguita polychrome — UNESCO Intangible Heritage nomination 2025)
- Archaeological site protection (El Molle, Las Ánimas, Diaguita period sites)
- Annual valley festivals (Fiesta de la Cruz, Limpia de Acequias, Cosecha)
- Youth leadership exchange (Diaguita youth ↔ Aegis-Forge technical training)

**CRF Formula**:
$$CRF_v = 2.0 \cdot (1 + CPI_{Chile})^t \cdot \left(1 + \frac{Pop_{Diaguita,v}}{Pop_{Diaguita,total}}\right) \text{ [US$M/yr]}$$

---
