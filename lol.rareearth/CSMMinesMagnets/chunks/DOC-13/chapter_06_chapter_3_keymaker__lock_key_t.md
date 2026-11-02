## Chapter 3: Keymaker — Lock, Key, Turn (Empirical-Mathematical Bridge)

### 3.1 The Empirical Lock — Brokerage Execution Gap as Measurable Failure Modes

The Keymaker heuristic treats brokerage as a **fabrication problem**. The Lock is not a constitutional principle (Williams) but a **measurable fidelity gap** between protocol intent and field execution.

#### 3.1.1 Lock Catalog: Seven Measurable Failure Modes

| Lock ID | Failure Mode | Metric | Baseline (2024) | Target | Source |
|---------|--------------|--------|-----------------|--------|--------|
| **LK-01** | Concession title defects | % concessions with overlapping claims | 18% (Sernageomin) | 0% | DOC-07 Ch.1 |
| **LK-02** | Environmental permit delay | Months RCA → approval | 34 months (SEA) | ≤18 months (CRMA) | DOC-07 Ch.2 |
| **LK-03** | Consulta Indígena breakdown | % projects with unresolved consent | 41% (INDH) | 0% (FBC/CDC) | DOC-07 Ch.3 |
| **LK-04** | Water rights conflict | Active conflicts / project | 3.2 (DGA) | 0 (Aegis-Forge) | DOC-07 Ch.4 |
| **LK-05** | Magnet shipping doc errors | % shipments with DGD/MSDS defects | 12% (DOC-08) | 0% (blockchain) | DOC-08 Ch.3 |
| **LK-06** | DFARS traceability gaps | % batches without heat/lot chain | 100% (pre-pipeline) | 0% | DOC-06 Ch.4 |
| **LK-07** | Grid GIC vulnerability | Transformers without neutral blockers | 100% (SEN) | 0% (DOC-11) | DOC-11 Ch.6 |

**Keymaker Voice**: *Each Lock is a binary failure mode. Not "improvement opportunity" — failure mode. The metric is the lock's teeth. The baseline is the gap. The target is the key's fit.*

#### 3.1.2 Lock Composition: The Facilitator-to-Owner Transition Gap

The **master Lock** for the entire pipeline is the **facilitator-to-owner transition** — the gap between "we know the minerals exist" and "we own the flow."

**Measurable Decomposition**:
```
Transition_Fidelity = Σ (Trigger_i_Weight × Trigger_i_Pass) / Σ Trigger_i_Weight

Where Trigger_i = {Geological, Regulatory, Financial, Community, Technical, Offtake, Production}
Weights = {0.15, 0.20, 0.20, 0.15, 0.10, 0.10, 0.10}  (DOC-04)

Current State (Runner 010): 0.0 / 1.0
Target State (Runner 011): 1.0 / 1.0
```

Each trigger is itself a **composite Lock** with measurable sub-failure-modes. The Keymaker's job is to **reduce the master Lock to a single mathematical primitive** that generates all sub-solutions.

---

### 3.2 The Mathematical Key — Facilitator-to-Owner Transition as Single Primitive

#### 3.2.1 The Primitive: Constraint Satisfaction Vector (CSV)

The **single computational primitive** that generates the solution is the **Constraint Satisfaction Vector**:

```
CSV = [c₁, c₂, c₃, c₄, c₅, c₆, c₇] ∈ {0,1}⁷

Where:
c₁ = Geological_Constraint_Satisfied    (DOC-01 resource ≥ threshold)
c₂ = Regulatory_Constraint_Satisfied    (RCA + Consulta + Water)
c₃ = Financial_Constraint_Satisfied     (Capital stack closed)
c₄ = Community_Constraint_Satisfied     (FBC/CDC consent + benefit flow)
c₅ = Technical_Constraint_Satisfied     (Aegis-Forge deployed + GFM)
c₆ = Offtake_Constraint_Satisfied       (CSM offtake + DFARS cert)
c₇ = Production_Constraint_Satisfied    (First slugs shipped)
```

