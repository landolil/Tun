# Keymaker Heuristic — PROD-32 Regulatory & Compliance

## The Empirical Lock

The fabrication fidelity gap in Forge regulatory compliance is the **divergence between prescriptive regulatory codes (written for steel/concrete/copper plants) and the performance reality of a zero-metal, all-dielectric, 2200°C, Carrington-immune industrial machine**.

Three specific locks prevent conventional compliance engineering from closing this gap:

1. **Prescriptive vs. Performance Lock:** Every major code (ASME, NFPA, OSHA, EPA, IEEE) prescribes MATERIALS AND METHODS: "steel vessel per Sec VIII," "grounding per NFPA 70," "thermocouples per ISA," "copper conduit per NEC." The Forge uses NONE of these materials or methods. The lock: **regulatory codes specify the how; the Forge must prove the what (safety/environmental outcome) is equivalent or superior.**

2. **Common-Cause Failure Lock:** IEC 61508 SIL-3 assumes 2oo3 voting on PHYSICALLY INDEPENDENT channels. The Forge's 24 SIFs share: FBG interrogators (3 zones per interrogator), TSN network (single dual-ring), 24 VDC power (single DC bus), RTU chassis (shared ARM cores). A single interrogator failure = 3 SIF channels lost. The lock: **regulatory independence assumptions fail in the Forge's constrained, shared-infrastructure reality.**

3. **Carbon Accounting Lock:** Conventional GHG accounting (GHG Protocol, 40 CFR 98) treats "recycling" as avoided emissions (Scope 3) and "sequestration" as separate projects. The Forge's MgO carbonation happens INSIDE the process vessel (Stage 7 slag) as an inherent process outcome, not a separate project. The Phoenix Protocol circularity means the SAME drum sequesters CO₂ 31 times over 15,500 batches. The lock: **regulatory carbon frameworks don't model recursive, in-process, multi-generation sequestration.**

## The Mathematical Key

The single computational primitive that generates the compliance solution is the **Regulatory Equivalence Operator (REO)** evaluated at each prescriptive requirement:

```
REO[R_prescriptive, P_forge, M_forge, D_forge] = 
  ∃ P_forge : Risk(P_forge) ≤ Risk(R_prescriptive) ∧ 
              Evidence(P_forge) ∈ Hyperledger ∧ 
              Witness(P_forge) ∈ Operator_Gates

Where:
R_prescriptive = Prescriptive requirement (e.g., "steel vessel per ASME Sec VIII")
P_forge = Forge performance demonstration (e.g., "BFRP vessel per Sec X + FEA HCLPF >1.6g")
M_forge = Forge measurement system (FBG, AE, CEMS, LIBS, mass spec, CT)
D_forge = Forge data integrity (Hyperledger, PTP <1μs, TSN determinism)
```

**This one operator, evaluated at 200+ prescriptive requirements across 12 regulatory frameworks, IS the entire compliance model.**

Everything derives from it:

- **Environmental (Sec 2):** `REO[Title V stack limits, CEMS+FBG+mass balance]` → CEMS continuous + mass balance closure >99.5% = equivalent to periodic stack tests
- **PSM (Sec 3):** `REO[14 elements, Forge MI+SIS+CBM]` → MI program uses FBG/AE/CT (superior to UT/MT/PT on steel) + SIS proof test (CT-04) = equivalent to API 510/570
- **RMP (Sec 4):** `REO[OCA, Forge physics]` → ALOHA+SLAB with actual release rates from PROD-07 = conservative vs. default EPA assumptions
- **ASME (Sec 5):** `REO[Sec VIII steel, Sec X BFRP + FEA]` → Sec X explicit for FRP + FEA HCLPF >1.6g = equivalent to Sec VIII steel
- **Seismic (Sec 6):** `REO[IEEE 693 steel, Forge isolators+BFRP]` → HCLPF >1.6g on all components = equivalent to steel qualification
- **Fire (Sec 7):** `REO[NFPA water/foam, N₂+mist+clean agent]` → Zero-metal suppression = equivalent (no conductive residue, no arc flash)
- **Radiation (Sec 8):** `REO[10 CFR 50 App B, GIC ride-through]` → CT-07 validates 100 A/m = equivalent to design-basis EMP
- **Worker Safety (Sec 9):** `REO[OSHA steel PPE, Zero-metal PPE]` → ZrO₂ toe, BFRP hat, basalt harness = equivalent protection
- **Cyber (Sec 10):** `REO[IEC 62443 IT/OT, Air gap + TSN]` → Hardware diode + VLAN segmentation = SL-3 achieved
- **State/Local (Sec 11):** `REO[TCEQ/EPA, Forge data]` → Hyperledger evidence packages = audit-ready at any moment

