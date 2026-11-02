#!/usr/bin/env bash
# startup.sh — CSMMinesMagnets Session Initialization
# Installs Python3, sets project directory, starts heartbeat

set -euo pipefail

# ============================================================
# HARD-CODED PROJECT DIRECTORY (relative, not absolute)
# ============================================================
# IMPORTANT: This script must be run from the repository root (GitHub folder structure)
# NEVER use /workspace/app/ — it is ephemeral and inaccessible in new sessions
# Always use relative paths: lol.rareearth/CSMMinesMagnets
PROJECT_DIR="lol.rareearth/CSMMinesMagnets"

echo "=== CSMMinesMagnets Session Startup ==="
echo "Project directory (relative): $PROJECT_DIR"
echo "Run from repository root — using relative paths only"

# ============================================================
# 1. ENSURE PYTHON3 INSTALLED (Debian minimal container)
# ============================================================
if ! command -v python3 >/dev/null 2>&1; then
    echo "Installing Python3..."
    apt-get update && apt-get install -y python3 python3-pip python3-venv
    echo "Python3 installed: $(python3 --version)"
else
    echo "Python3 already available: $(python3 --version)"
fi

# ============================================================
# 2. VERIFY PROJECT DIRECTORY EXISTS (relative path)
# ============================================================
if [[ ! -d "$PROJECT_DIR" ]]; then
    echo "ERROR: Project directory not found: $PROJECT_DIR" >&2
    echo "       Run this script from the repository root (GitHub folder structure)" >&2
    exit 1
fi

cd "$PROJECT_DIR"
echo "Changed to project directory: $(pwd)"

# ============================================================
# 3. VERIFY WRITE_LARGE_FILE.PY AVAILABLE
# ============================================================
WRITE_TOOL="../../__Python_Tools/write_large_file.py"
if [[ ! -f "$WRITE_TOOL" ]]; then
    echo "WARNING: write_large_file.py not found at $WRITE_TOOL"
else
    echo "write_large_file.py verified at $WRITE_TOOL"
    python3 "$WRITE_TOOL" --help >/dev/null 2>&1 && echo "write_large_file.py operational"
fi

# ============================================================
# 4. VERIFY SCRIPTS
# ============================================================
for script in heartbeat_monitor.py task_timer.py generate_heuristic_intros.sh; do
    if [[ -f "scripts/$script" ]]; then
        echo "Script verified: scripts/$script"
    else
        echo "WARNING: Missing script: scripts/$script"
    fi
done

# ============================================================
# 5. GIT STATUS
# ============================================================
echo ""
echo "=== Git Status ==="
git status --short

# ============================================================
# 6. START HEARTBEAT MONITOR (background)
# ============================================================
echo ""
echo "=== Starting Heartbeat Monitor (120s interval) ==="
python3 scripts/heartbeat_monitor.py --interval 120 --project-root . &
HEARTBEAT_PID=$!
echo "Heartbeat monitor PID: $HEARTBEAT_PID"
echo "HEARTBEAT_PID=$HEARTBEAT_PID" > .heartbeat_pid

# ============================================================
# 7. DISPLAY RESUME CONTEXT
# ============================================================
echo ""
echo "=== Session Resume Context ==="
cat RESUME_SESSION_MAGNETS.md

echo ""
echo "=== Next Runner Instructions ==="
cat NEXT_runner_005.md

# ============================================================
# 8. DETAILED TASK BREAKDOWN - 120+ SUBTASKS FOR DOC-08
# ============================================================
echo ""
echo "=== DETAILED SUBTASK BREAKDOWN (120+ Tasks) ==="

