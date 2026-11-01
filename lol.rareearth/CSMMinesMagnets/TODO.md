# TODO.md — CSMWip/CSMMinesMagnets

## Master Task Hierarchy (60 Documents × ~15 Subtasks = ~900 Subtasks)

### Phase 0: Project Initialization (Tasks 1-20)

#### 0.1 Project Setup (10 tasks)
- [x] 0.1.1 Create AGENTS.md with project conventions
- [x] 0.1.2 Create TODO.md with full task hierarchy
- [x] 0.1.3 Create memory/ directory for daily logs
- [x] 0.1.4 Create NEXT_runner_001.md with detailed assignments
- [x] 0.1.5 Create RESUME_SESSION_MAGNETS.md
- [x] 0.1.6 Create HEARTBEAT_MAGNETS.md config
- [x] 0.1.7 Create scripts/heartbeat_monitor.py (120s interval)
- [x] 0.1.8 Create scripts/generate_heuristic_intros.sh (CSMOPP adapted)
- [x] 0.1.9 Create scripts/task_timer.py (30s per subtask guard)
- [x] 0.1.10 Test heartbeat + write_large_file.py pipeline

#### 0.2 Research Ingestion (10 tasks)
- [x] 0.2.1 Inventory all Chile/magnet/mining documents in repository
- [x] 0.2.2 Extract key data from CSMEval25 (magnet industry)
- [x] 0.2.3 Extract key data from CSMGlobal-037-Chile (grid/mining exposure)
- [x] 0.2.4 Extract key data from E172-NationalMining (Aegis-Forge specs)
- [x] 0.2.5 Extract key data from **CSMMagTech2026 V2.0** (Fe₁₆N₂ 27 MGOe, MnBi 14 MGOe, AlNiCo 10.5 MGOe AM, Fe-Sn 12 MGOe, MXene-NdFeB +12% Hci, EU CRMA 2024, CSM portfolio strategy)
- [x] 0.2.6 Extract key data from **CSMMagEco2026 V2.0** (12+ US magnet startups, DFARS 2027 Jan deadline, Niron/MP Materials/Noveon/Urban Mining, SmCo Electron Energy, recycling 12t/mo)
- [x] 0.2.7 Map Chilean mining companies: Codelco, Antofagasta, SQM, Albemarle, CAP
- [x] 0.2.8 Map Chilean regulatory framework: Mining Code, Indigenous Law, Environmental Law
- [x] 0.2.9 Map Chilean ports: Antofagasta, Mejillones, San Antonio, Coronel, Punta Arenas
- [x] 0.2.10 Create Research/ index with categorized sources

### Phase 1: Foundation Research — Runner 001 (Tasks 21-65)

#### 1.1 DOC-01: Chilean Magnetic Mineral Landscape (15 tasks)
- [x] 1.1.1 Research Chilean geology: Iron Oxide Copper Gold (IOCG), Iron Oxide Apatite (IOA), porphyry Cu-Mo, REE deposits
- [x] 1.1.2 Map magnetic mineral occurrences: Magnetite, hematite, goethite, pyrrhotite, REE-bearing minerals
- [x] 1.1.3 Document major districts: Iron Belt (El Romeral, El Algarrobo), Andes porphyry belt, Atacama REE
- [x] 1.1.4 Quantify reserves/resources: Codelco (Cu-Mo-Fe), CAP (Fe), SQM/Albemarle (Li), REE prospects
- [x] 1.1.5 Analyze current production vs. potential: Magnetite concentrate grades, REE recovery rates
- [x] 1.1.6 Map infrastructure: Rail (FCAB), ports, power grid, water access per district
- [x] 1.1.7 Document processing status: Direct shipping ore vs. beneficiation vs. hydrometallurgy
- [x] 1.1.8 Identify magnetic separation opportunities: Current vs. Aegis-Forge thermal cascade
- [x] 1.1.9 Cross-reference with Carrington Storm Motors magnet specs (NdFeB, SmCo, FeN, FeCo)
- [x] 1.1.10 Draft DOC-01 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
- [x] 1.1.11 Generate heuristic intros (Williams, Keymaker, El Segundo, Combined)
- [x] 1.1.12 Split into logical chunks → chunks/DOC-01/
- [x] 1.1.13 Generate manifest & verify integrity
- [x] 1.1.14 Compress FinishedWork original (.gz)
- [x] 1.1.15 Log completion to memory/ + git commit

