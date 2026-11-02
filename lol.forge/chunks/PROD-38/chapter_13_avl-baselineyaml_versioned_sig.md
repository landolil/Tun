# avl-baseline.yaml (versioned, signed)
avl_version: 3.2.1
avl_tag: avl-v3.2.1
last_updated: 2026-11-03T10:45:00Z
approved_by: CM-001, Safety-001, SupplyChain-001

tier_1_critical:  # 12 suppliers — require SBOM, signed firmware, pen test, SLSA L3
  - id: SUP-001
    name: GaN Systems
    component: GS66516T GaN HEMT
    spec: PROD-10 Sec 2.2
    requirements: [SBOM, SIGNED_FIRMWARE, PEN_TEST, SLSA_L3, SECURE_BOOT]
    fa_qty: 3
    requal_period: 12 months
    scn_process: MANDATORY
  - id: SUP-002
    name: CoorsTek
    component: ZrB₂-SiC Powder
    spec: PROD-04 Sec 2, PROD-24 Table 2.1
    requirements: [COA, PARTICLE_SIZE, IMPURITY, FLASH_SINTER_TRIAL]
    fa_qty: 3
    requal_period: 6 months
    scn_process: MANDATORY
  # ... 10 more Tier 1

tier_2_standard:  # 47 suppliers — standard QA
  - id: SUP-020
    name: Kamenny Vek
    component: Basalt Fiber Roving
    spec: PROD-12 Sec 3.1
    requirements: [COA, TENSILE, CTE, MOISTURE]
    fa_qty: 1
    requal_period: 24 months
    scn_process: NOTIFICATION
  # ... 46 more Tier 2
```

### 8.2 Supplier Change Notification (SCN)

Suppliers **must notify** CSMFAB of any change affecting form, fit, function, or quality:

| Change Type | Examples | SCN Required | Forge Action |
|-------------|----------|--------------|--------------|
| **Major** | Process change, material substitution, site relocation, ownership | YES — 90 days prior | ECO Critical/Major, requalification (3 FA), CT tests |
| **Minor** | Parameter adjustment within spec, tooling refresh, software patch | YES — 30 days prior | ECO Minor, review FA data, sample test |
| **Administrative** | Name change, contact update, cert renewal | NOTIFICATION — 7 days | Update AVL record only |

**SCN Workflow:**
1. Supplier submits SCN via CSMFAB portal (or email with signed PDF)
2. CM logs SCN, assigns tracking number `SCN-YYYY-NNN`
3. Discipline lead performs impact analysis (links to ECO if needed)
4. QA schedules requalification (if Major) or sample verification (if Minor)
5. CCB reviews and approves/rejects
6. AVL baseline updated (new `avl-vX.Y.Z` tag)
7. Supplier notified of disposition

### 8.3 First Article (FA) Requirements

| Supplier Tier | FA Quantity | Tests Required | Data Package |
|---------------|-------------|----------------|--------------|
| **Tier 1 Critical** | 3 units | Full CT-01..10 subset per component | Signed FA report + material certs + process records |
| **Tier 2 Standard** | 1 unit | Key characteristics (per spec) | COA + dimensional + functional test |
| **New Supplier** | 5 units | Full qualification per PROD-28 | Full FA data package + process audit |

---
