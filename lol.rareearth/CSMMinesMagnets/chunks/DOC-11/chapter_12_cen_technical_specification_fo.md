# CEN Technical Specification for GIC-Hardened Transformers (Annex to PET 2025)
GIC_Design_Requirements:
  I_GIC_Withstand: 150 A (continuous, 30 min)  # Carrington-class
  B_AC_Design: ≤ 1.70 T  # Lower than standard 1.75 T for margin
  Core_Steel: Hi-B (2.03 T sat) mandatory
  Core_Joints: Step-lap mandatory
  Neutral_Conductor: 2.0× rated current capacity
  Cooling: ODAF/OFAF mandatory (≥220 kV)
  Monitoring: FBG sensors (winding hotspot, core, tank)
  Thermal_Class: 220°C insulation system
  Testing: GIC withstand test per IEEE C57.163 Annex B
  Documentation: GIC capability curve (I_GIC vs. time) required
```

**GIC Capability Curve (IEEE C57.163):**
The capability curve defines maximum permissible I_GIC vs. duration:
```
I_GIC_max(t) = I_thermal / √(t / τ_thermal)  for t < τ_thermal
I_GIC_max(t) = I_mechanical                   for t ≥ τ_thermal
```
Where:
- I_thermal = current causing 200°C hotspot in τ_thermal (typically 30 min)
- I_mechanical = current causing excessive vibration/force (typically 200–300 A)
- τ_thermal = thermal time constant (15–45 min for large transformers)

**Example Capability Curve (500/220 kV, 500 MVA, Hi-B, ODAF):**
| Duration | I_GIC_max (A) | Limiting Factor |
|----------|---------------|-----------------|
| 1 min | 400 | Mechanical |
| 5 min | 280 | Mechanical |
| 15 min | 200 | Thermal |
| 30 min | 150 | Thermal (design basis) |
| 60 min | 110 | Thermal |
| Continuous | 75 | Thermal (steady-state) |

**Chile Fleet Assessment — Design Margin:**
| Vintage | B_AC | Core | Cooling | I_GIC_crit (A) | Carrington I_GIC (A) | Margin |
|---------|------|------|---------|----------------|---------------------|--------|
| Pre-1990 | 1.55 T | Conv. | ONAN | 120 | 200 | **DEFICIT** |
| 1990–2010 | 1.70 T | Conv. | ONAF | 85 | 200 | **DEFICIT** |
| Post-2010 | 1.75 T | Hi-B | ODAF | 75 | 200 | **DEFICIT** |
| **New Spec** | **1.70 T** | **Hi-B** | **ODAF** | **150** | **200** | **ADEQUATE** |

**Key Finding**: Even modern transformers lack adequate GIC margin for Carrington-class. **External mitigation (NBC/LNR/Series C) is essential** — design improvements alone insufficient.

**Cost-Benefit of Design Hardening (New Units):**
- Incremental CAPEX: +8–12% vs. standard design
- Avoided external mitigation: $0 (still need NBC/LNR for Carrington)
- **Value**: Extends withstand time, reduces hotspot risk during moderate storms, enables condition-based operation


### 3.5 Monitoring: Hall-Effect CTs, GIC Magnitude Recording (IEEE C57.163)

Real-time GIC monitoring is essential for situational awareness, model validation, and operational decision-making during space weather events. IEEE C57.163-2023 mandates GIC monitoring for transformers in high-risk areas.

**Monitoring Technologies:**

| Technology | Principle | Range | Accuracy | Bandwidth | Cost |
|------------|-----------|-------|----------|-----------|------|
| **Hall-Effect CT** | Hall voltage ∝ B ∝ I | 0–500 A DC | ±1% FS | DC–10 kHz | $3–5k |
| **Fluxgate Magnetometer** | Saturation detection | 0–1,000 A DC | ±0.5% FS | DC–1 kHz | $8–15k |
| **Shunt Resistor** | V = I·R (low R) | 0–2,000 A DC | ±0.2% FS | DC–100 kHz | $1–2k |
| **Fiber Optic (FBG) Current** | Faraday effect | 0–2,000 A DC | ±1% FS | DC–1 MHz | $15–30k |

**Hall-Effect CT (Industry Standard for GIC):**
- **Construction**: Toroidal core with Hall sensor in air gap
- **Power**: 12–24 VDC (can be line-powered via CT secondary)
- **Output**: 4–20 mA or ±10 V proportional to DC current
- **Isolation**: Inherently isolated (no metallic path primary-secondary)
- **Installation**: Clamp-on around neutral conductor (no outage for retrofit)
- **Vendors**: ABB (GIC-M), GE (T60), Siemens (7SJ82), Arteche (CV-2000), NxtGen (GIC-100)

**IEEE C57.163-2023 Monitoring Requirements:**
1. **Measurement Points**: Neutral of every wye-grounded transformer ≥220 kV
2. **Sampling Rate**: ≥1 sample/second (1 Hz minimum)
3. **Dynamic Range**: 0–500 A DC (0–1,000 A for 500 kV)
4. **Accuracy**: ±5% of reading or ±2 A (whichever greater)
5. **Time Synchronization**: GPS/IRIG-B (≤1 ms accuracy)
6. **Data Retention**: ≥30 days local, ≥1 year historian
7. **Alarms**: 
   - Level 1: I_GIC > 10 A (awareness)
   - Level 2: I_GIC > 50 A (saturation risk)
   - Level 3: I_GIC > 100 A (imminent damage)

**Chile SEN Monitoring Deployment Plan (CEN PET 2025):**

| Phase | Substations | Transformers | Technology | Timeline | Budget |
|-------|-------------|--------------|------------|----------|--------|
| 1 (Critical) | 12 (GVI ≥ 0.75) | 52 | Hall-Effect CT | 2025–2026 | $1.2M |
| 2 (High) | 18 (GVI 0.5–0.75) | 78 | Hall-Effect CT | 2026–2027 | $1.8M |
| 3 (Moderate) | 30 (GVI 0.25–0.50) | 120 | Hall-Effect CT | 2027–2029 | $2.5M |
| 4 (Full Coverage) | All ≥110 kV wye | 314 | Hall-Effect CT | 2029–2032 | $5.0M |
| **TOTAL** | **60** | **314** | | **2025–2032** | **$10.5M** |

**Data Architecture:**
```
Hall CT (4–20 mA) 
    → RTU (SEL-3530 / Siemens SICAM) 
    → IEC 61850 GOOSE / MMS 
    → CEN SCADA (OSIsoft PI / GE iHistorian) 
    → GIC Dashboard (Real-time) 
    → GIC Historian (PostgreSQL/TimescaleDB)
    → Space Weather Correlation (NOAA SWPC feed)