#### 1.2 DOC-02: Lives of the Extractors — Community Ethnography (15 tasks)
- [x] 1.2.1 Map mining communities: Calama, Antofagasta, Copiapó, Vallenar, Andacollo, Los Andes
- [x] 1.2.2 Document Indigenous territories: Atacameño, Diaguita, Aymara, Mapuche (south)
- [x] 1.2.3 Analyze labor structure: Unionized vs. contractor, gender, migration patterns
- [x] 1.2.4 Document health/environmental burdens: Silicosis, arsenic, water scarcity, tailings
- [x] 1.2.5 Map social license dynamics: Consulta indígena, community agreements, conflicts
- [x] 1.2.6 Document educational/vocational pathways: Technical schools, university mining programs
- [x] 1.2.7 Analyze economic dependency: Municipal budgets, royalties (royalty minera), local procurement
- [x] 1.2.8 Identify community aspirations: Diversification, value-added, environmental remediation
- [x] 1.2.9 Map NGO/civil society actors: OLCA, FIMA, community radio, water defense groups
- [x] 1.2.10 Draft DOC-02 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
- [x] 1.2.11 Generate heuristic intros (Williams, Keymaker, El Segundo, Combined)
- [x] 1.2.12 Split into logical chunks → chunks/DOC-02/
- [x] 1.2.13 Generate manifest & verify integrity
- [x] 1.2.14 Compress FinishedWork original (.gz)
- [x] 1.2.15 Log completion to memory/ + git commit

#### 1.3 DOC-03: Mutual Benefit Frameworks — Value Return (15 tasks)
- [x] 1.3.1 Analyze Chilean royalty regime: Royalty minera (Law 21,210), ad valorem vs. operating margin
- [x] 1.3.2 Document community agreement models: Codelco-Andacollo, Antofagasta Minerals models
- [x] 1.3.3 Design value-return mechanisms: Equity participation, technology transfer, local processing
- [x] 1.3.4 Map workforce development: Apprenticeships, certifications, magnet manufacturing skills
- [x] 1.3.5 Design environmental remediation funds: Tailings reprocessing, water restoration, Aegis-Forge deployment
- [x] 1.3.6 Analyze port/community benefit: Local hiring, supplier development, infrastructure sharing
- [x] 1.3.7 Document governance structures: Community trusts, development corporations, oversight boards
- [x] 1.3.8 Design Tardigradia venture alignment: Chilean entity, local board, profit-sharing
- [x] 1.3.9 Cross-reference with Carrington Storm Motors ESG commitments
- [x] 1.3.10 Draft DOC-03 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
- [x] 1.3.11 Generate heuristic intros (Williams, Keymaker, El Segundo, Combined)
- [x] 1.3.12 Split into logical chunks → chunks/DOC-03/
- [x] 1.3.13 Generate manifest & verify integrity
- [x] 1.3.14 Compress FinishedWork original (.gz)
- [x] 1.3.15 Log completion to memory/ + git commit

#### 1.4 Runner 001 Wrap-up (5 tasks)
- [ ] 1.4.1 Verify all 3 document chunks + manifests
- [ ] 1.4.2 Update master index: chunks/MASTER_INDEX.json
- [ ] 1.4.3 Create NEXT_runner_002.md handoff
- [ ] 1.4.4 Git: Commit all, tag runner-001-complete
- [ ] 1.4.5 Update RESUME_SESSION_MAGNETS.md for next session

### Phase 2: Brokerage Architecture — Runner 002 (Tasks 66-140)

