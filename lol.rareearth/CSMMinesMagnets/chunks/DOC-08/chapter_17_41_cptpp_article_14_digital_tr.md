## 4.1 CPTPP Article 14: Digital Trade Provisions

**CPTPP Article 14 (Electronic Commerce)** establishes binding commitments for paperless trade facilitation. Chile ratified CPTPP in 2023 (Decree 15/2023), with full entry into force February 2024. Article 14 is directly applicable to magnetic mineral logistics through:

### 4.1.1 Paperless Customs & Electronic Bills of Lading

**Core Obligations (Article 14.3, 14.4, 14.5)**:
- **Article 14.3**: Each Party shall **accept electronic versions** of trade administration documents
- **Article 14.4**: **Electronic authentication** and signatures have same legal validity as paper
- **Article 14.5**: Parties shall **make publicly available** trade administration documents electronically

**Chilean Implementation (Law 21.133/2018 — Modernización Aduanera + Decree 179/2024)**:
| Document | Paperless Status | Platform | Legal Basis | Magnetic Mineral Application |
|----------|------------------|----------|-------------|------------------------------|
| **Customs Declaration (DIN/DUS)** | ✅ 100% electronic | SICEX | Law 21.133 Art. 4 | All magnetic mineral shipments |
| **Bill of Lading (e-BL)** | ✅ Legal since 2020 | Bolero, essDOCS, CargoX | Law 21.133 Art. 8, UNCITRAL MLETR | Containerized magnets (NdFeB, SmCo, Fe₁₆N₂) |
| **Certificate of Origin** | ✅ Electronic (e-CO) | SICEX + Blockchain (see §4.1.2) | CPTPP Art. 3.20, Law 21.133 | FTA preference claims |
| **Phytosanitary/Zoo Cert** | ✅ e-Phyto hub | SAG + IPPC | CPTPP Art. 7.10 | Not applicable (minerals) |
| **Dangerous Goods Decl.** | ✅ Electronic (e-DGD) | SICEX + IMO FAL | IMDG 5.4.1, IATA DGR | Class 9 magnet assemblies |
| **Commercial Invoice** | ✅ Electronic | SICEX | CPTPP Art. 14.3 | All shipments |
| **Packing List** | ✅ Electronic | SICEX | CPTPP Art. 14.3 | All shipments |
| **Insurance Certificate** | ✅ Electronic | Local insurers + SICEX | CPTPP Art. 11.9 | All-risk + magnetic degradation |

**e-Bill of Lading Adoption (2024)**:
| Carrier | Platform | Chile Coverage | Magnetic Mineral Ready |
|---------|----------|----------------|------------------------|
| **MSC** | CargoX (blockchain) | 100% | ✅ (Class 9 fields) |
| **Maersk** | TradeLens (discontinued → own) | 100% | ✅ |
| **CMA CGM** | essDOCS | 100% | ✅ |
| **Hapag-Lloyd** | WaveBL | 100% | ✅ |
| **ONE** | essDOCS | 100% | ✅ |
| **PIL** | CargoX | 80% | ⚠️ Partial |

**Paperless Customs Clearance Timeline (Mejillones → Rotterdam, 2024)**:
| Step | Traditional (Paper) | Paperless (CPTPP) | Time Saved |
|------|---------------------|-------------------|------------|
| Document Prep | 4-6 hours | 30 min (auto-populate) | 3.5-5.5 hrs |
| Submission | 2 hours (courier) | Instant (API) | 2 hrs |
| Customs Review | 24-72 hours | 2-4 hours (auto-risk) | 20-68 hrs |
| Query/Response | 4-8 hours (email) | 15 min (chatbot) | 3.75-7.75 hrs |
| Release | 2 hours (physical) | Instant (electronic) | 2 hrs |
| **Total** | **32-90 hours** | **3-6.5 hours** | **85-93% reduction** |

**Cost Savings per Shipment**: $180-350 (courier, storage, demurrage, admin)

### 4.1.2 Blockchain Certificates of Origin

**CPTPP Article 3.20 (Origin Certification)** allows electronic origin data exchange. Chile has implemented **blockchain-based Certificates of Origin (e-CO)** via SICEX partnership with **CustomsChain Consortium** (CAF-funded, 2022-2024).

