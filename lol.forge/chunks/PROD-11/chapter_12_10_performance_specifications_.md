## 10. Performance Specifications — 10-Parameter Acceptance Table

### 10.1 Guaranteed Performance Parameters

| # | Parameter | Symbol | Guaranteed Value | Test Condition | Acceptance Method |
|---|-----------|--------|------------------|----------------|-------------------|
| 1 | **Throughput (continuous)** | ṁ | ≥500 kg/hr | Blended feed (A:20%, B:40%, C:25%, D:15%) | 8-hr run, weigh belt totalizer |
| 2 | **Maximum particle size** | x_max | ≤150 mm (100% passing) | All categories | Online sieve (150 mm), zero retention |
| 3 | **P80 particle size** | x₈₀ | 65-85 mm | Blended feed | Sieve analysis, Rosin-Rammler fit |
| 4 | **Rosin-Rammler spread** | n | 1.2-1.5 | Blended feed | Sieve analysis, 6 fractions, R²>0.98 |
| 5 | **Ferrous removal efficiency** | η_Fe | ≥95% (>10 mm), ≥80% (5-10 mm) | Category B feed | Magnetic susceptibility balance |
| 6 | **Non-ferrous carryover** | η_NF | ≤2% mass in ferrous stream | Category B feed | XRF analysis of ferrous fraction |
| 7 | **Specific energy consumption** | E_sp | ≤1.5 kWh/ton | Blended feed, steady state | kWh meter / weigh belt totalizer |
| 8 | **Moisture gate accuracy** | ΔM | ±1% (0-30%), ±2% (30-50%) | Calibrated samples | Gravimetric reference (105°C, 24h) |
| 9 | **Pre-dry energy** | E_dry | ≤1.2 kWh/kg H₂O removed | >25% moisture feed | Energy meter / moisture loss |
| 10 | **Availability (MTBF/MTTR)** | A | ≥95% (MTBF>2000 hr, MTTR<4 hr) | 1-year operation | CMMS logs, OEE calculation |

### 10.2 Derived Performance Metrics

| Metric | Value | Basis |
|--------|-------|-------|
| **Annual throughput (8,000 hr/yr)** | 4,000 ton/yr | 500 kg/hr × 8,000 hr |
| **Blade changes per year** | 8 sets (256 blades) | 4,000 ton / 500 ton |
| **Liner changes per year** | 2 sets (24 segments) | 4,000 ton / 2,000 ton |
| **N2 consumption (inerting)** | 400,000 m³/yr | 50 m³/hr × 8,000 hr |
| **N2 consumption (pre-dry)** | 20,000 m³/yr | 50 m³/hr × 400 hr (surge) |
| **Electricity (shredder motor)** | 120,000 kWh/yr | 15 kW × 8,000 hr |
| **Electricity (pre-dry)** | 144,000 kWh/yr | 25 kW × 400 hr + 15 kW × 300 hr |
| **Total energy/ton** | 66 kWh/ton | (120+144)MWh / 4,000 ton |

### 10.3 Performance by Feedstock Category

| Category | Throughput (kg/hr) | x₈₀ (mm) | n | E_sp (kWh/t) | Blade Wear (mm³/ton) |
|----------|-------------------|----------|---|--------------|---------------------|
| A (Electronics) | 450 | 50 | 1.4 | 1.2 | 0.85 |
| B (Structural Metals) | 550 | 80 | 1.3 | 1.8 | 1.15 |
| C (Minerals) | 600 | 70 | 1.2 | 1.0 | 1.45 |
| D (Phoenix) | 400 | 45 | 1.5 | 2.2 | 2.10 |
| **Blended (design)** | **500** | **75** | **1.3** | **1.5** | **1.05** |

### 10.4 Acceptance Test Protocol (FAT/SAT)

**Factory Acceptance Test (FAT) — at manufacturer:**
1. No-load run: 4 hours at 150 RPM, vibration <1 mm/s, bearing temp <60°C
2. Load test: 500 kg/hr Category B simulant (steel/Al mix), 2 hours
3. Particle size: 5 sieve samples, Rosin-Rammler fit R²>0.98
4. Ferrous separation: 100 kg test batch, magnetic balance >95%
5. Jam test: Introduce 200 mm steel bar → shear pin fracture <50 ms
6. Fire test: Propane flare in chamber → N2 inerting <10 sec, O2<5%
7. E-stop test: 10 actuations, all safety functions verified
8. Dielectric test: 5 kV DC insulation resistance >1 GΩ (all circuits)

**Site Acceptance Test (SAT) — at installation:**
1. Integration with drum feed gate: 10 batch cycles, zero misfeeds
2. Moisture gate: 20 test samples (5-40%), accuracy ±1%
3. Dust emissions: PM2.5 <1 mg/m³ at exhaust (HEPA verified)
4. Noise: <85 dBA at 1 m (operator station)
5. Vibration transmission to foundation: <0.5 mm/s RMS
6. Control system integration: All PMMA POF links verified, latency <1 ms

### 10.5 Performance Envelope — Operating Limits

| Limit | Minimum | Maximum | Consequence of Exceedance |
|-------|---------|---------|---------------------------|
| Feed rate | 100 kg/hr | 600 kg/hr (surge) | <100: motor efficiency drops; >600: jam risk |
| Particle size (infeed) | — | 300 mm (pre-crushed) | >300 mm: primary crusher required |
| Moisture (infeed) | 0% | 40% (with pre-dry) | >40%: pre-dry capacity exceeded |
| Rotor speed | 80 RPM | 150 RPM | <80: poor liberation; >150: bearing life |
| Blade wear (tip radius) | 0 mm | 8 mm | >8 mm: P80 shifts >100 mm |
| Liner thickness | 12 mm | 4 mm (replace) | <4 mm: rotor contact risk |
| Bearing vibration | 0 | 4 mm/s (1×RPM) | >4 mm/s: bearing replacement |
| O2 in chambers | 0% | 8% | >8%: explosion risk (organics) |

---
