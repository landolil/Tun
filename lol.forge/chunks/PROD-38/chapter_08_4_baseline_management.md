## 4. Baseline Management

### 4.1 Four Baseline Views

The Forge maintains four configuration baselines, each a signed Git tag with associated artifacts:

| Baseline | Scope | Tag Format | Update Trigger | Consumers |
|----------|-------|------------|----------------|-----------|
| **As-Designed** | Engineering intent — PROD docs, ICDs, schemas, models | `design-vX.Y.Z` | ECO approval (Major/Critical) | Engineering, CCB, QA |
| **As-Built** | Manufacturing realization — FA data, CT results, serial numbers | `build-vX.Y.Z` | FAT completion (CT-01..10 passed) | QA, Deployment, Supply Chain |
| **As-Maintained** | Maintenance state — PM records, modifications, spare levels | `maintain-vX.Y.Z` | PM completion, field modification ECO | Maintenance, Reliability |
| **As-Operated** | Operational state — recipes, parameters, operator certs, twin state | `operate-vX.Y.Z` | Batch recipe auth, shift handover, twin sync | Operations, Training, Fleet |

### 4.2 Baseline Linkage via UUID

Every configuration item carries a **Configuration UUID (CUUID)** linking all four views:

```json
{
  cuuid: CI-02-01-DRUM-2026-00042,
  ci_type: CI-02-01,
  description: Drum Assembly, Forge-003, Liner B ZrB₂-SiC,
  baselines: {
    as_designed: {
      tag: design-v3.2.1,
      spec: PROD-04 rev 3.2.1,
      drawing: DRW-DRUM-042 rev C
    },
    as_built: {
      tag: build-v3.2.0,
      serial: DRM-2026-00042,
      fat_data: CT-01 through CT-10 passed 2026-10-15,
      material_certs: [BATCH-ZRB2-2026-087, BATCH-SIC-2026-112]
    },
    as_maintained: {
      tag: maintain-v3.2.1,
      last_pm: CT-08 2026-11-01 (2000 hr reline),
      modifications: [ECO-1042: Liner B thickness +2mm],
      spare_status: Spare DRM-2026-00043 staged
    },
    as_operated: {
      tag: operate-v3.2.2,
      current_recipe: CAT-B-2026-11 v2.1,
      twin_state: merkle_root a3f2... block 142857,
      operator_certs: [OP-2026-042, OP-2026-088]
    }
  },
  lifecycle: {
    created: 2026-06-15,
    manufactured: 2026-10-01,
    deployed: 2026-10-20,
    next_pm: 2027-04-01,
    phoenix_return_est: 2031-10-20
  }
}
```

### 4.3 Baseline Integrity Verification

**Per Baseline Gate (Automated in CI):**
```
verify_baseline(baseline_tag):
  1. Git tag exists and is signed by CM key
  2. All CIs in baseline have CUUIDs
  3. Cross-reference matrix complete (PROD-38 Sec 13)
  4. For As-Built: all CT tests passed, FA data packages signed
  5. For As-Operated: twin merkle chain intact, recipes versioned
  6. Blockchain anchor verified (DQR, 3 org signatures)
  7. SBOM generated and signed for all firmware (CI-03)
  8. PROD-24 ROM export checksum matches tag
  9. PROD-37 ML model cards versioned
  10. PROD-36 CPAT parameters versioned
```

**Failure Action:** CI pipeline blocks tag creation; manual CM override required with NCR.

---
