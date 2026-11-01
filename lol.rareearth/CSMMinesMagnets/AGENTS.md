# AGENTS.md — CSMWip/CSMMinesMagnets

## Project: CSMMinesMagnets — Chilean Magnetic Minerals Brokerage Intelligence

**Type**: Strategic intelligence/documentation project — large markdown documents, geopolitical research, industry analysis, brokerage frameworks
**Output**: 60 x 900-line research documents investigating Chilean magnetic mineral landscape, communities, and brokerage pathways for Tardigradia Holding Company Ventures within Carrington Storm Motors
**Workflow**: Runner-based sequential processing with heuristic personality synthesis (Williams, Keymaker, El Segundo + CSMOPP personalities)

## Project Structure
```
CSMMinesMagnets/
├── AGENTS.md                    # This file
├── memory/                      # Daily session logs
├── TODO.md                      # Hierarchical task list (60 documents × subtasks)
├── NEXT_runner_001.md           # Next runner instructions
├── RESUME_SESSION_MAGNETS.md    # Session resume context
├── HEARTBEAT_MAGNETS.md         # 2-minute heartbeat config
├── chunks/                      # Logical document chunks (replaces Pieces/)
├── Framework/                   # Core framework documents (heuristics, protocols)
├── Research/                    # Research inputs (Chile, magnets, mining, communities)
├── Logs/                        # Processing logs
├── scripts/                     # Project-specific scripts
├── Pieces/                      # Legacy fragmentation (migrate to chunks/)
└── FinishedWork/                # Completed full documents (900 lines each)
```

## Document Categories (60 Documents Total)

### Phase 1: Foundation Research (Docs 01-03) — 900 lines each
| Doc | Title | Purpose |
|-----|-------|---------|
| DOC-01 | Chilean Magnetic Mineral Landscape — Geological Survey & Resource Mapping | Foundation geological intelligence |
| DOC-02 | Lives of the Extractors — Community Ethnography & Human Geography | Human terrain mapping |
| DOC-03 | Mutual Benefit Frameworks — Value Return to Chilean Communities | Reciprocity architecture |

### Phase 2: Brokerage Architecture (Docs 04-15) — 900 lines each
| Doc | Title | Purpose |
|-----|-------|---------|
| DOC-04 | Brokerage Protocol — Facilitator to Owner Transition Mechanics | Core brokerage methodology |
| DOC-05 | Tardigradia Holding Company — Venture Structure & Governance | Entity architecture |
| DOC-06 | Carrington Storm Motors — Magnetic Mineral Integration Strategy | End-user alignment |
| DOC-07 | Chilean Regulatory Navigation — Mining Code, Environmental, Indigenous Law | Legal pathway |
| DOC-08 | Port & Logistics Corridors — Antofagasta to Punta Arenas Magnetic Flow | Physical infrastructure |
| DOC-09 | Rare Earth & Critical Mineral Specifications — NdFeB, SmCo, FeN, FeCo Grades | Product specifications |
| DOC-10 | Magnet Manufacturing Supply Chain — Mine to Magnet to Motor | Vertical integration map |
| DOC-11 | Geomagnetic Risk & Infrastructure Hardening — Carrington-Class Protection for Chilean Grid | Risk mitigation |
| DOC-12 | Financial Instruments — Offtake Agreements, Streaming, Royalties | Capital structures |
| DOC-13 | CSMOPP Heuristic Personalities — Williams, Keymaker, El Segundo, Baker Street, SHIELD | Translation layer |
| DOC-14 | Document Conflation Audit — Identifying & Resolving Cross-Document Conflicts | Quality control |
| DOC-15 | Session Resume Framework — Elegant Continuity for 60-Doc Pipeline | Operational protocol |

### Phase 3: Expanded Intelligence (Docs 16-60) — 900 lines each
| Doc Range | Focus Area |
|-----------|------------|
| DOC-16..25 | Regional Deep Dives: Norte Grande, Norte Chico, Zona Central, Sur, Austral |
| DOC-26..35 | Mineral-Specific: Neodymium, Dysprosium, Terbium, Samarium, Cobalt, Iron-Nitride, Copper-Gold-Iron Oxide |
| DOC-36..45 | Community-Specific: Indigenous territories, mining towns, port cities, academic centers |
| DOC-46..55 | Technology Transfer: Aegis-Forge separation, rare-earth-free magnets, recycling loops |
| DOC-56..60 | Strategic Synthesis: Steering the current — from broker to owner of the flow |

## Large File Strategy (Replaces Fragmentation)

**DO NOT** create arbitrary piece fragments. Use `__Python_Tools/write_large_file.py`:

