# .github/workflows/session_resume.yml
name: Session Resume Validation
on:
  push:
    branches: [kilo/digital-dolphin-50m]
  schedule:
    - cron: '0 */6 * * *'  # Every 6 hours

jobs:
  resume_verify:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Setup Python
        uses: actions/setup-python@v5
        with: { python-version: '3.13' }
      - name: Run resume verify
        run: |
          cd lol.rareearth/CSMMinesMagnets
          python3 session_resume.py verify
      - name: Benchmark RTO
        run: |
          cd lol.rareearth/CSMMinesMagnets
          python3 session_resume.py benchmark --runs 5
```

---

### 6.6 Cross-Reference to DOC-13, DOC-14, AGENTS.md

| Source | Automation Spec Element |
|--------|------------------------|
| **DOC-13** | 5 heuristic lenses as verification steps in Phase 3 |
| **DOC-14** | `conflation_audit.py regress` in Phase 4 |
| **AGENTS.md** | All key commands implemented as CLI subcommands |

---

### 6.7 Chapter 6 Summary

`session_resume.py` is the **automated executable specification** of the resume protocol:

- **5-Phase Protocol** implemented as deterministic Python classes
- **CLI**: `resume`, `verify`, `benchmark`, `dry-run` modes
- **Version Pinning**: All tools source-controlled, no external deps
- **Knowledge Format Parser**: Pure stdlib Markdown/JSON parser for civilizational survival
- **CI/CD**: Automated verification on every push + scheduled
- **Test Suite**: Full integration test on DOC-01..14 corpus

This tool makes resume **deterministic, benchmarked, and auditable**.

**Next**: Chapter 7 — Historical Resume Events: Runners 001-011 Case Studies.

---
