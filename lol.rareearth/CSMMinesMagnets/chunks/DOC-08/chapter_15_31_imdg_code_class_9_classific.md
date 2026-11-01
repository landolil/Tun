## 3.1 IMDG Code Class 9 Classification: UN 2807 & UN 3508

The International Maritime Dangerous Goods (IMDG) Code, mandatory under SOLAS Chapter VII and MARPOL Annex III, classifies magnetized materials under **Class 9 — Miscellaneous Dangerous Substances and Articles**. Two UN numbers apply:

| UN Number | Proper Shipping Name | Class | Packing Group | Primary Hazard |
|-----------|---------------------|-------|---------------|----------------|
| **UN 2807** | Magnetized material | 9 | II | Magnetic field interference |
| **UN 3508** | Capacitor, asymmetric (magnetized) | 9 | II | Magnetic field + electrical energy |

**Applicability to Chilean Magnetic Minerals**:
- **UN 2807**: Covers all permanent magnets (NdFeB, SmCo, AlNiCo, Fe-Co, Fe-N), magnetized components, and assemblies where magnetic field exceeds threshold
- **UN 3508**: Applies to magnetized capacitors, magnetic refrigeration components, and hybrid magnetic-electrical systems (emerging Fe₁₆N₂ applications)

### 3.1.1 Magnetized Material Definition & Thresholds (IMDG Code 2.9.3)

**Definition (IMDG 2.9.3.1)**: "Magnetized material means any material which, when packaged for transport, produces a magnetic field strength sufficient to cause deviation of aircraft navigational instruments or interfere with vessel compasses."

**Quantitative Thresholds (IMDG 2.9.3.2, IATA DGR 9.3.2)**:

| Measurement Point | Threshold | Classification |
|-------------------|-----------|----------------|
| **At 2.1m (7 ft) from package surface** | **> 0.418 A/m (0.525 mT / 5.25 Gauss)** | **Class 9 (UN 2807)** |
| At 4.6m (15 ft) from package surface | > 0.159 A/m (0.2 mT / 2 Gauss) | Class 9 (air only, IATA) |
| At package surface | Any measurable field | Must be declared, may require shielding |

**Critical Formula — Magnetic Field Decay**:

$$B(r) = B_0 \times \left(\frac{r_0}{r}\right)^3 \quad \text{(dipole approximation)}$$

Where:
- $B(r)$ = Magnetic flux density at distance $r$ (Tesla)
- $B_0$ = Surface flux density (Tesla)
- $r_0$ = Reference distance (typically 0.01m = 1cm from surface)
- $r$ = Measurement distance (m)

**Shielding Effectiveness Required**:

$$\text{SE}_{dB} = 20 \log_{10}\left(\frac{B_{unshielded}}{B_{shielded}}\right) \geq 20 \log_{10}\left(\frac{B_{surface} \times (r_0/2.1)^3}{0.525 \times 10^{-3}}\right)$$

**Example**: NdFeB N52 magnet, $B_{surface} = 1.2$ T at 1cm:
- Unshielded at 2.1m: $B = 1.2 \times (0.01/2.1)^3 = 1.3 \times 10^{-6}$ T = **1.3 µT** (well below 0.525 mT)
- **But**: Assemblies (motor rotors, Halbach arrays) have much larger effective dipole moment
- **Real-world**: 50kg NdFeB rotor assembly → ~0.8 mT at 2.1m (EXCEEDS threshold → Class 9)

**Chilean Magnetic Mineral Specific Thresholds**:

| Product Form | Typical Mass | Surface Field | Field at 2.1m | Classification | Shielding Required |
|--------------|--------------|---------------|---------------|----------------|-------------------|
| **REE Concentrate (Bastnäsite)** | 22t (rotainer) | < 0.01 mT | < 0.001 µT | **Not Class 9** | No |
| **NdFeB Block (N42H, 100mm³)** | 0.75 kg | 1.2 T | 0.0013 µT | **Not Class 9** | No |
| **NdFeB Block (N52EH, 200mm³)** | 6 kg | 1.4 T | 0.01 µT | **Not Class 9** | No |
| **NdFeB Assembly (Motor Rotor, 50kg)** | 50 kg | 0.8 T (effective) | **0.8 mT** | **Class 9 (UN 2807)** | **Yes** |
| **SmCo 2:17 Assembly (30kg)** | 30 kg | 1.0 T (effective) | **0.5 mT** | **Borderline** | Recommended |
| **Fe₁₆N₂ Rotor (22kg)** | 22 kg | 1.5 T (effective) | **1.2 mT** | **Class 9 (UN 2807)** | **Yes** |
| **Fe-Co Vacuum Assembly (100kg)** | 100 kg | 1.8 T (effective) | **2.5 mT** | **Class 9 (UN 2807)** | **Yes (mu-metal)** |

**Key Insight**: **Raw magnetic materials (concentrates, blocks) are NOT Class 9**. **Assembled magnets (rotors, arrays, motor components) ARE Class 9** due to collective dipole moment. This distinction drives packaging strategy: ship blocks/ingots unshielded (bulk/container), assemble at destination, or shield assemblies for export.

### 3.1.2 Packing Group II Requirements (IMDG 4.1.4, IATA PI 953)

Both UN 2807 and UN 3508 are assigned **Packing Group II** — "substances presenting medium danger." This mandates:

**Packaging Performance Standards (IMDG 6.1, IATA 6.0)**:
| Test | Requirement | Standard |
|------|-------------|----------|
| **Drop Test** | 1.2m (PG II) onto rigid surface | ISTA 1A / ASTM D5276 |
| **Stack Test** | 3m high stack, 24 hrs | ASTM D4577 |
| **Vibration Test** | 1 hr, 1.0G RMS, 5-200 Hz | ASTM D999 / ISTA 2A |
| **Pressure Differential** | 95 kPa (internal) | IATA 6.5.3 |
| **Leakproofness** | No leakage of contents | IMDG 6.1.4 |

