## 1. Phoenix Protocol Overview

### 1.1 Mission Statement

The Phoenix Protocol is the operational doctrine that transforms the Aegis-Forge I from a waste-processing machine into a **perpetual material engine**. Its mandate: **100% end-of-life (EOL) product return, zero-waste loop, and critical mineral sovereignty** for the Carrington Storm Motors (CSM) portfolio. Every Aegis product — from Embark wall panels to Faraday alarms to Phantom robots — is designed from inception to re-enter the Forge at end of service. The Protocol closes the loop between product retirement and seed material generation.

### 1.2 Strategic Imperatives

| Imperative | Description | KPI Target |
|------------|-------------|------------|
| **Take-Back Compliance** | 5-year warranty with recovery incentive drives return rate | >95% of CSM products by mass |
| **Material Sovereignty** | Eliminate external supply chain for Zr, REE, In, Co, Nb, W | 85% in-house/recycled by Year 5 |
| **Carbon Negativity** | MgO carbonation + avoided primary production sequesters CO₂ | -2.3 tCO₂e/ton EOL processed |
| **Economic Autonomy** | EOL revenue funds Phase 2-3 machine construction | $3.25M per 10,000 panels retired |
| **Traceability** | UUID chain from mine → Forge → product → return → Forge | Blockchain-anchored digital twin |

### 1.3 Protocol Architecture

The Phoenix Protocol operates as a **three-layer recursive system**:

```
Layer 1 — Collection & Disassembly (Depot Network)
    ↓ Feedstock Classification (Category A-D per PROD-13)
Layer 2 — Forge Re-Entry (Stage-by-Stage Material Routing)
    ↓ Product Regeneration (Hydromet, SPS, SHS, Solvolysis)
Layer 3 — Product Re-Manufacture (Assembly Line Integration)
    ↓ Product Deployment → End of Service → Layer 1
```

Each layer validates the next. Layer 1 output (classified feedstock) must meet Layer 2 re-entry specifications. Layer 2 output (regenerated seed materials) must meet Layer 3 production tolerances. Layer 3 products must be designed for Layer 1 disassembly. The recursion is the guarantee.

### 1.4 Design-for-Disassembly (DfD) Principles

Every Aegis product embeds DfD from CAD conception:

| DfD Principle | Implementation | Verification |
|---------------|----------------|--------------|
| **Modular Joints** | PEEK CF40 threaded inserts, ZrO₂ alignment pins | Torque-to-yield spec, ultrasonic inspect |
| **Material Segregation** | No overmolding, no adhesives between material classes | Visual + LIBS at disassembly |
| **Fastener Standardization** | Single PEEK CF40 M8×1.25 for all structural joints | Gauge check at depot |
| **Fluid Drain Ports** | Ti₃AlC₂ ball valves on all fluid circuits | Pressure decay test |
| **Component Labeling** | Laser-etched UUID + material code on every part >50g | LIBS reads code at disassembly |
| **Hazard Isolation** | Batteries, capacitors in dedicated cassettes (tool-free remove) | Depot scan verifies removal |

**DfD Compliance Metric:** Disassembly time ≤ 15 min/product (automated), ≤ 45 min (manual fallback).

### 1.5 Protocol Governance

**Phoenix Protocol Steering Committee (PPSC):**
- Chair: CSM VP Materials & Circularity
- Members: Forge Operations Director, Depot Network Lead, Hydromet Chief Engineer, Digital Twin Architect, Sustainability Officer, Legal/Compliance
- Meets: Monthly (operational), Quarterly (strategic)
- Authority: Approve blend ratio changes, new re-entry paths, depot expansions, protocol amendments

**Protocol Amendment Process:**
1. Change Request (CR) submitted via Git (PROD-38 Config Mgmt)
2. Impact Assessment: Mass balance, energy, safety, economics, schedule
3. PPSC Review: Technical feasibility + business case
4. Approval: Unanimous for safety, majority for ops/econ
5. Implementation: Staged rollout (1 Forge → 3 Forges → Fleet)
6. Validation: 100 batches at new spec before fleet deployment

**Version Control:** Protocol v1.0 (this document) → v1.x (operational tweaks) → v2.0 (major architecture change). All versions archived in Git with tagged releases.

---

## 2. Return Logistics Network

### 2.1 Collection Hub Topology

| Hub Tier | Count (Year 3) | Coverage Radius | Throughput | Function |
|----------|----------------|-----------------|------------|----------|
| **Primary** | 3 (NA, EU, APAC) | 2,000 km | 500 ton/yr | Full disassembly, hazard removal, feedstock classification |
| **Secondary** | 12 | 500 km | 100 ton/yr | Pre-sort, discharge, crate, ship to Primary |
| **Tertiary** | 50+ | 100 km | 20 ton/yr | Consumer drop-off, installer return, warranty claim intake |

**Hub Equipment (Primary):**
- Automated disassembly cell (6-axis + vision, 15 min/product)
- Thermal solvolysis reactor (350°C, 2h, 500L Elium® recovery)
- Ultrasonic cleaning station (PEEK/ZrO₂ hardware)
- LIBS + XRF inline analyzer (composition verification)
- BFRP crate washer (closed-loop water, 99% recycle)

### 2.2 Transport Specification — DUNNAGE-FREE

All EOL material moves in **BFRP/Elium® crates** (CSMFAB-P001 spec):
- Crate dimensions: 1200×800×600 mm (Euro-pallet compatible)
- Mass: 18 kg empty, 500 kg loaded
- Stackable 4-high, forklift pockets, RFID + QR + Data Matrix
- Hermetic seal option (Ar backfill) for reactive fractions
- Crate life: 500 cycles → crushed → BFRP recycling (thermal solvolysis)

**No wood, cardboard, foam, or plastic dunnage.** Ever. The crate IS the packaging.

### 2.3 Collection Triggers

| Trigger | Mechanism | Incentive | SLA |
|---------|-----------|-----------|-----|
| **Warranty Return** | 5-yr CSM warranty requires return for full refund | 100% deposit refund + $50/panel | <30 days from claim |
| **Upgrade Swap** | Embark module replacement program | Trade-in credit toward Gen-II | <14 days scheduled |
| **Decommissioning** | Infrastructure EOL (poles, pipeline, rail) | Scrap value + carbon credit | Contract-defined |
| **Voluntary Return** | Consumer/owner drop-off at Tertiary hub | $25/panel store credit | Immediate |

### 2.4 Reverse Logistics Optimization

**Vehicle Routing Problem (VRP) Solution:**
- **Algorithm**: Clarke-Wright savings + 2-opt local search
- **Objective**: Minimize Σ(distance × carbon intensity) subject to hub capacity
- **Fleet**: Electric Class 8 (500 km range) for Secondary→Primary; Diesel hybrid for Tertiary→Secondary
- **Load Consolidation**: Minimum 80% crate fill before dispatch
- **Backhaul**: Return empty crates + deliver virgin feedstock (BFRP crates, Ar cylinders)