# Phase 1: Chapter 1 - Port Infrastructure Capability (Tasks 1-18)
echo ""
echo "PHASE 1: CHAPTER 1 - PORT INFRASTRUCTURE CAPABILITY (18 tasks)"
echo "  [1/120]  TASK-001: Create Chapter 1 markdown header and title"
echo "  [2/120]  TASK-002: Write Section 1.1 - Puerto Antofagasta overview"
echo "  [3/120]  TASK-003: Write Section 1.1.1 - EMPORCHA governance structure"
echo "  [4/120]  TASK-004: Write Section 1.1.2 - Terminal concessions (ATI, Portezuelo, Mall Plaza)"
echo "  [5/120]  TASK-005: Write Section 1.1.3 - Berth specifications (Berth 5: 224m/12m, Berth 7: 337m/11.6m)"
echo "  [6/120]  TASK-006: Write Section 1.1.4 - Cargo handling rates (containers 15/hr, zinc 100 rotainers/shift)"
echo "  [7/120]  TASK-007: Write Section 1.1.5 - REE handling readiness assessment"
echo "  [8/120]  TASK-008: Write Section 1.2 - Puerto Mejillones overview"
echo "  [9/120]  TASK-009: Write Section 1.2.1 - CPM structure (CODELCO subsidiary)"
echo "  [10/120] TASK-010: Write Section 1.2.2 - Terminal breakdown (Puerto Angamos, TGN)"
echo "  [11/120] TASK-011: Write Section 1.2.3 - New bulk terminal US$120M (4M ton/yr, tubular conveyors)"
echo "  [12/120] TASK-012: Write Section 1.2.4 - Rail reception capability (volteable containers)"
echo "  [13/120] TASK-013: Write Section 1.2.5 - Storage capacity (72,000 ton concentrate bodega)"
echo "  [14/120] TASK-014: Write Section 1.3 - Puerto San Antonio overview"
echo "  [15/120] TASK-015: Write Section 1.3.1 - Current capacity (1.8M TEU, 23.2M ton 2024)"
echo "  [16/120] TASK-016: Write Section 1.3.2 - Puerto Exterior project (US$4B, 6M TEU, 2036 ops)"
echo "  [17/120] TASK-017: Write Section 1.4 - Puerto Coronel & Punta Arenas"
echo "  [18/120] TASK-018: Write Section 1.5 - Comparative port capability matrix table"

# Phase 2: Chapter 2 - Rail Corridors (Tasks 19-32)
echo ""
echo "PHASE 2: CHAPTER 2 - RAIL CORRIDORS FCAB & FERRONOR (14 tasks)"
echo "  [19/120] TASK-019: Create Chapter 2 markdown header"
echo "  [20/120] TASK-020: Write Section 2.1 - FCAB overview (900km, 15M ton/yr, privatized)"
echo "  [21/120] TASK-021: Write Section 2.1.1 - Gauge specifications (1000mm meter gauge)"
echo "  [22/120] TASK-022: Write Section 2.1.2 - Antofagasta-Meijillones link capacity"
echo "  [23/120] TASK-023: Write Section 2.1.3 - Rolling stock & locomotive fleet"
echo "  [24/120] TASK-024: Write Section 2.1.4 - Tariff structure for mineral concentrates"
echo "  [25/120] TASK-025: Write Section 2.2 - Ferronor overview (800km north-south spine)"
echo "  [26/120] TASK-026: Write Section 2.2.1 - Calama-Salta connection (Argentina link)"
echo "  [27/120] TASK-027: Write Section 2.2.2 - State-owned operations & investment plan"
echo "  [28/120] TASK-028: Write Section 2.2.3 - Integration with FCAB at strategic nodes"
echo "  [29/120] TASK-029: Write Section 2.3 - EFE integration (passenger/freight)"
echo "  [30/120] TASK-030: Write Section 2.4 - Corredor Bioceánico proposal status"
echo "  [31/120] TASK-031: Write Section 2.5 - Rail cost model: $/ton-km formulas"
echo "  [32/120] TASK-032: Write Section 2.6 - Rail corridor comparative matrix"

# Phase 3: Chapter 3 - Magnet Shipping IMDG Class 9 (Tasks 33-45)
echo ""
echo "PHASE 3: CHAPTER 3 - MAGNET SHIPPING IMDG CLASS 9 (13 tasks)"
echo "  [33/120] TASK-033: Create Chapter 3 markdown header"
echo "  [34/120] TASK-034: Write Section 3.1 - IMDG Code Class 9 classification (UN 2807/3508)"
echo "  [35/120] TASK-035: Write Section 3.1.1 - Magnetized material definition & thresholds"
echo "  [36/120] TASK-036: Write Section 3.1.2 - Packing Group II requirements"
echo "  [37/120] TASK-037: Write Section 3.2 - IATA DGR 9.3 air freight restrictions"
echo "  [38/120] TASK-038: Write Section 3.2.1 - Field strength <5.25mT at 2.1m (IATA PI 953)"
echo "  [39/120] TASK-039: Write Section 3.2.2 - Shielding packaging design (mu-metal, steel)"
echo "  [40/120] TASK-040: Write Section 3.2.3 - Temperature control -40°C to +80°C stability"
echo "  [41/120] TASK-041: Write Section 3.3 - MIL-STD-1540 test certificate requirements"
echo "  [42/120] TASK-042: Write Section 3.4 - ASTM D4169 distribution testing (Assurance Level II)"
echo "  [43/120] TASK-043: Write Section 3.5 - Magnet-specific specs: NdFeB vs SmCo vs FeN vs FeCo"
echo "  [44/120] TASK-044: Write Section 3.6 - Documentation: DGD, MSDS, shipper's declaration"
echo "  [45/120] TASK-045: Write Section 3.7 - Emergency response (EmS F-A, S-Q)"