**UN-Certified Packaging Codes for Magnetic Materials**:
| Packaging Type | UN Code | Max Net Mass | Magnetic Mineral Application |
|----------------|---------|--------------|------------------------------|
| **Steel Drum (1A2)** | 1A2/X400/S | 400 kg | Small assemblies, samples |
| **Steel Jerrican (3A2)** | 3A2/X250/S | 250 kg | Powdered Fe₁₆N₂ (inerted) |
| **Plywood Box (4D)** | 4D/X200/S | 200 kg | NdFeB blocks (inner shielding) |
| **Fiberboard Box (4G)** | 4G/X60/S | 60 kg | SmCo blocks, samples |
| **Composite IBC (31A)** | 31A/Y/1000 | 1,000 kg | **NdFeB/SmCo assemblies (shielded)** |
| **Steel IBC (21A)** | 21A/Y/1500 | 1,500 kg | Fe-Co/Fe-N bulk intermediates |
| **ISO Tank (20ft)** | 22G1 | 26,000 kg | REE concentrates (non-magnetic) |

**Special Packaging Provisions (IMDG PP, IATA SP)**:
- **PP89 / A193**: "Magnetized material must be packaged so that the magnetic field strength at 2.1m does not exceed 0.418 A/m (0.525 mT)"
- **PP90 / A194**: "Packages must be marked 'MAGNETIZED MATERIAL' and display the Class 9 label"
- **SP 953 (IATA)**: Specific packaging instruction for magnetized material — requires shielding design validation

**Marking & Labeling Requirements (IMDG 5.2, IATA 7.2)**:
```
UN 2807
MAGNETIZED MATERIAL
CLASS 9
PG II
(Net Mass: XX kg)
(Gross Mass: XX kg)
Shipper: [Company], Antofagasta, Chile
Consignee: [Company], Rotterdam, Netherlands
Emergency Phone: +56-2-XXXX-XXXX
```
- **Class 9 Label**: Black/white diamond (250mm × 250mm minimum)
- **Orientation Arrows**: Two opposite sides (magnets have polarity)
- **Handling Labels**: "MAGNETIC — KEEP AWAY FROM COMPASSES/ELECTRONICS"

### 3.2 IATA DGR 9.3 Air Freight Restrictions

Air transport of magnetic materials is governed by **IATA Dangerous Goods Regulations (DGR) Section 9.3** and **Packing Instruction 953 (PI 953)**. Stricter than IMDG due to aircraft navigation sensitivity.

### 3.2.1 Field Strength <5.25mT at 2.1m (IATA PI 953)

**IATA Threshold (More Stringent than IMDG)**:
- **At 2.1m (7 ft)**: **0.418 A/m (0.525 mT / 5.25 Gauss)** — same as IMDG
- **At 4.6m (15 ft)**: **0.159 A/m (0.2 mT / 2.0 Gauss)** — **additional air requirement**
- **Cargo Compartment**: Must not affect aircraft instruments at any point in hold

**Air Freight Eligibility Matrix for Chilean Magnets**:

| Product | Field at 2.1m | Field at 4.6m | Air Eligible? | Packaging Required |
|---------|---------------|---------------|---------------|-------------------|
| REE Concentrate | < 0.001 µT | < 0.001 µT | ✅ Yes (non-DG) | Standard bulk/container |
| NdFeB Blocks (≤N48, ≤1kg) | < 0.01 µT | < 0.001 µT | ✅ Yes (non-DG) | Standard box |
| NdFeB Blocks (N52, >2kg) | 0.05 µT | 0.005 µT | ✅ Yes (non-DG) | Standard box |
| NdFeB Motor Rotor (50kg) | **0.8 mT** | **0.09 mT** | ❌ **No (exceeds 4.6m)** | Must shield to <0.2 mT at 4.6m |
| SmCo 2:17 Assembly (30kg) | 0.5 mT | 0.06 mT | ❌ **No (exceeds 4.6m)** | Must shield to <0.2 mT at 4.6m |
| Fe₁₆N₂ Rotor (22kg) | 1.2 mT | 0.14 mT | ❌ **No** | Must shield to <0.2 mT at 4.6m |
| Fe-Co Assembly (100kg) | 2.5 mT | 0.29 mT | ❌ **No** | Must shield to <0.2 mT at 4.6m |

**Shielding Design Target for Air Eligibility**:
$$B_{shielded}(4.6m) < 0.2 \text{ mT} \quad \Rightarrow \quad \text{SE} \geq 20 \log_{10}\left(\frac{B_{unshielded}(4.6m)}{0.2 \text{ mT}}\right)$$

For Fe₁₆N₂ rotor (0.14 mT unshielded at 4.6m): Already compliant at 4.6m but **fails at 2.1m** (1.2 mT > 0.525 mT). Shielding must achieve **SE ≥ 13.5 dB at 2.1m**.

**Air Freight Cost Premium (Antofagasta→Shanghai, 2024)**:
| Mode | Rate ($/kg) | Transit | Capacity | Magnetic Suitability |
|------|-------------|---------|----------|---------------------|
| **Sea (Container)** | 0.85 | 28 days | 22t/TEU | ✅ All (with shielding) |
| **Sea (Bulk)** | 0.12 | 22 days | 170k DWT | ✅ Concentrates only |
| **Air (Belly)** | 8.50 | 2 days | 100kg/pallet | ⚠️ Small blocks only |
| **Air (Freighter)** | 12.00 | 1 day | 1,000kg/pallet | ⚠️ Shielded assemblies only |

**Strategic Decision**: **Air freight only for urgent, high-value, small assemblies** (prototypes, spare rotors). Bulk concentrates and standard blocks by sea. Finished magnet assemblies require shielding investment to qualify for air.

