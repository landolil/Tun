## 📋 RUNNER 002 SUBTASK QUEUE

| # | Subtask | Est. Time | Dependencies |
|---|---------|-----------|--------------|
| 1 | Research ingestion: DOC-01, DOC-02, DOC-03 key findings | 45 min | Previous docs |
| 2 | Research ingestion: Brokerage models, venture structures, diplomacy frameworks | 45 min | External sources |
| 3 | Outline DOC-04: Brokerage protocol phases, transition mechanics, legal framework | 30 min | Research complete |
| 4 | Write DOC-04 Chapter 1: Brokerage Mandate & Legal Basis | 45 min | Outline |
| 5 | Write DOC-04 Chapter 2: Facilitator Role Definition & Scope | 45 min | Ch 1 |
| 6 | Write DOC-04 Chapter 3: Owner Transition Trigger Conditions | 45 min | Ch 2 |
| 7 | Write DOC-04 Chapter 4: Valuation Methodology for Transition | 45 min | Ch 3 |
| 8 | Write DOC-04 Chapter 5: Transition Execution Mechanics | 45 min | Ch 4 |
| 9 | Write DOC-04 Chapter 6: Post-Transition Governance | 45 min | Ch 5 |
| 10 | Write DOC-04 Chapter 7: Dispute Resolution & Escrow | 30 min | Ch 6 |
| 11 | Write DOC-04 Chapter 8: Cross-Border Enforcement (Chile/US) | 30 min | Ch 7 |
| 12 | Write DOC-04 Chapter 9: Traceability Matrix | 30 min | Ch 1-8 |
| 13 | Chunk, verify, compress DOC-04 | 15 min | write_large_file.py |
| 14 | Generate heuristic intros for DOC-04 | 10 min | generate_heuristic_intros.sh |
| 15-27 | Repeat for DOC-05 (Tardigradia Venture Structure) | ~5 hrs | DOC-04 complete |
| 28-40 | Repeat for DOC-06 (Critical Minerals Diplomacy) | ~5 hrs | DOC-05 complete |
| 41 | Verify all 3 document chunks + manifests | 10 min | write_large_file.py |
| 42 | Update master index: chunks/MASTER_INDEX.json | 5 min | Python script |
| 43 | Create NEXT_runner_003.md handoff | 10 min | Template |
| 44 | Git commit all changes | 5 min | git |
| 45 | Tag runner-002-complete | 1 min | git tag |

---