# Phase 4: Chapter 4 - Customs CPTPP Paperless (Tasks 46-56)
echo ""
echo "PHASE 4: CHAPTER 4 - CUSTOMS CPTPP PAPERLESS & BLOCKCHAIN (11 tasks)"
echo "  [46/120] TASK-046: Create Chapter 4 markdown header"
echo "  [47/120] TASK-047: Write Section 4.1 - CPTPP Article 14 Digital Trade provisions"
echo "  [48/120] TASK-048: Write Section 4.1.1 - Paperless customs & e-bills of lading"
echo "  [49/120] TASK-049: Write Section 4.1.2 - Blockchain certificates of origin"
echo "  [50/120] TASK-050: Write Section 4.2 - Chile-US FTA rules of origin for magnets"
echo "  [51/120] TASK-051: Write Section 4.3 - Chile-EU Advanced Framework strategic raw materials"
echo "  [52/120] TASK-052: Write Section 4.4 - APEC Cross-Border Paperless Trade"
echo "  [53/120] TASK-053: Write Section 4.5 - SICEX single window system"
echo "  [54/120] TASK-054: Write Section 4.6 - WCO SAFE Framework & AEO certification"
echo "  [55/120] TASK-055: Write Section 4.7 - HS Code classification for magnetic materials"
echo "  [56/120] TASK-056: Write Section 4.8 - Customs clearance timeline & cost formulas"

# Phase 5: Chapter 5 - Logistics Cost Model (Tasks 57-67)
echo ""
echo "PHASE 5: CHAPTER 5 - LOGISTICS COST MODEL OCEAN FREIGHT (11 tasks)"
echo "  [57/120] TASK-057: Create Chapter 5 markdown header"
echo "  [58/120] TASK-058: Write Section 5.1 - Ocean freight rates Antofagasta→Rotterdam/Shanghai/Busan/Houston"
echo "  [59/120] TASK-059: Write Section 5.1.1 - 2024-25 spot rate benchmarks ($/TEU, $/ton)"
echo "  [60/120] TASK-060: Write Section 5.1.2 - Seasonal surcharges (peak season, bunker adjustment)"
echo "  [61/120] TASK-061: Write Section 5.2 - Rail tariffs FCAB/Ferronor detailed breakdown"
echo "  [62/120] TASK-062: Write Section 5.3 - Warehousing: ZOFRI Iquique & Punta Arenas bonded zones"
echo "  [63/120] TASK-063: Write Section 5.4 - Insurance: war risk, magnet degradation, delay coverage"
echo "  [64/120] TASK-064: Write Section 5.5 - Total landed cost model formula"
echo "  [65/120] TASK-065: Write Section 5.5.1 - Mine-to-port rail component"
echo "  [66/120] TASK-066: Write Section 5.5.2 - Port handling & documentation fees"
echo "  [67/120] TASK-067: Write Section 5.6 - Sensitivity analysis (±15% fuel, ±20% FX)"