```bash
# Split large document into logical chapters
python3 ../../__Python_Tools/write_large_file.py split \
    FinishedWork/DOC-01_Chilean_Magnetic_Mineral_Landscape.md \
    chunks/DOC-01 \
    chapter .md

# Compress for storage
python3 ../../__Python_Tools/write_large_file.py compress \
    FinishedWork/DOC-01_Chilean_Magnetic_Mineral_Landscape.md

# Generate manifest with checksums
python3 ../../__Python_Tools/write_large_file.py manifest chunks/DOC-01

# Verify integrity
python3 ../../__Python_Tools/write_large_file.py verify chunks/DOC-01

# Reassemble at publish time
python3 ../../__Python_Tools/write_large_file.py concat chunks/DOC-01 FinishedWork/DOC-01_Chilean_Magnetic_Mineral_Landscape.md
```

## Runner Workflow

Each runner processes a batch of documents (3-5 docs per runner):
1. **Read** current runner file (NEXT_runner_XXX.md)
2. **Research** assigned documents using Research/ inputs and web search
3. **Author** full 900-line documents with heuristic intros
4. **Split** into logical chapters → chunks/
5. **Verify** manifests & reassembly integrity
6. **Compress** FinishedWork originals (.gz)
7. **Write** next runner (NEXT_runner_XXX+1.md)
8. **Update** TODO.md with completed subtasks
9. **Log** progress to memory/YYYY-MM-DD.md
10. **Git** commit changes

## Heartbeat Requirements
- **Update interval**: ≤ 2 minutes (120 seconds)
- **Timeout guard**: ≤ 30 seconds per subtask
- **Auto-continue**: No blocking waits; queue next subtask immediately
- **Terminal output**: Print progress every subtask completion

## Session Resume Protocol
```bash
cd /workspace/app/CSMWip/CSMMinesMagnets
cat NEXT_runner_001.md
cat RESUME_SESSION_MAGNETS.md
git status
cat HEARTBEAT_MAGNETS.md
```

## Key Commands
```bash
# Start heartbeat monitor (background)
python3 scripts/heartbeat_monitor.py --interval 120 &

# Author document (example)
# ... write to FinishedWork/DOC-XX_*.md ...

# Chunk & verify
python3 ../../__Python_Tools/write_large_file.py split \
    FinishedWork/DOC-XX_*.md \
    chunks/DOC-XX chapter .md
python3 ../../__Python_Tools/write_large_file.py verify chunks/DOC-XX

# Compress original
python3 ../../__Python_Tools/write_large_file.py compress \
    FinishedWork/DOC-XX_*.md

# Generate heuristic intros
./scripts/generate_heuristic_intros.sh FinishedWork/DOC-XX_*.md
```

## Conventions
- **Chunk naming**: `chunks/<DOC-ID>/chapter_XX_<title>.md`
- **Manifest**: `chunks/<DOC-ID>/MANIFEST.json` (SHA256 + size)
- **Runner naming**: `NEXT_runner_XXX.md` (3-digit)
- **Memory logs**: `memory/YYYY-MM-DD.md` (raw), folded into project MEMORY.md
- **Document length**: ≥900 lines each (enforced by quality gates)
- **Heuristic intros**: Every document gets Williams/Keymaker/El Segundo + CSMOPP variants
- **No arbitrary fragmentation** — logical chapter chunks only

## Quality Gates (Every Document)
- Lines: ≥900
- Formulas/Technical specs: ≥20 (LaTeX/Unicode)
- Cross-references: ≥15 (to Research/, other DOCs, Chilean law, industry standards)
- Standards cited: ≥8 (Chilean mining code, ISO, IEC, ASTM, NIJ, MIL-STD, DOE, CFR)
- Conflation flags: 0 (no overlapping/contradictory content across docs)
- TBD markers: Documented as [TBD:RESEARCH]
- Traceability Matrix: Present (maps each claim to source)
- Chunk reassembly: 0 bytes diff
- Manifest checksums: PASS
- Heuristic intros: 4 variants generated (Williams, Keymaker, El Segundo, Combined)

## Heuristic Personality Framework (CSMOPP)

Each document is "translated" through four heuristic lenses:

| Heuristic | Role | Voice |
|-----------|------|-------|
| **Williams** | Constraint → Necessity → Commitment | "The lock, the key, the turn" — irreducible logic |
| **Keymaker** | Lock → Key → Turn (both directions) | Empirical lock, mathematical key, bidirectional validation |
| **El Segundo** | Mirror → Participation → Protocol | Recursive self-measurement, witness, operational recursion |
| **Baker Street** | Precision → Evidence → Deduction | Forensic detail, sourced claims, zero ambiguity |
| **SHIELD** | Calm → Resilience → Continuity | Strategic posture, no panic, long horizon |

These heuristics are NOT revealed in output. They shape the document's internal logic, structure, and tone — producing "industry-specific terms, above pay-grade understanding, above education-level strong documents" that read as authoritative brokerage intelligence.