#### 2.1 DOC-04: Brokerage Protocol — Facilitator to Owner Transition (15 tasks)
- [x] 2.1.1 Research brokerage transition mechanics: facilitator → owner pathways
- [x] 2.1.2 Document dual-track SPA structure (SPA Chile + SPA US Holdco)
- [x] 2.1.3 Design 7-trigger milestone system (geological, regulatory, financial, etc.)
- [x] 2.1.4 Define governance veto architecture (CVO, FBC, CDC)
- [x] 2.1.5 Document community trust structures (FBC 15%/20%, CDC 15% FCF)
- [x] 2.1.6 Design dispute settlement: CVO → Expert → ICC arbitration
- [x] 2.1.7 Map Chilean legal pathway: Mining Code, Indigenous Law, Environmental Law
- [x] 2.1.8 Cross-reference with Tardigradia venture structure (DOC-05)
- [x] 2.1.9 Cross-reference with CSM integration strategy (DOC-06)
- [x] 2.1.10 Draft DOC-04 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
- [x] 2.1.11 Generate heuristic intros (Williams, Keymaker, El Segundo, Combined)
- [x] 2.1.12 Split into logical chunks → chunks/DOC-04/
- [x] 2.1.13 Generate manifest & verify integrity
- [x] 2.1.14 Compress FinishedWork original (.gz)
- [x] 2.1.15 Log completion to memory/ + git commit

#### 2.2 DOC-05: Tardigradia Holding Company — Venture Structure (15 tasks)
- [x] 2.2.1 Design SpA cascade structure: Holdco → Chile SpA → Project SpAs
- [x] 2.2.2 Document capital stack: $1.3B (EIB, CPTPP, IRA 45X, equity)
- [x] 2.2.3 Define governance: Board composition, veto rights, community representation
- [x] 2.2.4 Document Aegis-Forge licensing: ACS → Tardigradia Chile SpA
- [x] 2.2.5 Design exit provisions: Put/call, drag-along, tag-along, IPO path
- [x] 2.2.6 Map IP ownership: Background (ACS), Foreground (joint), Grant-back
- [x] 2.2.7 Cross-reference with Brokerage Protocol (DOC-04 triggers)
- [x] 2.2.8 Cross-reference with CSM integration (DOC-06 offtake)
- [x] 2.2.9 Draft DOC-05 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
- [x] 2.2.10 Generate heuristic intros (Williams, Keymaker, El Segundo, Combined)
- [x] 2.2.11 Split into logical chunks → chunks/DOC-05/
- [x] 2.2.12 Generate manifest & verify integrity
- [x] 2.2.13 Compress FinishedWork original (.gz)
- [x] 2.2.14 Log completion to memory/ + git commit
- [x] 2.2.15 Git commit & push

#### 2.3 DOC-06: Carrington Storm Motors — Integration Strategy (15 tasks)
- [x] 2.3.1 Map CSM magnet requirements: Fe16N2 27 MGOe, NdFeB, SmCo, FeCo grades
- [x] 2.3.2 Document US-Chile Critical Minerals Agreement (executive agreement form)
- [x] 2.3.3 Align EU CRMA strategic project designation for Tardigradia clusters
- [x] 2.3.4 Apply CPTPP/APEC trade facilitation for magnet flow
- [x] 2.3.5 Design technology transfer: Aegis-Forge localization (Alpha/Bravo/Charlie)
- [x] 2.3.6 Structure investment protection: CPTPP Art 9 + Chile-US BIT dual layer
- [x] 2.3.7 Harmonize E&S standards: Equator, IFC PS, OECD DD, SEIA, CRMA DNSH
- [x] 2.3.8 Design workforce mobility: APEC ABTC, CPTPP Annex 10, PDI Tech Visa
- [x] 2.3.9 Govern IP & data: Law 19,628, DTSA, PPH, ISO 27001, IEC 62443
- [x] 2.3.10 Draft DOC-06 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
- [x] 2.3.11 Generate heuristic intros (Williams, Keymaker, El Segundo, Combined)
- [x] 2.3.12 Split into logical chunks → chunks/DOC-06/
- [x] 2.3.13 Generate manifest & verify integrity
- [x] 2.3.14 Compress FinishedWork original (.gz)
- [x] 2.3.15 Log completion to memory/ + git commit