**Blockchain Architecture**:
```
┌─────────────────────────────────────────────────────────────────┐
│              CUSTOMSCHAIN: e-CO BLOCKCHAIN NETWORK              │
├─────────────────────────────────────────────────────────────────┤
│  NODES:                                                          │
│  ├── Chile: Aduanas (validator), SICEX (gateway), ProChile      │
│  ├── CPTPP Partners: 11 customs authorities (validators)        │
│  ├── Private: Aegis-Forge, Tardigradia, CSM (submitters)       │
│  └── Banks: BancoEstado, BCI, Santander (LC integration)        │
├─────────────────────────────────────────────────────────────────┤
│  SMART CONTRACTS:                                                │
│  ├── Origin Verification (Rule Engine: RVC, CTC, De Minimis)   │
│  ├── FTA Preference Claim (Auto-calc duty savings)              │
│  ├── Document Hash Anchor (DGD, MIL-STD-1540, Invoice)         │
│  └── Dispute Resolution (Evidence immutability)                 │
└─────────────────────────────────────────────────────────────────┘
```

**e-CO Process Flow (Chilean Magnetic Minerals)**:
```
1. PRODUCER (Aegis-Forge)          2. CUSTOMS (Aduanas)           3. IMPORTER (CSM)
   │                                  │                               │
   ├── Mine Assay (DOC-01)            │                               │
   ├── MIL-STD-1540 Cert              │                               │
   ├── Production Record              │                               │
   │                                  │                               │
   ▼                                  ▼                               ▼
┌─────────────────┐            ┌─────────────────┐            ┌─────────────────┐
│  SUBMIT e-CO    │  ──────►   │  VALIDATE &     │  ──────►   │  RECEIVE &      │
│  REQUEST        │            │  SIGN (Validator)│            │  CLAIM PREFERENCE│
│  (Smart Contract)│            │  (Multi-sig)     │            │  (Auto-duty calc)│
└─────────────────┘            └─────────────────┘            └─────────────────┘
       │                              │                               │
       │         BLOCKCHAIN RECORD    │                               │
       │    (Immutable, Timestamped)  │                               │
       ▼                              ▼                               ▼
   Hash: 0x7a3f...e9b2          Hash: 0x7a3f...e9b2            Hash: 0x7a3f...e9b2
```

**Origin Criteria for Magnetic Minerals (CPTPP Annex 3-A)**:
| Product | HS Code | Origin Criterion | RVC Threshold | CTC Rule | Chile Advantage |
|---------|---------|------------------|---------------|----------|-----------------|
| **REE Concentrates** | 2608.00 | Wholly Obtained | N/A | WO | ✅ Mine in Chile |
| **NdFeB Blocks** | 8505.11 | RVC 40% | 40% | CTH | ✅ Aegis-Forge Chile |
| **SmCo Blocks** | 8505.11 | RVC 40% | 40% | CTH | ✅ Aegis-Forge Chile |
| **Fe₁₆N₂ Blocks** | 8505.19 | RVC 40% | 40% | CTH | ✅ **Zero REE** |
| **Fe-Co Blocks** | 8505.19 | RVC 40% | 40% | CTH | ✅ Chilean Fe-Co |
| **Magnet Assemblies** | 8505.90 | RVC 45% | 45% | CTSH | ✅ Final assembly Chile |

**RVC Calculation (CPTPP Art. 3.5, Net Cost Method)**:

$$\text{RVC} = \frac{\text{NC} - \text{VNM}}{\text{NC}} \times 100\%$$

Where:
- $\text{NC}$ = Net Cost of good (excludes profit, royalties, shipping, packing)
- $\text{VNM}$ = Value of Non-Originating Materials

**Example: NdFeB N48SH Block (Aegis-Forge Chile)**:
| Cost Component | Value (USD/kg) | Origin |
|----------------|----------------|--------|
| NdPr Oxide (Chilean mine) | $45 | Originating |
| Dysprosium (imported) | $120 | Non-originating |
| Iron/Boron (Chilean) | $8 | Originating |
| Energy/Processing (Chile) | $35 | Originating |
| **Net Cost (NC)** | **$208** | |
| **VNM (Dy only)** | **$120** | |
| **RVC** | **($208-$120)/$208 = 42.3%** | **✅ QUALIFIES (40% threshold)** |

