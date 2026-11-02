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
- [x] 1.4.1 Verify all 3 document chunks + manifests
- [x] 1.4.2 Update master index: chunks/MASTER_INDEX.json
- [x] 1.4.3 Create NEXT_runner_002.md handoff
- [x] 1.4.4 Git: Commit all, tag runner-001-complete
- [x] 1.4.5 Update RESUME_SESSION_MAGNETS.md for next session

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
- [x] 2.4.1 Map Chilean Mining Code (Código de Minería) concessions & permits
- [x] 2.4.2 Document Environmental Law 19,300: SEIA, RCA, EIA, DIA processes
- [x] 2.4.3 Analyze Indigenous Law 19,253: Consulta, territorial rights, benefit agreements
- [x] 2.4.4 Document Water Code (Código de Aguas) & Aegis-Forge zero-water advantage
- [x] 2.4.5 Map permitting timeline: Standard vs. CRMA strategic project fast-track
- [x] 2.4.6 Analyze royalty regime Law 21,210: Ad valorem vs. operating margin
- [x] 2.4.7 Document Sernageomin role: Concession registry, safety, closure
- [x] 2.4.7 Cross-reference with DOC-04 brokerage triggers (RCA, Consulta, etc.)
- [x] 2.4.8 Draft DOC-07 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
- [x] 2.4.9 Generate heuristic intros (Williams, Keymaker, El Segundo, Combined)
- [x] 2.4.10 Split into logical chunks → chunks/DOC-07/
- [x] 2.4.11 Generate manifest & verify integrity
- [x] 2.4.12 Compress FinishedWork original (.gz)
- [x] 2.4.13 Log completion to memory/ + git commit

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
  
  #### 4.2 DOC-17: Norte Chico — Atacama South & Coquimbo Regions (15 tasks)
  - [x] 4.2.1 Research Norte Chico IOCG/REE districts, Diaguita territories, FCAB Los Colorados
  - [x] 4.2.2 Map administrative divisions: Atacama South (2 prov) + Coquimbo (3 prov)
  - [x] 4.2.3 Quantify district resources: Los Bronces Ext, El Romeral, El Algarrobo, Los Colorados, Dominga, Punta Cobre S.
  - [x] 4.2.4 Document Diaguita valley consent pathways (Elqui, Limarí, Choapa, Huasco, Copiapó S.)
  - [x] 4.2.5 Map FCAB Los Colorados rail + Puerto Guayacán/Coquimbo/Panul ports
  - [x] 4.2.6 Analyze Diaguita communities, Dominga rejection precedent
  - [x] 4.2.7 Document SEREMI Coquimbo/Atacama + GORE Coquimbo regulatory interface
  - [x] 4.2.8 Size Aegis-Forge clusters: Alpha-3/4/5/6/7 (IOCG), Bravo-3/4 (ion-adsorption)
  - [x] 4.2.9 Cross-reference DOC-01..16 (national → regional refinement)
  - [x] 4.2.10 Draft DOC-17 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
  - [x] 4.2.11 Generate 5 heuristic intros (Williams, Keymaker, El Segundo, Baker Street, SHIELD + Combined)
  - [x] 4.2.12 Split into logical chunks → chunks/DOC-17/
  - [x] 4.2.13 Generate manifest & verify integrity
  - [x] 4.2.14 Compress FinishedWork original (.gz)
  - [x] 4.2.15 Log completion + git commit + tag runner-014a-complete
  
  #### 4.3 DOC-18: Zona Central — Valparaíso, Metropolitana, O'Higgins (15 tasks)
  - [x] 4.3.1 Research Zona Central porphyry Cu-Mo-REE, Mapuche-Pehuenche, urban mining
  - [x] 4.3.2 Map administrative divisions: Valparaíso (8 prov) + Metropolitana (6) + O'Higgins (3)
  - [x] 4.3.3 Quantify district resources: Los Bronces, Andina, El Teniente, Los Pelambres, El Soldado, Chagres
  - [x] 4.3.4 Document Santiago urban mining REE potential (377 t/yr NdPr from e-waste/catalysts)
  - [x] 4.3.5 Map FCAB Central + EFE rail + Valparaíso/San Antonio/Los Vilos ports
  - [x] 4.3.6 Analyze Mapuche-Pehuenche (high Andes) + urban recycler communities
  - [x] 4.3.7 Document 3-region SEREMI/GORE + Glacier Law 21.435 regulatory interface
  - [x] 4.3.8 Size Aegis-Forge clusters: Alpha-7/8/9/10/11 (porphyry), Bravo-5 (urban)
  - [x] 4.3.9 Cross-reference DOC-01..17 (national → regional refinement)
  - [x] 4.3.10 Draft DOC-18 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
  - [x] 4.3.11 Generate 5 heuristic intros (Williams, Keymaker, El Segundo, Baker Street, SHIELD + Combined)
  - [x] 4.3.12 Split into logical chunks → chunks/DOC-18/
  - [x] 4.3.13 Generate manifest & verify integrity
  - [x] 4.3.14 Compress FinishedWork original (.gz)
  - [x] 4.3.15 Log completion + git commit + tag runner-014b-complete
  
  #### 4.4 DOC-19: Sur — Maule, Ñuble, Biobío, Araucanía (15 tasks)
  - [x] 4.4.1 Research Sur historical Fe, Biobío coal/metal, Araucanía epithermal, Coastal ion-adsorption REE
  - [x] 4.4.2 Map administrative divisions: Maule (4) + Ñuble (3) + Biobío (4) + Araucanía (2)
  - [x] 4.4.3 Quantify district resources: Maule Fe skarns, Biobío coal/metal, Araucanía epithermal, Coastal REE clays
  - [x] 4.4.4 Document 4 Mapuche sub-groups (Lafkenche, Pewenche, Wenteche, Nagche) + urban recyclers
  - [x] 4.4.5 Map EFE Sur rail + Talcahuano/San Vicente/Coronel ports
  - [x] 4.4.6 Analyze Native Forest Law 20.283, Mapuche consent complexity
  - [x] 4.4.7 Document 4-region SEREMI/GORE regulatory interface
  - [x] 4.4.8 Size Aegis-Forge clusters: Alpha-12/13/14 (historical/epithermal), Bravo-6/7 (coastal/urban)
  - [x] 4.4.9 Cross-reference DOC-01..18 (national → regional refinement)
  - [x] 4.4.10 Draft DOC-19 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
  - [x] 4.4.11 Generate 5 heuristic intros (Williams, Keymaker, El Segundo, Baker Street, SHIELD + Combined)
  - [x] 4.4.12 Split into logical chunks → chunks/DOC-19/
  - [x] 4.4.13 Generate manifest & verify integrity
  - [x] 4.4.14 Compress FinishedWork original (.gz)
  - [x] 4.4.15 Log completion + git commit + tag runner-014c-complete
  
  #### 4.5 DOC-20: Austral — Aysén & Magallanes (15 tasks)
  - [x] 4.5.1 Research Austral coal/Fe, Magallanes epithermal, Fuegian glacial REE clays
  - [x] 4.5.2 Map administrative divisions: Aysén (4 prov) + Magallanes (4 prov)
  - [x] 4.5.3 Quantify district resources: Aysén coal/Fe, Magallanes epithermal HREE, Fuegian glacial clays
  - [x] 4.5.4 Document Kawashkar/Yámana consent pathways, Cape Horn logistics
  - [x] 4.5.5 Map Ferronor Austral + Punta Arenas/Natal ports + Strait of Magellan
  - [x] 4.5.6 Analyze Antarctic Treaty implications, glacier protection laws
  - [x] 4.5.7 Document 2-region SEREMI/GORE + Antarctic regulatory interface
  - [x] 4.5.8 Size Aegis-Forge clusters: Alpha-15/16 (coal/Fe), Alpha-17 (epithermal HREE), Bravo-8/9 (glacial)
  - [x] 4.5.9 Cross-reference DOC-01..19 (national → regional refinement)
  - [x] 4.5.10 Draft DOC-20 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
  - [x] 4.5.11 Generate 5 heuristic intros (Williams, Keymaker, El Segundo, Baker Street, SHIELD + Combined)
  - [x] 4.5.12 Split into logical chunks → chunks/DOC-20/
  - [x] 4.5.13 Generate manifest & verify integrity
  - [x] 4.5.14 Compress FinishedWork original (.gz)
  - [x] 4.5.15 Log completion + git commit + tag runner-015a-complete

  #### 4.6 DOC-21: Neodymium-Dysprosium Supply Chain Deep Dive (15 tasks)
  - [x] 4.6.1 Research Nd/Dy global supply chain: China monopoly, Myanmar, Australia, US, recycling
  - [x] 4.6.2 Map Chilean Nd/Dy occurrences: IOCG (Norte Grande/Chico), porphyry, ion-adsorption
  - [x] 4.6.3 Quantify Aegis-Forge Stage 8 Nd/Dy separation: chloride route, SX parameters, 4N purity
  - [x] 4.6.4 Document NdFeB manufacturing supply chain: mine → separation → metal → alloy → sinter
  - [x] 4.6.5 Analyze recycling loop: EOL magnets → hydromet → Nd/Dy oxide → metal → alloy
  - [x] 4.6.6 Cross-reference with DOC-09 (grades), DOC-10 (supply chain), DOC-16..20 (regional)
  - [x] 4.6.7 Draft DOC-21 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
  - [x] 4.6.8 Generate 5 heuristic intros (Williams, Keymaker, El Segundo, Baker Street, SHIELD + Combined)
  - [x] 4.6.9 Split into logical chunks → chunks/DOC-21/
  - [x] 4.6.10 Generate manifest & verify integrity
  - [x] 4.6.11 Compress FinishedWork original (.gz)
  - [x] 4.6.12 Log completion + git commit + tag runner-015b-complete

  #### 4.7 DOC-22: Terbium-Samarium-Cobalt Specialty Magnets (15 tasks)
  - [x] 4.7.1 Research SmCo/Tb market: high-temp defense, aerospace, Tb-doping physics, DFARS/ITAR
  - [x] 4.7.2 Map Chilean Sm/Co/Tb occurrences: IOCG Co byproduct, lateritic, epithermal HREE
  - [x] 4.7.3 Quantify Aegis-Forge Stage 4 Co + Stage 8 Sm/Tb separation + metal reduction
  - [x] 4.7.4 Document SmCo manufacturing: mine → separation → metal → alloy → sinter → magnet
  - [x] 4.7.5 Analyze Tb grain boundary diffusion: Hci enhancement, Tb-Co master alloy, supply criticality
  - [x] 4.7.6 Document DFARS/ITAR qualification: MIL-STD-1540, qualifying country chain, traceability
  - [x] 4.7.7 Draft DOC-22 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
  - [x] 4.7.8 Generate 5 heuristic intros (Williams, Keymaker, El Segundo, Baker Street, SHIELD + Combined)
  - [x] 4.7.9 Split into logical chunks → chunks/DOC-22/
  - [x] 4.7.10 Generate manifest & verify integrity
  - [x] 4.7.11 Compress FinishedWork original (.gz)
  - [x] 4.7.12 Log completion + git commit + tag runner-015c-complete

  #### 4.8 DOC-23: Gadolinium-Europium-Holmium Medical/Quantum (15 tasks)
  - [x] 4.8.1 Research Gd/Eu/Ho markets: MRI contrast ($1.2B), phosphors ($800M), quantum ($500M), control rods
  - [x] 4.8.2 Map Chilean Gd/Eu/Ho occurrences: ion-adsorption, epithermal, porphyry byproduct
  - [x] 4.8.3 Quantify Aegis-Forge Stage 8 Gd/Eu/Ho separation: SX parameters, 4N purity
  - [x] 4.8.4 Document medical supply chain: Gd-DTPA/DOTA GMP, Eu phosphors, Ho fiber lasers
  - [x] 4.8.5 Analyze quantum/nuclear: Ho:YLF quantum memory, Gd burnable poison, Eu quantum dots
  - [x] 4.8.6 Draft DOC-23 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
  - [x] 4.8.7 Generate 5 heuristic intros (Williams, Keymaker, El Segundo, Baker Street, SHIELD + Combined)
  - [x] 4.8.8 Split into logical chunks → chunks/DOC-23/
  - [x] 4.8.9 Generate manifest & verify integrity
  - [x] 4.8.10 Compress FinishedWork original (.gz)
  - [x] 4.8.11 Log completion + git commit + tag runner-016a-complete

  #### 4.9 DOC-24: Lutetium-Yttrium-Scandium Specialty Alloys (15 tasks)
  - [x] 4.9.1 Research Lu/Y/Sc markets: Sc-Al alloys ($300/kg Sc), Y₂O₃ SCR, Lu₂O₃ scintillators, Lu-177
  - [x] 4.9.2 Map Chilean Lu/Y/Sc occurrences: HREE-enriched IOCG, ion-adsorption clays
  - [x] 4.9.3 Quantify Aegis-Forge Stage 8 Lu/Y/Sc separation: HREE SX circuit
  - [x] 4.9.4 Document specialty alloys: Sc-Al master alloy, Y₂O₃ SCR catalysts, Lu₂O₃ PET/CT
  - [x] 4.9.5 Analyze medical isotope: Lu-177 production, Y-90, radiopharmacy supply chain
  - [x] 4.9.6 Draft DOC-24 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
  - [x] 4.9.7 Generate 5 heuristic intros (Williams, Keymaker, El Segundo, Baker Street, SHIELD + Combined)
  - [x] 4.9.8 Split into logical chunks → chunks/DOC-24/
  - [x] 4.9.9 Generate manifest & verify integrity
  - [x] 4.9.10 Compress FinishedWork original (.gz)
  - [x] 4.9.11 Log completion + git commit + tag runner-016b-complete

  #### 4.10 DOC-25: Cerium-Lanthanum-Praseodymium Catalytic/Polishing (15 tasks)
  - [x] 4.10.1 Research Ce/La/Pr markets: FCC catalysts ($4B), glass polishing ($1.5B), Pr-Nd metal, batteries
  - [x] 4.10.2 Map Chilean Ce/La/Pr occurrences: monazite/bastnäsite dominant across all 22 districts
  - [x] 4.10.3 Quantify Aegis-Forge Stage 8 Ce/La/Pr separation: LREE SX circuit (high volume, 3N-4N)
  - [x] 4.10.4 Document catalyst supply chain: FCC catalyst specs, Ce/La fluid cracking, recycling
  - [x] 4.10.5 Analyze polishing/alloy/battery: CeO₂ powder, mischmetal, LaNi₅ MH batteries
  - [x] 4.10.6 Draft DOC-25 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
  - [x] 4.10.7 Generate 5 heuristic intros (Williams, Keymaker, El Segundo, Baker Street, SHIELD + Combined)
  - [x] 4.10.8 Split into logical chunks → chunks/DOC-25/
  - [x] 4.10.9 Generate manifest & verify integrity
  - [x] 4.10.10 Compress FinishedWork original (.gz)
  - [x] 4.10.11 Log completion + git commit + tag runner-016c-complete