**Network KPIs:**
- Average haul distance: 320 km (Primary←Secondary), 65 km (Secondary←Tertiary)
- Crate turnaround: 14 days (return → clean → redeploy)
- Carbon intensity: 0.08 kg CO₂e/ton-km (electric) vs. 0.22 (diesel)

### 2.5 Depot Network Expansion Roadmap

| Year | Primary Hubs | Secondary Hubs | Tertiary Hubs | Total Capacity | Investment |
|------|--------------|----------------|---------------|----------------|------------|
| Year 1 | 1 (NA) | 4 (NA) | 15 (NA) | 700 ton/yr | $3.2M |
| Year 2 | 2 (NA, EU) | 8 (NA, EU) | 30 (NA, EU) | 1,800 ton/yr | $5.8M |
| Year 3 | 3 (NA, EU, APAC) | 12 | 50+ | 3,500 ton/yr | $4.1M |
| Year 5 | 5 | 20 | 100+ | 8,000 ton/yr | $6.3M |

**Expansion Trigger:** When Secondary hub utilization >80% for 3 consecutive months → promote to Primary.

---

## 3. EOL Product Categorization

### 3.1 Product Taxonomy for Re-Entry

| Product Family | CSMFAB Numbers | Typical Mass | Primary Return Streams | Re-Entry Stages |
|----------------|----------------|--------------|------------------------|-----------------|
| **Aegis-C Panels** | 108-112, 114-115 | 4.6 kg/m² | ZrB₂-SiC, Elium®, Basalt, In, Y, Co, Si₃N₄ | Stage 8 (ZrB₂), Stage 4 (In), Stage 3 (C), Stage 7 (Co) |
| **Aegis-Stove** | 105 | 85 kg | ZrB₂-SiC, MAX Phase, Cu, Fe, Al | Stage 8, 6, 7, 5 |
| **Faraday Alarm** | 107 | 2.3 kg | MAX Phase, Cu, AgNW, LiFePO₄ | Stage 6, 4, 3 |
| **Phantom Robot** | 106 | 45 kg | MAX Phase, BFRP, ZrO₂, PMMA POF, AgNW | Stage 8, 3, 10 |
| **Railway Signal** | 105 | 180 kg | BFRP, ZrB₂-SiC, Cu, Fe | Stage 3, 6, 7, 8 |
| **Pipeline Joint** | 108 | 12 kg | ZrB₂-SiC, MAX Phase, BFRP | Stage 8, 3 |
| **Legacy E-Waste** | N/A | Variable | All categories | Stage 0-8 per PROD-13 |

### 3.2 Feedstock Classification (Per PROD-13 Category D)

| Category | Description | Typical Source | Preprocessing Required |
|----------|-------------|----------------|------------------------|
| **D1 — Intact Aegis Products** | Whole panels, modules, units | Warranty returns, upgrades | Disassembly → component sort |
| **D2 — Structural BFRP** | Panels, beams, profiles | Decommissioning | Thermal solvolysis (350°C) |
| **D3 — Ceramic Cores** | ZrB₂-SiC, ZrO₂, Si₃N₄ | Panel cores, stove burners | Crush → mill → hydromet |
| **D4 — Critical Mineral Fractions** | YInMn, CoAl₂O₄, KNbO₃ | Glazes, pigments, piezos | Acid leach → SX extraction |
| **D5 — Electronic Assemblies** | PCBs, sensors, harnesses | All products | Discharge → Stage 0-2 |
| **D6 — Energy Storage** | LiFePO₄ packs | Alarms, robots, signals | Discharge → hydromet |
| **D7 — MAX Phase Components** | Ti₃AlC₂ shields, bearings | Faraday, Phantom, Pipeline | Crush → chloride-thermal |

### 3.3 Contaminant Thresholds for Re-Entry

| Contaminant | Max Allowable | Source | Mitigation |
|-------------|---------------|--------|------------|
| **Halogens (Cl, Br)** | <50 ppm | Legacy PVC, flame retardants | Stage 2 HCl capture (PROD-15) |
| **Phosphorus** | <100 ppm | FR additives, LiFePO₄ | Stage 3 char adsorption |
| **Sulfur** | <500 ppm | Vulcanized rubber, gypsum | Stage 7 slag capture (CaO) |
| **Lead** | <100 ppm | Legacy solder, pigments | Stage 4 capture (Port 4C) |
| **Cadmium** | <10 ppm | NiCd batteries, pigments | Stage 6 anode slime partition |
| **Mercury** | <1 ppm | Switches, lamps | Stage 0 AMLS liberation + capture |
| **PCBs** | <2 ppm | Legacy transformers | Stage 3 pyrolysis destruction (99.99%) |
| **Radioactives (Th, U)** | <10 Bq/g | REE ores, zircon | Stage 8 slag, monitored |

---

## 4. Preprocessing at Depot

### 4.1 Disassembly Sequence (Automated Cell)

```
Step 1: Electronic/Optical Extraction (2 min)
    - Vision-guided 6-axis removes PCBs, displays, sensors, LoRa modules
    - Output: Electronics fraction → Stage 0 (AMLS) or refurbishment queue

Step 2: Hardware Removal (3 min)
    - PEEK CF40 fasteners, ZrO₂ ceramic bearings, Ti₃AlC₂ EMI shields
    - Ultrasonic clean (40 kHz, 60°C, 10 min) → inspect → re-use queue

Step 3: BFRP Structural Solvolysis (120 min batch)
    - Elium® resin depolymerization: 350°C, 2h, N₂ atmosphere, 15 bar
    - Monomer recovery: MMA >99%, glycol >98% → distillation → Elium® reformulation
    - Basalt fiber recovery: 95% yield, 15-20 μm diameter retained
    - Output: Clean fiber bundles → BFRP pultrusion (FOLLOW-05)

Step 4: Ceramic Core Processing (15 min)
    - ZrB₂-SiC panel cores: Jaw crush → ball mill (3-5 μm) → hydromet (H₂SO₄ leach)
    - ZrO₂/Si₃N₄ buffers: Separate stream → re-precipitation (3Y-TZP) or direct SPS
    - Output: Zr/Y hydroxide gel → calcination → 3Y-TZP powder (Stage 8 loop)

Step 5: Critical Mineral Glaze Recovery (30 min)
    - YInMn Blue (exterior): H₂SO₄ leach → ionic liquid [P₈₈₈₈][Cl] extraction
    - CoAl₂O₄ Cobalt Blue (interior): HCl dissolution → electroplating
    - Output: In 99.9% (YInMn), Y 98% (YSZ), Co 98% (electroplated)

Step 6: Fluid & Battery Drain (5 min)
    - MRF-140CG: Centrifugal separation → quality cert → re-fill
    - LiFePO₄: Full discharge → hydromet (LFP precursor recovery)
```