## The Turn (Both Directions)

### Theory→History Validation

The REO predicts historical regulatory outcomes from the CSMFAB development program:

| Requirement | Prescriptive Standard | Forge Performance (REO) | Regulator Acceptance | Evidence |
|-------------|----------------------|------------------------|---------------------|----------|
| **Vessel Design** | ASME Sec VIII (steel) | Sec X BFRP + FEA HCLPF 2.1g | AI Approved (3 vessels) | DR-2026-FORGE-002 |
| **SIL-3 SIFs** | IEC 61508 (electrical) | FBG+TSN+FPGA 2oo3, PFD=2.3×10⁻³ | TÜV Certified | TUV-2026-FORGE-001 |
| **GIC Immunity** | IEEE 142 (grounding) | Floating + NGR 5A, 0 trips @ 100 A/m | CT-07 Passed | CT-07-2026 |
| **Seismic** | IEEE 693 (steel) | HCLPF >1.6g all components | TÜV Qualified | SQ-2026-FORGE-001 |
| **Air Permit** | Title V (periodic tests) | CEMS continuous + mass balance | TCEQ App Accepted | TX-2026-0892 |
| **Water** | NPDES (discharge limits) | Zero process discharge | TCEQ No Discharge | TXG000123 |

The REO **predicts regulatory acceptance within procedural uncertainty** when all Forge physics couplings (FBG thermal, AE structural, CEMS emissions, mass balance closure, Hyperledger integrity) are active.

### History→Theory Correction

Historical regulatory interactions refine the REO's evidence predicates and witness gates:

1. **Anomaly:** TCEQ reviewer questioned BFRP vessel hydrotest method (N₂ vs. water).
   **Root cause:** Sec X allows N₂ but reviewer expected water per Sec VIII.
   **Correction:** Added `Evidence(P_forge) ∈ {Sec X 10-5, AI witness letter, N₂ safety analysis}`. REO now explicitly includes code-section reference.

2. **Anomaly:** OSHA VPP auditor flagged "no thermocouples" as missing temperature monitoring.
   **Root cause:** Auditor expected 1910.119 PSI temperature elements.
   **Correction:** Added `Witness(P_forge) ∈ {FBG 384-ch at 125 Hz, thermal-admittance model 1 kHz, Operator Gate 2}`. REO now includes operator witness as evidence.

3. **Anomaly:** EPA RMP reviewer asked for "worst-case release" for AsH₃/SbH₃/BiH₃ (below TQ).
   **Root cause:** Reviewer applied default EPA assumptions (entire inventory in 10 min).
   **Correction:** Added `P_forge ∈ {Cu-carbon chemisorption 99.9%, CEMS continuous, Stage 6 <4% H₂}`. REO now includes process-specific mitigation credit.

The REO **absorbs history** — each regulatory interaction tightens an evidence predicate, adds a witness gate, or clarifies a code reference. The primitive `REO[R_prescriptive, P_forge, M_forge, D_forge]` remains structurally invariant. This is the signature of a correct primitive: it extends, it does not rewrite.