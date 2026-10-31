## 8. Full Machine Specifications — Summary

### 8.1 Aegis-Forge I Technical Specifications

| Parameter | Value | Notes |
|---|---|---|
| **Drum working diameter** | 600 mm | ZrB₂-SiC composite |
| **Drum working length** | 800 mm | 3 liner zones |
| **Drum working volume** | 226 liters | ~226 L charge capacity |
| **Maximum batch size** | 80 kg | Assumes ~65% fill factor |
| **Typical batch size** | 50 kg | PCB-rich e-waste |
| **Cycle time (full thermal cascade)** | 3.5-5 hours | Stage-dependent dwell |
| **Daily throughput (8 batches)** | 400 kg/day | 12-hr operating day |
| **Annual throughput (250 days)** | 100 metric tons/year | Single machine |
| **Maximum drum temperature** | 2400°C | Stage 8 mineral dissociation |
| **Maximum drum pressure** | 5 bar (design); 2.5 bar (operating) | N₂ atmosphere |
| **Drum rotational speed** | 0-500 RPM variable | KNbO₃-BaTiO₃ piezo motor |
| **Maximum centrifugal force** | 84.5 G at 500 RPM | r = 0.3m |
| **Induction total installed power** | 500 kW (8 × 62.5 kW zones) | 3-phase 480V |
| **Acoustic pre-processor power** | 8 kW LF + 4 kW ultrasonic | Stage 0 AMLS |
| **Gas treatment N₂ loop** | Closed-loop, 2-3 kg/cycle makeup | GFGS subsystem |
| **Machine external dimensions** | 2.2 m (L) × 1.4 m (W) × 1.8 m (H) | Excluding conveyors |
| **Total machine mass** | ~850 kg | Mostly ceramic/composite |
| **Operating electrical supply** | 3-phase 480V, 600 A service | Industrial |
| **Cooling water requirement** | 15 L/min, 10°C supply | PEX-a circuit |
| **Control system** | PMMA POF + FBG + KNbO₃-BaTiO₃ DSP | All-optical, GIC immune |

### 8.2 Slug Cooling Station Specifications

| Parameter | Value | Notes |
|---|---|---|
| **Carousel positions** | 16 (4 per active metal port) | 4 ports × 4 molds |
| **Carousel disc material** | BFRP/Elium® filament wound | Non-conductive |
| **Carousel bushing** | PEEK CF40 | Self-lubricating |
| **Drive motor** | KNbO₃-BaTiO₃ ultrasonic piezo | 0.1° precision |
| **Index time** | 2.5 seconds (22.5° step) | 40s full rotation |
| **Positional accuracy** | ±0.05° (FBG verified) | Optical + FBG cross-check |
| **Mold material** | 3Y-TZP ZrO₂ ceramic | Non-wetting, >1200°C |
| **Mold cavity (std)** | 100 × 50 × 40 mm = 200 cm³ | Interchangeable inserts |
| **Max slug mass per mold** | 2.5 kg (Al), 5.4 kg (Cu), 4.7 kg (Fe) | Density-dependent |
| **N₂ quench supply** | 5 bar, 20°C, closed-loop | GFGS Train A |
| **Nozzle type** | ZrO₂ convergent-divergent | 2mm throat, 15° div |
| **Cooling rate range** | 10-200°C/min | Metal-dependent |
| **Solidification time** | 6-8 minutes per slug | Chvorinov + control |
| **Cycle time per position** | 8 minutes | Fill + cool + demold |
| **Throughput per port** | 7.5 slugs/hour | 4 molds × 8 min |
| **Demold ejector** | 4 × PEEK CF40 pins, piezo-actuated | 500 N per pin |
| **Conveyor belt** | BFRP/Elium® 200mm wide | ZrO₂ rollers |

### 8.3 LIBS Analysis Station Specifications

| Parameter | Value | Notes |
|---|---|---|
| **Laser** | Nd:YAG, 1064 nm, Q-switched | 5 mJ, 5 ns, 10 Hz |
| **Spot diameter** | 100 μm | ZrO₂ lens f=50mm |
| **Power density** | 6.4 GW/cm² | Above breakdown |
| **Spectrometer** | Echelle + ICCD (KNbO₃-BaTiO₃) | 200-980 nm |
| **Spectral resolution** | 0.05 nm (FWHM) | |
| **Detector gating** | 1 μs delay, 10 μs width | Continuum rejection |
| **Acquisition time** | 2 seconds per slug | 10 pulses averaged |
| **Elements detectable** | 70+ (all metals, C, Si, S, P, B, REE) | |
| **Detection limits** | 1-50 ppm (metals), 100-500 ppm (light) | Matrix dependent |
| **Precision (RSD)** | <2% major, <5% minor, <10% trace | CF-LIBS corrected |
| **Grade assignment** | FPGA real-time (<100 ms) | 3-way routing |
| **Calibration** | Calibration-free LIBS (CF-LIBS) | No standards needed |

### 8.4 Stamp & Traceability Specifications