### 4.2 Depot Throughput & Economics

| Metric | Value |
|--------|-------|
| **Disassembly time** | 15 min/product (automated) |
| **Solvolysis batch** | 500 kg Elium®/batch, 4 batches/day |
| **Depot throughput (Primary)** | 2,000 products/day = 500 ton/yr |
| **Labor** | 4 operators + 1 supervisor/shift |
| **Energy** | 180 kWh/product (solvolysis dominant) |
| **Revenue per product** | $185 avg (In, Y, Co, Zr, fiber, monomer) |
| **Cost per product** | $42 (energy, labor, consumables) |
| **Net margin** | $143/product = $286K/day/Primary hub |

### 4.3 Depot Quality Control

| Checkpoint | Method | Acceptance | Frequency |
|------------|--------|------------|-----------|
| **Incoming radiation** | Gamma spectrometer | <0.5 μSv/hr | Every crate |
| **Battery SoC** | Voltage probe | <3.0V/cell (LiFePO₄) | Every pack |
| **Solvolysis completeness** | Gel permeation chromatography | MMA >99%, Mn <500 Da | Every batch |
| **Fiber integrity** | Single filament tensile | >90% virgin strength | 1% sample |
| **Ceramic crush size** | Laser diffraction | D90 <5 μm | Every batch |
| **Leach efficiency** | ICP-MS on filtrate | >95% target element | Every hydromet batch |

---

## 5. Re-Entry Point Mapping

### 5.1 Stage-by-Stage Re-Entry Matrix

| Stage | Re-Entry Materials | Feed Port | Condition Required | Upstream Doc |
|-------|-------------------|-----------|-------------------|--------------|
| **Stage 0 (AMLS)** | PCBs, mixed electronics, cables | Feed hopper | <150mm, discharged, no batteries | PROD-05, 11 |
| **Stage 1 (Drying)** | Wet polymer fractions, solvolysis wash water | Feed hopper | <5% moisture target | PROD-14 |
| **Stage 2 (Polymer)** | Elium® monomer, polymer blends | Feed hopper | Purified, no halogen | PROD-15 |
| **Stage 3 (Pyrolysis)** | Carbon char, activated carbon, BFRP dust | Feed hopper | Sized <50mm, dry | PROD-16 |
| **Stage 4 (Low-T Metals)** | In from YInMn, Sn/Pb from solder, Zn | Feed hopper | Oxidized fractions pre-reduced | PROD-17 |
| **Stage 5 (Al Window)** | Al from structural, heat exchangers | Feed hopper | Free of Fe/Steel attachments | PROD-18 |
| **Stage 6 (Cu/PM)** | Cu windings, AgNW, PM fractions | Feed hopper | Insulation stripped, no Fe | PROD-19 |
| **Stage 7 (Fe/REE)** | Fe structural, SmCo/NdFeB magnets | Feed hopper | Demagnetized, sized | PROD-20 |
| **Stage 8 (Mineral/Zr)** | ZrB₂-SiC, ZrO₂, Si₃N₄, REE oxides | Feed hopper | Crushed 3-5 μm, acid-leached | PROD-21 |

### 5.2 Blend Ratios — Virgin + Recycled Feed

The Forge operates on a **dynamic blend** to maintain slag chemistry and thermal stability:

| Feedstock Type | Blend Ratio (Mass) | Adjustment Logic |
|----------------|-------------------|------------------|
| Virgin e-waste (Cat A-C) | 50-70% | Baseline cascade feed |
| EOL Aegis products (Cat D1) | 20-30% | High-purity known composition |
| Structural BFRP (Cat D2) | 5-10% | Carbon + fiber supplement |
| Ceramic cores (Cat D3) | 3-8% | Zr/REE boost for Stage 8 |
| Mineral fractions (Cat D4) | 2-5% | Critical mineral spike |
| Electronics (Cat D5) | 5-10% | Cu/PM supplement for Stage 6 |
| Energy storage (Cat D6) | 1-3% | Li/Fe/P to Stage 3/7 |

**Blend Control:** Inline LIBS at shredder exit (PROD-11) measures elemental composition in real-time. MFC adjusts virgin feed rate to maintain target blend ±2%.

### 5.3 Re-Entry Quality Gates

Each re-entry stream passes through a **Quality Gate** before Forge admission:

| Gate | Location | Tests | Pass Criteria | Fail Action |
|------|----------|-------|---------------|-------------|
| **Gate 0** | Depot exit | Radiation, SoC, LIBS fingerprint | All pass | Quarantine, re-sort |
| **Gate 1** | Forge receiving | Weigh, dimension, moisture, LIBS | ±2% mass, <5% H₂O | Reject to depot |
| **Gate 2** | Pre-Stage 0 | PCB count, battery count, size | 0 batteries, <150mm | Manual remove |
| **Gate 3** | Pre-Stage 3 | Char carbon content, volatile matter | C >80%, VM <10% | Adjust blend |
| **Gate 4** | Pre-Stage 4 | In content, oxidation state | In >500 ppm, In⁰ >90% | Pre-reduce |
| **Gate 5** | Pre-Stage 5 | Al purity, Fe contamination | Al >99.5%, Fe <0.1% | Eddy current sort |
| **Gate 6** | Pre-Stage 6 | Cu purity, PM content | Cu >99.5%, PM <500 ppm | Adjust flux |
| **Gate 7** | Pre-Stage 7 | Fe grade, REE magnet presence | Fe >95%, magnet ID'd | Mag separate |
| **Gate 8** | Pre-Stage 8 | ZrO₂ content, REE oxide grade | ZrO₂ >60%, REE >20% | Re-crush/leach |

---

## 6. Material Accounting & Mass Balance

### 6.1 Element-Level Tracking

Every element entering the Forge is tracked from **mine to return** via UUID chain:

```
UUID Structure: CSM-<Mine/Source>-<Forge Batch>-<Stage>-<Port>-<Product>-<Return Cycle>
Example: CSM-AUS-ZIRC-2026-11-02-08-21-8A-001-EMBARK-WALL-001-RTN-03
```

**Tracking Points:**
1. **Mine/Source**: Ore body, recycler, EOL depot
2. **Forge Batch**: 50 kg input, timestamped
3. **Stage**: 0-8 processing stage
4. **Port**: Exit port (1-8, PM, RE, Gas)
5. **Product**: Slug UUID, composition, grade
6. **Downstream**: CSMFAB product or commercial sale
7. **Return Cycle**: 0 = virgin, 1+ = recycled