**Blockchain Benefits for Magnetic Minerals**:
1. **Immutable Origin Proof**: Mine-to-market traceability (DOC-01 assay → e-CO)
2. **Instant Verification**: Customs validators confirm in seconds (vs. days paper)
3. **Fraud Prevention**: Tamper-evident, multi-sig (Aduanas + ProChile + Chamber)
4. **Trade Finance**: Banks accept e-CO for LC discounting (reduces working capital)
5. **Audit Trail**: Full history for DFARS 252.225-7018 compliance (DOC-07 Ch. 8)

### 4.2 Chile-US FTA: Rules of Origin for Magnets

**Chile-US FTA (2004, updated 2023 Protocol)** provides duty-free access for Chilean magnetic minerals to the US market — critical for CSM (Texas-based) supply chain.

**Key Provisions**:
| Aspect | Chile-US FTA | CPTPP | Advantage |
|--------|--------------|-------|-----------|
| **REE Concentrates** | Free (HTS 2608) | Free | Equal |
| **NdFeB/SmCo (8505.11)** | Free (RVC 35%) | Free (RVC 40%) | **FTA better (35% vs 40%)** |
| **Fe-Co/Fe-N (8505.19)** | Free (RVC 35%) | Free (RVC 40%) | **FTA better** |
| **Assemblies (8505.90)** | Free (RVC 40%) | Free (RVC 45%) | **FTA better** |
| **De Minimis** | 10% (by value) | 10% | Equal |
| **Accumulation** | Chile-US only | Full CPTPP | CPTPP broader |
| **Decree 179/2024** | Electronic CO | Electronic CO | Equal |

**Strategic Recommendation**: **Use Chile-US FTA for US-destined magnets** (lower RVC threshold). **Use CPTPP for Japan, Canada, Mexico, Australia, NZ, Vietnam, Malaysia, Singapore, Peru, Brunei** (broader accumulation).

**US Customs (CBP) Integration**: 
- **ACE (Automated Commercial Environment)**: e-CO via blockchain API
- **ISA (Importer Self-Assessment)**: CSM qualified (Tier 3)
- **Reconciliation**: Post-entry RVC true-up (annual)

### 4.3 Chile-EU Advanced Framework Agreement: Strategic Raw Materials

**Chile-EU Advanced Framework Agreement (AFA, 2023)** includes **Strategic Raw Materials Partnership** — first EU bilateral with dedicated critical minerals chapter. Critical for European magnetic mineral demand (EU CRMA 2024/1252).

**Key Provisions for Magnets**:
| Element | Provision | Magnetic Mineral Impact |
|---------|-----------|------------------------|
| **Art. 4.1** | No export restrictions on critical raw materials | ✅ REE concentrates, Fe-Co, Fe-N |
| **Art. 4.3** | Joint investment in sustainable mining | ✅ Aegis-Forge EU co-funding |
| **Art. 4.5** | Simplified customs (AEO mutual recognition) | ✅ 50% faster clearance |
| **Art. 4.7** | Traceability & due diligence (OECD) | ✅ Blockchain (DOC-04/05) |
| **Annex 4-A** | Strategic projects list (fast-track permitting) | ✅ CRMA designation (DOC-07) |

**EU CRMA (Critical Raw Materials Act) Alignment**:
- **Strategic Projects**: 24-month permitting (vs. 5-7 years standard)
- **Chilean Projects Eligible**: Aegis-Forge separation plants, Fe₁₆N₂ pilot
- **Recycling Targets**: 25% by 2030 — Fe-Co/Fe-N recycling advantage
- **Diversification**: No single country > 65% — Chile well-positioned

**EU Customs (Customs Union) Integration**:
- **AEO Mutual Recognition**: Chilean AEO = EU AEO (Decree 179/2024)
- **Single Window**: SICEX ↔ EU CDS (Customs Decisions System)
- **e-CO Acceptance**: EU recognizes Chilean blockchain e-CO
- **Duty Rates**: 0% for all magnetic minerals (GSP+ / FTA)

### 4.4 APEC Cross-Border Paperless Trade

**APEC Paperless Trade Initiative (2017, renewed 2023)** — Chile is co-chair. Enables paperless trade with **21 APEC economies** including China, Japan, Korea, USA, Canada, Australia.

