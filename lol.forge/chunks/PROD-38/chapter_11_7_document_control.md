## 7. Document Control

### 7.1 PROD/FOLLOW Document Versioning

PROD-38 **owns versioning** for all 80 documents (40 PROD + 40 FOLLOW):

| Document | Current Version | Git Tag | Baseline | Review Cycle |
|----------|-----------------|---------|----------|--------------|
| PROD-01 through PROD-40 | 1.0 - 3.x | `prod-vX.Y.Z` | As-Designed | Annual + ECO-triggered |
| FOLLOW-01 through FOLLOW-40 | 1.0 - 2.x | `follow-vX.Y.Z` | As-Designed | Annual + ECO-triggered |
| Heuristic Intros | 1.0 | `intro-vX.Y.Z` | As-Designed | With parent document |

### 7.2 Cross-Reference Management

PROD-38 maintains the **Cross-Reference Matrix (Sec 13)** linking all documents:

```
PROD-XX  ──upstream──►  PROD-YY  ──downstream──►  PROD-ZZ
    │                       │                        │
    ▼                       ▼                        ▼
Interface:           Interface:              Interface:
- ICD-XX-YY          - ICD-YY-ZZ            - ICD-ZZ-XX
- Data contract      - Data contract        - Data contract
- Version constraint - Version constraint   - Version constraint
```

**Version Constraint Rules:**
- Downstream document version ≥ Upstream document version (major.minor)
- Patch versions independent (bug fixes don't propagate)
- Breaking changes (major increment) require CCB + all downstream ECOs

### 7.3 Document Change Workflow

Document changes follow **ECO process (Sec 3)** with `docs` type commits:

1. **ECO submitted** — `ECO-XXXX: docs - Update PROD-XX Section Y.Y`
2. **Impact analysis** — Cross-reference matrix check, downstream consumers notified
3. **Draft in feature branch** — Markdown edits, intros regenerated if technical change
4. **Review** — Discipline lead + CM approval (Documentation class ECO)
5. **Merge** — Squash to release branch, tag `prod-vX.Y.Z` or `follow-vX.Y.Z`
6. **Baseline update** — As-Designed tag updated, cross-references refreshed

---