### Phase 5: Community-Specific Intelligence — Runner 017 (Tasks 411-560)

#### 5.1 DOC-26..35: 10 Community Deep Dives (150 tasks)
  #### 5.1.1 DOC-26: Atacameño Territory (Norte Grande) (15 tasks)
  - [ ] 5.1.1.1 Research Atacameño (Lickanantay) history, 11 ayllus, Salar de Atacama, water cosmology
  - [ ] 5.1.1.2 Map mining impacts: SQM/Albemarle brine, lagoons, Cu/REE overlap, cumulative impact
  - [ ] 5.1.1.3 Document consent architecture: Consulta Indígena, CPA, precedent cases, CPA model
  - [ ] 5.1.1.4 Design FBC/CDC trust: 15%/20% equity, water trust, cultural heritage fund, governance
  - [ ] 5.1.1.5 Size Aegis-Forge integration: Alpha-1/2 clusters, local employment, training, procurement
  - [ ] 5.1.1.6 Design water sovereignty protocol: brine vs freshwater, lagoon monitoring, community hydrology
  - [ ] 5.1.1.7 Economic diversification: tourism (ALMA), agriculture, value-added REE processing
  - [ ] 5.1.1.8 Regulatory navigation: SEA RCA, DGA, CONADI, Sernageomin, CRMA strategic project
  - [ ] 5.1.1.9 Draft DOC-26 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
  - [ ] 5.1.1.10 Generate 5 heuristic intros (El Segundo PRIMARY, Williams, Baker Street, Keymaker, SHIELD)
  - [ ] 5.1.1.11 Split into logical chunks → chunks/DOC-26/
  - [ ] 5.1.1.12 Generate manifest & verify integrity
  - [ ] 5.1.1.13 Compress FinishedWork original (.gz)
  - [ ] 5.1.1.14 Log completion + git commit + tag runner-017a-complete

  #### 5.1.2 DOC-27: Diaguita Valleys (Norte Chico) (15 tasks)
  - [ ] 5.1.2.1 Research Diaguita 4 valleys (Elqui, Limarí, Choapa, Huasco), 15 communities, agriculture
  - [ ] 5.1.2.2 Map mining impacts: Dominga rejection, Los Pelambres tailings, water scarcity, agric conflict
  - [ ] 5.1.2.3 Document consent architecture: Consulta Indígena, valley assemblies, legal personality (2006)
  - [ ] 5.1.2.4 Design FBC/CDC trust: valley-specific, agricultural compensation, water fund, cultural revitalization
  - [ ] 5.1.2.5 Size Aegis-Forge integration: Alpha-3..7 (IOCG), Bravo-3/4 (ion-adsorption), local jobs
  - [ ] 5.1.2.6 Water sharing agreements: surface + groundwater, agricultural priority, mining efficiency
  - [ ] 5.1.2.7 Economic diversification: agro-export, astro-tourism, REE value-add
  - [ ] 5.1.2.8 Regulatory navigation: SEREMI Coquimbo/Atacama, GORE, DGA, CRMA, Glacier Law
  - [ ] 5.1.2.9 Draft DOC-27 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
  - [ ] 5.1.2.10 Generate 5 heuristic intros (El Segundo PRIMARY, Williams, Baker Street, Keymaker, SHIELD)
  - [ ] 5.1.2.11 Split into logical chunks → chunks/DOC-27/
  - [ ] 5.1.2.12 Generate manifest & verify integrity
  - [ ] 5.1.2.13 Compress FinishedWork original (.gz)
  - [ ] 5.1.2.14 Log completion + git commit + tag runner-017b-complete

  #### 5.1.3 DOC-28: Mapuche-Pehuenche (Zona Central Andes) (15 tasks)
  - [ ] 5.1.3.1 Research Pehuenche origin, 8 communities, pewén/araucaria, volcanic territory
  - [ ] 5.1.3.2 Map porphyry impacts: Los Bronces, Andina, El Teniente, Los Pelambres, glacier, watershed
  - [ ] 5.1.3.3 Document consent architecture: Consulta Indígena, territorial authority, FPIC, precedent
  - [ ] 5.1.3.4 Design FBC/CDC trust: glacier protection, watershed trust, pewén restoration, cultural center
  - [ ] 5.1.3.5 Size Aegis-Forge integration: Alpha-7..11 (porphyry), Bravo-5 (urban mining), high-skill jobs
  - [ ] 5.1.3.6 Glacier & watershed protocol: Glacier Law 21.435, monitoring, sentinel, veto rights
  - [ ] 5.1.3.7 Economic diversification: mountain tourism, pewén products, hydroponics, data centers
  - [ ] 5.1.3.8 Regulatory navigation: 3-region SEREMI/GORE, SEIA, DGA, CONAF, CRMA
  - [ ] 5.1.3.9 Draft DOC-28 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
  - [ ] 5.1.3.10 Generate 5 heuristic intros (El Segundo PRIMARY, Williams, Baker Street, Keymaker, SHIELD)
  - [ ] 5.1.3.11 Split into logical chunks → chunks/DOC-28/
  - [ ] 5.1.3.12 Generate manifest & verify integrity
  - [ ] 5.1.3.13 Compress FinishedWork original (.gz)
  - [ ] 5.1.3.14 Log completion + git commit + tag runner-017c-complete

  #### 5.1.4 DOC-29: Mapuche-Lafkenche/Pewenche/Wenteche/Nagche (Sur) (15 tasks)
  - [ ] 5.1.4.1 Research 4 Mapuche sub-groups: coastal, riverine, Andean, lowland, 20+ communities
  - [ ] 5.1.4.2 Map historical impacts: Biobío coal/metal, Arauco pulp, REE clays, Native Forest Law
  - [ ] 5.1.4.3 Document consent architecture: multi-subgroup, Lafkenche maritime, Pewenche Andes, consent complexity
  - [ ] 5.1.4.4 Design FBC/CDC trust: coastal (Lafkenche), forest (Nagche), river (Wenteche), Andes (Pewenche)
  - [ ] 5.1.4.5 Size Aegis-Forge integration: Alpha-12/13/14, Bravo-6/7 (coastal/urban)
  - [ ] 5.1.4.6 Native forest & coastal protocol: Law 20.283, marine spatial planning, restoration, blue carbon
  - [ ] 5.1.4.7 Economic diversification: sustainable forestry, aquaculture, REE recycling, eco-tourism
  - [ ] 5.1.4.8 Regulatory navigation: 4-region SEREMI/GORE, CONADI, DGA, DIRECTEMAR, CRMA
  - [ ] 5.1.4.9 Draft DOC-29 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
  - [ ] 5.1.4.10 Generate 5 heuristic intros (El Segundo PRIMARY, Williams, Baker Street, Keymaker, SHIELD)
  - [ ] 5.1.4.11 Split into logical chunks → chunks/DOC-29/
  - [ ] 5.1.4.12 Generate manifest & verify integrity
  - [ ] 5.1.4.13 Compress FinishedWork original (.gz)
  - [ ] 5.1.4.14 Log completion + git commit + tag runner-017d-complete

  #### 5.1.5 DOC-30: Kawéskar/Yagán (Austral Fjords) (15 tasks)
  - [ ] 5.1.5.1 Research Kawéskar/Yagán maritime nomads, canoe culture, archipelago, 5+1 communities
  - [ ] 5.1.5.2 Map austral impacts: coal, epithermal HREE (Alpha-17), HIF green H2, port expansion
  - [ ] 5.1.5.3 Document maritime consent: marine spatial planning, CONADI maritime, Kawéskar WCS
  - [ ] 5.1.5.4 Design FBC/CDC trust: marine territory trust, navigation school, Yagán language revitalization
  - [ ] 5.1.5.5 Size Aegis-Forge integration: Alpha-15/16, Alpha-17, Bravo-8/9
  - [ ] 5.1.5.6 Marine protected area protocol: Kawéskar WCS, Yagán Cape Horn, Antarctic Treaty, blue economy
  - [ ] 5.1.5.7 Economic diversification: Antarctic logistics, tourism, kelp farming, green H2 services
  - [ ] 5.1.5.8 Regulatory navigation: SEREMI Aysén/Magallanes, GORE, Antarctic Treaty, CRMA
  - [ ] 5.1.5.9 Draft DOC-30 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
  - [ ] 5.1.5.10 Generate 5 heuristic intros (El Segundo PRIMARY, Williams, Baker Street, Keymaker, SHIELD)
  - [ ] 5.1.5.11 Split into logical chunks → chunks/DOC-30/
  - [ ] 5.1.5.12 Generate manifest & verify integrity
  - [ ] 5.1.5.13 Compress FinishedWork original (.gz)
  - [ ] 5.1.5.14 Log completion + git commit + tag runner-017e-complete

  #### 5.1.6 DOC-31: Calama Mining Community (15 tasks)
  - [ ] 5.1.6.1 Research Calama: Chuquicamata, Radomiro Tomic, Ministro Hales, 180K pop, union town
  - [ ] 5.1.6.2 Labor structure: Codelco unions, contractor vs direct, gender, migration, health burden
  - [ ] 5.1.6.3 Health/environmental: silicosis, arsenic, SO₂, water scarcity, tailings, Aegis-Forge contrast
  - [ ] 5.1.6.4 Community benefit architecture: Codelco fund, royalty minera, municipal budget, FBC
  - [ ] 5.1.6.5 Aegis-Forge integration: Alpha-1/2 service hub, REE processing jobs, training center
  - [ ] 5.1.6.6 Diversification roadmap: solar, lithium, REE processing, tourism, data centers
  - [ ] 5.1.6.7 Port/rail logistics: FCAB Calama-Antofagasta-Meijillones, volteable containers, REE shipping
  - [ ] 5.1.6.8 Regulatory navigation: SEREMI Antofagasta, GORE, DGA, Sernageomin, CRMA, municipal
  - [ ] 5.1.6.9 Draft DOC-31 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
  - [ ] 5.1.6.10 Generate 5 heuristic intros (El Segundo PRIMARY, Williams, Baker Street, Keymaker, SHIELD)
  - [ ] 5.1.6.11 Split into logical chunks → chunks/DOC-31/
  - [ ] 5.1.6.12 Generate manifest & verify integrity
  - [ ] 5.1.6.13 Compress FinishedWork original (.gz)
  - [ ] 5.1.6.14 Log completion + git commit + tag runner-017f-complete

  #### 5.1.7 DOC-32: Antofagasta Port City (15 tasks)
  - [ ] 5.1.7.1 Research Antofagasta: 400K pop, immigrant history, mining service hub, port gateway
  - [ ] 5.1.7.2 Port infrastructure: EMPORCHA, ATI/Portezuelo/Mall Plaza, REE handling certification
  - [ ] 5.1.7.3 Community demographics: inequality, campamentos, water access, Chango urban indigenous
  - [ ] 5.1.7.4 FBC/CDC urban trust: port-city trust, Chango maritime trust, youth training, housing
  - [ ] 5.1.7.5 Aegis-Forge integration: Alpha-1/2 logistics hub, REE export cert, ZOFRI processing zone
  - [ ] 5.1.7.6 Green port transition: shore power, electric equipment, H2 fueling, REE dust control
  - [ ] 5.1.7.7 Economic diversification: ZOFRI, lithium export, REE value-add, astronomy tourism
  - [ ] 5.1.7.8 Regulatory navigation: EMPORCHA, SEREMI, GORE, DIRECTEMAR, Aduana, CRMA
  - [ ] 5.1.7.9 Draft DOC-32 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
  - [ ] 5.1.7.10 Generate 5 heuristic intros (El Segundo PRIMARY, Williams, Baker Street, Keymaker, SHIELD)
  - [ ] 5.1.7.11 Split into logical chunks → chunks/DOC-32/
  - [ ] 5.1.7.12 Generate manifest & verify integrity
  - [ ] 5.1.7.13 Compress FinishedWork original (.gz)
  - [ ] 5.1.7.14 Log completion + git commit + tag runner-017g-complete

  #### 5.1.8 DOC-33: Copiapó/Vallenar (Norte Chico Hub) (15 tasks)
  - [ ] 5.1.8.1 Research Copiapó/Vallenar: historical Ag/Cu/Fe, Chañarcillo, El Romeral, solar transition
  - [ ] 5.1.8.2 Solar/wind transition: Atacama corridor (highest DNI), green H2, storage, grid
  - [ ] 5.1.8.3 Diaguita urban communities: Copiapó/Vallenar/Huasco, cultural revitalization, consent
  - [ ] 5.1.8.4 FBC/CDC regional trust: valley trusts, solar benefit sharing, water security fund
  - [ ] 5.1.8.5 Aegis-Forge integration: Alpha-3..7 (IOCG), Bravo-3/4 (ion-adsorption), solar-powered REE
  - [ ] 5.1.8.6 Water security protocol: Copiapó aquifer, Huasco river, mining vs agric, desalination
  - [ ] 5.1.8.7 Economic diversification: agro-export, solar services, REE processing, astro-tourism, data centers
  - [ ] 5.1.8.8 Regulatory navigation: SEREMI Atacama, GORE, DGA, CRMA, municipal energy plans
  - [ ] 5.1.8.9 Draft DOC-33 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
  - [ ] 5.1.8.10 Generate 5 heuristic intros (El Segundo PRIMARY, Williams, Baker Street, Keymaker, SHIELD)
  - [ ] 5.1.8.11 Split into logical chunks → chunks/DOC-33/
  - [ ] 5.1.8.12 Generate manifest & verify integrity
  - [ ] 5.1.8.13 Compress FinishedWork original (.gz)
  - [ ] 5.1.8.14 Log completion + git commit + tag runner-017h-complete

  #### 5.1.9 DOC-34: Concepción/Talcahuano (Sur Industrial Hub) (15 tasks)
  - [ ] 5.1.9.1 Research Concepción/Talcahuano: steel (Huachipato), coal (Lota/Coronel), port, UdeC
  - [ ] 5.1.9.2 Coal transition: Lota closure, Coronel thermoelectric, just transition fund, REE recycling
  - [ ] 5.1.9.3 Mapuche urban communities: Lafkenche/Pewenche/Wenteche in city, cultural centers, politics
  - [ ] 5.1.9.4 FBC/CDC urban-industrial trust: steel worker, coal transition, Mapuche urban, UdeC innovation
  - [ ] 5.1.9.5 Aegis-Forge integration: Alpha-12/13/14, Bravo-6/7 (coastal REE/urban mining)
  - [ ] 5.1.9.6 Biobío river/bay restoration: industrial legacy, REE recycling water, blue carbon, monitoring
  - [ ] 5.1.9.7 Economic diversification: green steel (H2), REE recycling hub, biotech, port, tourism
  - [ ] 5.1.9.8 Regulatory navigation: SEREMI Biobío, GORE, DIRECTEMAR, MMA, CRMA, UdeC permits
  - [ ] 5.1.9.9 Draft DOC-34 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
  - [ ] 5.1.9.10 Generate 5 heuristic intros (El Segundo PRIMARY, Williams, Baker Street, Keymaker, SHIELD)
  - [ ] 5.1.9.11 Split into logical chunks → chunks/DOC-34/
  - [ ] 5.1.9.12 Generate manifest & verify integrity
  - [ ] 5.1.9.13 Compress FinishedWork original (.gz)
  - [ ] 5.1.9.14 Log completion + git commit + tag runner-017i-complete

  #### 5.1.10 DOC-35: Punta Arenas Gateway (Austral Hub) (15 tasks)
  - [ ] 5.1.10.1 Research Punta Arenas: 130K pop, Antarctic gateway, sheep/oil history, ZOFRI, multicultural
  - [ ] 5.1.10.2 Antarctic logistics: ENAP HIF (1.2 GW), Puerto Exterior, Strait transit, Antarctic Treaty
  - [ ] 5.1.10.3 Kawéskar/Yagán urban: Puerto Edén/Natales/Williams, cultural revival, maritime rights
  - [ ] 5.1.10.4 FBC/CDC gateway trust: Antarctic logistics, green H2 community, maritime culture, youth
  - [ ] 5.1.10.5 Aegis-Forge integration: Alpha-15/16, Alpha-17, Bravo-8/9
  - [ ] 5.1.10.6 Strait/Antarctic protocol: pilotage, weather, oil spill, environmental protocol, Kawéskar WCS
  - [ ] 5.1.10.7 Economic diversification: Antarctic services, green H2 export, tourism, kelp, data centers
  - [ ] 5.1.10.8 Regulatory navigation: SEREMI Magallanes, GORE, INACH, DIRECTEMAR, CRMA, ZOFRI
  - [ ] 5.1.10.9 Draft DOC-35 full document (≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards)
  - [ ] 5.1.10.10 Generate 5 heuristic intros (El Segundo PRIMARY, Williams, Baker Street, Keymaker, SHIELD)
  - [ ] 5.1.10.11 Split into logical chunks → chunks/DOC-35/
  - [ ] 5.1.10.12 Generate manifest & verify integrity
  - [ ] 5.1.10.13 Compress FinishedWork original (.gz)
  - [ ] 5.1.10.14 Log completion + git commit + tag runner-017j-complete

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

