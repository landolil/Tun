# CHAPTER 3: SYNTHESIS MATRICES — THE DECISION TOOLS

## 3.1 Synthesis Matrix 1: Community × Regime × Governance × Risk

### 3.1.1 Complete 10-Community × 3-Regime × 4-Layer Matrix

| Community | Regime Exposure | DGA Risk | CPA/Indigenous Risk | Municipal Risk | Corporate Risk | **Composite Risk Score** |
|-----------|-----------------|----------|---------------------|----------------|----------------|-------------------------|
| **Atacameño (DOC-26)** | Brine(Monitor) + Fresh(Veto) + Fog(Pilot) | **LOW** (no puri extraction) | **HIGH** (veto power, litigation risk) | LOW (APR only) | **MEDIUM** (CPA renegotiation 2026) | **6.5/10** |
| **Diaguita (DOC-27)** | Fresh(Prior) only | **MEDIUM** (Huasco overallocation) | **MEDIUM** (Consulta, no veto precedent) | LOW | **MEDIUM** (ag/mining competition) | **5.5/10** |
| **Pehuenche (DOC-28)** | Fresh(Prior, glacial) | **MEDIUM** (Glacier Law) | **HIGH** (territorial autonomy claims) | LOW | **HIGH** (hydro concessions) | **7.0/10** |
| **Mapuche-Sur (DOC-29)** | Fresh(Prior) + Fog(Potential) | **LOW** | **MEDIUM** (LOM territorial) | LOW | **MEDIUM** (forestry) | **4.5/10** |
| **Kawéskar/Yagán (DOC-30)** | Fresh(Glacial) + Fog(Potential) | **LOW** | **HIGH** (co-management) | LOW | **MEDIUM** (salmon/port) | **5.0/10** |
| **Calama (DOC-31)** | Fresh(Loa, deficit) | **CRITICAL** (senior mining rights) | **MEDIUM** (Atacameño 12%) | **HIGH** (deficit, concession) | **HIGH** (Codelco Desal II) | **8.5/10** |
| **Antofagasta (DOC-32)** | Fresh(Desal) | **LOW** (desal secure) | LOW | LOW | **MEDIUM** (energy cost) | **4.0/10** |
| **Tocopilla/Mejillones (DOC-33)** | Fog(Operational) + Fresh(Desal) | **LOW** | **LOW** (Chango marine) | LOW | **MEDIUM** (industrial transition) | **4.5/10** |
| **San Pedro (DOC-34)** | Fresh(Fossil, deficit) + Fog(Pilot) + Brine(Margin) | **HIGH** (scarcity declarations) | **HIGH** (CPA 68% pop, veto) | **HIGH** (peak deficit) | **MEDIUM** (tourism efficiency) | **7.5/10** |
| **María Elena (DOC-35)** | Brine(SQM 4,500 L/s) + Fog(Pilot) | **LOW** (SQM right secure) | **LOW** (peripheral CPA) | **CRITICAL** (no utility) | **CRITICAL** (SQM single point) | **9.0/10** |

**Formula 2 — Composite Water Governance Risk Score (CWGRS)**:
```
CWGRS = Σ(Layer_Risk_i × Weight_i) + Interaction_Bonus
Layer_Risk: CRITICAL=10, HIGH=7.5, MEDIUM=5, LOW=2.5
Weights: DGA=0.25, CPA/Indigenous=0.30, Municipal=0.20, Corporate=0.25
Interaction_Bonus: +1.5 if (Brine + Freshwater conflict), +1.0 if (Single corporate dependency), +0.5 if (Fog pilot only)
```

---

## 3.2 Synthesis Matrix 2: Aquifer Connectivity & Cross-Community Impacts

### 3.2.1 Hydrological Connectivity Network

