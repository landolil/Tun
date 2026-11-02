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