## Current Sprint: Phase 4 Complete — Runner 017 Starting (Phase 5: DOC-26..35)

### Immediate Next Actions (Next Session)
1. [ ] Begin DOC-26: Atacameño Territory (Norte Grande) — Chapter 1 Subtask 1.1
2. [ ] Begin DOC-27: Diaguita Valleys (Norte Chico) — Chapter 1 Subtask 1.1
3. [ ] Begin DOC-28: Mapuche-Pehuenche (Zona Central Andes) — Chapter 1 Subtask 1.1
4. [ ] Begin DOC-29: Mapuche-Lafkenche/Pewenche (Sur) — Chapter 1 Subtask 1.1
5. [ ] Begin DOC-30: Kawéskar/Yagán (Austral Fjords) — Chapter 1 Subtask 1.1
6. [ ] Begin DOC-31: Calama Mining Community — Chapter 1 Subtask 1.1
7. [ ] Begin DOC-32: Antofagasta Port City — Chapter 1 Subtask 1.1
8. [ ] Begin DOC-33: Copiapó/Vallenar Hub — Chapter 1 Subtask 1.1
9. [ ] Begin DOC-34: Concepción/Talcahuano Hub — Chapter 1 Subtask 1.1
10. [ ] Begin DOC-35: Punta Arenas Gateway — Chapter 1 Subtask 1.1
11. [ ] Start heartbeat monitor
12. [ ] Update RESUME_SESSION_MAGNETS.md