```
AQUIFER CONNECTIVITY GRAPH — NODES = COMMUNITIES, EDGES = HYDROLOGICAL FLUX

NODES (Aquifer Systems):
N1: Salar Brine (Llipi) — Central node, 1,800 km³
N2: Puripica-Chiu Chiu (San Pedro) — 120 km³, fossil
N3: Loa Basin (Calama) — 80 km³, -1.2m/yr drawdown
N4: Pampa del Tamarugal (María Elena) — 50 km³, 0 recharge
N5: Huasco Basin (Diaguita) — 200 km³, 5-10 mm/yr recharge
N6: Biobío Headwaters (Pehuenche) — 500 km³, glacial
N7: Coastal Aquifers (Tocopilla/Antofagasta) — 30 km³, desal recharge
N8: Austral Fjords (Kawéskar) — Glacial melt dominated

EDGES (Quantified Fluxes):
E1: N1 → N2 (Salar margin → Puripica): **~15 Mm³/yr** (subsurface outflow, GRACE mass balance residual)
E2: N1 → N3 (Salar → Loa via faults): **~10 Mm³/yr** (isotopic evidence, δ¹⁸O)
E3: N1 → N4 (Salar → Pampa Tamarugal): **~5 Mm³/yr** (deep regional flow)
E4: N3 → N4 (Loa → Pampa via paleochannels): **~20 Mm³/yr** (historical, now reversed by pumping)
E5: N5 → N3 (Huasco → Loa via transbasin): **0 Mm³/yr** (divide, but climate change may alter)
E6: N6 → N5 (Biobío → Huasco): **0 Mm³/yr** (separate basins)
E7: N7 ← Pacific (Desal injection): **+50 Mm³/yr** (Antofagasta/Tocopilla desal return flow)
E8: N8 → Pacific (Glacial melt): **+500 Mm³/yr** (freshwater export, no conflict)

CONFLICT PATHWAYS:
P1: SQM Brine Extraction (N1) → E1,E2,E3 → N2,N3,N4 drawdown → **Calama municipal deficit + San Pedro peak deficit + María Elena zero puri**
P2: Codelco Loa Extraction (N3) → E4 reversal → N4 further depletion → **María Elena zero puri reinforced**
P3: Climate Change (↓Andes precip) → N5,N6 ↓ → N3,N5 ↓ → **Diaguita + Pehuenche + Calama compound stress**
```

### 3.2.2 Cross-Community Impact Quantification

| Impact Pathway | Source Community | Affected Communities | Mechanism | Magnitude | Mitigation Status |
|----------------|------------------|---------------------|-----------|-----------|-------------------|
| **Brine→Freshwater Lens** | Atacameño (SQM/Albemarle) | Calama, San Pedro, María Elena | Salar margin hydraulic gradient reversal | **-1.5 m/yr lens thinning (San Pedro), -1.2 m/yr Loa drawdown** | CPA monitoring only, no extraction cut |
| **Loa Overallocation** | Calama (Codelco + Municipal + Ag) | Atacameño (downstream), María Elena (paleochannel) | Senior rights crowd out ecological + Indigenous | **Loa ecological flow <50 L/s vs 350 L/s mandate** | Desal II (2026) = partial relief |
| **Glacial Melt Acceleration** | Pehuenche (Biobío headwaters) | Diaguita (Huasco transbasin potential), Mapuche-Sur | Reduced dry-season baseflow | **-1.2%/yr glacier area → -5% baseflow/decade** | Glacier Law 21.435, no adaptation fund |
| **Fog Capture Competition** | María Elena (pilot), Tocopilla (operational), San Pedro (pilot) | All coastal communities | Atmospheric resource, no allocation framework | **Potential: 10 Mm³/yr regional capture** | **Legal vacuum — first mover advantage** |

**Formula 3 — Cross-Community Hydrological Impact (CCHI)**:
```
CCHI_ij = (Extraction_i × Connectivity_ij × Vulnerability_j) / (Mitigation_Capacity_j × Legal_Protection_j)
Where:
- Extraction_i: Mm³/yr from source community i
- Connectivity_ij: Hydraulic conductivity × gradient × area (0-1 scale)
- Vulnerability_j: WSI_j / 100 (0-1 scale)
- Mitigation_Capacity_j: Desal capacity + recharge + conservation (L/s)
- Legal_Protection_j: 1.0 if CPA veto, 0.5 if Consulta only, 0.1 if DGA only
```

---

## 3.3 Synthesis Matrix 3: Decision Triggers — If/Then Brokerage Rules

### 3.3.1 Tier 1 Triggers — Immediate Operational Response (0-6 months)