# Phase 6: Chapter 6 - Supply Chain Resilience (Tasks 68-77)
echo ""
echo "PHASE 6: CHAPTER 6 - SUPPLY CHAIN RESILIENCE ALT ROUTES (10 tasks)"
echo "  [68/120] TASK-068: Create Chapter 6 markdown header"
echo "  [69/120] TASK-069: Write Section 6.1 - Pacific route (Antofagasta→Asia/US West Coast)"
echo "  [70/120] TASK-070: Write Section 6.2 - Atlantic route (Punta Arenas/Coronel→Europe/US East)"
echo "  [71/120] TASK-071: Write Section 6.3 - Strait of Magellan transit (36hrs, pilotage, weather)"
echo "  [72/120] TASK-072: Write Section 6.4 - Panama Canal alternative (Neopanamax, tolls, queue)"
echo "  [73/120] TASK-073: Write Section 6.5 - Red Sea disruption contingencies (Cape routing)"
echo "  [74/120] TASK-074: Write Section 6.6 - Port strike history: 2019, 2022, 2024 impact analysis"
echo "  [75/120] TASK-075: Write Section 6.7 - Climate resilience: tsunami (2010, 2015), Mw8.8+ seismic"
echo "  [76/120] TASK-076: Write Section 6.8 - Atacama hyperaridity: fog, dust, zero-rain operations"
echo "  [77/120] TASK-077: Write Section 6.9 - Resilience scoring matrix (RTO/RPO per corridor)"

# Phase 7: Chapter 7 - CSM Delivery Requirements (Tasks 78-87)
echo ""
echo "PHASE 7: CHAPTER 7 - CSM DELIVERY REQUIREMENTS MAGNET-TO-MOTOR (10 tasks)"
echo "  [78/120] TASK-078: Create Chapter 7 markdown header"
echo "  [79/120] TASK-079: Write Section 7.1 - CSM factory intake specs from DOC-06"
echo "  [80/120] TASK-080: Write Section 7.1.1 - NdFeB grade specs (N42H, N48SH, N52EH)"
echo "  [81/120] TASK-081: Write Section 7.1.2 - SmCo grade specs (SmCo 1:5, 2:17 series)"
echo "  [82/120] TASK-082: Write Section 7.1.3 - FeN/FeCo emerging grade specifications"
echo "  [83/120] TASK-083: Write Section 7.2 - JIT vs buffer stock strategy analysis"
echo "  [84/120] TASK-084: Write Section 7.3 - QC chain: mine assay → port inspection → factory acceptance"
echo "  [85/120] TASK-085: Write Section 7.4 - DFARS 252.225-7018 specialty metals compliance"
echo "  [86/120] TASK-086: Write Section 7.5 - Traceability: heat/lot tracking blockchain ledger"
echo "  [87/120] TASK-087: Write Section 7.6 - Delivery terms: DDP factory, INCOTERMS 2020"

# Phase 8: Chapter 8 - Port Community Integration (Tasks 88-97)
echo ""
echo "PHASE 8: CHAPTER 8 - PORT COMMUNITY INTEGRATION LOCAL BENEFIT (10 tasks)"
echo "  [88/120] TASK-088: Create Chapter 8 markdown header"
echo "  [89/120] TASK-089: Write Section 8.1 - Aegis-Forge modular port services deployment"
echo "  [90/120] TASK-090: Write Section 8.2 - Zero aqueous discharge → port water quality benefit"
echo "  [91/120] TASK-091: Write Section 8.3 - FBC/CDC trusts at port cities (Antofagasta, Mejillones, San Antonio)"
echo "  [92/120] TASK-092: Write Section 8.4 - Local employment: port operations + Aegis-Forge clusters"
echo "  [93/120] TASK-093: Write Section 8.5 - Indigenous: Kawashkar/Yámana (Punta Arenas)"
echo "  [94/120] TASK-094: Write Section 8.6 - Indigenous: Chango (Antofagasta/Mejillones)"
echo "  [95/120] TASK-095: Write Section 8.7 - Community benefit agreement template"
echo "  [96/120] TASK-096: Write Section 8.8 - Environmental monitoring: community sentinel program"
echo "  [97/120] TASK-097: Write Section 8.9 - Social license maintenance protocol"

# Phase 9: Chapter 9 - Traceability Matrix (Tasks 98-104)
echo ""
echo "PHASE 9: CHAPTER 9 - TRACEABILITY MATRIX LOGISTICS CLAIMS (7 tasks)"
echo "  [98/120] TASK-098: Create Chapter 9 markdown header"
echo "  [99/120] TASK-099: Write Section 9.1 - Methodology: claim-to-source mapping per DOC-07"
echo "  [100/120] TASK-100: Write Section 9.2 - Port infrastructure claims traceability table"
echo "  [101/120] TASK-101: Write Section 9.3 - Rail corridor claims traceability table"
echo "  [102/120] TASK-102: Write Section 9.4 - Shipping/customs claims traceability table"
echo "  [103/120] TASK-103: Write Section 9.5 - Cost/resilience/community claims traceability table"
echo "  [104/120] TASK-104: Write Section 9.6 - Cross-reference index to DOC-01 through DOC-07"