### Blockers
- None identified — all tools and references available

### Decisions Log
- 2026-10-22: Project created at CSMWip/CSMMinesMagnets
- 2026-10-22: 60-doc pipeline defined (3 foundation + 12 brokerage + 45 expanded)
- 2026-10-22: Heuristic framework: Williams, Keymaker, El Segundo, Baker Street, SHIELD
- 2026-10-22: Target: Chile magnetic minerals → Tardigradia → Carrington Storm Motors
- 2026-10-24: Runner 001 complete: DOC-01, DOC-02, DOC-03 done (Phase 1)
- 2026-10-24: Runner 002 complete: DOC-04, DOC-05, DOC-06 done (Phase 2, first batch)
- 2026-10-24: Runner 003 complete: DOC-07, DOC-08 done (Phase 2, second batch)
- 2026-10-28: Runner 004 complete: DOC-09, DOC-10, DOC-11 done (Phase 3, first batch)
- 2026-10-31: Runner 005 complete: DOC-12, DOC-13, DOC-14 done (Phase 3, second batch)
- 2026-11-01: Runner 006 complete: DOC-15 done (Phase 3, final)
- 2026-11-02: Runner 013 complete: DOC-16 done (Phase 4, Norte Grande)
- 2026-11-02: Runner 014 complete: DOC-17, DOC-18, DOC-19 done (Phase 4, Norte Chico, Zona Central, Sur)
- 2026-11-02: Runner 015 complete: DOC-20, DOC-21, DOC-22 done (Phase 4, Austral + Mineral-Specific batch 1)
- 2026-11-02: Runner 016 complete: DOC-23, DOC-24, DOC-25 done (Phase 4, Mineral-Specific batch 2)
- 2026-11-02: **Phase 4 COMPLETE (DOC-16..25 = 10 documents, all quality gates, 0 conflation)**