**Key Standards**:
| Standard | Version | Chile Adoption | Magnetic Application |
|----------|---------|----------------|---------------------|
| **UN/CEFACT MMT** | 2.1 | ✅ SICEX | All docs |
| **WCO Data Model** | 3.11 | ✅ Aduanas | DIN/DUS mapping |
| **UNCITRAL MLETR** | 2017 | ✅ Law 21.133 | e-BL legal |
| **ISO 20022** | 2023 | ✅ Banks | Trade finance |
| **GS1 EPCIS** | 1.2 | ✅ Aegis-Forge | Track & trace |

**APEC Business Travel Card (ABTC)**: Expedited customs for authorized personnel (Aegis-Forge/CSM staff)

### 4.5 SICEX Single Window System

**SICEX (Sistema Integrado de Comercio Exterior)** — Chile's single window for all trade documents. Operated by Aduanas (Customs) with 27 participating agencies.

**SICEX Architecture for Magnetic Minerals**:
```
┌─────────────────────────────────────────────────────────────────┐
│                        SICEX SINGLE WINDOW                       │
├─────────────────────────────────────────────────────────────────┤
│  SUBMITTERS:                                                     │
│  ├── Exporters (Aegis-Forge, Tardigradia)                       │
│  ├── Customs Brokers (Agentes de Aduana)                        │
│  ├── Freight Forwarders                                          │
│  └── Carriers (Shipping lines, Airlines, Rail)                  │
├─────────────────────────────────────────────────────────────────┤
│  CORE MODULES:                                                   │
│  ├── DIN (Declaración de Ingreso) — Import                      │
│  ├── DUS (Declaración Única de Salida) — Export                 │
│  ├── e-CO (Certificate of Origin) — Blockchain                  │
│  ├── e-BL (Electronic Bill of Lading) — CargoX/essDOCS          │
│  ├── e-DGD (Dangerous Goods Declaration) — IMDG/IATA           │
│  ├── Manifest (Cargo, Crew, Stores)                             │
│  └── Payment (Duties, VAT, Fees) — Tesorería General           │
├─────────────────────────────────────────────────────────────────┤
│  PARTICIPATING AGENCIES (Auto-routed):                          │
│  ├── Aduanas (Customs) — Lead                                   │
│  ├── SAG (Agriculture) — Not applicable (minerals)             │
│  ├── SERNAPESCA (Fisheries) — Not applicable                    │
│  ├── SERNAGEOMIN (Mining Safety) — **DG Class 9, DS 132**      │
│  ├── DIRECTEMAR (Maritime) — **Port clearance, IMDG**          │
│  ├── MINSAL (Health) — Not applicable                           │
│  ├── BANCO CENTRAL (FX) — Trade statistics                     │
│  └── TESORERÍA (Treasury) — Duty collection                    │
└─────────────────────────────────────────────────────────────────┘
```

**SICEX Performance (2024)**:
| Metric | Value | Target |
|--------|-------|--------|
| **Availability** | 99.7% | 99.5% |
| **Auto-Clearance Rate** | 78% | 85% |
| **Avg Clearance Time (Export)** | 2.3 hours | < 4 hours |
| **Avg Clearance Time (Import)** | 4.1 hours | < 8 hours |
| **Paperless Rate** | 94% | 100% |
| **User Satisfaction** | 4.6/5.0 | > 4.5 |

**Magnetic Mineral Specifics in SICEX**:
- **HS Code Auto-Classification**: AI-assisted (8505.11, 8505.19, 2608.00)
- **DG Module**: Auto-populates IMDG/IATA fields from MIL-STD-1540 cert
- **FTA Selector**: Recommends optimal FTA (Chile-US vs CPTPP vs Chile-EU)
- **Duty Calculator**: Real-time RVC calculation, preference claim
- **Blockchain Anchor**: Document hashes recorded on CustomsChain

### 4.6 WCO SAFE Framework & AEO Certification

**World Customs Organization (WCO) SAFE Framework** — global supply chain security standard. Chile is a **founding signatory (2005)** and **AEO (Authorized Economic Operator) mutual recognition partner** with US, EU, China, Korea, Japan, Canada, Mexico.

**Chilean AEO Program (Resolución 1300/2018, updated 2023)**:
| Tier | Requirements | Benefits | Magnetic Mineral Relevance |
|------|--------------|----------|---------------------------|
| **Tier 1 (Basic)** | Security self-assessment, solvency | 50% fewer inspections | Entry level |
| **Tier 2 (Enhanced)** | Tier 1 + GPS tracking, CCTV, access control | 80% fewer inspections, priority lane | **Recommended for magnets** |
| **Tier 3 (Strategic)** | Tier 2 + AEO mutual recognition, blockchain | **95% fewer inspections, self-clearance, dedicated account manager** | **CSM/Aegis-Forge target** |