| Trigger ID | Condition | Monitoring Source | Affected Communities | Required Action | Brokerage Implication |
|------------|-----------|-------------------|---------------------|-----------------|----------------------|
| **DT-W-01** | **Any Salar lagoon level decline >0.5m/yr (CPA red line)** | RMHC-Atacama (8 lagoon loggers) + CONAF | Atacameño, San Pedro, María Elena (margin) | **Immediate**: CPA Art. 12 veto → SQM/Albemarle extraction suspension (partial) | **Li supply disruption risk: 15-20% global** — hedge via off-take diversification |
| **DT-W-02** | **Loa aquifer drawdown >1.5 m/yr (DGA critical)** | DGA piezometer network (50 wells) | Calama, Atacameño (downstream), María Elena (paleochannel) | **Immediate**: DGA scarcity declaration → mandatory 30% extraction cut (senior rights exempt) | **Cu supply stable (desal), but cost escalation** — Codelco capex pressure |
| **DT-W-03** | **Municipal supply deficit >100 L/s for >30 days** | Aguas Antofagasta SCADA + municipal reports | Calama, San Pedro, Tocopilla | **Immediate**: Emergency water trucking, rationing, desal acceleration | **Social license erosion** — community protests, CPA leverage increase |
| **DT-W-04** | **Flamingo breeding success <70% baseline for 2 consecutive years** | CONAF/CPA colony cameras (3 sites) | Atacameño, San Pedro (tourism), International (Ramsar) | **Immediate**: RCA review, potential project suspension, UNESCO alert | **Reputation risk → IRMA/EU Battery Passport non-compliance** |
| **DT-W-05** | **SQM lithium price <$18,000/t sustained >6 months** | LME/Lithium Index, SQM quarterly reports | María Elena (fiscal), Calama (royalty), All (royalty minero) | **Immediate**: FEL activation (sovereign wealth fund), FTJ drawdown, automation pause | **Countercyclical fund deployment** — brokerage opportunity in distressed assets |

### 3.3.2 Tier 2 Triggers — Structural Reorganization (6-24 months)

| Trigger ID | Condition | Monitoring Source | Structural Response | Brokerage Thesis Shift |
|------------|-----------|-------------------|---------------------|------------------------|
| **DT-W-06** | **Salar level (GRACE) decline >-50 cm cumulative from 2015 baseline** | NASA GRACE-FO monthly | **Mandatory reinjection 50% volume** (DGA order), DLE deployment acceleration | **Brine supply constrained** — Aegis-Forge brine valorization becomes strategic |
| **DT-W-07** | **Freshwater lens (Salar margin) thickness <20m** | DGA piezometers + SQM monitoring | **Human consumption priority enforced** (Law 21.327), mining brine cut 20% | **Lithium cost floor rises** — $25k/t structural |
| **DT-W-08** | **CPA veto exercised 3+ times in 24 months** | CPA Mining Committee minutes | **RCA condition: Independent water trust + 200% environmental bond** | **Project timelines extend 18-24 months** — capex rephasing |
| **DT-W-09** | **Desalination cost >US$1.20/m³ (energy + capex)** | Codelco/Aguas Antofagasta financials | **Grid decarbonization mandate**, HIF H₂ integration, solar PPA renegotiation | **Green premium justified** — IRMA/EU Battery Passport compliance |
| **DT-W-10** | **Fog capture deployed >5,000 m² regionally** | Municipal/DGA pilot registry | **DGA regulation of atmospheric water** — new water right category | **New asset class** — atmospheric water rights brokerage |

### 3.3.3 Tier 3 Triggers — Systemic Transformation (2-5 years)

| Trigger ID | Condition | Systemic Response | New Equilibrium |
|------------|-----------|-------------------|-----------------|
| **DT-W-11** | **Loa basin renewable deficit >100 Mm³/yr permanent** | **Basin-wide water market** (tradable rights, Law 21.327 Art. 15), desal mandatory for all new mining | **Water as priced asset** — brokerage expands to water rights |
| **DT-W-12** | **Salar brine grade <1,200 mg/L Li (economic cutoff)** | **DLE (Direct Lithium Extraction) mandatory**, pond phase-out, brine reinjection 80% | **Capital intensity doubles** — only majors survive |
| **DT-W-13** | **Constitutional reform: Water as human right + nature rights** | **National Water Authority rewrite**, Indigenous co-governance mandatory, mining rights subordinated | **Regulatory regime change** — all contracts renegotiated |