```

**GIC Data Products (Operational):**
1. **Real-Time Dashboard**: I_GIC per transformer, color-coded by alarm level
2. **Storm Report**: Peak I_GIC, duration > threshold, energy (∫I²dt) per event
3. **Model Validation**: Measured vs. simulated GIC (nodal admittance model)
4. **Transformer Health Index**: Cumulative ∫I_GIC²dt → insulation aging proxy
5. **Early Warning**: dI_GIC/dt > 5 A/s → CME arrival precursor

**Integration with Space Weather Data (NOAA SWPC):**
- **ACE/DSCOVR Solar Wind**: Real-time Bz, V_sw, density → 15–60 min lead time
- **GOES Magnetometer**: Geostationary B-field → sudden commencement detection
- **Ground Magnetometers**: Chilean network (Santiago, Antofagasta, Punta Arenas) + INTERMAGNET
- **SWPC Alerts**: G1–G5 watch/warning/alert via NOAA Weather Wire / API

**Chilean Magnetometer Network (SHOA/Universidad de Chile):**
| Station | Code | Latitude | Type | Data Access |
|---------|------|----------|------|-------------|
| Santiago | SCL | -33.45° | INTERMAGNET | Real-time |
| Antofagasta | ANT | -23.65° | Fluxgate | 1-min |
| Punta Arenas | PTA | -53.15° | Fluxgate | 1-min |
| Easter Island | IPC | -27.15° | Fluxgate | 1-min |
| **Proposed** | **Calama** | **-22.45°** | **Fluxgate** | **Planned 2026** |
| **Proposed** | **Copiapó** | **-27.37°** | **Fluxgate** | **Planned 2026** |

**GIC Monitoring for Mining Substations (Tardigradia Requirement):**
- Dedicated Hall CT on each mining transformer neutral
- Local alarm at mine SCADA (independent of CEN)
- Automated load shed trigger: I_GIC > 75 A for > 60 s → shed non-critical loads
- Data sharing agreement with CEN for model validation

**Key Formula — Cumulative Thermal Duty (IEEE C57.163):**
```
D_thermal = ∫ (I_GIC(t) / I_GIC_rated)² dt
```
Where I_GIC_rated = continuous GIC rating from capability curve (e.g., 75 A).
- D_thermal > 1.0 → Insulation life consumed, inspection required
- D_thermal > 0.1 per event → Accelerated aging, schedule diagnostic

**Chile GIC Monitoring Specification (Summary):**
```json
{
  standard: IEEE C57.163-2023,
  sensor: Hall-Effect CT, clamp-on, 0-500A DC,
  accuracy: ±5% or ±2A,
  sampling: 1 Hz minimum,
  sync: GPS/IRIG-B, ≤1ms,
  alarms: {L1: 10, L2: 50, L3: 100},
  integration: IEC 61850, CEN SCADA, PI Historian,
  retention: 30d local, 1yr historian,
  deployment: Phased per GVI, complete 2032
}
```


### 3.6 Cost-Benefit: CAPEX per Substation vs. Risk Reduction

Quantifying the economic justification for GIC hardening requires comparing upfront CAPEX against avoided expected losses. This section develops a cost-benefit framework for the SEN.

**Hardening Options & CAPEX (Per Substation):**

| Option | 500/220 kV Auto (3-unit) | 220/110 kV (2-unit) | 220/66 kV (2-unit) |
|--------|--------------------------|---------------------|-------------------|
| **Series Capacitors** (line) | $15–25M per line | N/A | N/A |
| **Neutral Blocking Capacitors** | $4.5M (3×$1.5M) | $3.0M (2×$1.5M) | $3.0M |
| **Low-Ohmic Neutral Resistors** | $3.0M (3×$1.0M) | $2.0M (2×$1.0M) | $3.0M (2×$1.5M) |
| **Design Hardening** (new build) | +$4M/unit | +$2.5M/unit | +$2M/unit |
| **Monitoring (Hall CT)** | $0.15M (3×$50k) | $0.1M (2×$50k) | $0.1M |
| **GIC Withstand Test** | $0.2M/unit | $0.15M/unit | $0.1M/unit |

**Risk Reduction Quantification:**

**Avoided Loss Categories:**
1. **Transformer Replacement**: $8–15M per 500/220 kV unit (18–24 month lead time)
2. **Outage Cost — Mining**: $400M/day (top 3 mines combined)
3. **Outage Cost — Grid**: $50M/day (SEN-wide blackout, UFLS, restoration)
4. **Collateral Damage**: SVC/STATCOM, HVDC, protection systems ($10–50M)
5. **Societal Cost**: Essential services, water, communications ($20M/day)

**Probability-Weighted Annual Expected Loss (AEL):**
```
AEL = Σ P(event_i) × Loss(event_i | no hardening)
```
Using GVI-based probabilities:

| Substation | GVI | P(Carrington) | P(Severe) | AEL_No_Hardening ($M/yr) | AEL_With_Hardening ($M/yr) | Risk Reduction ($M/yr) |
|------------|-----|---------------|-----------|--------------------------|----------------------------|------------------------|
| S/E Crucero | 0.97 | 0.005 | 0.02 | 28.5 | 2.1 | **26.4** |
| S/E Antofagasta | 0.98 | 0.005 | 0.02 | 32.0 | 2.4 | **29.6** |
| S/E Encuentro | 0.92 | 0.005 | 0.02 | 18.7 | 1.9 | **16.8** |
| S/E Sección | 0.78 | 0.005 | 0.02 | 8.2 | 1.2 | **7.0** |
| S/E Maitencillo | 0.86 | 0.005 | 0.02 | 14.3 | 1.6 | **12.7** |
| S/E Mejillones | 0.68 | 0.005 | 0.02 | 5.4 | 1.1 | **4.3** |
| S/E Polpaico | 0.31 | 0.005 | 0.02 | 3.1 | 0.8 | **2.3** |

**Benefit-Cost Ratio (BCR):**
```
BCR = PV(Risk Reduction over 30 yr) / CAPEX
PV = Σ (Risk_Reduction_t / (1+r)^t),  r = 7% (WACC)
```

| Substation | Hardening Package | CAPEX ($M) | Annual Risk Reduction ($M/yr) | PV30 ($M) | **BCR** | Payback (yr) |
|------------|-------------------|------------|------------------------------|-----------|---------|--------------|
| S/E Crucero | 3×NBC + Monitor | 4.65 | 26.4 | 327 | **70.3** | **0.18** |
| S/E Antofagasta | 3×NBC + Monitor | 4.65 | 29.6 | 367 | **78.9** | **0.16** |
| S/E Encuentro | 2×NBC + Monitor | 3.15 | 16.8 | 208 | **66.0** | **0.19** |
| S/E Sección | 2×NBC + Monitor | 3.15 | 7.0 | 87 | **27.6** | **0.45** |
| S/E Maitencillo | 2×NBC + Monitor | 3.15 | 12.7 | 157 | **49.8** | **0.25** |
| S/E Mejillones | 2×LNR + Monitor | 2.15 | 4.3 | 53 | **24.7** | **0.50** |
| S/E Polpaico | Monitor + Protocol | 0.25 | 2.3 | 28 | **112** | **0.11** |

**Key Insight**: BCR > 20 for all CRITICAL/HIGH GVI substations. **Hardening is overwhelmingly economically justified.** Even monitoring-only at Polpaico yields BCR > 100 due to near-zero cost.

**Net Present Value (NPV) — SEN-Wide (Phase 1 Critical Only):**
```
CAPEX_Total = $18.9M (5 substations × NBC + monitoring)
PV_Benefits_30yr = $1,146M
NPV = $1,127M
IRR = 450%
```

**Sensitivity Analysis:**
| Parameter | Base | -20% | +20% | NPV Impact |
|-----------|------|------|------|------------|
| Carrington P (0.5%/yr) | 0.5% | 0.4% | 0.6% | ±$225M |
| Mining Outage Cost ($400M/d) | $400M | $320M | $480M | ±$300M |
| Discount Rate (7%) | 7% | 5% | 9% | +$400M / -$250M |
| Hardening Effectiveness | 95% | 90% | 98% | ±$100M |
| Transformer Lead Time | 24 mo | 18 mo | 36 mo | ±$150M |

**Robustness**: NPV remains > $500M under all plausible scenarios.

**Tardigradia/Carron Storm Motors Specific Benefit:**
- Aegis-Forge clusters at Crucero, Antofagasta, Encuentro require grid continuity
- GIC hardening protects $2.5B CAPEX (DOC-05) from 1-in-100 year event
- **Dedicated Tardigradia Contribution**: $18.9M (Phase 1) = 0.75% of venture CAPEX
- **Venture Risk Reduction**: From 5%/yr to <0.1%/yr grid-induced outage probability

**Funding Mechanism (Chile):**
1. **CEN Transmission Tariff**: Recover via tolls (all users)
2. **Mining Company Contribution**: Direct beneficiaries (Escondida, Collahuasi, Los Pelambres)
3. **Tardigradia Venture**: Strategic investor, co-funds critical nodes
4. **Corfo/State**: Resilience grant (green transition alignment)
5. **CAT Bond** (Section 8): Risk transfer to capital markets

**Recommendation**: **Immediate Phase 1 approval** ($18.9M) — highest BCR infrastructure investment in Chilean energy sector. Phase 2 ($50M) and Phase 3 ($240M) follow within 5- and 10-year horizons.


### 3.7 Deployment Priority Matrix for Chilean Grid

This section consolidates the hardening strategy into an actionable deployment matrix aligned with CEN planning cycles, Tardigradia venture milestones, and Chilean regulatory timelines.

**Hardening Technology Selection by Substation Class:**

| Substation Class | GVI Range | Primary Mitigation | Secondary | Monitoring | Timeline |
|------------------|-----------|-------------------|-----------|------------|----------|
| **500/220 kV Auto (Critical)** | ≥0.75 | NBC (250 μF) | Series Cap (line) | Hall CT + FBG | 0–18 mo |
| **500/220 kV Auto (High)** | 0.50–0.75 | NBC (200 μF) | — | Hall CT + FBG | 18–36 mo |
| **220/110 kV Mining** | ≥0.75 | LNR (1.0 Ω) | NBC (optional) | Hall CT | 0–24 mo |
| **220/110 kV (High)** | 0.50–0.75 | LNR (1.5 Ω) | — | Hall CT | 24–48 mo |
| **220/66 kV** | 0.25–0.50 | LNR (1.5 Ω) | — | Hall CT | 36–60 mo |
| **110/66 kV (Wye)** | 0.25–0.50 | LNR (2.0 Ω) | — | Hall CT | 48–72 mo |
| **All Others** | <0.25 | — | — | Hall CT (retrofit) | 2029–2032 |

**Phase 1: Immediate (0–18 Months) — Carrington Shield**
| Action | Substations | Units | CAPEX | Lead Agency | Milestone |
|--------|-------------|-------|-------|-------------|-----------|
| NBC Installation | Crucero, Antofagasta, Encuentro, Sección, Maitencillo | 12 | $22.5M | CEN / Tardigradia | Q4 2026 |
| Hall CT Deployment | All 12 critical + 6 mining | 52 | $1.2M | CEN | Q2 2026 |
| Series Cap Study | Mejillones–Encuentro, Encuentro–Polpaico | 2 lines | $0.8M | CEN | Q1 2026 |
| Operational Protocols | CEN Control Center | — | $0.3M | CEN | Q1 2026 |
| **TOTAL PHASE 1** | | | **$24.8M** | | |

**Phase 2: Near-Term (18–36 Months) — Mining Resilience**
| Action | Substations | Units | CAPEX | Lead Agency | Milestone |
|--------|-------------|-------|-------|-------------|-----------|
| LNR Installation | Escondida, Collahuasi, Los Pelambres, Centinela, Chuquicamata, Radomiro, Gaby, Spence | 22 | $22M | CEN / Mining Cos | Q4 2027 |
| NBC Installation | Mejillones, Polpaico, Alto Jahuel, Charrúa | 12 | $18M | CEN | Q4 2027 |
| Series Cap Installation | Mejillones–Encuentro (320 km) | 1 line | $18M | CEN | Q4 2027 |
| FBG Retrofit | All Phase 1 + 2 transformers | 34 | $10M | CEN / Tardigradia | Q4 2027 |
| **TOTAL PHASE 2** | | | **$68M** | | |

**Phase 3: Medium-Term (36–60 Months) — Grid-Wide Resilience**
| Action | Substations | Units | CAPEX | Lead Agency | Milestone |
|--------|-------------|-------|-------|-------------|-----------|
| LNR Installation | Remaining 220/110 kV (40 units) | 40 | $40M | CEN | Q4 2029 |
| LNR Installation | 220/66 kV (35 units) | 35 | $52M | CEN | Q4 2029 |
| Series Cap Installation | Encuentro–Polpaico (550 km) | 1 line | $22M | CEN | Q4 2029 |
| 110/66 kV LNR | Priority wye-grounded (50 units) | 50 | $100M | CEN | Q4 2029 |
| Full Monitoring | All ≥110 kV wye | 314 | $5M | CEN | Q4 2029 |
| **TOTAL PHASE 3** | | | **$219M** | | |

**Phase 4: Long-Term (60–120 Months) — Complete Hardening**
| Action | Scope | CAPEX | Timeline |
|--------|-------|-------|----------|
| Remaining 110/66 kV LNR | 80 units | $160M | 2030–2035 |
| Design Hardening (New Builds) | All new ≥220 kV | Incl. in CAPEX | Ongoing |
| Advanced Monitoring | FBG all critical, PMU integration | $20M | 2030–2035 |
| **TOTAL PHASE 4** | | **$180M** | |

**10-Year CAPEX Summary:**
| Phase | Years | CAPEX ($M) | Cumulative |
|-------|-------|------------|------------|
| 1 (Critical) | 0–1.5 | 25 | 25 |
| 2 (Mining) | 1.5–3 | 68 | 93 |
| 3 (Grid-Wide) | 3–5 | 219 | 312 |
| 4 (Complete) | 5–10 | 180 | 492 |
| **TOTAL** | **10** | **$492M** | |

**Alignment with Chilean Planning Cycles:**
- **PET 2025** (2024–2044): Includes GIC hardening as Resilience Investment category
- **PET 2027** (next cycle): Phase 2&3 projects enter as committed
- **Ley de Transmisión (Law 20,936)**: Allows resilience investments in toll calculation
- **CEN Annual Plan**: Annual budget allocation for Phase 1 (2025 budget cycle)

**Tardigradia Venture Alignment (DOC-05, DOC-08):**
| Venture Milestone | Grid Hardening Dependency | Target Date |
|-------------------|---------------------------|-------------|
| Aegis-Forge Alpha (Crucero) | NBC at S/E Crucero | Q4 2026 |
| Aegis-Forge Beta (Antofagasta) | NBC at S/E Antofagasta | Q4 2026 |
| Aegis-Forge Gamma (Encuentro) | NBC at S/E Encuentro | Q4 2026 |
| First Commercial Separation | Grid continuity >99.9% | 2027 |
| **Venture Capital Call** | **Phase 1 Complete** | **2026** |

**Regulatory Approvals Required:**
1. **CEN Technical Standard**: GIC hardening specification (6 months)
2. **CNED (Comisión Nacional de Energía)**: Cost recovery in transmission tariffs (12 months)
3. **SEC (Superintendencia de Electricidad y Combustibles)**: Safety compliance (parallel)
4. **Environmental (SEIA)**: NBC/LNR installation — minimal impact (DIA, 6 months)
5. **Concession Modification**: Existing transmission concessions (12–18 months)

**Risk Register — Deployment:**
| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|------------|
| Regulatory delay (tariff recovery) | Medium | High | Pre-negotiate with CNED, use Corfo bridge financing |
| Supply chain (NBC capacitors) | Low | Medium | Pre-qualify 3 vendors, strategic stock |
| Outage coordination (mining) | High | High | Schedule during planned maintenance windows |
| Seismic qualification (Andes) | Low | High | IEEE 693 High Seismic design from start |
| Technology obsolescence | Low | Low | Modular design, open standards (IEC 61850) |

**Key Performance Indicators (KPIs):**
| KPI | Phase 1 Target | Phase 2 Target | Phase 3 Target |
|-----|----------------|----------------|----------------|
| Critical Substations Hardened | 100% | 100% | 100% |
| Mining Substations Hardened | 0% | 100% | 100% |
| GIC Monitoring Coverage | 25% | 50% | 100% |
| Carrington GIC Reduction (Norte Grande) | 85% | 95% | 99% |
| Expected Annual Loss Reduction | 60% | 85% | 95% |

**Decision Gate — Phase 1 Go/No-Go (Q1 2025):**
- ✅ Technical design complete (NBC spec, Hall CT spec)
- ✅ BCR > 20 confirmed (this analysis)
- ✅ Tardigradia commitment letter ($18.9M co-fund)
- ✅ CEN Board approval (PET 2025 inclusion)
- ⏳ CNED tariff methodology (in progress)
- ⏳ Mining MOUs (Escondida, Collahuasi, Los Pelambres)

**Recommendation**: **PROCEED with Phase 1 immediately**. The risk of a Carrington-class event during the 10-year deployment window is ~5–10%. The cost of a single unmitigated event ($5–10B) dwarfs the $492M total program cost.