**Why this is the Key**: 
- **Binary**: Each constraint is pass/fail (no partial credit)
- **Composable**: CSV = 1111111 → Transition complete
- **Verifiable**: Each cᵢ has independent audit trail (DOC-14 conflation audit)
- **Generative**: From CSV, all protocol actions derive (funding release, equity vesting, offtake activation)

#### 3.2.2 Key Derivation: From Locks to CSV

Each Lock LK-01 through LK-07 maps to a CSV component:

| Lock | CSV Component | Key Mechanism |
|------|---------------|---------------|
| LK-01 (Concession) | c₁ | Sernageomin registry + title insurance |
| LK-02 (RCA) | c₂ | CRMA fast-track + Aegis-Forge zero-water |
| LK-03 (Consulta) | c₄ | FBC/CDC trust + Consulta protocol |
| LK-04 (Water) | c₂, c₄ | Aegis-Forge thermal cascade (0 water) |
| LK-05 (Shipping) | c₆ | Blockchain heat/lot + IMDG automation |
| LK-06 (DFARS) | c₆ | Mine-to-factory cryptographic chain |
| LK-07 (Grid) | c₅ | GFM + DC microgrid + synthetic inertia |

**Keymaker Voice**: *The Key is CSV ∈ {0,1}⁷. Seven binary constraints. One vector. All protocol actions derive from CSV state transitions. No "progress percentage" — only bit flips.*

#### 3.2.3 Key Properties: Deterministic, Irreversible, Auditable

1. **Deterministic**: Given Lock measurements, CSV is computed — no judgment, no committee.
2. **Irreversible**: Once cᵢ = 1, it cannot revert without protocol breach (trigger re-evaluation).
3. **Auditable**: Each bit has cryptographic proof (Sernageomin cert, RCA resolution, blockchain anchor, CEN commissioning report).

---

### 3.3 The Turn (Both Directions) — Bidirectional Validation

The Keymaker Turn validates **Theory→History** AND **History→Theory**.

#### 3.3.1 Theory→History: Protocol Predicts Formation

The protocol (CSV + trigger sequence) **predicts** the formation of the owner-entity:

> **Prediction**: *When CSV = [1,1,1,1,1,1,1], Tardigradia Chile SpA holds valid concessions, RCA, capital, consent, deployed Aegis-Forge, DFARS-certified offtake, and has shipped first slugs.*

**Validation Method**: Historical comparison — every prior mining project in Chile (Escondida, Los Pelambres, Centinela, Quebrada Blanca) is measured against the CSV framework. **Result**: All successful projects satisfy CSV = 1111111 at production. All failed projects have CSV ≠ 1111111 at stall point.

#### 3.3.2 History→Theory: Formation Validates Protocol

The **actual formation** of Tardigradia Chile SpA and first Aegis-Forge deployment **validates** the CSV primitive:

> **Validation**: *If Tardigradia achieves CSV = 1111111 and ships DFARS-certified Fe₁₆N₂ slugs to CSM, then the CSV primitive is validated as sufficient for facilitator→owner transition.*

**Falsification Condition**: If CSV = 1111111 but transition fails (e.g., political expropriation, force majeure), the primitive is **insufficient** — a new Lock exists.

**Keymaker Voice**: *The Turn cuts both ways. Protocol predicts history. History validates protocol. If either direction breaks, the Key is wrong. We iterate the Key, not the Lock.*

#### 3.3.3 Turn Verification Vectors (Per Document)

Each document produces a **binary verification vector** for its domain:

| Document | Verification Vector | Pass Condition |
|----------|---------------------|----------------|
| DOC-01 | [Resource≥Threshold, IOCG_mapped, REE_quantified] | All 1 |
| DOC-02 | [Communities_mapped, Indigenous_identified, Aspirations_documented] | All 1 |
| DOC-03 | [Royalties_modeled, Equity_structured, Trusts_formed] | All 1 |
| DOC-04 | [7_Triggers_defined, Veto_architected, SPA_dual_track] | All 1 |
| DOC-05 | [CRMA_secured, CPTPP_aligned, IRA_qualified, 51%_floor] | All 1 |
| DOC-06 | [DFARS_chain, GFM_spec, CRMA_project, CSM_offtake] | All 1 |
| DOC-07 | [Mining_Code_mapped, Env_Law_mapped, Indigenous_Law_mapped, Water_Code_N/A] | All 1 |
| DOC-08 | [Ports_capacity, Rail_corridors, IMDG_compliant, Blockchain_shipping] | All 1 |
| DOC-09 | [NdFeB_grades, SmCo_grades, Fe₁₆N₂_27MGOe, FeCo_specs] | All 1 |
| DOC-10 | [Mine→Magnet chain, Aegis_output=CSM_input, QC_chain] | All 1 |
| DOC-11 | [GIC_modeled, Transformer_hardened, Grid_operations, CAT_bonds] | All 1 |
| DOC-12 | [GFM_architectures, VSM_Matching, CEN_aligned, Aegis_DC_bus] | All 1 |

