## Subtask Queue
## 📋 RUNNER 001 SUBTASK QUEUE

| # | Subtask | Est. Time | Dependencies |
|---|---------|-----------|--------------|
| 1 | Research ingestion: CSMMagEco2026 V2.0, CSMMagTech2026 V2.0, CSMEval25 | 60 min | Source documents |
| 2 | Research ingestion: CSMGlobal-037-Chile, E172-NationalMining | 30 min | Source documents |
| 3 | Research ingestion: Chilean Mining Code, Sernageomin, Cochilco, USGS | 60 min | Web/Gov sources |
| 4 | Outline DOC-01: Geological framework, districts, minerals, infrastructure | 30 min | Research complete |
| 5 | Write DOC-01 Chapter 1: Geological Framework of Chile | 45 min | Outline |
| 6 | Write DOC-01 Chapter 2: Iron Oxide Copper Gold (IOCG) Belt | 45 min | Ch 1 |
| 7 | Write DOC-01 Chapter 3: Iron Oxide Apatite (IOA) / Kiruna-type | 45 min | Ch 1 |
| 8 | Write DOC-01 Chapter 4: Porphyry Cu-Mo Magnetic Byproducts | 45 min | Ch 1 |
| 9 | Write DOC-01 Chapter 5: REE Occurrences in Atacama | 45 min | Ch 1 |
| 10 | Write DOC-01 Chapter 6: Current Production & Processing Status | 45 min | Ch 2-5 |
| 11 | Write DOC-01 Chapter 7: Infrastructure Mapping (Rail, Ports, Grid, Water) | 45 min | Ch 6 |
| 12 | Write DOC-01 Chapter 8: Aegis-Forge Integration Opportunities | 30 min | Ch 6-7, E172 |
| 13 | Write DOC-01 Chapter 9: Carrington Storm Motors Magnet Spec Alignment | 30 min | Ch 8, CSMMag docs |
| 14 | Write DOC-01 Chapter 10: Strategic Recommendations & Traceability Matrix | 30 min | Ch 1-9 |
| 15 | Chunk, verify, compress DOC-01 | 15 min | write_large_file.py |
| 16 | Generate heuristic intros for DOC-01 | 10 min | generate_heuristic_intros.sh |
| 17-30 | Repeat for DOC-02 (Community Ethnography) | ~5 hrs | DOC-01 complete |
| 31-45 | Repeat for DOC-03 (Mutual Benefit Frameworks) | ~5 hrs | DOC-02 complete |
| 46 | Verify all 3 document chunks + manifests | 10 min | write_large_file.py |
| 47 | Update master index: chunks/MASTER_INDEX.json | 5 min | Python script |
| 48 | Create NEXT_runner_002.md handoff | 10 min | Template |
| 49 | Git commit all changes | 5 min | git |
| 50 | Tag runner-001-complete | 1 min | git tag |

---

