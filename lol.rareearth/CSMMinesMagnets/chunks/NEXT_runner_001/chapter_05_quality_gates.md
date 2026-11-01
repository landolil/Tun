## Quality Gates
## 🎯 QUALITY GATES — EVERY DOCUMENT MUST PASS

| Gate | Target | Verification |
|------|--------|--------------|
| Lines | ≥900 | `wc -l` |
| Formulas/Technical specs (LaTeX/Unicode) | ≥20 | `grep -c "\$\|\[" ` |
| Cross-references | ≥15 | `grep -c "Research\|DOC-\|CSM\|Chile\|Sernageomin\|Cochilco" ` |
| Standards cited | ≥8 | `grep -ci "ISO\|IEC\|ASTM\|NIJ\|MIL-STD\|DOE\|CFR\|Chilean" ` |
| Conflation flags | 0 | `grep -ic "duplicate\|contradict\|overlap" ` |
| TBD markers | Documented | `grep -c "TBD:RESEARCH" ` |
| Traceability Matrix | Present | `grep -c "Traceability Matrix" ` |
| Chunk reassembly diff | 0 bytes | `python3 ../../__Python_Tools/write_large_file.py concat chunks/DOC-XX /tmp/test.md && diff FinishedWork/DOC-XX_*.md /tmp/test.md` |
| Manifest checksums | PASS | `python3 ../../__Python_Tools/write_large_file.py verify chunks/DOC-XX` |
| Heuristic intros | 4 variants | `ls intros/DOC-XX_*_intro_*.md | wc -l` |

---

