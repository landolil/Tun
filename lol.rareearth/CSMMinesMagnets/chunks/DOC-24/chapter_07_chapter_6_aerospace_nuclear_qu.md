## Chapter 6: Aerospace/Nuclear Qualification — Sc-Al AMS, Y-SCR EPA, Lu-IAEA

### 6.1 Sc-Al Aerospace Qualification (AMS 4340/4341)

#### 6.1.1 AMS 4340 Requirements (Al-Sc-Zr Master Alloy)

| Property | Requirement | Test Method | Chilean Feedstock Spec |
|----------|-------------|-------------|------------------------|
| **Sc Content** | 1.9-2.1% | ICP-OES (ASTM E2594) | Sc metal 99.5%, O<100ppm |
| **Zr Content** | 0.10-0.15% | ICP-OES | Zr metal 99.5% |
| **Fe** | ≤0.10% | ICP-OES | Al 99.99%, Sc 99.5% |
| **Si** | ≤0.05% | ICP-OES | Al 99.99% |
| **Cu** | ≤0.01% | ICP-OES | Al 99.99% |
| **Grain Size** | ASTM 8-10 | ASTM E112 | Casting control |
| **Tensile (Sheet)** | UTS ≥350 MPa, YS ≥250 MPa, El ≥15% | ASTM E8 | Homogenization + rolling |
| **Weldability** | AWS D17.1 Class A | Weld test + RT/UT | **Sc grain refinement = pass** |
| **Corrosion** | ASTM G67 (exfoliation) | EXCO test | Sc-Al = 2xxx/7xxx equivalent |

#### 6.1.2 Qualification Pathway

```
1. Master Alloy Production (Chile/US):
   - Aegis-Forge Sc metal → Al-Sc master alloy (2% Sc)
   - CoA: Sc%, impurities, grain size
   
2. Alloy Development (US/Japan/EU mfr):
   - Dilute master alloy to 0.1-0.3% Sc in target alloy
   - Thermomechanical processing optimization
   
3. Material Qualification (FAA/EASA):
   - Design allowables (MMPDS Chapter 3)
   - Fatigue/crack growth (ASTM E647)
   - Damage tolerance (ASTM E399)
   - Environmental (salt fog, humidity, SO₂)
   
4. Part/Process Qualification:
   - Weld procedure (AWS D17.1)
   - NDT (RT, UT, ET)
   - First article inspection
   
5. Production Approval:
   - PMA/TSO (FAA) or EASA Part 21
   - Ongoing: CoA per heat, lot traceability
```

---

### 6.2 Y-SCR Catalyst Qualification (EPA Tier 4 / Euro 6 / IMO Tier III)

#### 6.2.1 Catalyst Performance Requirements

| Regulation | Application | NOx Limit | Catalyst Life | Y₂O₃ Requirement |
|------------|-------------|-----------|---------------|------------------|
| **EPA Tier 4** (40 CFR 1039) | Non-road diesel (>560 kW) | 0.20 g/kWh | 8,000-24,000 hrs | 5-10% Y₂O₃ in catalyst |
| **Euro 6** (EU 582/2011) | Heavy-duty vehicles | 0.40 g/kWh | 400,000 km | 5-8% Y₂O₃ |
| **IMO Tier III** (MARPOL Annex VI) | Marine engines (built 2016+) | 3.4 g/kWh (Tier III) | 25,000-40,000 hrs | 8-10% Y₂O₃ |

#### 6.2.2 Y₂O₃ Qualification for Catalyst Mfrs

```
Qualification Protocol (Johnson Matthey / BASF / Umicore / Haldor Topsoe):

1. Raw Material Acceptance:
   - Y₂O₃ 4N CoA (ICP-MS 60 elements)
   - Particle size (laser diffraction, D50<0.5μm)
   - Surface area (BET, >10 m²/g)
   - Moisture (Karl Fischer, <0.5%)
   
2. Lab-Scale Catalyst Synthesis:
   - 100g batch, standard formulation
   - Activity test: NOx conversion vs temp (200-450°C)
   - SO₂ resistance: 50 ppm SO₂, 200h, activity retention
   - Thermal aging: 800°C, 100h, surface area retention
   
3. Pilot-Scale (10-100 kg):
   - Full formulation, extrusion/honeycomb
   - Engine dyno test (EPA/EC cycle)
   - Durability: 1000h accelerated aging
   
4. Commercial Supply Agreement:
   - Annual volume commitment
   - Quality specs (CoA per lot)
   - Change control (notification 90 days)
   - Dual-source strategy (Chile + backup)
```

---

### 6.3 Lu₂O₃ Scintillator Qualification (IAEA / NEMA)

#### 6.3.1 Scintillator Material Standards

| Standard | Scope | Lu₂O₃ Requirement |
|----------|-------|-------------------|
| **IAEA TECDOC-1583** | Scintillator materials for radiation detection | Purity, density, light yield, decay time, radiation hardness |
| **NEMA NU-4** | PET/CT performance | System sensitivity, resolution, TOF capability |
| **IEC 61674** | Scintillator test methods | Light yield, energy resolution, non-proportionality |

#### 6.3.2 LSO:Ce/LYSO:Ce Qualification

```
Crystal Acceptance Criteria (per boule):

| Parameter | LSO:Ce Spec | LYSO:Ce Spec | Test Method |
|-----------|-------------|--------------|-------------|
| **Density** | 7.35-7.45 g/cm³ | 7.15-7.25 g/cm³ | Archimedes |
| **Light Yield** | >28,000 ph/MeV | >30,000 ph/MeV | ¹³⁷Cs γ, PMT |
| **Decay Time** | 38-42 ns | 36-40 ns | PMT + fast scope |
| **Energy Resolution** | <9.5% @ 662 keV | <8.5% @ 662 keV | ¹³⁷Cs, MCA |
| **TOF Resolution** | <350 ps | <300 ps | ²²Na, TOF-PET |
| **Lu-176 Background** | <300 cps/cm³ | <150 cps/cm³ | HPGe, 4π |
| **Radiation Hardness** | <5% LY loss @ 10 kGy | <5% LY loss @ 10 kGy | ⁶⁰Co γ |
| **Thermal Stability** | No cracking ΔT=200°C | No cracking ΔT=200°C | Thermal cycle |

Chilean Lu₂O₃ Advantage:
- U/Th <1 ppm → **lowest intrinsic background** (Lu-176 from U/Th decay chain)
- Consistent stoichiometry → **reproducible Ce valence (Ce³⁺/Ce⁴⁺)**
- **Supply chain traceability** (mine → crystal) for IAEA safeguards
```

---

### 6.4 Chapter 6 Summary

**Sc-Al aerospace qualification** via **AMS 4340 + AWS D17.1** requires **Sc master alloy (2% Sc) from Chilean Sc metal** — **weldability without PWHT is the killer app**. **Y-SCR catalysts** require **Y₂O₃ 4N with D50<0.5μm** for **EPA Tier 4 / Euro 6 / IMO Tier III compliance** — **Chilean Y provides secure supply**. **Lu₂O₃ scintillators** require **U/Th <1 ppm, 4N+ purity** for **TOF-PET performance** — **Chilean Lu (Alpha-17) is the world's cleanest source**. All qualification pathways defined for Chilean feedstocks.

**Next Chapter**: Chapter 7 — Economic Model: Sc $300-500/kg, Y $25-40/kg, Lu $1,000-1,500/kg.

---