### 3.2.2 Shielding Packaging Design: Mu-Metal & Steel

**Shielding Materials Comparison**:

| Material | Composition | Permeability (μr) | Saturation (T) | Thickness for 20dB | Cost ($/kg) | Best For |
|----------|-------------|-------------------|----------------|-------------------|-------------|----------|
| **Mu-Metal (Ni80Fe15Mo5)** | 80% Ni, 15% Fe, 5% Mo | 80,000-200,000 | 0.8 | 0.5mm | 120 | High-field, precision |
| **Co-Netic AA (Ni48Fe52)** | 48% Ni, 52% Fe | 50,000-100,000 | 1.5 | 0.8mm | 85 | Medium-field, cost-effective |
| **Molybdenum Permalloy** | 79% Ni, 4% Mo, 17% Fe | 100,000+ | 0.7 | 0.4mm | 150 | Ultra-high permeability |
| **Electrical Steel (M19)** | Fe-3%Si | 5,000-10,000 | 2.0 | 2.0mm | 3.5 | High-field, structural |
| **Carbon Steel (A36)** | Fe-0.2%C | 500-1,000 | 2.1 | 5.0mm | 0.8 | Low-cost, structural |
| **Aluminum (6061-T6)** | Al-Mg-Si | 1 (non-magnetic) | — | N/A (eddy current) | 4.5 | RF shielding, not DC |

**Shielding Effectiveness Formula (Planar Shield, Low Frequency)**:

$$\text{SE}_{dB} = 20 \log_{10}\left(1 + \frac{\mu_r \times t}{d}\right) + 20 \log_{10}\left(\frac{\sigma \times \mu_r \times t \times f}{2}\right)$$

Where:
- $\mu_r$ = Relative permeability
- $t$ = Shield thickness (m)
- $d$ = Distance from source to shield (m)
- $\sigma$ = Electrical conductivity (S/m)
- $f$ = Frequency (Hz) — for DC magnets, only first term applies

**Simplified for DC Magnetic Fields**:
$$\text{SE}_{dB} \approx 20 \log_{10}\left(\frac{\mu_r \times t}{d}\right) \quad (\text{when } \mu_r t \gg d)$$

**Design Example: Fe₁₆N₂ Rotor (22kg, 1.2 mT at 2.1m unshielded)**
- Target: < 0.525 mT at 2.1m (SE ≥ 7.2 dB)
- Distance from magnet to shield inner surface: $d = 0.05$m (50mm packaging clearance)
- **Mu-Metal (μr = 100,000)**: $t \geq \frac{d \times 10^{\text{SE}/20}}{\mu_r} = \frac{0.05 \times 10^{0.36}}{100,000} = 0.11$mm → **Use 0.5mm (safety factor 4.5)**
- **Co-Netic AA (μr = 75,000)**: $t \geq 0.15$mm → **Use 0.8mm (safety factor 5.3)**
- **Electrical Steel M19 (μr = 8,000)**: $t \geq 1.4$mm → **Use 2.0mm (safety factor 1.4)**
- **Carbon Steel A36 (μr = 800)**: $t \geq 14$mm → **Impractical for packaging**

**Packaging Configuration (UN 4GV/X Certified)**:

```
┌─────────────────────────────────────────────────────────┐
│  OUTER: UN 4GV/X Fiberboard Box (ISTA 3A certified)     │
│  ├── Cushioning: PE foam (50mm all sides)               │
│  ├── MIDDLE: Mu-Metal shield (0.5mm, seam-welded)       │
│  │    ├── Magnetic closure (overlap ≥ 3x thickness)    │
│  │    ├── Grounding strap (copper, <10⁶ Ω to container) │
│  │    └── Field verification port (Hall probe access)  │
│  ├── INNER: Anti-static bag (ESD protection)           │
│  │    ├── Desiccant (silica gel, 10% mass)             │
│  │    ├── Shock indicator (ShockWatch 25G)             │
│  │    └── Temperature indicator (Timestrip -20°C/+60°C)│
│  └── CONTENT: Fe₁₆N₂ rotor (22kg, vacuum-sealed)        │
└─────────────────────────────────────────────────────────┘
    Gross Mass: 28kg | Field at 2.1m: 0.18 mT ✅ PASS
```

**Shielding Validation Protocol (Per IATA PI 953 / IMDG PP89)**:
1. **Pre-Shipment Scan**: 3-axis Hall probe at 2.1m (6 points around package)
2. **Acceptance Criteria**: All points < 0.418 A/m (0.525 mT)
3. **Documentation**: Shielding test report attached to DGD
4. **Periodic Re-test**: Every 12 months or after 10 shipments
5. **Batch Traceability**: Shield serial number linked to magnet lot (blockchain, DOC-04/05)

**Cost Analysis (Per Package)**:
| Configuration | Shield Material | Shield Cost | Packaging Total | Field at 2.1m | Air Eligible |
|---------------|----------------|-------------|-----------------|---------------|--------------|
| Standard box | None | $0 | $15 | 1.2 mT | ❌ |
| Mu-metal liner | Mu-metal (0.5mm) | $45 | $85 | 0.18 mT | ✅ |
| Steel box (A36) | Carbon steel (3mm) | $12 | $55 | 0.45 mT | ✅ (marginal) |
| Dual-layer (Mu+Steel) | Mu 0.3mm + Steel 1mm | $28 | $78 | 0.05 mT | ✅ (robust) |

**Recommendation**: **Mu-metal liner in UN 4GV/X box** for air-eligible assemblies. **Steel IBC with mu-metal inserts** for sea freight assemblies. **No shielding for raw blocks/concentrates**.

### 3.2.3 Temperature Control: -40°C to +80°C Stability