### 6.2 Mass Balance Closure (Per 50 kg Batch)

| Element | Virgin Input (g) | EOL Return (g) | Stage Exit (g) | Recovery % | Loop Closure |
|---------|-----------------|----------------|----------------|------------|--------------|
| **Zr** | 450 | 800 | Stage 8: 1,200 | 98% | Drum material loop |
| **In** | 15 | 320 | Stage 4: 330 | 99.4% | YInMn loop |
| **Y** | 8 | 120 | Stage 8: 125 | 98% | 3Y-TZP / YInMn |
| **Nd** | 220 | 180 | Stage 7/8: 380 | 90% | Magnet loop (FOLLOW-15) |
| **Co** | 45 | 90 | Stage 7: 130 | 98% | Magnet/CoAl₂O₄ loop |
| **Cu** | 11,500 | 2,300 | Stage 6: 13,500 | 99% | Wire loop |
| **Al** | 6,000 | 1,200 | Stage 5: 7,000 | 97% | Commercial sale |
| **Fe** | 7,000 | 4,600 | Stage 7: 11,000 | 99% | Casting loop |
| **C (char)** | 4,000 | 1,800 | Stage 3: 5,500 | 95% | Adsorption/flux loop |
| **Basalt fiber** | 0 | 8,000 | Stage 3: 7,600 | 95% | BFRP loop |

**Closure Metric:** Σ(Recovered) / Σ(Input + Return) > 95% for all Tier 1 elements (Zr, In, Y, Nd, Co, Cu).

### 6.3 Reconciliation Protocol

**Daily Reconciliation (End of Shift):**
1. Forge SCADA exports batch mass balance (input → stage exits)
2. Depot WMS exports return intake (crates → disassembly output)
3. LIBS/XRF assay database exports composition data
4. Automated script compares: Σ(Input) + Σ(Return) = Σ(Outputs) ± 2%
5. Discrepancy >2% → Root cause investigation (hold affected batch)

**Monthly Audit:**
- Third-party assay of 5% random slugs (umbilical samples)
- Mass balance closure report to CSM Board
- Carbon credit verification (MgO carbonation tonnage)

---

## 7. Drum Material Circularity

### 7.1 ZrB₂-SiC Drum Life Cycle

```
NEW DRUM (Gen 1)
    │
    ├─→ 500 batches (90-min cycle each = 750 hr operation)
    │     └─→ FBG monitoring: wall thickness, thermal gradient, seal integrity
    │
    ├─→ End-of-Life Criteria:
    │     • Wall thinning >15% (ultrasonic)
    │     • Seal leak rate >10⁻⁶ mbar·L/s
    │     • FBG drift >±5°C uncorrectable
    │     • Crack detection (acoustic emission >threshold)
    │
    └─→ RETIREMENT → Phoenix Depot
          │
          ├─→ Crush → Ball Mill (3-5 μm)
          │
          ├─→ Hydrometallurgical Zr Recovery:
          │     H₂SO₄ leach (95°C, 4h) → Zr⁴⁺ in solution
          │     NH₄OH co-precipitation (with Y³⁺ from REE stream)
          │     → Zr-Y hydroxide gel → 120°C dry → 1200°C calcine (4h)
          │     → 3Y-TZP ZrO₂ powder (97% TD target)
          │
          ├─→ Carbothermal ZrB₂ Synthesis:
          │     ZrO₂ + B₂O₃ + 5C → ZrB₂ + 5CO (1800°C, 2h, Ar)
          │     OR SHS: Zr + 2B → ZrB₂ (1h, self-propagating)
          │
          └─→ Flash Sinter → NEW DRUM (Gen 2)
                (Same ZrB₂-SiC spec as PROD-04)
```

### 7.2 Drum Generation Mass Balance

| Generation | ZrB₂ Source | SiC Source | Yield | Cumulative Drums |
|------------|-------------|------------|-------|------------------|
| **Gen 1** | Commercial (external) | Commercial | 100% | 1 |
| **Gen 2-5** | Stage 8 ZrO₂ + Stage 3 B₂O₃/C | Stage 3 char | 99% | 5 |
| **Gen 6-15** | Stage 8 ZrO₂ (recycled) + Stage 3 B₂O₃/C | Stage 3 char + recycled drum crush | 98% | 15 |
| **Gen 16-31** | 100% recycled ZrB₂ + Stage 3 B₂O₃/C | 100% recycled SiC | 97% | 31 |

**Key Result:** 1 initial drum → 31 drum generations → 15,500 batches → 775,000 kg processed over facility lifetime. The Forge makes its own body from the waste it processes.

### 7.3 Quality Gates for Recycled Drum Material

| Parameter | Spec (Gen 1) | Spec (Gen 2+) | Test Method |
|-----------|--------------|---------------|-------------|
| **Density** | >5.9 g/cm³ | >5.85 g/cm³ | Archimedes |
| **B/Zr ratio** | 2.00±0.02 | 2.00±0.03 | ICP-OES |
| **Oxygen** | <0.5 wt% | <0.7 wt% | LECO |
| **Grain size** | 2-5 μm | 2-6 μm | SEM |
| **Flexural strength** | >450 MPa | >420 MPa | 4-pt bend |
| **Thermal shock** | 5 cycles 2200→25°C | 3 cycles | Quench test |

### 7.4 Drum Recycling Process Flow (Detailed)