**Aegis-Forge / Tardigradia AEO Status (2024)**:
- **Aegis-Forge Chile**: Tier 2 (certified 2023), **Tier 3 application pending** (Q1 2025)
- **Tardigradia Logistics**: Tier 2 (certified 2022)
- **CSM (US)**: C-TPAT Tier 3 (mutual recognition with Chile AEO)

**AEO Mutual Recognition Benefits**:
| Partner | Agreement Date | Benefit for Magnets |
|---------|----------------|---------------------|
| **USA (C-TPAT)** | 2014 | Joint validation, reduced exams at US ports |
| **EU** | 2019 | AEO = AEO, simplified entry at Rotterdam/Hamburg |
| **China** | 2018 | Priority clearance at Shanghai/Ningbo |
| **Korea** | 2020 | Reduced docs, dedicated lane at Busan |
| **Japan** | 2021 | Pre-arrival clearance, post-clearance audit |
| **Canada** | 2015 | CBSA trusted trader, border wait < 15 min |
| **Mexico** | 2022 | SAT trusted trader, Laredo/Manzanillo priority |

### 4.7 HS Code Classification for Magnetic Materials

**Harmonized System (HS) 2022 / Chilean NALADISA 2024**:

| Product | HS Code (6-digit) | Chile NALADISA (10-digit) | Description | Duty (MFN) | Duty (Chile-US) | Duty (CPTPP) |
|---------|-------------------|---------------------------|-------------|------------|-----------------|--------------|
| **REE Concentrates** | 2608.00 | 2608.00.00 | Zinc ores & concentrates (bastnäsite/monazite classified here) | 0% | 0% | 0% |
| **Rare Earth Oxides** | 2846.90 | 2846.90.10 | Rare earth oxides (Nd₂O₃, Sm₂O₃, etc.) | 0% | 0% | 0% |
| **Rare Earth Metals** | 2805.30 | 2805.30.00 | Rare earth metals (Nd, Pr, Dy, Tb, Sm) | 0% | 0% | 0% |
| **Ferroalloys (Fe-N, Fe-Co)** | 7202.99 | 7202.99.90 | Other ferroalloys | 0% | 0% | 0% |
| **Permanent Magnets (NdFeB)** | 8505.11 | 8505.11.00 | Metal permanent magnets (NdFeB) | 6% | **0%** | **0%** |
| **Permanent Magnets (SmCo)** | 8505.11 | 8505.11.00 | Metal permanent magnets (SmCo) | 6% | **0%** | **0%** |
| **Permanent Magnets (Fe₁₆N₂)** | 8505.19 | 8505.19.10 | Other permanent magnets (Fe-N) | 6% | **0%** | **0%** |
| **Permanent Magnets (Fe-Co)** | 8505.19 | 8505.19.20 | Other permanent magnets (Fe-Co) | 6% | **0%** | **0%** |
| **Magnet Assemblies** | 8505.90 | 8505.90.00 | Electromagnets, parts, assemblies | 6% | **0%** | **0%** |
| **Magnetizing Equipment** | 8505.20 | 8505.20.00 | Electromagnetic couplings, clutches | 6% | 0% | 0% |

**Classification Notes**:
- **8505.11 vs 8505.19**: NdFeB/SmCo are "metal permanent magnets" (8505.11); Fe₁₆N₂/Fe-Co are "other" (8505.19) — **both 0% under FTAs**
- **Concentrates vs Oxides**: Bastnäsite/monazite concentrates → 2608.00; separated oxides → 2846.90
- **Binding Rulings**: Aduanas Resolución 2024-087 (NdFeB), 2024-092 (Fe₁₆N₂), 2024-105 (Fe-Co) — **legal certainty**

### 4.8 Customs Clearance Timeline & Cost Formulas

#### 4.8.1 End-to-End Clearance Timeline (Mejillones Export, 2024)

