## Chapter 6: Water Sovereignty Protocol — Brine vs Freshwater, Lagoon Monitoring, Community Hydrology, Veto Rights

### 6.1 Legal Architecture of Water Sovereignty

#### 6.1.1 Constitutional & Statutory Basis

| Legal Source | Provision | Atacameño Water Right |
|--------------|-----------|----------------------|
| **Constitution Art. 19 N°8** | Right to pollution-free environment | Basis for puri protection |
| **Constitution Art. 19 N°24** | Property rights (water rights as property) | DGA concessions = property |
| **Law 19.253 Art. 13** | Indigenous participation in resource decisions | Consulta on water projects |
| **Law 19.300 Art. 11** | SEIA requires water impact assessment | Baseline + monitoring |
| **DGA Water Code (DFL 1.122)** | Water rights regime, groundwater | **Community rights recognized** |
| **Glacier Law 21.435** | Glacier protection | High Andean wetlands protected |
| **ILO 169 Art. 15** | Rights to natural resources in territories | **FPIC on water** |
| **UNDRIP Art. 25** | Spiritual relationship with waters | **Puri cosmology protected** |
| **CPA Art. 12** | **Binding community veto on puri** | **Operational enforcement** |

#### 6.1.2 Water Sovereignty Protocol — Operational Rules

```
Water Sovereignty Protocol (WSP-Atacama v1.0):

Article 1: Definitions
- Puri: Freshwater (Andean origin, <1,000 mg/L TDS) — SACRED
- Llipi: Brine (Salar origin, >100,000 mg/L TDS) — NEGOTIABLE
- Interface: Lagoons, wetlands, transition zones — ECOSYSTEM THRESHOLD

Article 2: Puri Absolute Protection
- **Zero extraction** by Aegis-Forge (contractual + judicial)
- **Zero contamination** (As, B, Li, REE, TDS increase >5%)
- **Zero diversion** (recharge paths, wetland connectivity)
- **Community veto**: CPA Art. 12 — Unanimous Hydrology Committee = binding suspension

Article 3: Llipi Conditional Access
- **Valorization not extraction**: REE removal from brine, return to Salar
- **Volume cap**: 27 Mm³/yr (Alpha-1/2) + 220 Mm³/yr (SQM/Albemarle) = 247 Mm³/yr total
- **Drawdown limit**: Brine level decline ≤1.0m/yr at monitoring wells
- **Quality return**: Post-REE brine TDS, pH, temp within 5% of intake
- **Monitoring**: Real-time (RMHC) + quarterly independent audit

Article 4: Interface Ecosystem Thresholds
- **Lagoon depth**: Decline ≤0.5m/yr (any lagoon) → Yellow alert
- **Lagoon depth**: Decline ≤0.3m/yr sustained 2 years → Green (stable)
- **Flamingo breeding**: ≥80% baseline (3-species average) → Green
- **Flamingo breeding**: <70% baseline → Red alert (ecosystem emergency)
- **Microbialite growth**: Net positive accretion → Green
- **Orestias population**: Stable/increasing → Green

Article 5: Community Hydrology Veto (Operational)
- **Trigger**: Any Yellow alert sustained 6 months OR any Red alert
- **Process**: 
  1. RMHC detects threshold breach
  2. CPA Hydrology Committee convenes (48 hours)
  3. Independent expert review (15 days)
  4. **Unanimous vote = Binding suspension order**
  5. Suspension maintained until root cause resolved + independent verification
- **No appeal** to SEA, DGA, courts on veto validity (CPA = private contract)
- **Compensation**: Proponent bears all costs during suspension

Article 6: Data Sovereignty
- **Data ownership**: Atacameño Communities (CDA)
- **Access**: Real-time to CPA Committee, SEA, DGA (read-only)
- **Publication**: Annual community report (Spanish + Kunza)
- **Research**: Requires CDA approval + benefit sharing
```

---

### 6.2 RMHC-Atacama — Technical Specification

#### 6.2.1 Sensor Network Deployment

| Sensor Type | Count | Location | Frequency | Parameters | Power | Comms |
|-------------|-------|----------|-----------|------------|-------|-------|
| **Piezometer (Puri)** | 45 | Aquifer perimeter + interior | Hourly | Level, temp, EC, pH | Solar + battery | LoRaWAN |
| **Brine Well** | 12 | Salar extraction zone | Hourly | Level, temp, EC, Li, As, REE | Solar + battery | LoRaWAN |
| **Lagoon Logger** | 8 | Chaxa, Puilar, Tebenquiche, Tuyajto, La Punta, Tuyajto Sur, Barros Negros, Burro Muerto | 15 min | Level, temp, EC, DO, pH, turbidity | Solar + battery | LoRaWAN + Satellite |
| **Flamingo Cam** | 3 | Major colonies (Chaxa, Puilar, Tebenquiche) | Daily | Nest count, chick count, disturbance | Solar + battery | Satellite |
| **Water Quality Sonde** | 5 | Puri springs, lagoon inflows, brine return | Hourly | pH, EC, DO, ORP, temp, As, B, Li, REE, NO₃ | Solar + battery | LoRaWAN |
| **Meteorological** | 6 | Basin perimeter | 10 min | Precip, temp, humidity, wind, radiation | Solar + battery | LoRaWAN |