```
RETIRED DRUM (500 batches)
         │
         ▼
Phoenix Depot Receiving
         │
         ▼
Non-Destructive Evaluation:
  • Ultrasonic wall thickness map (200 points)
  • FBG thermal history replay
  • Acoustic emission scan (crack map)
  • Helium leak test (all ports, seals)
         │
         ▼
Segregation Decision:
  ├─→ PRIME (wall >85%, no cracks) → Direct re-SPS (Gen +1)
  ├─→ STANDARD (wall 70-85%, minor cracks) → Crush → Hydromet (Gen +1)
  └─→ SCRAP (wall <70%, major cracks) → Crush → Hydromet (Gen +1, lower yield)
         │
         ▼ (for STANDARD/SCRAP)
Crushing Circuit:
  • Jaw crusher (50 mm) → Cone crusher (5 mm) → Ball mill (3-5 μm)
  • Argon atmosphere, -40°C dew point (prevent oxidation)
  • Throughput: 500 kg/hr per line
         │
         ▼
Hydrometallurgical Zr Recovery:
  • Reactor: BFRP/Elium®, 2000L, H₂SO₄ 2M, 95°C, 4h, stir 200 RPM
  • Leach efficiency: 96% Zr, 94% Y, 92% Si (reports to silica stream)
  • Solid residue: SiC (unleached) → filter → dry → SiC recycle stream
  • Filtrate: Zr⁴⁺, Y³⁺, Fe³⁺, Al³⁺, Ti⁴⁺ in solution
         │
         ▼
Selective Precipitation:
  1. pH 2.5 (NH₄OH): Fe³⁺, Al³⁺ → hydroxide (waste → Stage 7 slag)
  2. pH 5.5: Ti⁴⁺ → TiO₂·xH₂O (filter → Stage 8 TiO₂ stream)
  3. pH 8.0: Zr⁴⁺ + Y³⁺ → Zr-Y hydroxide gel (co-precipitate)
  4. pH 10.5: Residual REE → REE hydroxide (FOLLOW-15)
         │
         ▼
Gel Processing:
  • Filter press (BFRP plates, PEEK CF40 cloth) → 35% solids
  • Wash: 3× DI water (counter-current) → Cl⁻ <50 ppm, SO₄²⁻ <100 ppm
  • Dry: 120°C, 4h, N₂ atmosphere → free-flowing powder
  • Calcination: 1200°C, 4h, air → 3Y-TZP crystalline (97% theoretical)
         │
         ▼
Carbothermal ZrB₂ Synthesis (FOLLOW-32):
  • Mix: 3Y-TZP + B₂O₃ + 5C (molar 1:1:5) + 2% B₄C sintering aid
  • Press: 100 MPa → green density 55% TD
  • Furnace: Induction, 1800°C, 2h, Ar, graphite susceptor
  • Conversion: 98.5% → ZrB₂ + 5CO (gas captured → PROD-07)
  • Mill: 3-5 μm, narrow distribution (D90/D10 <2.5)
         │
         ▼
Flash Sintering (PROD-04 / FOLLOW-01):
  • 3Y-TZP + ZrB₂ composite → 1800°C, 300 V/cm, 5 min
  • 97% TD, 0.5 μm grain, ZrB₂ percolation network
  • Result: NEW DRUM (Gen N+1)
```

### 7.5 Drum Recycling Energy & Emissions

| Process Step | Energy (kWh/kg ZrB₂) | CO₂e (kg/kg) | Notes |
|--------------|---------------------|--------------|-------|
| Crushing & milling | 8 | 0.5 | Argon atmosphere |
| H₂SO₄ leach (95°C, 4h) | 12 | 0.8 | Steam heat recovery 60% |
| Precipitation & wash | 3 | 0.2 | Counter-current water |
| Calcination (1200°C, 4h) | 25 | 1.5 | NG-fired, 85% efficiency |
| Carbothermal (1800°C, 2h) | 45 | 2.8 | Induction, Ar, CO capture |
| Flash sinter (1800°C, 5 min) | 18 | 1.1 | 300 V/cm, 5 min |
| **TOTAL** | **111 kWh/kg** | **6.9 kg CO₂e/kg** | **vs. 280 kWh/kg virgin** |

**Carbon Advantage:** Recycled drum ZrB₂ = 6.9 kg CO₂e/kg vs. virgin 45 kg CO₂e/kg → **85% reduction**. At 500 kg/drum × 31 generations = 15,500 kg ZrB₂ saved per initial drum = **590 tCO₂e avoided per drum lineage**.

---

## 8. EMI Shielding Circularity (Ti₃AlC₂ MAX Phase)

### 8.1 MAX Phase Life Cycle

```
NEW Ti₃AlC₂ SHIELD (Gen 1)
    │
    ├─→ Product service life (10-20 yr typical)
    │
    ├─→ RETURN → Phoenix Depot
    │
    ├─→ Crush → Chloride-Thermal Extraction:
    │     Ti₃AlC₂ + 6Cl₂ → 3TiCl₄ + AlCl₃ + 2C (800°C, Cl₂)
    │     TiCl₄ purified → TiO₂ (hydrolysis) → Ti powder (Mg reduction)
    │     AlCl₃ → Al metal (electrolysis)
    │
    ├─→ Re-synthesis:
    │     3TiO₂ + Al₂O₃ + 14C → Ti₃AlC₂ + 11CO (1500°C, 4h, Ar)
    │     OR direct: 3Ti + Al + 2C → Ti₃AlC₂ (SHS, 1h)
    │
    └─→ NEW Ti₃AlC₂ SHIELD (Gen 2)
          (Same spec as PROD-09 actuators, PROD-36 EMI)
```

### 8.2 MAX Phase Circularity Metrics

| Metric | Target |
|--------|--------|
| **Ti recovery** | >95% |
| **Al recovery** | >90% |
| **C retention** | >85% (makeup from Stage 3 char) |
| **Synthesis cycles before property drift** | 20 generations |
| **Cost per kg recycled** | $45/kg vs. $280/kg virgin |

### 8.3 Alternative: Direct MAX Phase Recycling

For minor damage (surface wear, thermal cycling fatigue):

```
Ti₃AlC₂ shield (worn)
         │
         ▼
Surface grind (0.5 mm removal) → Clean
         │
         ▼
Spark Plasma Sintering (SPS) Repair:
  • 1300°C, 50 MPa, 5 min, pulsed DC
  • Fills surface cracks, restores density
  • No composition change
         │
         ▼
Re-certify:
  • EMI shielding >80 dB (10 MHz-10 GHz)
  • Thermal conductivity >45 W/m·K
  • Flexural strength >300 MPa
         │
         ▼
RETURN TO SERVICE (Gen N, Life +50%)
```

---

## 9. Product Refurbishment Paths

### 9.1 Direct Re-Use Streams (No Reprocessing)

| Component | Re-Use Path | Qualification | Volume |
|-----------|-------------|---------------|--------|
| **PEEK CF40 hardware** | Ultrasonic clean → dimensional inspect → re-use | Thread gauge, hardness, UT | 80% of hardware |
| **ZrO₂ ceramic bearings** | Clean → surface inspect → re-use | Roundness, roughness, load test | 90% of bearings |
| **Ti₃AlC₂ EMI shields** | Clean → EMI test → re-use | Shielding effectiveness >80 dB | 85% of shields |
| **PMMA POF cables** | Clean → OTDR test → re-use | Attenuation <0.5 dB/m | 70% of cables |
| **Cu wire harnesses** | Strip → continuity test → re-use | Resistance, insulation | 60% of harnesses |

### 9.2 Refurbishment Requiring Reprocessing

| Material | Reprocessing | Output | Volume |
|----------|--------------|--------|--------|
| **3Y-TZP ZrO₂ parts** | Re-grind → re-SPS (1300°C, 5 min) | New ZrO₂ parts | 100% of ceramics |
| **CoAl₂O₄ pigment** | Acid dissolve → re-precipitate | Fresh pigment | 98% recovery |
| **KNbO₃-BaTiO₃ piezos** | HNO₃ dissolve → co-precipitate | New piezos | 97% recovery |
| **LiFePO₄ cells** | Hydromet → LFP precursor | New cathode powder | 92% Li, 95% Fe/P |
| **BFRP panels** | Thermal solvolysis → fiber/monomer | New BFRP | 95% fiber, 100% monomer |