#### 2.4 DOC-07: Chilean Regulatory Navigation (15 tasks)
- [ ] 2.4.1 Map Chilean Mining Code (Código de Minería) concessions & permits
- [ ] 2.4.2 Document Environmental Law 19,300: SEIA, RCA, EIA, DIA processes
- [ ] 2.4.3 Analyze Indigenous Law 19,253: Consulta, territorial rights, benefit agreements
- [ ] 2.4.4 Document Water Code (Código de Aguas) & Aegis-Forge zero-water advantage
- [ ] 2.4.5 Map permitting timeline: Standard vs. CRMA strategic project fast-track
- [ ] 2.4.6 Analyze royalty regime Law 21,210: Ad valorem vs. operating margin
- [ ] 2.4.7 Document Sernageomin role: Concession registry, safety, closure
- [ ] 2.4.7 Cross-reference with DOC-04 brokerage triggers (RCA, Consulta, etc.)
- [ ] 2.4.8 Draft DOC-07 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
- [ ] 2.4.9 Generate heuristic intros (Williams, Keymaker, El Segundo, Combined)
- [ ] 2.4.10 Split into logical chunks → chunks/DOC-07/
- [ ] 2.4.11 Generate manifest & verify integrity
- [ ] 2.4.12 Compress FinishedWork original (.gz)
- [ ] 2.4.13 Log completion to memory/ + git commit