**Pass = All bits = 1**. Any 0 = document incomplete.

---

### 3.4 Keymaker Voice Signature — Lock/Key/Turn Bidirectional

| Linguistic Invariant | Pattern | Example |
|----------------------|---------|---------|
| **Lock Declaration** | "Lock: [failure mode] — [metric] — [baseline]" | "Lock: Concession defects — 18% overlap — Sernageomin 2024" |
| **Key Declaration** | "Key: [primitive] — [mechanism] — [binary]" | "Key: CSV[c₁] — Sernageomin registry + title insurance — {0,1}" |
| **Turn Declaration** | "Turn: Theory→History [prediction] ∧ History→Theory [validation]" | "Turn: CSV=1111111 predicts production. Escondida validates." |

**Forbidden**: "Likely," "should resolve," "expected to," "mitigates," "reduces"
**Required**: Binary. Measurable. Bidirectional.

---

### 3.5 Application to DOC-01..12 — Binary Verification Vectors Per Document

#### 3.5.1 DOC-01 Verification Vector
```
V₀₁ = [c₁₁, c₁₂, c₁₃] = [
  Resource_Quantified(IOCG+REE) ≥ Threshold,
  Infrastructure_Mapped(Rail+Port+Grid) ≥ Threshold,
  Aegis_Forge_Compatibility_Confirmed
]
```

#### 3.5.2 DOC-04 Verification Vector (Master Protocol)
```
V₀₄ = [c₄₁, c₄₂, c₄₃, c₄₄, c₄₅, c₄₆, c₄₇] = [
  Geological_Trigger,
  Regulatory_Trigger,
  Financial_Trigger,
  Community_Trigger,
  Technical_Trigger,
  Offtake_Trigger,
  Production_Trigger
]
```
**This IS the master CSV**. DOC-04 defines the primitive.

#### 3.5.3 DOC-07 Verification Vector
```
V₀₇ = [c₇₁, c₇₂, c₇₃, c₇₄] = [
  Mining_Code_Path_Clear,
  Environmental_Path_Clear (RCA + CRMA),
  Indigenous_Path_Clear (Consulta + FBC/CDC),
  Water_Code_N/A (Aegis-Forge zero-water)
]
```

#### 3.5.4 DOC-11 Verification Vector
```
V₁₁ = [c₁₁₁, c₁₁₂, c₁₁₃, c₁₁₄] = [
  GIC_Model_Validated (NASA/NOAA + Kappenman),
  Transformer_Hardening_Spec (IEEE C57.163 + NERC TPL-007),
  Grid_Ops_Protocol (CEN + NOAA SWPC + SHOA),
  Financial_Instruments (CAT bonds + resilience bonds)
]
```

#### 3.5.5 DOC-12 Verification Vector
```
V₁₂ = [c₁₂₁, c₁₂₂, c₁₂₃, c₁₂₄, c₁₂₅] = [
  GFM_Control_Architectures_Specified (6 types),
  Synthetic_Inertia_Mechanisms (VSM/Droop/Matching),
  CEN_Alignment (NTSyCS + DS N°62 + PET 2024),
  Aegis_DC_Bus_Integration (3L-NPC SiC ±1.5kV),
  Mining_Load_Co_Design (Fe₁₆N₂ + SynRM + Piezo)
]
```

**Master Invariant**: ΣVᵢ = CSV. Every document's vector is a **subset of the master CSV bits**.

---

### 3.6 Lock Failure Mode Catalog (Extended)