### 9.3 Refurbishment Economics

| Refurb Type | Cost/Unit | Virgin Cost/Unit | Savings | Payback |
|-------------|-----------|------------------|---------|---------|
| PEEK hardware | $8 | $45 | 82% | Immediate |
| ZrO₂ bearings | $12 | $85 | 86% | Immediate |
| Ti₃AlC₂ shields | $18 | $120 | 85% | Immediate |
| POF cables | $0.15/m | $0.45/m | 67% | Immediate |
| Cu harnesses | $2.50/m | $8/m | 69% | Immediate |
| 3Y-TZP parts | $22/kg | $140/kg | 84% | 1 batch |
| CoAl₂O₄ pigment | $35/kg | $100/kg | 65% | 1 batch |
| KNbO₃ piezos | $45/kg | $250/kg | 82% | 1 batch |
| LiFePO₄ cathode | $0.70/Wh | $0.85/Wh | 18% | 2 batches |
| BFRP panels | $12/m² | $45/m² | 73% | 1 batch |

---

## 10. Data & Digital Twin Integration

### 10.1 Product Passport Data Model

```json
{
  "product_uuid": "CSM-108-EMBARK-WALL-001-2026-03-15",
  "manufacture": {
    "forge_batch": "FB-2026-11-02-08",
    "stages": ["0","1","2","3","4","5","6","7","8"],
    "material_lots": {
      "ZrB2-SiC": "LOT-ZR-2026-10-15-GEN-03",
      "Elium": "LOT-EL-2026-10-10-BATCH-42",
      "Basalt": "LOT-BA-2026-09-20-FIELD-07",
      "YInMn": "LOT-YM-2026-10-05-IN-003"
    },
    "energy_kwh": 412,
    "co2e_kg": -115
  },
  "deployment": {
    "site": "CSM-DEPLOY-NE-04",
    "install_date": "2026-04-01",
    "service_hours": 43800
  },
  "return": {
    "trigger": "upgrade_swap",
    "depot": "PHX-PRIMARY-NA-01",
    "disassembly_date": "2031-04-15",
    "reentry_forge_batch": "FB-2031-04-20-03"
  }
}
```

### 10.2 Blockchain Anchoring

- **Ledger**: Private Hyperledger Fabric (CSM consortium nodes)
- **Anchor Frequency**: Every Forge batch (50 kg) → 1 transaction
- **Data Stored**: Merkle root of batch material balance, UUID chain, LIBS spectra hashes
- **Verification**: Any downstream party can verify provenance without exposing full dataset
- **Smart Contracts**: Automated carbon credit issuance (MgO carbonation), warranty validation

### 10.3 Digital Twin Synchronization

| Twin Layer | Update Rate | Data Source | Use Case |
|------------|-------------|-------------|----------|
| **Forge Process Twin** | 1 kHz | FBG, POF, mass spec, XRF | Real-time control (PROD-23) |
| **Batch Material Twin** | Per batch | LIBS, weigh scale, assay | Mass balance closure, quality |
| **Product Fleet Twin** | Per return | Depot LIBS, disassembly log | Re-entry planning, blend optimization |
| **Facility Twin** | 1 Hz | SCADA, energy meter, emissions | Energy optimization, predictive maintenance |

### 10.4 Data Governance

| Policy | Implementation |
|--------|----------------|
| **Data Ownership** | CSM owns all material/process data; customer owns deployment data |
| **Access Control** | Role-based: Operator (real-time), Engineer (historical), Auditor (immutable) |
| **Retention** | Process data: 7 yr; Material genealogy: 50 yr (product liability); Blockchain: permanent |
| **Privacy** | No PII in material tracking; deployment location hashed (geohash precision 1 km) |
| **Interoperability** | OPC-UA companion spec for CSMFAB; ISO 20242 (Digital Twin) alignment |

---

## 11. Economic Model

### 11.1 Phoenix Protocol Revenue Streams (Per 50 kg EOL Batch)

| Stream | Mass | Price/kg | Revenue |
|--------|------|----------|---------|
| **Indium (99.9%)** | 6.4 g | $350/kg | $2.24 |
| **Yttrium (YSZ grade)** | 2.4 g | $45/kg | $0.11 |
| **Cobalt (99.9%)** | 1.8 g | $40/kg | $0.07 |
| **ZrO₂ (3Y-TZP)** | 24 g | $32/kg | $0.77 |
| **Cu (cathode grade)** | 460 g | $9/kg | $4.14 |
| **Al (secondary)** | 240 g | $1.80/kg | $0.43 |
| **Fe (casting grade)** | 920 g | $0.45/kg | $0.41 |
| **Basalt fiber** | 160 g | $4.50/kg | $0.72 |
| **Elium® monomer** | 360 g | $5/kg | $1.80 |
| **Carbon (activated)** | 80 g | $1/kg | $0.08 |
| **Precious metals (Au/Ag/Pd)** | Trace | Market | $15.00 |
| **Carbon credit (MgO carbonation)** | 12 kg CO₂e | $50/tCO₂e | $0.60 |
| **TOTAL** | — | — | **$26.37 / 50 kg EOL** |

### 11.2 Depot & Logistics Costs (Per 50 kg EOL Batch)

| Cost Item | Cost |
|-----------|------|
| Transport (avg 500 km) | $3.50 |
| Disassembly (automated) | $4.20 |
| Solvolysis energy | $2.80 |
| Hydromet processing | $6.50 |
| Labor (depot + Forge) | $5.00 |
| Consumables (acids, Ar, etc.) | $3.00 |
| QA/Testing (LIBS, XRD) | $1.50 |
| **TOTAL** | **$26.50 / 50 kg EOL** |

### 11.3 Net Economics & Scale Effects

| Scale | Batches/Day | Net/Batch | Daily Net | Annual Net |
|-------|-------------|-----------|-----------|------------|
| **Phase 1 (1 Forge)** | 8 | -$0.13 | -$1.04 | -$260 (loss leader) |
| **Phase 2 (3 Forges)** | 24 | $2.10 | $50.40 | $12,600 |
| **Phase 3 (10 Forges)** | 80 | $8.50 | $680 | $170,000 |
| **Full Network (50 Forges)** | 400 | $18.20 | $7,280 | $1.82M |

**Key Insight:** Phoenix Protocol is a **loss leader at Phase 1** (subsidized by virgin e-waste PM revenue). Break-even at ~2.5 Forges. Profitability scales with network density (transport cost reduction) and depot automation.

### 11.4 Capital Investment & Payback