#### 2.5 DOC-08: Port & Logistics Corridors (120 granular subtasks)
- [x] 2.5.1 Create Chapter 1 markdown header and title "Port Infrastructure Capability"
- [x] 2.5.2 Write Section 1.1 - Puerto Antofagasta overview (location, governance, throughput)
- [x] 2.5.3 Write Section 1.1.1 - EMPORCHA governance structure (state-owned enterprise)
- [x] 2.5.4 Write Section 1.1.2 - Terminal concessions (ATI, Portezuelo, Mall Plaza)
- [x] 2.5.5 Write Section 1.1.3 - Berth specifications (Berth 5: 224m/12m, Berth 7: 337m/11.6m)
- [x] 2.5.6 Write Section 1.1.4 - Cargo handling rates (containers 15/hr, zinc 100 rotainers/shift)
- [x] 2.5.7 Write Section 1.1.5 - REE handling readiness assessment
- [x] 2.5.8 Write Section 1.2 - Puerto Mejillones overview
- [x] 2.5.9 Write Section 1.2.1 - CPM structure (CODELCO subsidiary)
- [x] 2.5.10 Write Section 1.2.2 - Terminal breakdown (Puerto Angamos, TGN)
- [x] 2.5.11 Write Section 1.2.3 - New bulk terminal US$120M (4M ton/yr, tubular conveyors)
- [x] 2.5.12 Write Section 1.2.4 - Rail reception capability (volteable containers)
- [x] 2.5.13 Write Section 1.2.5 - Storage capacity (72,000 ton concentrate bodega)
- [x] 2.5.14 Write Section 1.3 - Puerto San Antonio overview
- [x] 2.5.15 Write Section 1.3.1 - Current capacity (1.8M TEU, 23.2M ton 2024)
- [x] 2.5.16 Write Section 1.3.2 - Puerto Exterior project (US$4B, 6M TEU, 2036 ops)
- [x] 2.5.17 Write Section 1.4 - Puerto Coronel & Punta Arenas
- [x] 2.5.18 Write Section 1.5 - Comparative port capability matrix table
- [x] 2.5.19 Create Chapter 2 markdown header "Rail Corridors FCAB & FERRONOR"
- [x] 2.5.20 Write Section 2.1 - FCAB overview (900km, 15M ton/yr, privatized)
- [x] 2.5.21 Write Section 2.1.1 - Gauge specifications (1000mm meter gauge)
- [x] 2.5.22 Write Section 2.1.2 - Antofagasta-Meijillones link capacity
- [x] 2.5.23 Write Section 2.1.3 - Rolling stock & locomotive fleet
- [x] 2.5.24 Write Section 2.1.4 - Tariff structure for mineral concentrates
- [x] 2.5.25 Write Section 2.2 - Ferronor overview (800km north-south spine)
- [x] 2.5.26 Write Section 2.2.1 - Calama-Salta connection (Argentina link)
- [x] 2.5.27 Write Section 2.2.2 - State-owned operations & investment plan
- [x] 2.5.28 Write Section 2.2.3 - Integration with FCAB at strategic nodes
- [x] 2.5.29 Write Section 2.3 - EFE integration (passenger/freight)
- [x] 2.5.30 Write Section 2.4 - Corredor Bioceánico proposal status
- [x] 2.5.31 Write Section 2.5 - Rail cost model: $/ton-km formulas
- [x] 2.5.32 Write Section 2.6 - Rail corridor comparative matrix
- [x] 2.5.33 Create Chapter 3 markdown header "Magnet Shipping IMDG Class 9"
- [x] 2.5.34 Write Section 3.1 - IMDG Code Class 9 classification (UN 2807/3508)
- [x] 2.5.35 Write Section 3.1.1 - Magnetized material definition & thresholds
- [x] 2.5.36 Write Section 3.1.2 - Packing Group II requirements
- [x] 2.5.37 Write Section 3.2 - IATA DGR 9.3 air freight restrictions
- [x] 2.5.38 Write Section 3.2.1 - Field strength <5.25mT at 2.1m (IATA PI 953)
- [x] 2.5.39 Write Section 3.2.2 - Shielding packaging design (mu-metal, steel)
- [x] 2.5.40 Write Section 3.2.3 - Temperature control -40°C to +80°C stability
- [x] 2.5.41 Write Section 3.3 - MIL-STD-1540 test certificate requirements
- [x] 2.5.42 Write Section 3.4 - ASTM D4169 distribution testing (Assurance Level II)
- [x] 2.5.43 Write Section 3.5 - Magnet-specific specs: NdFeB vs SmCo vs FeN vs FeCo
- [x] 2.5.44 Write Section 3.6 - Documentation: DGD, MSDS, shipper's declaration
- [x] 2.5.45 Write Section 3.7 - Emergency response (EmS F-A, S-Q)
- [x] 2.5.46 Create Chapter 4 markdown header "Customs CPTPP Paperless & Blockchain"
- [x] 2.5.47 Write Section 4.1 - CPTPP Article 14 Digital Trade provisions
- [x] 2.5.48 Write Section 4.1.1 - Paperless customs & e-bills of lading
- [x] 2.5.49 Write Section 4.1.2 - Blockchain certificates of origin
- [x] 2.5.50 Write Section 4.2 - Chile-US FTA rules of origin for magnets
- [x] 2.5.51 Write Section 4.3 - Chile-EU Advanced Framework strategic raw materials
- [x] 2.5.52 Write Section 4.4 - APEC Cross-Border Paperless Trade
- [x] 2.5.53 Write Section 4.5 - SICEX single window system
- [x] 2.5.54 Write Section 4.6 - WCO SAFE Framework & AEO certification
- [x] 2.5.55 Write Section 4.7 - HS Code classification for magnetic materials
- [x] 2.5.56 Write Section 4.8 - Customs clearance timeline & cost formulas
- [x] 2.5.57 Create Chapter 5 markdown header "Logistics Cost Model Ocean Freight"
- [x] 2.5.58 Write Section 5.1 - Ocean freight rates Antofagasta→Rotterdam/Shanghai/Busan/Houston
- [x] 2.5.59 Write Section 5.1.1 - 2024-25 spot rate benchmarks ($/TEU, $/ton)
- [x] 2.5.60 Write Section 5.1.2 - Seasonal surcharges (peak season, bunker adjustment)
- [x] 2.5.61 Write Section 5.2 - Rail tariffs FCAB/Ferronor detailed breakdown
- [x] 2.5.62 Write Section 5.3 - Warehousing: ZOFRI Iquique & Punta Arenas bonded zones
- [x] 2.5.63 Write Section 5.4 - Insurance: war risk, magnet degradation, delay coverage
- [x] 2.5.64 Write Section 5.5 - Total landed cost model formula
- [x] 2.5.65 Write Section 5.5.1 - Mine-to-port rail component
- [x] 2.5.66 Write Section 5.5.2 - Port handling & documentation fees
- [x] 2.5.67 Write Section 5.6 - Sensitivity analysis (±15% fuel, ±20% FX)
- [x] 2.5.68 Create Chapter 6 markdown header "Supply Chain Resilience Alt Routes"
- [x] 2.5.69 Write Section 6.1 - Pacific route (Antofagasta→Asia/US West Coast)
- [x] 2.5.70 Write Section 6.2 - Atlantic route (Punta Arenas/Coronel→Europe/US East)
- [x] 2.5.71 Write Section 6.3 - Strait of Magellan transit (36hrs, pilotage, weather)
- [x] 2.5.72 Write Section 6.4 - Panama Canal alternative (Neopanamax, tolls, queue)
- [x] 2.5.73 Write Section 6.5 - Red Sea disruption contingencies (Cape routing)
- [x] 2.5.74 Write Section 6.6 - Port strike history: 2019, 2022, 2024 impact analysis
- [x] 2.5.75 Write Section 6.7 - Climate resilience: tsunami (2010, 2015), Mw8.8+ seismic
- [x] 2.5.76 Write Section 6.8 - Atacama hyperaridity: fog, dust, zero-rain operations
- [x] 2.5.77 Write Section 6.9 - Resilience scoring matrix (RTO/RPO per corridor)
- [x] 2.5.78 Create Chapter 7 markdown header "CSM Delivery Requirements Magnet-to-Motor"
- [x] 2.5.79 Write Section 7.1 - CSM factory intake specs from DOC-06
- [x] 2.5.80 Write Section 7.1.1 - NdFeB grade specs (N42H, N48SH, N52EH)
- [x] 2.5.81 Write Section 7.1.2 - SmCo grade specs (SmCo 1:5, 2:17 series)
- [x] 2.5.82 Write Section 7.1.3 - FeN/FeCo emerging grade specifications
- [x] 2.5.83 Write Section 7.2 - JIT vs buffer stock strategy analysis
- [x] 2.5.84 Write Section 7.3 - QC chain: mine assay → port inspection → factory acceptance
- [x] 2.5.85 Write Section 7.4 - DFARS 252.225-7018 specialty metals compliance
- [x] 2.5.86 Write Section 7.5 - Traceability: heat/lot tracking blockchain ledger
- [x] 2.5.87 Write Section 7.6 - Delivery terms: DDP factory, INCOTERMS 2020
- [x] 2.5.88 Create Chapter 8 markdown header "Port Community Integration Local Benefit"
- [x] 2.5.89 Write Section 8.1 - Aegis-Forge modular port services deployment
- [x] 2.5.90 Write Section 8.2 - Zero aqueous discharge → port water quality benefit
- [x] 2.5.91 Write Section 8.3 - FBC/CDC trusts at port cities (Antofagasta, Mejillones, San Antonio)
- [x] 2.5.92 Write Section 8.4 - Local employment: port operations + Aegis-Forge clusters
- [x] 2.5.93 Write Section 8.5 - Indigenous: Kawashkar/Yámana (Punta Arenas)
- [x] 2.5.94 Write Section 8.6 - Indigenous: Chango (Antofagasta/Mejillones)
- [x] 2.5.95 Write Section 8.7 - Community benefit agreement template
- [x] 2.5.96 Write Section 8.8 - Environmental monitoring: community sentinel program
- [x] 2.5.97 Write Section 8.9 - Social license maintenance protocol
- [x] 2.5.98 Create Chapter 9 markdown header "Traceability Matrix Logistics Claims"
- [x] 2.5.99 Write Section 9.1 - Methodology: claim-to-source mapping per DOC-07
- [x] 2.5.100 Write Section 9.2 - Port infrastructure claims traceability table
- [x] 2.5.101 Write Section 9.3 - Rail corridor claims traceability table
- [x] 2.5.102 Write Section 9.4 - Shipping/customs claims traceability table
- [x] 2.5.103 Write Section 9.5 - Cost/resilience/community claims traceability table
- [x] 2.5.104 Write Section 9.6 - Cross-reference index to DOC-01 through DOC-07
- [x] 2.5.105 Assemble full DOC-08 document (concatenate Ch1-Ch9, verify ≥900 lines)
- [x] 2.5.106 Count formulas/technical specs (target ≥20 LaTeX/Unicode)
- [x] 2.5.107 Count cross-references (target ≥15 to DOC-01..07, Chilean law, IMO, IATA, WCO)
- [x] 2.5.108 Count standards cited (target ≥8: IMDG, IATA, CPTPP, WCO, ISO, ASTM, MIL-STD, Chilean port law)
- [x] 2.5.109 Conflation check vs DOC-01..07 (0 flags target)
- [x] 2.5.110 Write complete DOC-08 to FinishedWork/DOC-08_Port_Logistics_Corridors.md
- [x] 2.5.111 Run write_large_file.py split (chunks/DOC-08 chapter .md)
- [x] 2.5.112 Run write_large_file.py verify chunks/DOC-08 (reassembly 0 bytes diff)
- [x] 2.5.113 Run write_large_file.py manifest chunks/DOC-08 (SHA256 + size)
- [x] 2.5.114 Run write_large_file.py compress FinishedWork/DOC-08_*.md (.md.gz)
- [x] 2.5.115 Run generate_heuristic_intros.sh (5 variants: Williams, Keymaker, El Segundo, Baker Street, Combined)
- [x] 2.5.116 Verify 5 intro files created in FinishedWork/intros/
- [x] 2.5.117 Git add chunks/DOC-08/ FinishedWork/DOC-08_*.md.gz FinishedWork/intros/DOC-08_*.md
- [x] 2.5.118 Git commit with message 'DOC-08: Port & Logistics Corridors complete'
- [x] 2.5.119 Git tag runner-005-complete && git push origin --tags
- [x] 2.5.120 Create NEXT_runner_006.md handoff document