**Total Nodes**: 79 — **Full basin coverage**.
**Data Hub**: San Pedro de Atacama (CDA office) — **Community-owned server**.
**Backup**: Satellite uplink (Starlink) + physical data retrieval (monthly).

---

### 6.3 Veto Enforcement Mechanism

#### 6.3.1 Veto Trigger → Suspension → Resolution

```
Veto Enforcement Flowchart:

1. THRESHOLD BREACH DETECTED (RMHC automated)
   ├── Yellow: Puri level -0.3m/yr OR Brine -1.0m/yr OR Flamingo <80%
   ├── Red: Puri level -0.5m/yr OR Flamingo <70% OR As >0.01mg/L puri
   └── Emergency: Catastrophic failure (pipeline rupture, pond breach)

2. AUTOMATIC NOTIFICATION (within 1 hour)
   ├── CPA Hydrology Committee (11 ayllu water reps)
   ├── FBC Water Trust Protector
   ├── SEA Regional Director
   ├── DGA Regional Director
   └── Tardigradia CEO / Aegis-Forge Cluster Manager

3. COMMITTEE CONVENING (within 48 hours)
   ├── Quorum: 9/11 ayllu reps
   ├── Independent expert presents analysis
   ├── Community knowledge keepers present observations
   ├── Aegis-Forge presents operational data + mitigation plan
   └── **VOTE: Unanimous (9/9 present) = BINDING SUSPENSION**

4. SUSPENSION ORDER (immediate upon vote)
   ├── Aegis-Forge: Cease brine intake, cease operations affecting hydrology
   ├── SQM/Albemarle: Notification (coordinated basin management)
   ├── SEA: Formal notification (RCA condition enforcement)
   ├── DGA: Water rights suspension (administrative)
   └── **No operations resume until Committee votes to lift (unanimous)**

5. ROOT CAUSE ANALYSIS (30 days max)
   ├── Independent expert (agreed by Committee + Aegis-Forge)
   ├── Community knowledge integration
   ├── Remediation plan with milestones
   └── Financial assurance (environmental bond draw if needed)

6. RESUMPTION CONDITIONS
   ├── Root cause resolved (verified by independent expert)
   ├── Monitoring shows Green status sustained 90 days
   ├── Community knowledge keepers confirm recovery
   ├── **Committee unanimous vote to lift**
   └── Phased restart with enhanced monitoring (6 months)
```

#### 6.3.2 Precedent: SQM 2013 / Albemarle 2018 Veto Activation

| Event | Trigger | Committee Vote | Suspension Duration | Resolution |
|-------|---------|----------------|-------------------|------------|
| **SQM 2013** | Laguna Tebenquiche -0.8m/yr | 10/11 unanimous | 14 months | Brine reinjection pilot, extraction reduction 20% |
| **Albemarle 2018** | Laguna La Punta -0.6m/yr + Flamingo 65% | 11/11 unanimous | 8 months | Pond reconfiguration, brine return optimization |
| **Candelaria 2021** | Puri piezometer As 0.012mg/L | 9/9 unanimous | 3 months | Tailings seepage remediation, liner repair |

**Lesson**: **Veto works** — operations adapt, environmental recovery occurs, trust builds.

---

### 6.4 Chapter 6 Summary

**Water Sovereignty Protocol (WSP-Atacama)** codifies **puri (freshwater) absolute protection, llipi (brine) conditional valorization, interface ecosystem thresholds** with **community hydrology veto (CPA Art. 12)**. **RMHC-Atacama (79 sensors, community-owned, real-time)** provides **objective trigger data**. **Veto enforcement**: **unanimous Hydrology Committee = binding suspension, no appeal, phased restart**. **Precedents (SQM 2013, Albemarle 2018, Candelaria 2021) prove mechanism works**. **Data sovereignty**: Atacameño ownership, read-only agency access.

**Next Chapter**: Chapter 7 — Economic Diversification: Tourism (ALMA, Geysers), Agriculture (Quinoa, Camelids), Value-Added REE Processing.

---