| Investment | Cost | Annual Savings | Payback |
|------------|------|----------------|---------|
| Primary Depot (×3) | $2.4M | $286K/day × 3 × 250 = $214.5M | 4 days |
| Secondary Depot (×12) | $1.8M | $28K/day × 12 × 250 = $84M | 8 days |
| Automated Disassembly (×15) | $4.5M | Included above | — |
| Solvolysis Reactors (×15) | $1.2M | Included above | — |
| Ionic Liquid Skid (×3) | $195K | Enables In/Y recovery | 2 months |
| **Total Phase 1-2** | **$10.1M** | **$298.5M/yr** | **<2 weeks** |

### 11.5 Sensitivity to Virgin Feedstock Price

| E-Waste Gate Fee ($/ton) | Virgin Blend | Net/Batch (Phase 3) | Annual Net (10 Forges) |
|--------------------------|--------------|---------------------|------------------------|
| $0 (free) | 60% | $8.50 | $170K |
| $50/ton | 60% | $11.00 | $220K |
| $100/ton | 60% | $13.50 | $270K |
| $0 (free) | 40% | $12.00 | $240K |
| $50/ton | 40% | $14.50 | $290K |
| $100/ton | 40% | $17.00 | $340K |

**Key Finding:** Higher gate fees incentivize higher EOL blend ratios, which increase recovery of high-value In/Y/Co from known-composition Aegis products. The Forge becomes MORE profitable as waste disposal costs rise.

### 11.6 Carbon Credit Revenue Detail

| Sequestration Mechanism | tCO₂e/ton EOL | Price ($/t) | Revenue ($/ton) |
|-------------------------|---------------|-------------|-----------------|
| **MgO Carbonation** (Stage 7 slag) | 0.85 | $50 | $42.50 |
| **Avoided Primary Zr** | 1.2 | $50 | $60.00 |
| **Avoided Primary In** | 0.35 | $50 | $17.50 |
| **Avoided Primary REE** | 0.18 | $50 | $9.00 |
| **Avoided Primary Cu** | 0.12 | $50 | $6.00 |
| **Biogenic Carbon (Basalt)** | 0.05 | $50 | $2.50 |
| **TOTAL** | **2.75** | — | **$137.50** |

**Net Carbon Position:** -2.3 tCO₂e/ton EOL processed (including transport, energy). At 50 Forges × 400 batches/day × 50 kg × 250 days = 250,000 ton/yr EOL → **575,000 tCO₂e/yr sequestered** = **$28.75M/yr carbon revenue** at $50/t.

---

## 12. Safety & Compliance

### 12.1 Hazardous Material Handling

| Hazard | Source | Mitigation | Regulatory |
|--------|--------|------------|------------|
| **LiFePO₄ thermal runaway** | Battery packs | Discharge to 0V, fire-suppression vault | UN 3480, IATA DGR |
| **HF from MAX Phase** | Ti₃AlC₂ chloride-thermal | Scrubber (Ca(OH)₂), PPE, containment | OSHA 1910.119 |
| **H₂SO₄/HNO₃ leach** | Hydromet circuits | Double-walled piping, leak detection | EPA 40 CFR 264 |
| **Ionic liquid [P₈₈₈₈][Cl]** | In extraction | Closed system, <1 ppm vapor | REACH registered |
| **As/Sb/Bi hydrides** | E-waste Stage 6 | Chemisorption (Cu-carbon), MS monitoring | PROD-07 Train B |

### 12.2 Transport Compliance

| Material | UN Class | Packaging | Labeling |
|----------|----------|-----------|----------|
| LiFePO₄ packs | 9 | BFRP crate, 30% SoC max | Class 9, Lithium Battery |
| ZrB₂-SiC ceramic | None (non-haz) | BFRP crate | None |
| Elium® monomer | 3 | UN 1866, IBC tote | Flammable Liquid |
| Acid solutions | 8 | HDPE carboy, secondary containment | Corrosive |

### 12.3 Facility Permitting

- **Air**: Title V permit (PM₂.₅, VOC, HCl, HF, NOₓ limits per PROD-07)
- **Water**: NPDES (zero process discharge — closed-loop water)
- **Waste**: RCRA Part B (hazardous waste treatment — hydromet circuits)
- **Seismic**: IBC 2024, Site Class C (PROD-25/FOLLOW-25)
- **Fire**: NFPA 69 (explosion prevention — H₂/N₂ atmospheres)

---

## 13. Cross-Reference Matrix

| Section | Upstream Dependencies | Downstream Dependencies |
|---------|----------------------|------------------------|
| 1. Overview | PROD-01 (Architecture) | PROD-31 (Economics), PROD-39 (T&E) |
| 2. Logistics | PROD-13 (Feedstock), PROD-11 (Shredding) | PROD-29 (Deployment), PROD-33 (Supply Chain) |
| 3. Categorization | PROD-13 (Cat A-D), PROD-08 (Output Catalog) | PROD-14-21 (Stage re-entry) |
| 4. Preprocessing | PROD-05 (AMLS), PROD-07 (Gas), PROD-16 (Char) | FOLLOW-05 (BFRP winding), FOLLOW-18 (Char activation) |
| 5. Re-Entry | PROD-02 (Cascade), PROD-14-21 (Stages 0-8) | PROD-22 (Self), FOLLOW-14,15,19,20,32 |
| 6. Mass Balance | PROD-02 (Cascade mass balance), PROD-13 | PROD-31 (Economics), PROD-37 (Digital Twin) |
| 7. Drum Circularity | PROD-04 (Drum), PROD-21 (Stage 8), FOLLOW-01,32 | PROD-04 (Next gen), FOLLOW-01 |
| 8. EMI Circularity | PROD-09 (Port valves), PROD-36 (Security) | FOLLOW-04, 32 |
| 9. Refurbishment | PROD-12 (BOM), PROD-08 (Output catalog) | PROD-29 (Operations), PROD-30 (Maintenance) |
| 10. Digital Twin | PROD-23 (Control), PROD-37 (Data Mgmt) | PROD-37 (Digital Twin), FOLLOW-29 (ML) |
| 11. Economics | PROD-31 (Economic Analysis) | PROD-31, PROD-39 (Viability) |
| 12. Safety | PROD-07 (Gas), PROD-26 (GIC), PROD-32 (Compliance) | PROD-26, PROD-32, PROD-39 |

### 13.1 Detailed Interface Specifications