Magnetic properties of permanent magnets are temperature-dependent. Shipping must maintain temperature within stability ranges to prevent irreversible demagnetization or structural damage.

**Temperature Coefficients (Reversible, per °C)**:

| Material | Grade | $\alpha_{Br}$ (%/°C) | $\alpha_{HcJ}$ (%/°C) | Max Operating Temp | Curie Temp ($T_c$) |
|----------|-------|---------------------|----------------------|-------------------|-------------------|
| **NdFeB** | N42H | -0.11 | -0.60 | 120°C | 310°C |
| **NdFeB** | N48SH | -0.10 | -0.55 | 150°C | 320°C |
| **NdFeB** | N52EH | -0.09 | -0.50 | 200°C | 340°C |
| **SmCo 1:5** | S18G | -0.045 | -0.30 | 250°C | 750°C |
| **SmCo 2:17** | S30H | -0.035 | -0.20 | 350°C | 820°C |
| **Fe₁₆N₂** | α"-Fe₁₆N₂ | -0.15 (est.) | -0.70 (est.) | **80°C** | 200°C (decomp.) |
| **Fe-Co (Hiperco 50)** | 50% Co | -0.01 | -0.05 | 450°C | 980°C |

**Irreversible Loss Thresholds**:
- **NdFeB**: > 150°C (N42H), > 180°C (N48SH), > 220°C (N52EH) — permanent $B_r$ loss
- **SmCo**: > 400°C — minimal irreversible loss
- **Fe₁₆N₂**: **> 80°C** — decomposition to α-Fe + Fe₄N (permanent destruction)
- **Fe-Co**: > 500°C — minimal loss

**Shipping Temperature Requirements**:

| Product | Required Range | Critical Limit | Monitoring | Consequence of Exceedance |
|---------|----------------|----------------|------------|---------------------------|
| **NdFeB (all grades)** | -40°C to +60°C | +80°C (irreversible start) | Continuous (IoT) | >80°C: Partial demag, re-magnetize possible |
| **SmCo (all grades)** | -55°C to +100°C | +250°C | Spot check | Robust, minimal risk |
| **Fe₁₆N₂** | **-20°C to +60°C** | **+80°C (DECOMPOSITION)** | Continuous (redundant) | >80°C: **TOTAL LOSS, cannot recover** |
| **Fe-Co** | -40°C to +150°C | +450°C | Spot check | Robust |
| **REE Concentrates** | -20°C to +50°C | N/A (non-magnetic) | Standard | Moisture control only |

**Fe₁₆N₂ Criticality**: The **α"-Fe₁₆N₂ phase is metastable** and decomposes above ~80°C. This is a **hard constraint** — not just demagnetization but phase destruction. Requires:
- **Reefer container**: -20°C ± 2°C setpoint (not just "cool")
- **Redundant monitoring**: Primary (carrier) + Secondary (shipper IoT) + Third-party (insurance)
- **Power backup**: Genset on chassis, 72hr autonomy
- **Pre-cooling**: 24hr at -20°C before loading
- **Emergency protocol**: Satellite alert at -15°C / +65°C, divert to nearest powered berth

**Container Temperature Control Specs (IMO MSC.1/Circ.1458)**:
| Parameter | Requirement | Fe₁₆N₂ Specific |
|-----------|-------------|-----------------|
| **Setpoint Range** | -30°C to +30°C (standard reefer) | **-20°C ± 2°C** |
| **Airflow** | 60-120 m³/hr (per TEU) | 100 m³/hr (high density) |
| **Temperature Uniformity** | ± 2°C (loaded) | ± 1.5°C |
| **Data Logging** | 1hr intervals, 90 days | 15min intervals, 180 days |
| **Power Supply** | 380V/50Hz or 460V/60Hz (ship) | Dual genset (chassis + ship) |
| **Defrost Cycles** | Automatic (off-cycle) | **Disabled** (temp stability) |

**Cost Impact (Antofagasta→Shanghai, 40ft HC Reefer)**:
| Item | Standard Dry | Reefer (-20°C) | Premium |
|------|--------------|----------------|---------|
| Ocean Freight | $1,850/TEU | $3,200/TEU | +73% |
| Reefer Plug (port) | $0 | $45/day | $1,260/voyage |
| Monitoring (IoT) | $0 | $120/voyage | $120 |
| **Total per TEU** | **$1,850** | **$4,580** | **+$2,730** |
| **Per kg (22t payload)** | **$0.084** | **$0.208** | **+$0.124/kg** |

**Strategic Implication**: Fe₁₆N₂ shipping cost is **2.5x standard container**. Justifies:
- **Final assembly near market** (ship blocks, assemble rotors at destination)
- **Aegis-Forge Chile → CSM US/EU**: Ship Fe₁₆N₂ blocks (-20°C), assemble rotors at CSM factory
- **Air freight for prototypes only**: $12/kg vs. $0.21/kg sea reefer = 57x premium

### 3.3 MIL-STD-1540 Test Certificate Requirements

**MIL-STD-1540E** (Department of Defense Standard Practice — "Test Requirements for Launch, Upper Stage, and Space Vehicles") is the **gold standard for magnet qualification** in defense and aerospace applications. While not mandatory for commercial shipments, CSM (Carrington Storm Motors) and Tardigradia Holding Company require MIL-STD-1540 compliance for all magnetic components entering their supply chain (DFARS 252.225-7018 flow-down).

#### 3.3.1 Applicable Test Methods for Permanent Magnets