#### 2.6 Runner 002 Wrap-up (5 tasks)
- [x] 2.6.1 Verify all 5 document chunks + manifests
- [x] 2.6.2 Update master index: chunks/MASTER_INDEX.json
- [x] 2.6.3 Create NEXT_runner_003.md handoff
- [x] 2.6.4 Git: Commit all, tag runner-002-complete
- [x] 2.6.5 Update RESUME_SESSION_MAGNETS.md for next session

### Phase 3: Technical Specifications — Runner 003 (Tasks 141-215)

#### 3.1 DOC-09: Rare Earth & Critical Mineral Specifications (15 tasks)
- [x] 3.1.1 Document NdFeB grades: N35-N52, N35M-N50M, N33H-N48H, N30SH-N45SH
- [x] 3.1.2 Document SmCo grades: SmCo5 (16-22 MGOe), Sm2Co17 (22-32 MGOe)
- [x] 3.1.3 Document Fe16N2 27 MGOe: Niron Magnetics specs, CSMMagTech2026 V2.0
- [x] 3.1.4 Document FeN/FeCo rare-earth-free grades: MnBi 14 MGOe, AlNiCo 10.5 MGOe
- [x] 3.1.5 Analyze REE oxide specifications: Nd2O3, Pr6O11, Dy2O3, Tb4O7 purity
- [x] 3.1.6 Document magnet motor integration specs: CSMFAB motor designs
- [x] 3.1.7 Cross-reference with Aegis-Forge output specs (DOC-05, E172)
- [x] 3.1.8 Draft DOC-09 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
- [x] 3.1.9 Generate heuristic intros (Williams, Keymaker, El Segundo, Combined)
- [x] 3.1.10 Split into logical chunks → chunks/DOC-09/
- [x] 3.1.11 Generate manifest & verify integrity
- [x] 3.1.12 Compress FinishedWork original (.gz)
- [x] 3.1.13 Log completion to memory/ + git commit

