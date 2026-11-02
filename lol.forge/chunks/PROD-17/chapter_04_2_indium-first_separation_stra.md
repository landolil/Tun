## 2. Indium-First Separation Strategy

### 2.1 Indium Melting Point — The Separation Key

Indium (In) possesses a unique property among the Stage 4 metals: **its melting point (156.6°C) is significantly below all other metals in the feedstock**. At 156.6°C, indium transitions from solid to liquid while tin (231.9°C), bismuth (271.5°C), lead (327.5°C), zinc (419.5°C), aluminum (660.3°C), copper (1084.6°C), and iron (1538°C) all remain solid.

This creates a **thermodynamic window of absolute selectivity** — a physical separation opportunity that requires no chemical reagents, only precise temperature control.

| Metal | Melting Point (°C) | ΔT from In MP | State at 160°C |
|---|---|---|---|
| **Indium (In)** | **156.6** | **0** | **LIQUID** |
| Tin (Sn) | 231.9 | +75.3 | Solid |
| Bismuth (Bi) | 271.5 | +114.9 | Solid |
| Lead (Pb) | 327.5 | +170.9 | Solid |
| Zinc (Zn) | 419.5 | +262.9 | Solid |
| Aluminum (Al) | 660.3 | +503.7 | Solid |
| Copper (Cu) | 1084.6 | +928.0 | Solid |
| Iron (Fe) | 1538.0 | +1381.4 | Solid |

**The Indium-First Principle:** Heat the drum slowly through 155→157→160°C. Hold at 160°C. Only indium is liquid. Centrifuge at 400 RPM (G=89.2). The liquid indium migrates radially outward to the drum wall and exits through Port 4A (setpoint 160°C). All other metals remain solid particles suspended in the char/carbon matrix, unmoved by centrifugal force because they are not fluid.

### 2.2 Indium-First Process Sequence

```
INDUIM-FIRST PROCESS FLOW
════════════════════════════════════════════════════════════════════════════════

INPUT: Stage 3 output (char + metal particles) → Drum at 150°C → N₂/H₂ atmosphere

STEP 1: INDIUM LIQUEFACTION (155-160°C, 5 min dwell)
├── Ramp: 150 → 155 → 157 → 160°C at 1°C/min through critical range
├── Hold: 160°C for 5 minutes (allows In coalescence)
├── Centrifuge: 400 RPM (89.2 G at drum wall)
├── Valve: Port 4A opens at 160°C (Ti₃AlC₂ actuator calibrated for In MP)
├── Output: In-rich liquid slug (In 60-80%, residual organics 20-40%)
│   └── Organics: tar, light hydrocarbons from char — co-discharge with In
└── Downstream: Electrodeposition refining (FOLLOW-14) → 99.9% In cathode

STEP 2: Sn-Pb EUTECTIC CLEARANCE (183-200°C, 3 min dwell)
├── Ramp: 160 → 183 → 200°C
├── Hold: 200°C for 3 minutes
├── Centrifuge: 300 RPM (50.2 G)
├── Valve: Port 4B opens at 200°C
├── Output: Sn60/Pb40 eutectic slug (primary solder alloy)
│   └── Phase diagram: Sn-Pb eutectic at 183°C, 63% Sn / 37% Pb
└── Downstream: Alloy purification, casting → commercial solder / internal use

STEP 3: Bi + Sn MELT (271-280°C, 3 min dwell)
├── Ramp: 200 → 271 → 280°C
├── Hold: 280°C for 3 minutes
├── Centrifuge: 300 RPM (50.2 G)
├── Valve: Port 4B opens at 280°C
├── Output: Bi-Sn + residual Sn liquid
│   └── Bi-Sn eutectic: 57% Bi / 43% Sn at 139°C (already liquid)
│   └── Pure Sn melts at 232°C — combines with Bi
└── Downstream: Bi-Sn alloy (low-temp solder), Sn recovery

STEP 4: LEAD MELT (327-340°C, 3 min dwell)
├── Ramp: 280 → 327 → 340°C
├── Hold: 340°C for 3 minutes
├── Centrifuge: 300 RPM (50.2 G)
├── Valve: Port 4C opens at 340°C
├── Output: Pb-rich liquid (85-95% Pb)
│   └── Remaining Sn/Bi already removed — high purity Pb achievable
└── Downstream: Pb bullion casting → battery recycling, shielding

STEP 5: ZINC SEPARATION (420-430°C, 10 min dwell)
├── Ramp: 340 → 420 → 430°C
├── Hold: 430°C for 10 minutes (Zn boiling point 907°C — safe margin)
├── Centrifuge: 400 RPM (89.2 G — higher G for Zn vapor suppression)
├── Valve: Port 4C opens at 430°C
├── Output: Zn-rich liquid (85-95% Zn)
│   └── Zamak (Zn/Al/Cu) melts at 380-390°C — included
│   └── Zn vapor pressure at 430°C: ~0.01 Pa — negligible with N₂ blanket
└── Downstream: Zn dust condensation, ZnO production, galvanizing feed

STEP 6: TRANSITION TO STAGE 5 (450-660°C)
├── Ramp: 430 → 450 → 660°C
├── No port discharge — Al solidus at 660°C
├── All Stage 4 metals fully cleared by 450°C
└── Drum at 660°C, 200 RPM → Stage 5 Aluminum Window begins

TOTAL STAGE 4 TIME: ~25 minutes (5 + 3×3 + 10 + ramp time ~5 min)
```

### 2.3 Downstream Indium Refining — 99.9% In Production

The In-rich slug from Step 1 (60-80% In, 20-40% organics) undergoes **electrodeposition refining** to achieve 99.9% purity, directly feeding YInMn Blue pigment production.

**Electrodeposition Parameters (FOLLOW-14 Detail):**

| Parameter | Value | Notes |
|---|---|---|
| **Electrolyte** | In₂(SO₄)₃ 0.5 M in H₂SO₄ 1 M | Indium sulfate in sulfuric acid |
| **Temperature** | 50°C | Optimizes current efficiency |
| **Cathode** | Stainless steel 316L | High H₂ overpotential, In adhesion |
| **Anode** | In-rich slug in Ti basket | Soluble anode, continuous feed |
| **Current Density** | 10-20 mA/cm² | Balance rate vs. dendrite formation |
| **Cell Voltage** | 1.8-2.2 V | Low voltage — energy efficient |
| **Current Efficiency** | >95% | High due to In reduction potential (-0.34 V vs SHE) |
| **Product Purity** | 99.9% In (3N) | Meets YInMn synthesis spec |
| **Production Rate** | ~2 kg In/hour per m² cathode | Scalable with cell count |

**Reaction:**
```
Anode:  In → In³⁺ + 3e⁻
Cathode: In³⁺ + 3e⁻ → In(s) (deposited)
Overall:  In(anode) → In(cathode)  (purification by selective deposition)
```

**Impurity Behavior:**
- Sn, Pb, Bi: More negative reduction potentials — remain in solution
- Cu, Fe, Zn: Co-deposit slightly — controlled by current density
- Organics: Oxidized at anode or filtered pre-electrolysis
- **Result:** Cathode deposit >99.9% In, suitable for YInMn Blue synthesis

**YInMn Blue Connection:**
99.9% In from Stage 4 → YInMn Blue pigment (Y:In:Mn = 1:1:1 molar) → CSMFAB products (thermal barrier coatings, IR-reflective pigments, ceramic glazes). This creates a **closed-loop domestic indium supply chain** — the strategic objective of the Indium-First Strategy.

---