# Phase 10: Document Assembly & Quality Gates (Tasks 105-120)
echo ""
echo "PHASE 10: DOCUMENT ASSEMBLY & QUALITY GATES (16 tasks)"
echo "  [105/120] TASK-105: Assemble full DOC-08 document (concatenate Ch1-Ch9, verify ≥900 lines)"
echo "  [106/120] TASK-106: Count formulas/technical specs (target ≥20 LaTeX/Unicode)"
echo "  [107/120] TASK-107: Count cross-references (target ≥15 to DOC-01..07, Chilean law, IMO, IATA, WCO)"
echo "  [108/120] TASK-108: Count standards cited (target ≥8: IMDG, IATA, CPTPP, WCO, ISO, ASTM, MIL-STD, Chilean port law)"
echo "  [109/120] TASK-109: Conflation check vs DOC-01..07 (0 flags target)"
echo "  [110/120] TASK-110: Write complete DOC-08 to FinishedWork/DOC-08_Port_Logistics_Corridors.md"
echo "  [111/120] TASK-111: Run write_large_file.py split (chunks/DOC-08 chapter .md)"
echo "  [112/120] TASK-112: Run write_large_file.py verify chunks/DOC-08 (reassembly 0 bytes diff)"
echo "  [113/120] TASK-113: Run write_large_file.py manifest chunks/DOC-08 (SHA256 + size)"
echo "  [114/120] TASK-114: Run write_large_file.py compress FinishedWork/DOC-08_*.md (.md.gz)"
echo "  [115/120] TASK-115: Run generate_heuristic_intros.sh (5 variants: Williams, Keymaker, El Segundo, Baker Street, Combined)"
echo "  [116/120] TASK-116: Verify 5 intro files created in FinishedWork/intros/"
echo "  [117/120] TASK-117: Git add chunks/DOC-08/ FinishedWork/DOC-08_*.md.gz FinishedWork/intros/DOC-08_*.md"
echo "  [118/120] TASK-118: Git commit with message 'DOC-08: Port & Logistics Corridors complete'"
echo "  [119/120] TASK-119: Git tag runner-005-complete && git push origin --tags"
echo "  [120/120] TASK-120: Create NEXT_runner_006.md handoff document"

echo ""
echo "=== PROGRESS TRACKING ==="
echo "Current Position: TASK-040 (Section 3.2.3 - Temperature control -40°C to +80°C stability)"
echo "Completed: TASK-001 through TASK-039 (Chapters 1, 2 complete; Chapter 3 up to 3.2.2)"
echo "Next Action: Continue TASK-040 → TASK-045 (Complete Chapter 3), then Chapter 4-9"
echo "Use: echo 'TASK-XXX complete' >> progress.log to track"
echo ""
echo "=== QUALITY GATES CHECKLIST ==="
echo "  [ ] Lines: ≥900 (Current: ~2,500+)"
echo "  [ ] Formulas: ≥20 (Current: 30+)"
echo "  [ ] Cross-refs: ≥15 (Current: 40+)"
echo "  [ ] Standards: ≥8 (Current: 12+)"
echo "  [ ] Conflation: 0"
echo "  [ ] Traceability Matrix: Present"
echo "  [ ] Chunk reassembly: 0 bytes diff"
echo "  [ ] Manifest checksums: PASS"
echo "  [ ] Heuristic intros: 5 variants"
echo "  [ ] Git commit + tag + push: DONE"

echo ""
echo "=== Quick Resume (Taskmaster) ==="
source scripts/taskmaster.sh 2>/dev/null && taskmaster.sh quick-resume

echo ""
echo "=== Session Ready ==="
echo "Working directory: $(pwd)"
echo "Heartbeat PID: $HEARTBEAT_PID (saved to .heartbeat_pid)"
echo ""
echo "To stop heartbeat: kill \$(cat .heartbeat_pid)"
echo "To resume: cd $PROJECT_DIR && bash startup.sh"
