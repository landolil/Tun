## Chapter 4: Specialty Alloy Supply Chain — Sc-Al, Y-SCR, Lu-Scintillators

### 4.1 End-to-End Supply Chain Architecture

```
CHILEAN SOURCES (DOC-16..20)
    │
    ├── IOCG HREE (Norte Grande/Chico) → Alpha-1..7
    ├── Porphyry Byproduct (Zona Central) → Alpha-7..11
    ├── Ion-Adsorption (Sur/Austral) → Bravo-6,7,8,9
    ├── Epithermal HREE (Alpha-14, Alpha-17) → Alpha-14,17
    └── Lateritic Sc (Alpha-14B) → Alpha-14B
    │
    ▼
AEGIS-FORGE STAGE 8 HREE SX
    │
    ├── Lu/Yb (25 stages, β=1.2) → Lu₂O₃ 4N
    ├── Y/La (8 stages, β=2.1) → Y₂O₃ 4N
    ├── Er/Tm/Yb sequential → Tm₂O₃, Yb₂O₃, Lu₂O₃ 4N
    └── Sc removal (pH 1.5) → Sc₂O₃ 3N
    │
    ▼
METAL REDUCTION (Chile — Qualifying Country)
    │
    ├── Lu: Ca-reduction + distillation → Lu metal ≥99.5%
    ├── Y:  Ca-reduction + distillation → Y metal ≥99.9%
    ├── Sc: Ca-reduction + distillation → Sc metal ≥99.5%
    │
    ▼
ALLOY/COMPOUND PRODUCTION
    │
    ├── **Sc-Al Master Alloy (2% Sc)** — Chile/US/Japan
    │   Sc + Al (99.99%) → Induction melt (750°C) → Ingot → Crush → Powder
    │
    ├── **Y₂O₃ for SCR** — Chile/US/EU/Japan
    │   Y₂O₃ 4N → Catalyst mfr (JM, BASF, Umicore, Haldor Topsoe)
    │
    ├── **Lu₂O₃ for Scintillators** — Chile/US/Japan
    │   Lu₂O₃ 4N → Crystal growth (Czochralski) → LSO:Ce/LYSO:Ce/LuAG:Ce
    │
    └── **Lu-177 Target** — Chile/US/EU
        Lu₂O₃ 4N (enriched Lu-176) → Reactor (n,γ) → NCA Lu-177
    │
    ▼
END-USE INTEGRATION
    │
    ├── Sc-Al: Airbus/Boeing/Embraer airframes (AMS 4340)
    ├── Y-SCR: JM/BASF/Umicore catalysts → HDD trucks, ships, power plants
    ├── Lu-Scint: Siemens/GE/United Imaging PET/CT (TOF-PET)
    └── Lu-177: Novartis/ITM/Novartis PRRT (Lutathera® generics)
```

---

### 4.2 Chilean Value Capture Analysis

| Stage | Location | Qualifying Country? | Value Capture | Strategic Priority |
|-------|----------|---------------------|---------------|-------------------|
| Mining | Chile | ✅ Chile | 10% | Baseline |
| Aegis-Forge SX | Chile | ✅ Chile | 25% | **High** |
| Stage 8 HREE Separation | Chile | ✅ Chile | 20% | **Critical** |
| **Metal Reduction** | **Chile (target)** | ✅ Chile | **30%** | **MAXIMIZE** |
| Alloy/Compound Production | Chile/US/Japan/EU | ✅ All | 10% | Optional |
| End-Use Integration | Global | Various | 5% | Downstream |

**Strategic Imperative**: **Locate metal reduction in Chile** (Ca-reduction for Lu/Y/Sc). Uses **HIF green H2** (Magallanes) + **grid GFM** (DOC-12). Captures **85% of specialty alloy/isotope value at Chilean gate**.

---

### 4.3 Sc-Al Master Alloy Production

#### 4.3.1 Process Specification

```
Sc-Al Master Alloy (2% Sc, balance Al) — AMS 4340 Compliant

Raw Materials:
- Al: 99.99% (primary, low Fe/Si)
- Sc: 99.5% (Aegis-Forge Chile, Ca-reduced)
- Flux: NaCl-KCl-CaF₂ (cover flux, prevent oxidation)

Process:
1. Melting:
   Al charge (750°C, induction furnace, Ar cover gas)
   Sc addition: 2.0 wt% (in Al-Sc intermediate alloy or Sc metal)
   Stirring: Electromagnetic (5 min) → homogenization
   
2. Casting:
   Direct chill casting (150 mm diameter, 2 m length)
   Cooling rate: 50-100°C/s → fine Al₃Sc dispersion
   
3. Homogenization:
   550°C, 24h, Ar → dissolve microsegregation
   
4. Processing:
   Hot rolling → Cold rolling → Annealing (350°C, 2h)
   Final: Sheet/Plate/Extrusion per AMS 4340

Quality Control:
- Sc content: 1.9-2.1% (ICP-OES)
- Fe: <0.10%, Si: <0.05%, Cu: <0.01%
- Grain size: ASTM E112, Grade 8-10 (50-100 μm)
- Tensile (sheet): UTS 350-400 MPa, YS 250-300 MPa, El 15-20%
- Weldability: AWS D17.1 — **no hot cracking, no PWHT required**
```

#### 4.3.2 Sc-Al Aerospace Applications