| Test | MIL-STD-1540 Method | Parameter | Acceptance Criteria | Frequency |
|------|---------------------|-----------|---------------------|-----------|
| **Magnetic Moment** | 3.3.1 | Dipole moment (A·m²) | ±2% of design value | 100% (each lot) |
| **Flux Density (Surface)** | 3.3.2 | $B_r$ at specified points | ±3% of nominal | 100% |
| **Coercivity ($H_{cJ}$)** | 3.3.3 | Pulse magnetometer | ≥ Minimum grade spec | 100% |
| **Curie Temperature** | 3.3.4 | $T_c$ (thermomagnetic) | ≥ Grade minimum | 1 per lot |
| **Reversible Temp Coeff.** | 3.3.5 | $\alpha_{Br}$, $\alpha_{HcJ}$ | Within grade tolerance | 1 per lot |
| **Irreversible Loss** | 3.3.6 | Post-thermal cycle | < 2% $B_r$ loss | 1 per lot |
| **Mechanical Strength** | 3.4.1 | 4-point bend / compression | > Design stress × 1.5 | 1 per lot |
| **Thermal Shock** | 3.4.2 | -55°C ↔ +150°C, 5 cycles | No cracking, <1% $B_r$ loss | 1 per lot |
| **Vibration (Sine)** | 3.5.1 | 5-2000 Hz, 20G peak | No degradation | 1 per lot |
| **Vibration (Random)** | 3.5.2 | 20-2000 Hz, 0.2G²/Hz | No degradation | 1 per lot |
| **Shock (Half-Sine)** | 3.5.3 | 500G, 1ms, 3 axes | No degradation | 1 per lot |
| **Acoustic Noise** | 3.5.4 | 150 dB, 100-10000 Hz | No degradation | 1 per lot |
| **Thermal Vacuum** | 3.6.1 | 10⁻⁶ Torr, -55°C/+125°C | Outgassing <1% TML | 1 per lot |
| **Radiation** | 3.6.2 | 100 krad (Si) | <5% $B_r$ loss | 1 per lot (space) |
| **Corrosion (Salt Fog)** | 3.7.1 | ASTM B117, 96 hrs | No red rust, <5% $B_r$ loss | 1 per lot |
| **Humidity** | 3.7.2 | 85% RH, 85°C, 168 hrs | No degradation | 1 per lot |

#### 3.3.2 CSM-Specific Magnet Acceptance Criteria (Flow-Down from DOC-06)

| Parameter | NdFeB (N48SH) | SmCo (2:17) | Fe₁₆N₂ | Fe-Co (Hiperco 50) |
|-----------|---------------|-------------|--------|-------------------|
| **$B_r$ (T)** | 1.37-1.42 | 1.05-1.10 | 1.80-2.00 (target) | 2.35-2.42 |
| **$H_{cJ}$ (kA/m)** | ≥ 1,592 | ≥ 1,990 | ≥ 800 (est.) | ≥ 80 |
| **$(BH)_{max}$ (kJ/m³)** | 366-398 | 223-255 | **300-350 (target)** | 120-160 |
| **Max Operating Temp** | 150°C | 350°C | **80°C** | 450°C |
| **Temp Coeff $\alpha_{Br}$** | -0.10%/°C | -0.035%/°C | -0.15%/°C | -0.01%/°C |
| **Density (g/cm³)** | 7.5 | 8.3 | 7.2 | 8.1 |
| **Corrosion Resistance** | Ni-Cu-Ni + epoxy | None (inherent) | **Inert gas seal** | Passivate |

#### 3.3.3 Certificate Structure (Per Shipment Lot)

```
MIL-STD-1540 MAGNET TEST CERTIFICATE
=====================================
Certificate No: MIL1540-CSM-2026-004271
Date: 2026-10-25
Issuing Lab: Aegis-Forge Materials Lab (ISO 17025, NADCAP)
Customer: Carrington Storm Motors (CSM)
PO Reference: CSM-PO-2026-08921

LOT IDENTIFICATION:
- Material: NdFeB N48SH
- Heat/Lot: HT-2026-ANTF-0447
- Quantity: 2,500 pcs (50kg each)
- Manufacture Date: 2026-09-15
- Aegis-Forge Plant: AF-CH-ANTF-03

TEST RESULTS SUMMARY:
✅ Magnetic Moment: 100% pass (avg 1.395 T, σ=0.002)
✅ Coercivity HcJ: 100% pass (avg 1,620 kA/m, σ=15)
✅ Irreversible Loss: 0.8% (max 1.2%) @ 150°C/2hr
✅ Thermal Shock: 0% failure (5 cycles -55°C/+150°C)
✅ Vibration Random: 0% failure (0.2G²/Hz, 3 axes)
✅ Mechanical Bend: 0% failure (σ_ult > 1.5× design)
✅ Salt Fog (96hr): 0% rust, 0.3% Br loss
✅ Outgassing (TML): 0.04% (limit 1.0%)

NON-CONFORMANCES: NONE
DISPOSITION: ACCEPTED FOR CSM PRODUCTION

Blockchain Hash: 0x7a3f...e9b2 (DOC-04/05 ledger)
Digital Signature: Aegis-Forge QA (ECDSA-P256)
```

**Traceability Link**: Each certificate hash recorded on Tardigradia blockchain (DOC-04/05) with immutable linkage to:
- Mine assay certificate (DOC-01)
- Port inspection report (Ch. 1)
- Factory acceptance test (CSM incoming QC)
- Final motor test (CSM production)

### 3.4 ASTM D4169 Distribution Testing (Assurance Level II)

**ASTM D4169-23** ("Standard Practice for Performance Testing of Shipping Containers and Systems") validates that packaging survives the distribution environment. **Assurance Level II** (commercial/industrial) is the minimum for CSM magnetic mineral shipments.

#### 3.4.1 Test Schedule for Magnetic Assemblies (DC13 — Motorized Vehicle)

