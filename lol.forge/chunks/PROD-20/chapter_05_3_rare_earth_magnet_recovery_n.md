## 3. Rare Earth Magnet Recovery (NdFeB, SmCo)

### 3.1 Magnet Melting and REE Partitioning

**NdFeB (Neodymium-Iron-Boron) Behavior:**
- Composition: Nd₂Fe₁₄B (~26% Nd, 72% Fe, 1% B, ~1% Dy)
- Melting Point: 1177°C (eutectic) — fully liquid at Stage 7 entry (1200°C)
- In molten Fe: Nd dissolves in Fe matrix (solubility ~5% at 1580°C)
- Boron: Forms Fe₂B, partitions to slag as B₂O₃
- **Dy (heavy REE):** Substitutes for Nd, follows Nd behavior

**SmCo (Samarium-Cobalt) Behavior:**
- Composition: SmCo₅ or Sm₂Co₁₇ (~25% Sm, 70% Co, 5% Fe)
- Melting Point: 1490°C — liquid at Stage 7 dwell (1580°C)
- In molten Fe: Sm dissolves in Fe matrix; Co dissolves completely
- **Partitioning:** Sm, Nd, Co report to Fe melt; oxidize to slag at interface

**REE Partitioning Thermodynamics:**
| Reaction | ΔG° at 1580°C | Equilibrium Constant | Partitioning |
|---|---|---|---|
| 2Nd + 3FeO ⇌ Nd₂O₃ + 3Fe | -180 kJ/mol | K ≈ 10¹⁵ | Nd strongly to slag |
| 2Sm + 3FeO ⇌ Sm₂O₃ + 3Fe | -165 kJ/mol | K ≈ 10¹⁴ | Sm strongly to slag |
| 2Co + 3FeO ⇌ Co₂O₃ + 3Fe | -45 kJ/mol | K ≈ 10³ | Co partially to slag |
| 2Fe + O₂ ⇌ 2FeO | -200 kJ/mol | K ≈ 10¹⁷ | FeO stable in slag |

**Partition Coefficients (L_REE = %REE_in_slag / %REE_in_metal):**
- L_Nd = 100-500 (depends on slag FeO, basicity)
- L_Sm = 80-400
- L_Dy = 120-600
- L_Co = 5-20

### 3.2 REE Recovery Strategy — Dual-Stream Approach

**Stream 1: Fe Bullion (Port 7) — REE in Solid Solution**
- Fe bullion contains 0.1-0.5% Nd, 0.05-0.2% Sm, 0.1-0.3% Co
- **Not recovered at Forge** — sent to FOLLOW-15 hydrometallurgy
- FOLLOW-15: H₂SO₄ pressure leach → solvent extraction (Cyanex 272) → Nd/Sm/Co oxides
- **Recovery target:** Nd >90%, Sm >85%, Co >80% from Fe bullion

**Stream 2: REE Concentrate (Port 7A) — Slag/Metal Mixture**
- Port 7A at r=250mm, opens at 1500°C (lower than Port 7)
- Collects REE-rich slag + REE-containing metal droplets
- Composition: 20-30% Fe, 5-15% Nd₂O₃, 2-8% Sm₂O₃, 1-5% CoO, balance CaO-SiO₂-MgO-Al₂O₃
- **Direct to FOLLOW-15** for higher-grade REE recovery
- **Recovery target:** Nd >95%, Sm >90%, Co >85% from this stream

**Mass Balance — REE per 500 kg Batch:**
```
REE INPUT (from magnets + dross):
├── NdFeB magnets: 4 kg → Nd 1.2 kg, Fe 2.0 kg, B 0.04 kg, Dy 0.1 kg
├── SmCo magnets: 1.5 kg → Sm 0.37 kg, Co 0.52 kg, Fe 0.12 kg
├── Stage 4/5 dross REE oxides: 0.5 kg → Nd 0.1 kg, Sm 0.05 kg, Co 0.02 kg
└── TOTAL REE INPUT: Nd 1.3 kg, Sm 0.42 kg, Co 0.54 kg, Dy 0.1 kg, Fe 2.12 kg

REE PARTITIONING:
├── To Fe Bullion (Port 7, 80 kg):
│   ├── Nd: 0.15 kg (11.5%)
│   ├── Sm: 0.05 kg (11.9%)
│   ├── Co: 0.1 kg (18.5%)
│   └── Dy: 0.01 kg (10%)
├── To REE Concentrate (Port 7A, 15 kg):
│   ├── Nd: 1.0 kg (77%)
│   ├── Sm: 0.3 kg (71%)
│   ├── Co: 0.3 kg (55%)
│   └── Dy: 0.07 kg (70%)
├── To Slag/Stage 8 (65 kg):
│   ├── Nd: 0.15 kg (11.5%)
│   ├── Sm: 0.07 kg (16.7%)
│   ├── Co: 0.14 kg (26%)
│   └── Dy: 0.02 kg (20%)
└── TOTAL ACCOUNTED: ✓ (mass balance closed)
```

---