| Interface | From | To | Data Exchanged | Frequency | Protocol |
|-----------|------|----|----------------|-----------|----------|
| **Depot→Forge** | Phoenix Depot WMS | Forge SCADA | Crate manifest, LIBS assay, mass, UUID | Per crate | OPC-UA over TSN |
| **Forge→Depot** | Forge SCADA | Phoenix Depot WMS | Re-entry spec updates, blend targets | Per batch | OPC-UA over TSN |
| **Forge→Hydromet** | Stage 8/7 output | FOLLOW-15/32 | Slug UUID, composition, mass | Per slug | MQTT + Data Matrix |
| **Hydromet→Forge** | FOLLOW-15/32 | Forge SCADA | Precursor quality, yield, lot ID | Per batch | OPC-UA |
| **Product→Depot** | Field (IoT) | Phoenix Depot | Health data, service hours, degradation | Continuous | LoRaWAN → Gateway → MQTT |
| **Digital Twin** | All layers | PROD-37 | Full state sync | 1 Hz (facility), 1 kHz (process) | gRPC + Kafka |

---

## Appendix A: Phoenix Protocol Quick-Reference Card

```
PHOENIX PROTOCOL — FIELD REFERENCE
==================================

COLLECTION TRIGGERS:
  □ Warranty return (5 yr) → 100% deposit + $50
  □ Upgrade swap → Trade-in credit
  □ Decommissioning → Contract scrap + carbon
  □ Voluntary drop-off → $25 credit

DEPOT DISASSEMBLY (15 min):
  1. Electronics extract → Stage 0
  2. PEEK/ZrO₂ hardware → ultrasonic → re-use
  3. BFRP panels → solvolysis 350°C/2h → monomer + fiber
  4. Ceramic cores → crush → hydromet → 3Y-TZP
  5. Glazes → acid leach → ionic liquid (In) / electroplate (Co)
  6. Fluids/batteries → drain → certify / hydromet

RE-ENTRY BLEND (50 kg batch):
  Virgin e-waste:        50-70%
  EOL Aegis products:    20-30%
  BFRP structural:        5-10%
  Ceramic cores:          3-8%
  Mineral fractions:      2-5%
  Electronics:            5-10%
  Energy storage:         1-3%

DRUM CIRCULARITY:
  Gen 1: Commercial ZrB₂-SiC
  Gen 2-5: Stage 8 ZrO₂ + Stage 3 B/C (99%)
  Gen 6-15: Recycled ZrB₂ + Stage 3 (98%)
  Gen 16-31: 100% recycled (97%)
  1 drum → 31 generations → 15,500 batches

MAX PHASE CIRCULARITY:
  Ti₃AlC₂ → Cl₂ extraction → re-synth → 20 gen life

DIGITAL TWIN UUID:
  CSM-<Source>-<Batch>-<Stage>-<Port>-<Product>-<Cycle>

ECONOMICS (Phase 3+):
  Revenue:  $26.37 / 50 kg EOL
  Cost:     $26.50 / 50 kg EOL (Phase 1)
  Net:      Break-even at 2.5 Forges
  Scale:    $18.20 net at 50 Forges

EMERGENCY:
  HF release → Ca(OH)₂ fog, evacuate 100m
  Li-ion fire → Class D, isolate vault
  H₂ leak → Auto N₂ purge, ignition suppress
```

---

## Appendix B: Re-Entry Specification Sheets (Per Category)

### B.1 Category D1 — Intact Aegis Products
- **Max dimension**: 1200×800×600 mm (crate limit)
- **Max mass**: 500 kg/crate
- **Battery state**: <30% SoC (auto-discharge at depot)
- **Documentation**: Product passport QR on crate
- **Re-entry**: Full disassembly → component sort

### B.2 Category D2 — Structural BFRP
- **Format**: Panels, beams, profiles (any geometry)
- **Contamination**: <1% metal fasteners (removed pre-solvolysis)
- **Moisture**: <2% (oven dry if needed)
- **Re-entry**: Stage 3 feed (carbon) + FOLLOW-05 (fiber)

### B.3 Category D3 — Ceramic Cores
- **Size**: Crushed 3-5 μm (ball mill at depot)
- **Purity**: >90% ZrB₂-SiC / ZrO₂ / Si₃N₄
- **Surface**: Clean, no organic residue
- **Re-entry**: Stage 8 (Zr) or hydromet direct

### B.4 Category D4 — Mineral Fractions
- **In/Y/Co concentrates**: >50% target element
- **Particle size**: <100 μm
- **Acid consumption**: Pre-measured, <200 kg acid/ton
- **Re-entry**: Stage 4 (In), Stage 8 (Y, Zr), Stage 7 (Co)

### B.5 Category D5 — Electronic Assemblies
- **PCB types**: FR4, CEM-1, polyimide flex, ceramic substrate
- **Component density**: <500 components/board (else pre-sort)
- **Battery-free**: Certified by depot discharge station
- **Re-entry**: Stage 0 AMLS liberation → Stage 2 polymer → Stage 6 Cu/PM

### B.6 Category D6 — Energy Storage
- **Chemistry**: LiFePO₄ only (CSM standard)
- **Format**: 18650, 21700, prismatic, pouch
- **SoC on arrival**: <30% (enforced at Tertiary hub)
- **Re-entry**: Full discharge → hydromet (FOLLOW-34 grid storage integration)

### B.7 Category D7 — MAX Phase Components
- **Geometry**: Shields, bearings, heating elements
- **Surface condition**: <50 μm wear depth (else recycle)
- **Contamination**: No braze alloys, no dissimilar metal joints
- **Re-entry**: Chloride-thermal extraction → re-synthesis (Section 8)

---

## Appendix C: Phoenix Protocol Economic Sensitivity Analysis

| Variable | Base Case | -20% | +20% | Impact on Net/Batch |
|----------|-----------|------|------|---------------------|
| **Indium price** | $350/kg | $280 | $420 | ±$1.28 |
| **Transport distance** | 500 km | 400 km | 600 km | ±$0.70 |
| **Solvolysis energy** | 180 kWh | 144 kWh | 216 kWh | ±$0.72 |
| **Hydromet recovery** | 98% In | 95% | 99% | ±$0.70 |
| **Carbon credit price** | $50/t | $30 | $80 | ±$0.36 |
| **Depot automation** | 15 min | 12 min | 20 min | ±$0.75 |
| **Virgin blend ratio** | 60% | 40% | 80% | ±$2.10 |

**Most Sensitive:** Virgin blend ratio (controls PM revenue), Indium price, Depot automation.
**Least Sensitive:** Carbon credit price, Transport distance (within regional hub model).

---

## Appendix D: Protocol Version History

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0 | Nov 2026 | Kilo Agent | Initial release — complete Protocol spec |
| 1.1 | TBD | — | Depot automation upgrade (AI vision) |
| 1.2 | TBD | — | MAX Phase direct recycle path added |
| 2.0 | TBD | — | Multi-Forge fleet orchestration |

---

*End of CSMFAB000000000122 — PROD-22 Phoenix Protocol Integration*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*