| Sequence | Test | Level II Parameters | Magnetic Relevance |
|----------|------|---------------------|-------------------|
| **1** | **Manual Handling** | 12 drops, 0.76m (30") | Shock to magnet assembly |
| **2** | **Vibration (Loose Load)** | 1 hr/truck, 1.05G RMS | Freight rail/truck vibration |
| **3** | **Vibration (Unitized)** | 1 hr/rail, 0.52G RMS | FCAB/EFE rail transport |
| **4** | **Low Pressure** | 11.5 kPa (11,000m), 1 hr | Air freight contingency |
| **5** | **Temperature/Humidity** | -40°C to +60°C, 24 cycles | Fe₁₆N₂ critical |
| **6** | **Impact (Incline)** | 1.2m/s, 4 impacts | Rail coupling shock |
| **7** | **Compression** | 7,200 kg (stack 3 high) | Warehouse stacking |
| **8** | **Vibration (Repetitive)** | 2 hr, 0.52G RMS | Ocean vessel vibration |
| **9** | **Shock (Rotational Edge)** | 450mm drop, 3 edges | Forklift/port handling |
| **10** | **Concentrated Impact** | 1.5J, 5 impacts | Corner/edge damage |

#### 3.4.2 Magnetic-Specific Acceptance Criteria (Post-Test)

| Inspection | Acceptance Limit | Test Method |
|------------|------------------|-------------|
| **Magnetic Moment Change** | < 2% from pre-test | MIL-STD-1540 3.3.1 |
| **Flux Density Uniformity** | < 3% variation | Hall probe mapping |
| **Coercivity Retention** | > 98% of pre-test | Pulse magnetometer |
| **Shielding Integrity** | SE > 20dB (if applicable) | 3-axis Hall at 2.1m |
| **Package Integrity** | No breach, seals intact | Visual + pressure decay |
| **Desiccant Saturation** | < 80% capacity | Weight gain |
| **Shock Indicator** | Not triggered (25G) | Visual |
| **Temperature Excursion** | Within -20°C/+60°C | Data logger review |

#### 3.4.3 Validation Protocol for Chilean Export

1. **Pre-Shipment**: Run ASTM D4169 Level II on **first article** packaging design
2. **Periodic Revalidation**: Every 12 months or packaging design change
3. **Lot Sampling**: 1 package per 500 units (or 1 per shipment, whichever less)
4. **Data Retention**: 10 years (DFARS 252.225-7018 requirement)
5. **Blockchain Recording**: Test report hash on Tardigradia ledger

**Cost per Validation**: $18,000-25,000 (third-party lab, 3 weeks)
**Frequency**: Annual per packaging configuration
**Savings**: Avoids $500k+ per incident (rejected shipment, rework, delay)

### 3.5 Magnet-Specific Specifications: NdFeB vs SmCo vs FeN vs FeCo

#### 3.5.1 Grade Comparison Matrix for CSM Supply Chain

| Property | **NdFeB** | **SmCo 1:5** | **SmCo 2:17** | **Fe₁₆N₂** | **Fe-Co (50%)** |
|----------|-----------|--------------|---------------|------------|-----------------|
| **Chemical Formula** | Nd₂Fe₁₄B | SmCo₅ | Sm₂Co₁₇ | α"-Fe₁₆N₂ | Fe₅₀Co₅₀ |
| **Crystal Structure** | Tetragonal | Hexagonal | Rhombohedral | **BCC (metastable)** | BCC (ordered) |
| **$(BH)_{max}$ (MGOe)** | 38-52 | 16-22 | 24-32 | **27-32 (target)** | 10-12 |
| **$(BH)_{max}$ (kJ/m³)** | 302-414 | 127-175 | 191-255 | **215-255 (target)** | 80-95 |
| **$B_r$ (Tesla)** | 1.22-1.48 | 0.85-0.95 | 1.05-1.15 | **1.80-2.00** | 2.35-2.42 |
| **$H_{cJ}$ (kA/m)** | 955-1990 | 1194-1592 | 1592-1990 | 600-1000 (est.) | 40-80 |
| **Max Operating Temp** | 80-200°C | 250°C | 350°C | **80°C** | 450°C |
| **Temp Coeff $\alpha_{Br}$** | -0.09 to -0.12%/°C | -0.045%/°C | -0.035%/°C | **-0.15%/°C** | -0.01%/°C |
| **Temp Coeff $\alpha_{HcJ}$** | -0.45 to -0.65%/°C | -0.30%/°C | -0.20%/°C | -0.70%/°C | -0.05%/°C |
| **Density (g/cm³)** | 7.4-7.6 | 8.2-8.4 | 8.3-8.5 | 7.2 | 8.1-8.2 |
| **Corrosion Resistance** | Poor (needs coating) | Good | Good | **Poor (oxidizes)** | Fair (passivate) |
| **Mechanical Strength** | Brittle | Brittle | Brittle | **Ductile (Fe-based)** | Good |
| **Cost ($/kg, 2024)** | $80-150 | $120-200 | $180-300 | **$500-800 (R&D)** | $60-100 |
| **REE Content** | 26-32% (Nd, Dy, Tb) | 25-30% (Sm) | 25-30% (Sm) | **0% REE** | **0% REE** |
| **Critical Materials** | Nd, Dy, Tb | Sm | Sm | **N (nitrogen)** | Co |
| **DFARS 252.225-7018** | ❌ (contains Dy/Tb) | ❌ (contains Sm) | ❌ (contains Sm) | ✅ **COMPLIANT** | ✅ **COMPLIANT** |
| **Supply Chain Maturity** | High (China dominant) | Medium | Medium | **Low (R&D)** | High |

#### 3.5.2 Shipping Specification by Grade

| Grade | Form | Packaging | Temp Control | Shielding | IMDG Class | Air Eligible |
|-------|------|-----------|--------------|-----------|------------|--------------|
| **NdFeB N42H** | Block/Slab | 4G box + PE foam | -40°C to +60°C | None (blocks) | Non-DG | ✅ |
| **NdFeB N48SH** | Block/Slab | 4G box + PE foam | -40°C to +60°C | None (blocks) | Non-DG | ✅ |
| **NdFeB N52EH** | Block/Slab | 4G box + PE foam | -40°C to +60°C | None (blocks) | Non-DG | ✅ |
| **NdFeB Rotor** | Assembly | 4GV/X + Mu-metal | -40°C to +60°C | **Required** | Class 9 | With shielding |
| **SmCo 1:5 (S18G)** | Block | 4G box | -55°C to +100°C | None | Non-DG | ✅ |
| **SmCo 2:17 (S30H)** | Block | 4G box | -55°C to +100°C | None | Non-DG | ✅ |
| **SmCo Assembly** | Assembly | 4GV/X + Steel | -55°C to +100°C | Recommended | Class 9 | With shielding |
| **Fe₁₆N₂ Block** | Block (inerted) | 3A2 Jerrican (N₂ purge) | **-20°C ± 2°C** | None | Non-DG | ✅ (if inerted) |
| **Fe₁₆N₂ Rotor** | Assembly | 4GV/X + Mu-metal | **-20°C ± 2°C** | **Required** | Class 9 | With shielding |
| **Fe-Co Block** | Block | 4G box | -40°C to +150°C | None | Non-DG | ✅ |
| **Fe-Co Assembly** | Assembly | 4GV/X + Steel | -40°C to +150°C | Recommended | Class 9 | With shielding |

#### 3.5.3 Chilean Source-to-Grade Mapping (DOC-01, DOC-09 Integration)

| Chilean Source | Mineral | Processing Path | Output Grade | Annual Capacity (2026+) |
|----------------|---------|-----------------|--------------|------------------------|
| **Antofagasta IOCG** | Bastnäsite (Ce,La,Nd) | Aegis-Forge separation → metal → alloy | NdFeB N42H/N48SH | 5,000 tons REO |
| **Atacama IOCG** | Monazite (Nd,Sm,Gd) | Aegis-Forge separation → metal → alloy | SmCo 2:17 / NdFeB | 3,000 tons REO |
| **Coquimbo Fe-N** | Fe-N laterite | Aegis-Forge nitridation | **Fe₁₆N₂ blocks** | 2,000 tons (pilot) |
| **Biobío Fe-Co** | Fe-Co hydrothermal | Aegis-Forge ordering | Fe-Co Hiperco 50 | 10,000 tons |
| **Imported (Tardigradia)** | Dy, Tb, Co | Trading | Alloying additions | As needed |

### 3.6 Documentation: DGD, MSDS, Shipper's Declaration

Complete documentation package required for each magnetic mineral shipment:

#### 3.6.1 Dangerous Goods Declaration (DGD) — IMDG/IATA

```
DANGEROUS GOODS DECLARATION (IMDG/IATA)
========================================
Shipper: Aegis-Forge Chile SpA
         Av. Pedro Aguirre Cerda 123, Antofagasta, Chile
         Contact: +56-55-2XX-XXXX | dg@aegisforge.cl

Consignee: Carrington Storm Motors Inc.
           4500 Innovation Drive, Austin, TX 78759, USA
           Contact: +1-512-XXX-XXXX | logistics@csmotors.com

Transport: Vessel: MSC VALERIA V.241S
           Port of Loading: MEJILLONES (CLMEJ)
           Port of Discharge: ROTTERDAM (NLRTM)

Dangerous Goods:
UN 2807, MAGNETIZED MATERIAL, CLASS 9, PG II
(Fe₁₆N₂ Rotor Assemblies, 22 pcs, 484 kg net)
Magnetic field at 2.1m: 0.18 mT (shielded)
Packaging: 4GV/X, Mu-metal shielded, UN certified
Emergency: EmS F-A, S-Q

Additional: MIL-STD-1540 Cert: MIL1540-CSM-2026-004271
            ASTM D4169 Level II: PKG-VAL-2026-0189
            Blockchain Hash: 0x7a3f...e9b2

Declaration: I hereby declare that the contents of this consignment
are fully and accurately described above by the proper shipping name,
and are classified, packaged, marked and labelled/placarded, and
are in all respects in proper condition for transport according
to applicable international and national governmental regulations.

Signed: _________________________  Date: 2026-10-25
        (Authorized DG Shipper, Aegis-Forge Chile)
```

#### 3.6.2 Material Safety Data Sheet (MSDS/SDS) — GHS/OSHA/REACH

**Key Sections for Magnetic Materials**:
- **Section 1**: Identification (UN 2807, magnet grade, lot #)
- **Section 2**: Hazards — Magnetic field (interference), pinch hazard, dust explosion (fines)
- **Section 3**: Composition — Nd/Fe/B/Dy, Sm/Co, Fe/N, Fe/Co percentages
- **Section 7**: Handling — PPE (gloves, safety glasses), keep away from pacemakers, credit cards
- **Section 8**: Exposure — No TLV for magnetic fields (ICNIRP: 0.5mT occupational, 0.1mT public)
- **Section 10**: Stability — Fe₁₆N₂: avoid >80°C, moisture, acid
- **Section 13**: Disposal — Recycle (NdFeB, SmCo, Fe-Co), special waste (Fe₁₆N₂)
- **Section 14**: Transport — UN 2807, Class 9, PG II, EmS F-A, S-Q
- **Section 15**: Regulatory — DFARS, REACH (SVHC: none for magnets), TSCA

#### 3.6.3 Shipper's Letter of Instruction (SLI) & Blockchain Record

```
SHIPPER'S LETTER OF INSTRUCTION
================================
SLI No: SLI-AFC-2026-1025-004271
Date: 2026-10-25

Shipper: Aegis-Forge Chile SpA (RUT: 76.XXX.XXX-X)
Consignee: Carrington Storm Motors Inc. (EIN: XX-XXXXXXX)
Notify Party: Tardigradia Logistics Ltd. (BVI)

Cargo Details:
- 22x Fe₁₆N₂ Rotor Assemblies (CSM-PN-2026-F16N2-RTR-001)
- Gross: 528 kg | Net: 484 kg | Volume: 4.2 m³
- Packaging: 22x UN 4GV/X boxes (mu-metal shielded)
- Temperature: -20°C ± 2°C (reefer, genset required)
- Magnetic Field: 0.18 mT at 2.1m (certified)

Routing:
Origin: Mejillones (CLMEJ) → Transshipment: None → Destination: Rotterdam (NLRTM)
Vessel: MSC VALERIA V.241S | ETD: 2026-11-01 | ETA: 2026-11-29

Documents Attached:
☑ DGD (IMDG/IATA)           ☑ MSDS (GHS/OSHA/REACH)
☑ MIL-STD-1540 Certificate  ☑ ASTM D4169 Validation
☑ Commercial Invoice        ☑ Packing List
☑ Certificate of Origin (Chile-US FTA)  ☑ Insurance Certificate
☑ Blockchain Manifest Hash: 0x7a3f...e9b2

Special Instructions:
1. REEFER: -20°C setpoint, NO DEFROST, genset mandatory
2. MAGNETIC: Stow away from compass, electronics, reefer units
3. SECURITY: Seal verification at load/discharge (ISO 17712)
4. TRACEABILITY: Scan blockchain QR on each package at handoff
5. INSURANCE: All-risk, war risk, magnetic degradation clause

Authorized: _________________________  Date: 2026-10-25
            (Aegis-Forge Logistics Manager)
```

### 3.7 Emergency Response: EmS F-A, S-Q

**Emergency Schedules (EmS) per IMDG Code** for Class 9 magnetized material:

#### 3.7.1 EmS F-A (Fire)

**Fire Characteristics of Magnetic Materials**:
- **NdFeB**: Pyrophoric fines (autoignition ~200°C), burns at 2000°C, produces toxic fumes (Nd₂O₃, Fe₂O₃, B₂O₃)
- **SmCo**: Non-flammable, but Co fumes toxic if melted (>1500°C)
- **Fe₁₆N₂**: Decomposes >80°C (exothermic), releases N₂, forms Fe/Fe₄N
- **Fe-Co**: Non-flammable, oxidizes >400°C

**EmS F-A Procedure**:
1. **ALERT**: Notify bridge, declare "CLASS 9 MAGNETIC MATERIAL FIRE"
2. **EVACUATE**: Clear area 50m radius (magnetic interference with electronics)
3. **EXTINGUISHING MEDIA**:
   - **Preferred**: **Argon/CO₂ (inert gas)** — smothers without water reaction
   - **Acceptable**: Dry chemical (ABC), dry sand
   - **FORBIDDEN**: **Water, foam** — reacts with hot NdFeB fines (hydrogen gas), spreads Fe₁₆N₂ decomposition
4. **FIREFIGHTER PPE**: SCBA, full thermal protection, **non-magnetic tools**
5. **CONTAINMENT**: Jettison if uncontained >15 min (IMDG 7.7)
6. **POST-FIRE**: Ventilate 30 min, monitor O₂/CO, recover packages for disposal

#### 3.7.2 EmS S-Q (Spillage)

**Spillage Scenarios**:
- **Package breach**: Magnet assemblies exposed
- **Reefer failure**: Fe₁₆N₂ temperature excursion > +60°C
- **Container loss**: Overboard (maritime) or derailment (rail)

**EmS S-Q Procedure**:
1. **SECURE**: Establish 25m perimeter (magnetic field hazard)
2. **ASSESS**: 
   - Magnetic field survey (Hall probe, 1m grid)
   - Temperature check (IR gun, Fe₁₆N₂ critical)
   - Package integrity (visual, seal check)
3. **CONTAIN**:
   - **Intact packages**: Relocate to safe area, re-secure
   - **Breached assemblies**: Wrap in mu-metal blanket, place in overpack
   - **Fe₁₆N₂ overtemp**: If > +60°C, **immediate quarantine**, do not move until assessed
4. **CLEANUP**:
   - NdFeB fines: HEPA vacuum (non-magnetic), collect in steel drum
   - Fe₁₆N₂ debris: Inert atmosphere glovebox recovery
   - **No water washdown** — environmental hazard (heavy metals)
5. **REPORT**: 
   - Shipper (Aegis-Forge) within 1 hr
   - Flag State (Chilean Maritime Authority) within 24 hrs
   - IMO GISIS (if marine pollution)
   - Blockchain incident log (DOC-04/05)

#### 3.7.3 Chilean Port Emergency Integration

| Port | Fire Response | Spill Response | Magnetic Capability |
|------|---------------|----------------|---------------------|
| **Antofagasta** | Directemar + Bomberos | SEA + Directemar | Basic (Hall probes) |
| **Mejillones** | CPM Brigade + Directemar | CPM + SEA | **Advanced (mu-metal blankets, Hall array)** |
| **San Antonio** | STI/SAAM Brigade + Bomberos | EMPORCHI + SEA | Advanced (reefer fire, mag survey) |
| **Coronel** | Lirquén Brigade + Bomberos | EMPORCHI + SEA | Basic |
| **Punta Arenas** | EMPORCHI + Bomberos | EMPORCHI + Directemar | Limited (remote) |

**Mejillones TCMN Advantage**: Purpose-built **Class D fire suppression** (argon/CO₂ flooding), **magnetic field mapping array** (permanent sensors on berths), **Fe₁₆N₂ quarantine bay** (-20°C, inerted). Aligns with Aegis-Forge zero-aqueous-discharge design (DOC-07).

---

*End of Chapter 3. Chapter 4 covers Customs — CPTPP Paperless Trade, Blockchain Certificates of Origin, SICEX Single Window.*