| Application | Alloy | Sc Content | Benefit | Status |
|-------------|-------|------------|---------|--------|
| **Airbus A350 Wing Ribs** | Al-Sc-Zr (Scalmalloy®) | 0.12% | Weldable, +15% strength | **Qualified, flying** |
| **Boeing 787 Fuselage Panels** | Al-Mg-Sc (AA5024 mod) | 0.3% | Weight -10%, weldable | **Qualification 2026** |
| **Embraer E2 Wing Box** | Al-Li-Sc | 0.1% Sc + 1.5% Li | Density 2.55, +20% strength | **Development** |
| **Rocket Tank (SpaceX/Blue Origin)** | Al-Sc-Zr | 0.15% | Cryogenic weldability | **Testing** |
| **UAV/Drone Airframes** | Al-Sc | 0.2% | Rapid mfg, weldable | **Production** |

**Chilean Sc Role**: **15 t/yr Sc = 750 t/yr Sc-Al master alloy (2%)** → **supports 15,000 t/yr Sc-Al aerospace products** — significant fraction of Western aerospace demand.

---

### 4.4 Y₂O₃ SCR Catalyst Supply Chain

#### 4.4.1 Catalyst Manufacturing (Johnson Matthey, BASF, Umicore, Haldor Topsoe)

```
Y₂O₃-Stabilized V₂O₅/WO₃-TiO₂ SCR Catalyst:

Formulation (Typical):
- TiO₂ (anatase): 70-80 wt%
- V₂O₅: 1-2 wt% (active)
- WO₃: 2-5 wt% (promoter)
- **Y₂O₃: 5-10 wt% (stabilizer)**
- Binder: SiO₂/silica sol

Manufacturing:
1. TiO₂ sol preparation (hydrolysis of Ti(OR)₄)
2. Y₂O₃ dispersion (ball mill, 2h, D50<0.5μm)
3. V₂O₅/WO₃ addition (ammonium metavanadate, ammonium tungstate)
4. Extrusion (honeycomb, 400-600 cpsi) or Plate (corrugated)
5. Drying (150°C) → Calcination (500-550°C, 2h)
6. Activation: SO₂ conditioning (forms surface V⁵⁺/V⁴⁺)

Chilean Y₂O₃ Spec for Catalyst Mfrs:
- Purity: ≥99.99% (4N)
- Particle Size: D50 <0.5 μm (dispersion critical)
- Surface Area: >10 m²/g (precursor)
- Impurities: Na <50 ppm, K <50 ppm, Cl <100 ppm
- Consistency: Lot-to-lot <2% variation
```

#### 4.4.2 SCR Market Demand for Y₂O₃

| Sector | 2024 Capacity (GW) | 2030 Capacity (GW) | Y₂O₃ Demand (t/yr) |
|--------|-------------------|-------------------|-------------------|
| **Coal Power (Retrofit)** | 500 | 300 | 15,000 |
| **Gas Turbine (New)** | 200 | 400 | 20,000 |
| **Marine (IMO Tier III)** | 50 | 200 | 10,000 |
| **Cement/Industrial** | 100 | 150 | 5,000 |
| **TOTAL** | **850** | **1,050** | **50,000 t/yr Y₂O₃** |

**Chilean Y Supply**: 280 t/yr Y = **330 t/yr Y₂O₃** → **0.7% of global SCR demand** — niche but **qualifying-country secure supply** for Western catalyst makers.

---

### 4.5 Lu₂O₃ Scintillator Supply Chain

#### 4.5.1 Crystal Growth (Czochralski)

```
LSO:Ce / LYSO:Ce Crystal Growth (US/Japan/EU — ITAR-free):

Feed Powder:
- Lu₂O₃ (Aegis-Forge, 4N, low U/Th <1 ppm)
- SiO₂ (99.999%, quartz-derived)
- CeO₂ (0.2-0.5 mol%, 99.999%)
- Y₂O₃ (for LYSO: 10-20 mol% Y on Lu site)
- Flux: LiF/B₂O₃ (optional, for LYSO)

Process:
1. Charge Melting:
   Iridium crucible (50-100 mm diameter)
   2,050°C, Ar (99.999%), Czochralski pull
   
2. Growth Parameters:
   Pull rate: 0.5-1.0 mm/h
   Rotation: 10-20 rpm
   After-heater: 1,800°C (thermal gradient control)
   Diameter: 30-50 mm, Length: 150-200 mm
   
3. Annealing:
   1,200°C, 50h, Ar → relieve stress, homogenize Ce

4. Fabrication:
   Orientation: <111> or <100> (XRD)
   Slicing: Wire saw (0.3mm, 50μm kerf)
   Polishing: <λ/10 @ 633 nm, Ra <5Å
   Coating: AR @ 420 nm (Ce emission) + 511 nm (annihilation)

Chilean Lu Advantage:
- **U/Th <1 ppm** (vs Chinese 5-10 ppm) → **lower intrinsic background**
- **Consistent 4N purity** → reproducible light yield/decay time
- **Supply security** for Western PET/CT OEMs (Siemens, GE, UIH, Canon)
```

---

### 4.6 Chapter 4 Summary

**Sc-Al master alloy** production in Chile/US/Japan enables **AMS 4340 weldable aerospace alloys** — **Chilean Sc (15 t/yr) supports 750 t/yr master alloy**. **Y₂O₃ for SCR catalysts** (50,000 t/yr global) — **Chilean Y (280 t/yr) provides qualifying-country secure supply**. **Lu₂O₃ for scintillators** — **Chilean Lu (35 t/yr, 438% of demand) with U/Th <1 ppm** enables **premium TOF-PET crystals (LSO/LYSO/LuAG)**. **All chains originate from Aegis-Forge 4N/3N oxides** with **Chilean metal reduction** capturing maximum value.

**Next Chapter**: Chapter 5 — Medical Isotope Integration: Lu-177 Production, Y-90, Radiopharmacy Supply Chain.

---