#### 3.2 DOC-10: Magnet Manufacturing Supply Chain (15 tasks)
#### 3.3 DOC-11: Geomagnetic Risk & Infrastructure Hardening (15 tasks)
#### 3.4 DOC-12: Financial Instruments (15 tasks)
#### 3.5 DOC-13: CSMOPP Heuristic Personalities (15 tasks)
#### 3.6 DOC-14: Document Conflation Audit (15 tasks)
#### 3.7 DOC-15: Session Resume Framework (15 tasks)
#### 3.8 Runner 003 Wrap-up (5 tasks)

### Phase 4: Regional Deep Dives — Runners 004-006 (Tasks 216-410)

#### 4.1 DOC-16: Norte Grande — Tarapacá & Antofagasta Regions (15 tasks)
#### 4.2 DOC-17: Norte Chico — Atacama & Coquimbo Regions (15 tasks)
#### 4.3 DOC-18: Zona Central — Valparaíso to Biobío (15 tasks)
#### 4.4 DOC-19: Sur — Araucanía to Los Lagos (15 tasks)
#### 4.5 DOC-20: Austral — Aysén & Magallanes (15 tasks)
#### 4.6 DOC-21: Neodymium-Dysprosium Supply Chain Deep Dive (15 tasks)
#### 4.7 DOC-22: Terbium-Samarium-Cobalt Specialty Magnets (15 tasks)
#### 4.8 DOC-23: Iron-Nitride (FeN) Rare-Earth-Free Pathway (15 tasks)
#### 4.9 DOC-24: Copper-Gold-Iron Oxide (IOCG) Magnetic Byproducts (15 tasks)
#### 4.10 DOC-25: Recycling Loops — Urban Mining & Tailings Reprocessing (15 tasks)

