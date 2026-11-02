## 3. Precious Metal Partitioning to Anode Slime

### 3.1 Partitioning Thermodynamics

**Precious Metal Behavior in Molten Copper:**
| Element | Melting Point | Boiling Point | Solubility in Cu (1150°C) | Partition Coefficient K = C_slime/C_Cu |
|---|---|---|---|---|
| **Gold (Au)** | 1064°C | 2856°C | Complete (fcc, same structure) | >10⁴ (strong slime affinity) |
| **Silver (Ag)** | 962°C | 2162°C | Complete (fcc, same structure) | >10³ |
| **Palladium (Pd)** | 1555°C | 2963°C | 8.5 wt% at 1150°C | 10²-10³ |
| **Platinum (Pt)** | 1768°C | 3825°C | 0.5 wt% at 1150°C | 10² |
| **Rhodium (Rh)** | 1964°C | 3695°C | 0.1 wt% at 1150°C | 10-50 |
| **Iridium (Ir)** | 2410°C | 4428°C | <0.01 wt% | 10-50 |
| **Ruthenium (Ru)** | 2334°C | 4150°C | <0.01 wt% | 10-50 |
| **Osmium (Os)** | 3033°C | 5012°C | <0.001 wt% | 10-50 |

**Partition Mechanism:**
1. **Dissolution:** PMs dissolve in molten Cu during 30 min dwell (diffusion time τ = L²/D; D_Au_in_Cu ≈ 10⁻⁸ cm²/s at 1150°C → τ ≈ 10 s for 100 μm particle)
2. **Solidification Segregation:** During anode casting, Cu solidifies dendritically; PMs partition to interdendritic liquid (K < 1)
3. **Slime Formation:** Final interdendritic liquid enriched in PMs, O, S, Se, Te → forms anode slime at mold interface
4. **Collection:** Slime mechanically separated during anode demold/handling

### 3.2 Mass Balance — Precious Metals per 500 kg Batch

```
PRECIOUS METAL TRACKING — STAGE 6 INPUT (from PROD-17, PROD-18, PROD-13)
═════════════════════════════════════════════════════════════════════════════════

INPUT TO STAGE 6:
├── From Stage 4 dross (PROD-17): 0.5 kg PMs
│   ├── Au: 2 g (0.5% of Stage 4 total)
│   ├── Ag: 40 g (1% of Stage 4 total)
│   ├── Pd: 8 g (5% of Stage 4 total)
│   └── Pt: 6 g (20% of Stage 4 total)
├── From PCB Cu fraction (Category A): 25 kg Cu
│   ├── Au: 348 g (99.5% of Stage 4 total → Cu melt)
│   ├── Ag: 3,960 g (99% of Stage 4 total → Cu melt)
│   ├── Pd: 142 g (95% of Stage 4 total → Cu melt)
│   └── Pt: 24 g (80% of Stage 4 total → Cu melt)
├── From motor windings/wire (Category A): 20 kg Cu
│   └── PMs: negligible (high-purity Cu)
└── From Phoenix returns (PROD-22): 5 kg Cu
    └── PMs: trace (connector plating)

TOTAL PM INPUT TO STAGE 6:
├── Au: 350 g
├── Ag: 4,000 g
├── Pd: 150 g
├── Pt: 30 g
└── Other (Rh, Ir, Ru, Os): <5 g total

PARTITIONING TO ANODE SLIME (per anode, 4 anodes per batch):
┌─────────────┬───────────┬───────────┬───────────┬───────────┬───────────┐
│ Element     │ Total In  │ To Anode  │ To Slime  │ Slime %   │ K_slime/Cu │
├─────────────┼───────────┼───────────┼───────────┼───────────┼───────────┤
│ Au          │ 350 g     │ 1.5 g     │ 348.5 g   │ 99.6%     │ >10⁴       │
│ Ag          │ 4,000 g   │ 40 g      │ 3,960 g   │ 99.0%     │ >10³       │
│ Pd          │ 150 g     │ 3 g       │ 147 g     │ 98.0%     │ 10²-10³    │
│ Pt          │ 30 g      │ 5 g       │ 25 g      │ 83.3%     │ 10²        │
│ Rh          │ 3 g       │ 1 g       │ 2 g       │ 66.7%     │ 10-50      │
│ Ir/Ru/Os    │ <2 g      │ <0.5 g    │ >1.5 g    │ >75%      │ 10-50      │
└─────────────┴───────────┴───────────┴───────────┴───────────┴───────────┘

ANODE SLIME COMPOSITION (per 50 kg anode, 4 anodes/batch):
┌─────────────┬───────────────┬─────────────────────────────────────────────┐
│ Component   │ Mass per Anode │ Notes                                       │
├─────────────┼───────────────┼─────────────────────────────────────────────┤
│ Copper      │ 10-15 kg      │ 20-30% of slime mass (entrapped Cu)        │
│ Silver      │ 8-10 kg       │ Primary PM by mass                         │
│ Gold        │ 0.8-1.0 kg    │ Highest value density                      │
│ Palladium   │ 0.3-0.5 kg    │ Critical for catalyst market               │
│ Platinum    │ 0.05-0.1 kg   │ Low mass, high value                       │
│ Selenium    │ 1-2 kg        │ From PCB solder, forms Cu₂Se in slime      │
│ Tellurium   │ 0.5-1 kg      │ Forms Cu₂Te, valuable byproduct            │
│ Arsenic     │ 0.2-0.5 kg    │ Volatilizes as AsH₃ — captured in off-gas  │
│ Antimony    │ 0.1-0.3 kg    │ Volatilizes as SbH₃ — captured in off-gas  │
│ Bismuth     │ 0.05-0.1 kg   │ Partially volatilizes as BiH₃              │
│ Lead        │ 0.5-1 kg      │ From solder residue, forms PbO in slime    │
│ Nickel      │ 0.5-1 kg      │ Dissolved in Cu, partially in slime        │
│ Oxygen      │ 2-5 kg        │ Cu₂O, CuO in slime                         │
│ Sulfur      │ 0.5-1 kg      │ Cu₂S, Ag₂S in slime                        │
└─────────────┴───────────────┴─────────────────────────────────────────────┘

TOTAL ANODE SLIME PER BATCH: 40-60 kg (4 anodes × 10-15 kg slime/anode)
TOTAL PM VALUE IN SLIME (2026 prices):
├── Au: 348 g × $3,200/oz = $35,800
├── Ag: 3,960 g × $32/oz = $4,080
├── Pd: 147 g × $1,000/oz = $4,725
├── Pt: 25 g × $950/oz = $764
└── **TOTAL: ~$45,369 per batch in anode slime alone**
```

### 3.3 Anode Slime Collection System

**Slime Formation Location:**
- Forms at Cu/ZrO₂ mold interface during solidification
- Interdendritic liquid (final 5-10% of solidification) enriched in PMs
- Collected by:
  1. **Mechanical skimming** during anode demold (slime layer on top)
  2. **Mold wash** with N₂ jet after demold (recovers residual slime)
  3. **Anode surface brushing** before electrolytic cell loading

**Slime Handling Protocol:**
1. Each anode mold has dedicated slime catch tray (ZrO₂, 500 cm²)
2. Slime falls into tray during demold → conveyed to sealed container
3. Container purged with N₂, weighed, sampled (LIBS), sealed
4. Transferred to FOLLOW-19 electrorefining queue
5. **Chain of custody:** Slime container UUID linked to anode UUIDs

---