| Parameter | Value | Notes |
|---|---|---|
| **Stamp material** | 3Y-TZP ZrO₂ ceramic | Survives 1600°C |
| **Character depth** | 0.3 mm | Laser-etched face |
| **Character size** | 3mm × 2mm (5×7 dot matrix) | 40 character set |
| **Actuation** | KNbO₃-BaTiO₃ piezo stack | 50μm stroke, 2 kN |
| **Stamp cycle** | 0.8 seconds | Extend, dwell, retract |
| **Alignment accuracy** | ±0.02 mm (FBG guided) | |
| **Data Matrix** | ECC200, 18×18 modules, 4mm² | ISO/IEC 16022 |
| **RFID (optional)** | Passive UHF, ZrO₂ encapsulated | Survives 1600°C |
| **Database** | SQLite (local) + PostgreSQL (MES) | Air-gap tolerant |

### 8.5 Production Cost Per Machine (Small Batch: 5-Unit Run)

| Assembly Group | Material Cost | Labor Cost | Total |
|---|---|---|---|
| ZrB₂-SiC Drum (flash sintered) | $18,500 | $6,200 | $24,700 |
| BFRP Pressure Vessel (filament wound) | $4,200 | $3,800 | $8,000 |
| Aerogel Insulation Gap Fill | $1,800 | $400 | $2,200 |
| 8-Zone Induction Coil Bank | $28,000 | $8,500 | $36,500 |
| GaN Induction Inverter Electronics | $35,000 | $4,200 | $39,200 |
| AMLS Acoustic Pre-Processor | $8,500 | $2,800 | $11,300 |
| Gas Capture System (Trains A-E) | $22,000 | $9,500 | $31,500 |
| Slug Carousel Mold System | $6,500 | $3,200 | $9,700 |
| PEEK CF40 Drive Assembly | $12,000 | $4,800 | $16,800 |
| ZrO₂ Bearing and Seal Package | $5,500 | $2,000 | $7,500 |
| PMMA POF Control System | $4,800 | $3,500 | $8,300 |
| BFRP Frame and Conveyor | $3,500 | $2,800 | $6,300 |
| Plasma Torch Unit | $8,000 | $2,200 | $10,200 |
| Assembly, Testing, Commissioning | $0 | $18,000 | $18,000 |
| **TOTAL** | **$158,300** | **$71,900** | **$230,200** |

**Prototype (1 unit):** ~$385,000 (3× multiplier for NRE + tooling)
**Small batch (5 units):** ~$230,200 each
**Production volume (50+ units):** ~$148,000 each
**MSRP (production volume):** $220,000–$280,000 each

**Payback at $15,424/day revenue:** **15-18 days of operation per machine**

### 8.6 Operating Cost Per Batch (50 kg E-Waste)

| Cost Item | Unit Cost | Quantity | Cost/Batch |
|---|---|---|---|
| Electricity (induction + aux) | $0.12/kWh | 375 kWh | $45.00 |
| N₂ make-up gas | $0.09/kg | 2.5 kg | $0.23 |
| Lime (Ca(OH)₂) scrubber | $0.15/kg | 5 kg avg | $0.75 |
| Water (cooling + quench) | $0.002/L | 500 L | $1.00 |
| ZrO₂ mold wear (amortized) | $200/mold | 0.05 mold | $10.00 |
| PEEK CF40 seal/bushing wear | $500/set | 0.01 set | $5.00 |
| KNbO₃-BaTiO₃ transducer wear | $1,000/array | 0.001 array | $1.00 |
| Consumables (filters, gaskets) | — | — | $15.00 |
| **TOTAL OPERATING COST** | | | **$77.98** |

### 8.7 Revenue Per Batch (50 kg PCB-Rich E-Waste)

| Stream | Mass (kg) | Price ($/kg) | Revenue |
|---|---|---|---|
| S-05 Zn/Pb/Sn | 3.0 | 2.00 | $6.00 |
| S-06 Aluminum | 6.0 | 1.80 | $10.80 |
| S-07 Copper (base) | 11.5 | 9.00 | $103.50 |
| S-08 Precious Metals (in Cu) | — | — | $1,863.00 |
| S-09 Ferrous | 7.0 | 0.45 | $3.15 |
| S-10 RE (in Fe, est.) | — | 45.00* | $15.75 |
| S-02 Polymer | 17.5 | 0.15 | $2.63 |
| S-03 Char | 4.0 | 0.10 | $0.40 |
| S-12 Pyrolysis gas (energy) | — | 5 kWh eq | $0.85 |
| S-13 CO₂ (purge credit) | — | — | $0.05 |
| S-14 Scrubber solids | 0.5 | 0.05 | $0.03 |
| **TOTAL REVENUE** | | | **$2,006.16** |

*RE value as separated oxides (requires Phase 2 hydromet for full realization)

**Net per batch (Phase 1 cash): ~$1,928** (excluding full PM/RE value)
**Net per batch (Full value): ~$2,006 - $78 = $1,928**

At 8 batches/day: **$15,424/day = $3.86M/year per machine**

---