### Phase 5: Community-Specific Intelligence — Runners 007-008 (Tasks 411-560)

#### 5.1 DOC-26..35: 10 Community Deep Dives (150 tasks)
- Indigenous territories (3), Mining towns (3), Port cities (2), Academic centers (2)

### Phase 6: Technology Transfer — Runners 009-010 (Tasks 561-710)

#### 6.1 DOC-36..45: 10 Technology Transfer Documents (150 tasks)
- Aegis-Forge deployment, rare-earth-free scaling, recycling, grid hardening

### Phase 7: Strategic Synthesis — Runner 011 (Tasks 711-860)

#### 7.1 DOC-46..55: 10 Synthesis Documents (150 tasks)
- Steering the current, broker-to-owner transition, venture scaling

#### 7.2 DOC-56..60: Final 5 Strategic Synthesis (75 tasks)
- Master integration, handoff to operations, continuity protocol

### Phase 8: Final Integration — Runner 012 (Tasks 861-900)

#### 8.1 Full pipeline verification (20 tasks)
#### 8.2 Master index completion (10 tasks)
#### 8.3 Final git tag & handoff to operations (10 tasks)

---

## Current Sprint: Phase 2 Complete → Phase 3 Starting (Runner 003)

### Immediate Next Actions (Next Session)
1. [ ] Begin DOC-07: Chilean Regulatory Navigation (research & authoring)
2. [ ] Begin DOC-08: Port & Logistics Corridors (research & authoring)
3. [ ] Start heartbeat monitor
4. [ ] Git: Tag runner-002-complete
5. [ ] Update RESUME_SESSION_MAGNETS.md

### Blockers
- None identified — all tools and references available

### Decisions Log
- 2026-10-22: Project created at CSMWip/CSMMinesMagnets
- 2026-10-22: 60-doc pipeline defined (3 foundation + 12 brokerage + 45 expanded)
- 2026-10-22: Heuristic framework: Williams, Keymaker, El Segundo, Baker Street, SHIELD
- 2026-10-22: Target: Chile magnetic minerals → Tardigradia → Carrington Storm Motors
- 2026-10-24: Runner 001 complete: DOC-01, DOC-02, DOC-03 done (Phase 1)
- 2026-10-24: Runner 002 complete: DOC-04, DOC-05, DOC-06 done (Phase 2, first batch)
- 2026-10-24: Runner 003 starting: DOC-07, DOC-08 next (Phase 2, second batch)