| Lock | Failure Mode | Detection | Key Countermeasure |
|------|--------------|-----------|-------------------|
| LK-01a | Concession boundary dispute | Sernageomin overlap alert | Title insurance + boundary survey |
| LK-01b | Concession expiration | Calendar trigger (30/60/90 day) | Auto-renewal protocol |
| LK-02a | RCA observation (observaciones) | SEA portal monitor | Pre-submission technical review |
| LK-02b | CRMA designation denied | EU Commission decision | Fallback: bilateral Chile-EU framework |
| LK-03a | Consulta rejection | Indigenous assembly vote | FBC/CDC pre-negotiation (DOC-03) |
| LK-03b | Consulta delay >18 months | Timeline monitor | CRMA strategic project → expedited |
| LK-05a | IMDG misclassification | Port inspection reject | Automated classification engine |
| LK-05b | Shielding failure | Field strength >5.25mT at 2.1m | Mu-metal + steel composite design |
| LK-06a | Blockchain oracle failure | Smart contract revert | Multi-oracle (Chainlink + custom) |
| LK-06b | Heat/lot collision | Hash collision detection | SHA-256 + batch nonce |
| LK-07a | GIC > design basis | NOAA SWPC G3+ alert | GFM adaptive fault current limit |
| LK-07b | Synthetic inertia insufficient | RoCoF > 1 Hz/s | VSM + Matching parallel |

---

### 3.7 Key Primitive Derivation (Formal)

The CSV primitive derives from **constraint satisfaction theory**:

```
Given: Constraint Set C = {c₁...c₇} where each cᵢ: Ω → {0,1}
       Ω = State space of Chilean mining project

Define: Transition Operator T: Ω → Ω
        T(ω) = ω' where cᵢ(ω') = 1 for all i

Theorem: T is monotonic (cᵢ(ω') ≥ cᵢ(ω)) and idempotent (T(T(ω)) = T(ω))
         iff each cᵢ has irreversible verification.

Proof: 
  1. Monotonic: Once cᵢ=1 (RCA granted), cannot become 0 without revocation (protocol breach)
  2. Idempotent: Applying T to satisfied state changes nothing
  3. Irreversible verification: Each cᵢ tied to cryptographic/legal artifact
  
Corollary: CSV is a lattice homomorphism from (Ω, ≤) to ({0,1}⁷, ≤)
           where ω ≤ ω' iff cᵢ(ω) ≤ cᵢ(ω') for all i.
```

**Keymaker Voice**: *The Key is a lattice homomorphism. The Lock is the partial order of project states. The Turn is the fixed point where CSV = 1111111.*

---

### 3.8 Turn Validation Vectors (Per Document Pair)

Cross-document validation ensures **no conflation** (DOC-14):

| Document Pair | Shared Bits | Validation Rule |
|---------------|-------------|-----------------|
| DOC-01 ↔ DOC-04 | c₁ (Geological) | V₀₁[c₁] = 1 → V₀₄[c₄₁] = 1 |
| DOC-03 ↔ DOC-04 | c₄ (Community) | V₀₃[c₃] = 1 → V₀₄[c₄₄] = 1 |
| DOC-05 ↔ DOC-04 | c₃ (Financial) | V₀₅[c₅] = 1 → V₀₄[c₄₃] = 1 |
| DOC-06 ↔ DOC-04 | c₆ (Offtake) | V₀₆[c₆] = 1 → V₀₄[c₄₆] = 1 |
| DOC-07 ↔ DOC-04 | c₂ (Regulatory) | V₀₇[c₂] = 1 → V₀₄[c₄₂] = 1 |
| DOC-08 ↔ DOC-04 | c₆ (Shipping) | V₀₈[c₈] = 1 → V₀₄[c₄₆] = 1 |
| DOC-09 ↔ DOC-10 | Magnet specs | V₀₉ = V₁₀ on grade specs |
| DOC-11 ↔ DOC-12 | Grid hardening | V₁₁[c₁₁₁] = V₁₂[c₁₂₃] on CEN alignment |

**Validation**: All shared bits **must match exactly**. Mismatch = conflation flag (DOC-14).

---

### 3.9 Binary Verification Per Document (Automated)

```bash