| Phase | Activity | Paperless (CPTPP) | Traditional | Responsible |
|-------|----------|-------------------|-------------|-------------|
| **T-72h** | Document prep (auto-populated) | 0.5 hr | 4 hr | Exporter/Broker |
| **T-48h** | e-DGD submission (SICEX) | 0.1 hr | 1 hr | Exporter |
| **T-24h** | e-CO issuance (Blockchain) | 0.2 hr | 8 hr | Aduanas/ProChile |
| **T-12h** | e-BL issuance (Carrier) | 0.1 hr | 2 hr | Carrier |
| **T-6h** | DIN/DUS submission (SICEX) | 0.1 hr | 0.5 hr | Broker |
| **T-4h** | Auto-risk assessment (SICEX AI) | 0.5 hr | 2 hr | Aduanas (auto) |
| **T-2h** | Document review (if selected) | 1.5 hr | 24 hr | Aduanas (officer) |
| **T-0.5h** | Payment (auto-deduction) | 0.1 hr | 1 hr | Tesorería |
| **T-0h** | **Release / Authorization** | **Instant** | 2 hr | Aduanas |
| **Total** | **Door-to-Gate** | **3.1 hours** | **42.5 hours** | |

#### 4.8.2 Cost Formulas

**Total Customs Cost per Shipment**:

$$C_{customs} = C_{duty} + C_{vat} + C_{fees} + C_{broker} + C_{demurrage} + C_{compliance}$$

Where:
- $C_{duty} = \text{Value} \times \text{Duty Rate} \times (1 - \text{FTA Preference})$
- $C_{vat} = (\text{Value} + C_{duty} + \text{Freight} + \text{Insurance}) \times 0.19$ (Chile VAT, recoverable on export)
- $C_{fees} = \text{Port fees} + \text{Wharfage} + \text{Storage (if any)}$
- $C_{broker} = \$150-300$ (per shipment, reduced for AEO)
- $C_{demurrage} = \max(0, \text{Days} - \text{Free Days}) \times \text{Rate}$ (avoided by paperless)
- $C_{compliance} = \text{MIL-STD-1540} + \text{ASTM D4169} + \text{DG cert amortized}$

**Example: 20ft Container NdFeB Blocks (22t, $180/kg, Chile-US FTA)**:
| Cost Component | Calculation | Amount (USD) |
|----------------|-------------|--------------|
| **Value (FOB)** | 22,000 kg × $180 | $3,960,000 |
| **Duty** | $3,960,000 × 0% (FTA) | **$0** |
| **VAT** | ($3,960,000 + $0 + $1,850 + $2,500) × 19% | $754,026 (recoverable) |
| **Port Fees (Mejillones)** | Wharfage $1.20/t × 22t | $26 |
| **Broker Fee** | AEO Tier 2 discount | $180 |
| **Demurrage** | 0 days (paperless, 10 free days) | $0 |
| **Compliance (amortized)** | MIL-STD-1540 + ASTM D4169 / 500 shipments | $85 |
| **Total Customs Cost** | | **$754,317** (VAT recoverable) |
| **Net Cash Outlay** | Excluding VAT | **$291** |

**Clearance Time Sensitivity**:
$$\text{Cost}_{delay} = \text{Demurrage}_{daily} \times \text{Delay Days} + \text{Inventory Carry} \times \text{Delay Days}$$
- Demurrage (Mejillones): $85/container/day after 10 free days
- Inventory Carry (NdFeB, 8% WACC): $3,960,000 × 8%/365 = $868/day
- **1 day delay = $953** — paperless saves 39 days = **$37,167/shipment**

#### 4.8.3 Import Clearance (Rotterdam → CSM Austin, via US Port)

| Phase | US Customs (CBP) | Time | Notes |
|-------|------------------|------|-------|
| **Pre-Arrival** | ISF-10 (Importer Security Filing) | T-24h | Mandatory, electronic |
| **Arrival** | Entry Summary (ACE) | T+2h | Auto-release if AEO |
| **Exam (if selected)** | CET (Cargo Exam Team) | T+24-72h | < 2% for AEO Tier 3 |
| **Release** | Entry Release | T+2-4h | Duty payment auto |
| **Post-Entry** | Reconciliation (Annual) | +1 yr | RVC true-up |

**US Duty (HTS 8505.11)**: 2.1% MFN → **0% Chile-US FTA** (with valid e-CO)
**Merchandise Processing Fee (MPF)**: 0.3464% (min $29, max $575) → **waived for FTA**

---

*End of Chapter 4. Chapter 5 covers Logistics Cost Model — Ocean Freight Rates, Rail Tariffs, Warehousing, Insurance, Total Landed Cost.*
