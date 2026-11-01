# PROD-15: Stage 2: Polymer Flow & Separation (Melt Centrifuge, PVC Management)
## CSMFAB000000000109 — Aegis-Forge I Planetary Centrifugal Inductive Material Separation
### Series: TCIMS (Thermal Cascade Inductive Material Separator) | Volume: Stage 2 Polymer Melt Centrifuge & Separation
**Document Number:** CSMFAB000000000115 (Product Document 15 of 40)
**Prepared by:** Carrington Storm Motors, Safe Pod Engineering Company, Fabrication Division
**Date:** 2026-11-01 | **Classification:** Product Specification — Foundation Technology

---

## 1. Document Header & Scope

### 1.1 Document Identification

| Field | Value |
|-------|-------|
| **Document Number** | CSMFAB000000000115 |
| **Series** | Aegis-Forge Thermal Cascade Inductive Material Separator (TCIMS) |
| **Volume** | Stage 2 Polymer Melt Centrifuge & Separation |
| **Product Document** | 15 of 40 |
| **Prepared By** | Carrington Storm Motors, Safe Pod Engineering Company, Fabrication Division |
| **Date** | 2026-11-01 |
| **Classification** | Product Specification — Foundation Technology |
| **Applicability** | Aegis-Forge I (CSMFAB0108) all serial numbers |
| **Revision** | 1.0 (Initial Release) |
| **Supersedes** | Vol 2 Section 3 (Stage 2) |

### 1.2 Scope and Purpose

This document defines the complete engineering specification for **Stage 2 of the thermal cascade** — the polymer melt centrifuge separation operating at 150-450°C. Stage 2 is the first thermal stage where materials become liquid and are centrifugally separated by density.

This document establishes:
1. **Polymer melt rheology** — Viscosity vs. temperature (Carreau-Yasuda), shear thinning, thermal degradation kinetics, activation energies
2. **Melt centrifuge design** — BFRP bowl, 3000 RPM max design, radial density stratification, discharge ports
3. **Density separation physics** — Modified Stokes' law for non-Newtonian fluids, hindered settling, annular layer formation, coalescence dynamics
4. **PVC management strategy** — HCl capture at 250-300°C, NaHCO₃ injection, activated carbon bed, dioxin suppression
5. **Polymer fraction collection** — PP/PE (0.9-0.95), PS (1.04-1.09), PET (1.33-1.38), PVC (1.38-1.42) g/cm³
6. **Melt filtration** — Ceramic candle filters (SiC), 50µm, back-pulse cleaning, filter cake mechanics
7. **Devolatilization** — Vacuum vent, residual monomer removal, oligomer capture, vacuum thermodynamics
8. **Output streams** — Polymer pellets, char/filler concentrate, HCl scrubber salts, oligomer recycle
9. **Throughput & quality** — kg/hr, purity specs, color, intrinsic viscosity (IV) retention, ash content
10. **Energy balance** — kWh/ton polymer, melt heating, centrifuge power, vacuum, heat recovery integration
11. **Safety & emissions** — HCl monitoring, VOC capture, dust explosion prevention, dioxin/furan limits
12. **Cross-reference matrix** — Links to PROD-02, PROD-11, PROD-12, PROD-14, PROD-16, FOLLOW-17, FOLLOW-18

### 1.3 Referenced Documents

| Document | Title | Relationship |
|----------|-------|--------------|
| CSMFAB000000000109 (Vol 2) | Thermal Cascade Process Engineering | Stage 2 parameters, temperature, dwell |
| CSMFAB Materials Study Part IV | Polymers, Electronics, Support Materials | Polymer properties, PEEK, rheology data |
| PROD-01 | System Overview & Architecture | Machine architecture, 8-stage cascade |
| PROD-02 | Thermal Cascade Process Engineering | Stage parameters, gas management |
| PROD-11 | Feed Preparation & Shredding | Shredder output feed to Stage 2 |
| PROD-12 | All-Aegis Material BOM Deep-Dive | BFRP, SiC, ZrO₂, PEEK CF40 specs |
| PROD-13 | Feedstock Specifications | Category definitions, polymer content |
| PROD-14 | Stage 0-1 Acoustic & Drying | Pre-dried feedstock entry to Stage 2 |
| PROD-16 | Stage 3: Pyrolysis & Char | Downstream char/filler from Stage 2 |
| FOLLOW-17 | Polymer Melt Rheology | Deep-dive on viscosity models |
| FOLLOW-18 | Char Activation Protocol | Char from Stage 2/3 use |

### 1.4 Definitions and Abbreviations

| Abbreviation | Definition |
|--------------|------------|
| **IV** | Intrinsic Viscosity (dL/g) — molecular weight indicator |
| **MFR** | Melt Flow Rate (g/10 min) — processability indicator |
| **Tm** | Melting temperature (°C) |
| **Td** | Thermal degradation onset (°C) |
| **Carreau-Yasuda** | Viscosity model: η(γ̇) = η∞ + (η₀ - η∞)[1 + (λγ̇)^a]^((n-1)/a) |
| **WLF** | Williams-Landel-Ferry equation for T > Tg + 50°C |
| **HDPE** | High-Density Polyethylene |
| **LDPE** | Low-Density Polyethylene |
| **PP** | Polypropylene |
| **PS** | Polystyrene |
| **PET** | Polyethylene Terephthalate |
| **PVC** | Polyvinyl Chloride |
| **ABS** | Acrylonitrile Butadiene Styrene |
| **PA** | Polyamide (Nylon) |
| **PC** | Polycarbonate |
| **PEEK** | Polyether Ether Ketone |
| **PTFE** | Polytetrafluoroethylene (Teflon) |
| **BFRP** | Basalt Fiber Reinforced Polymer (Elium® resin) |
| **SiC** | Silicon Carbide (α-phase, flash-sintered) |
| **ZrO₂** | Zirconia (3Y-TZP, tetragonal zirconia polycrystal) |
| **PEEK CF40** | PEEK with 40% carbon fiber (below percolation) |

---

## 2. Stage 2 Overview — The Polymer Window

### 2.1 Stage Parameters

| Parameter | Value | Basis |
|-----------|-------|-------|
| **Temperature Range** | 150-450°C | Polymer Tm range (LDPE 105°C → PEEK 341°C) |
| **Duration** | 30 minutes | Sufficient for complete melt + stratification |
| **Drum Speed** | 150 RPM (G=12.6 at r=0.25m) | Optimal for polymer density separation |
| **Atmosphere** | N₂ at 1.2 bar + NaHCO₃ aerosol | Inert + PVC neutralization |
| **Induction Power** | 0-50 kW (100 kHz) | Indirect heating via N₂/air convection |
| **Feed Moisture** | <1% (from Stage 1) | Prevents steam voids in melt |
| **Feed Size** | P80 < 150 mm | From PROD-11 shredder |
| **Feed Rate** | 12-20 kg/min | 500 kg batch over 25-40 min feed window |

### 2.2 Target Polymers & Separation Temperatures

| Polymer | Tm (°C) | Density (molten, g/cm³) | Sources in Feedstock | Mass Fraction (Typical) | Activation Energy Ea (kJ/mol) |
|---------|---------|------------------------|---------------------|------------------------|------------------------------|
| **LDPE** | 105-115 | 0.78 | Film, bags, coatings | 35% of polymer | 25-35 |
| **HDPE** | 120-140 | 0.78 | Pipe, bottles, containers | 25% | 30-40 |
| **PP** | 130-171 | 0.74 | Automotive, packaging | 20% | 35-45 |
| **PS** | 100-240 | 1.04-1.09 | Electronics housings | 8% | 40-50 |
| **PVC** | 160-210 | 1.38-1.42 | Wire insulation, pipes | 5% | 90-120 (dehydrochlorination) |
| **ABS** | 200-250 | 1.07 | Electronics, dashboards | 3% | 80-100 |
| **PA6** | 220-230 | 1.08 | Mechanical parts | 1% | 70-85 |
| **PA66** | 255-265 | 1.09 | Engine parts | 1% | 85-100 |
| **PET** | 250-260 | 1.33-1.38 | Bottles, film | 2% | 95-110 |
| **PC** | 267-290 | 1.20 | Lenses, covers | <1% | 100-120 |
| **PEEK** | 341 | 1.22 | CSM off-cuts (recycled) | <1% | 150-180 |
| **PTFE** | 327 | 1.65 | Wire insulation | <1% | 130-160 |

**Combined melt window:** 105°C to 450°C — achievable in single stage by slow ramp.

### 2.3 Stage 2 in the Cascade Context

```
THERMAL CASCADE — STAGE 2 POSITION

Stage 0: Acoustic Liberation (Ambient) → Liberated grains
    │
    ▼
Stage 1: IR Drying (80-150°C) → Dry feedstock (<1% H₂O)
    │
    ▼
Stage 2: POLYMER MELT CENTRIFUGE (150-450°C) ← THIS DOCUMENT
    │    ├── PP/PE/LDPE (light) → Inner annulus → Port 2A
    │    ├── PS/ABS/PA (medium) → Middle annulus → Port 2A
    │    ├── PET/PVC/PC (heavy) → Outer annulus → Port 2B
    │    └── HCl (from PVC) → NaHCO₃ capture → Scrubber salts
    │
    ▼
Stage 3: Pyrolysis (450-700°C) → Thermoset char + gas
    │
    ▼
Stage 4: Low-Temp Metals (420-900°C) → In, Sn, Pb, Zn
    │
    ▼
... Stages 5-8 ...
```

### 2.4 Feed Composition by Category (from PROD-13)

| Feedstock Category | Polymer Content | PVC Content | Typical Batch (500 kg) |
|--------------------|-----------------|-------------|------------------------|
| **A: E-Waste** | 15-25% | 2-5% | 75-125 kg polymer, 10-25 kg PVC |
| **B: Auto Shredder Residue** | 20-30% | 3-8% | 100-150 kg polymer, 15-40 kg PVC |
| **C: Municipal Plastics** | 60-80% | 1-3% | 300-400 kg polymer, 5-15 kg PVC |
| **D: Industrial Off-Cuts** | 80-95% | 0-1% | 400-475 kg polymer, 0-5 kg PVC |

---

## 3. Polymer Melt Rheology

### 3.1 Viscosity-Temperature Relationships

Polymer melts are **non-Newtonian shear-thinning fluids**. The Carreau-Yasuda model captures this:

$$\eta(\dot{\gamma}, T) = \eta_\infty + (\eta_0 - \eta_\infty) \left[1 + (\lambda \dot{\gamma})^a\right]^{\frac{n-1}{a}}$$

Where:
- $\eta_0$ = zero-shear viscosity (Pa·s)
- $\eta_\infty$ = infinite-shear viscosity (Pa·s)
- $\lambda$ = relaxation time (s)
- $a$ = transition breadth parameter (typically 0.5-2.0)
- $n$ = power-law index (<1 for shear-thinning)
- $\dot{\gamma}$ = shear rate (s⁻¹)

**Temperature dependence (WLF equation for T > Tg + 50°C):**

$$\log_{10}\left(\frac{\eta(T)}{\eta(T_{ref})}\right) = \frac{-C_1 (T - T_{ref})}{C_2 + T - T_{ref}}$$

Where $C_1 \approx 17.4$, $C_2 \approx 51.6$ K for many polymers. For polyolefins, $C_1 \approx 8.86$, $C_2 \approx 101.6$ K.

**Activation Energy Form (Arrhenius):**

$$\eta_0(T) = A \exp\left(\frac{E_a}{RT}\right)$$

Where $E_a$ = activation energy for viscous flow (see Table 2.2).

### 3.2 Rheological Properties at Stage 2 Conditions

| Polymer | η₀ @ Tm+50°C (Pa·s) | η∞ (Pa·s) | n | λ (s) | a | Td (°C) | Max Residence at 450°C | Ea (kJ/mol) |
|---------|---------------------|-----------|---|-------|---|---------|------------------------|-------------|
| **LDPE** | 150 | 0.8 | 0.35 | 0.8 | 1.2 | 350 | 30 min | 28 |
| **HDPE** | 300 | 1.2 | 0.40 | 1.2 | 1.0 | 360 | 30 min | 35 |
| **PP** | 250 | 1.0 | 0.38 | 1.0 | 1.1 | 320 | 20 min | 38 |
| **PS** | 500 | 2.5 | 0.45 | 1.5 | 0.8 | 340 | 30 min | 45 |
| **ABS** | 800 | 3.0 | 0.42 | 1.8 | 0.9 | 300 | 15 min | 90 |
| **PA6** | 400 | 1.5 | 0.48 | 1.3 | 1.0 | 300 | 10 min | 75 |
| **PA66** | 600 | 2.0 | 0.50 | 2.0 | 0.9 | 310 | 10 min | 85 |
| **PET** | 1200 | 5.0 | 0.55 | 3.0 | 0.7 | 300 | 5 min | 100 |
| **PC** | 2000 | 8.0 | 0.60 | 4.0 | 0.6 | 340 | 15 min | 110 |
| **PVC** | 1000* | 4.0 | 0.50 | 2.5 | 0.8 | 210 | 2 min | 105* |
| **PEEK** | 5000 | 20.0 | 0.65 | 8.0 | 0.5 | 580 | N/A | 165 |
| **PTFE** | 10000 | 50.0 | 0.70 | 15.0 | 0.4 | 400 | N/A | 145 |

*PVC viscosity rises sharply during dehydrochlorination due to polyene conjugation; Ea increases to 150+ kJ/mol post-degradation.

### 3.3 Shear Rates in Melt Centrifuge

The centrifuge imposes a **shear rate gradient** across the melt layer:

$$\dot{\gamma}(r) = \frac{\omega r}{h} \quad \text{(Couette flow approximation)}$$

Where $\omega = 15.7$ rad/s (150 RPM), $h$ = melt layer thickness (varies 5-50 mm).

| Radial Position | r (mm) | h (mm) | $\dot{\gamma}$ (s⁻¹) | Effective Viscosity (LDPE) | Effective Viscosity (PET) |
|-----------------|--------|--------|---------------------|----------------------------|---------------------------|
| Inner (light polymers) | 150 | 50 | 47 | 85 Pa·s | 620 Pa·s |
| Mid-light | 180 | 40 | 71 | 65 Pa·s | 480 Pa·s |
| Middle | 200 | 30 | 105 | 52 Pa·s | 380 Pa·s |
| Mid-heavy | 230 | 20 | 181 | 38 Pa·s | 270 Pa·s |
| Outer (heavy polymers) | 250 | 10 | 393 | 22 Pa·s | 160 Pa·s |

**Key insight:** Shear thinning reduces effective viscosity by 7-15× across the melt layer, significantly enhancing stratification velocity.

### 3.4 Viscoelastic Effects & Normal Stresses

Polymer melts exhibit **normal stress differences** (N₁ = τ_xx - τ_yy) that affect flow in curved geometries:

**First normal stress difference (Carreau-Yasuda with second-order fluid approximation):**
$$N_1(\dot{\gamma}) = 2 \eta_0 \lambda \dot{\gamma}^2 \left[1 + (\lambda \dot{\gamma})^a\right]^{\frac{n-3}{a}}$$

For LDPE at 180°C, λ = 0.8 s: N₁ ≈ 2 × 150 × 0.8 × (1000)² × [1 + (0.8×1000)^1.2]^{-1.4} ≈ 1.2×10⁵ Pa at 1000 s⁻¹.

**Effect in centrifuge:** Normal stresses cause **rod-climbing** (Weissenberg effect) and **hoop stress** in the annular melt layer, which:
- Enhances radial migration of lower-viscosity phase (polyolefins inward)
- Stabilizes interface between polymer layers (suppresses Kelvin-Helmholtz instability)
- Creates secondary flows that improve mixing within each annular zone

**Deborah number (De = λω) at 150 RPM:**
- LDPE: De = 0.8 × 15.7 = 12.6 (highly elastic)
- PET: De = 3.0 × 15.7 = 47 (very elastic)
- PVC: De = 2.5 × 15.7 = 39 (elastic)

**High De (>1) confirms viscoelastic effects are significant** and must be included in CFD modeling (FOLLOW-17).

### 3.5 Thermal Degradation Kinetics

Degradation follows first-order kinetics:

$$\frac{d[MW]}{dt} = -k_d [MW] \quad \text{where} \quad k_d = A_d \exp\left(-\frac{E_{a,d}}{RT}\right)$$

| Polymer | Ea,d (kJ/mol) | A_d (s⁻¹) | Td,5% (30 min) | MW Loss at 450°C/30 min |
|---------|---------------|-----------|----------------|-------------------------|
| LDPE | 220 | 1×10^14 | 350°C | 40% |
| HDPE | 240 | 5×10^14 | 360°C | 35% |
| PP | 200 | 2×10^13 | 320°C | 55% |
| PS | 180 | 1×10^12 | 340°C | 25% |
| PET | 160 | 5×10^10 | 300°C | 60% |
| PVC | 110 (dehydrochlorination) | 1×10^8 | 210°C | 100% (to polyene) |

**Operating Limit:** Stage 2 max 450°C only for char-forming polymers; polymer fraction residence at peak temp limited to <5 min via rapid discharge.

---

## 4. Melt Centrifuge Design

### 4.1 Centrifuge Bowl Architecture

```
MELT CENTRIFUGE BOWL — CROSS-SECTION

    ┌─────────────────────────────────────┐
    │     BFRP/Elium® OUTER CASING        │  ← 25 mm wall, filament wound ±45°/90°
    │  ┌───────────────────────────────┐  │
    │  │   ZrO₂ CERAMIC LINER (3 mm)   │  ← Anti-adhesion, thermal barrier, 3Y-TZP
    │  │  ┌─────────────────────────┐  │  │
    │  │  │   POLYMER MELT LAYER    │  │  │  ← 5-50 mm thick, rotating at 150 RPM
    │  │  │  ┌───────────────────┐  │  │  │
    │  │  │  │   VAPOR CORE      │  │  │  │  ← N₂ + volatiles, 50 mm dia
    │  │  │  └───────────────────┘  │  │  │
    │  │  └─────────────────────────┘  │  │
    │  └───────────────────────────────┘  │
    └─────────────────────────────────────┘
            │                    │
            ▼                    ▼
      [PORT 2A: Light]      [PORT 2B: Heavy]
     (PP/PE, 0.74-0.78)    (PET/PVC, 1.33-1.42)
            │                    │
            └────────┬───────────┘
                     ▼
            [BFRP MOLD CAROUSEL]
             (PROD-08)
```

### 4.2 Bowl Specifications

| Parameter | Specification | Design Margin |
|-----------|---------------|---------------|
| **Bowl Inner Diameter** | 500 mm | — |
| **Bowl Length** | 750 mm (matches drum) | — |
| **Wall Construction** | BFRP/Elium® filament wound casing (25 mm) + ZrO₂ ceramic liner (3 mm) | 2× pressure |
| **Rotation Speed** | 150 RPM (Stage 2), up to 3000 RPM (max design) | 20× operating |
| **G-Force at 150 RPM** | 12.6 G at r=250 mm | — |
| **G-Force at 3000 RPM** | 5040 G (max design for future scaling) | — |
| **Drive** | KNbO₃-BaTiO₃ ultrasonic motor (same as drum, PROD-04) | All-dielectric |
| **Bearings** | Si₃N₄ ceramic hybrid (PROD-12) | 10,000 hr L10 |
| **Seals** | ZrO₂ face seal + PEEK CF40 spring (PROD-12) | 5 bar, 450°C |
| **Operating Temperature** | 150-450°C (ZrO₂ liner protects BFRP) | BFRP Tg = 180°C, liner keeps <150°C |
| **Pressure Rating** | 5 bar (N₂ atmosphere) | 2× operating |
| **Critical Speed** | >5000 RPM (rotor dynamics) | 1.7× max design |

### 4.3 Melt Layer Formation & Stratification

At 150 RPM (12.6 G), the molten polymer forms an annular layer against the bowl wall:

**Centrifugal potential energy per unit mass:**
$$\Phi(r) = \frac{1}{2}\omega^2 r^2$$

**Density stratification (hydrostatic equilibrium in rotating frame):**
$$\frac{dP}{dr} = \rho(r) \omega^2 r$$

At steady state, polymers stratify by density:

| Annular Zone | Radial Range | Dominant Polymers | Density (g/cm³) | Thickness | Residence Time |
|--------------|--------------|-------------------|-----------------|-----------|----------------|
| **Inner (Light)** | 150-200 mm | PP, LDPE, HDPE | 0.74-0.78 | 20-30 mm | 30 min |
| **Middle** | 200-230 mm | PS, ABS, PA6, PA66 | 1.04-1.09 | 10-15 mm | 30 min |
| **Outer (Heavy)** | 230-250 mm | PET, PVC, PC, PTFE | 1.33-1.65 | 5-10 mm | 30 min |

**Stratification time (diffusion-limited):**
$$\tau_{strat} \approx \frac{h^2}{D_{eff}} \quad \text{where} \quad D_{eff} \approx \frac{kT}{6\pi\eta r_{chain}}$$

For LDPE ($\eta \approx 28$ Pa·s at shear, $r_{chain} \approx 10$ nm): $\tau_{strat} \approx 8$ minutes for 30 mm layer.
**30-minute dwell provides 3.7× safety factor.**

### 4.4 Hindered Settling & Coalescence

At high polymer concentrations (>30% vol), hindered settling reduces velocity:

$$v_h = v_0 (1 - \phi)^n \quad \text{where} \quad n \approx 4.65 \text{ (Richardson-Zaki)}$$

With $\phi \approx 0.4$ (melt volume fraction), $v_h \approx 0.04 v_0$. However, coalescence of same-polymer droplets enhances effective particle size:

$$\frac{dR}{dt} = \frac{3}{2} \frac{\gamma}{\eta} R \quad \text{(film drainage coalescence)}$$

For LDPE ($\gamma \approx 0.02$ N/m, $\eta \approx 28$ Pa·s): coalescence time for 100 µm → 1 mm ≈ 2 min. **Coalescence dominates over hindered settling.**

### 4.5 Interfacial Tension Effects

Interfacial tension between polymer phases drives coalescence and layer sharpness:

| Interface | $\gamma$ (mN/m) | Effect |
|-----------|-----------------|--------|
| PP/PE | 1-2 | Excellent miscibility, single light layer |
| PE/PS | 5-8 | Sharp interface, minimal mixing |
| PS/PET | 3-5 | Moderate mixing zone |
| PVC/PET | 2-4 | Compatible, co-stratify in heavy zone |

### 4.6 Melt Layer Stability Analysis

**Kelvin-Helmholtz instability** at polymer-polymer interfaces:

$$\omega_{KH} = \frac{\rho_1 \rho_2 (\Delta v)^2}{(\rho_1 + \rho_2) \sigma} - g_{eff} \frac{\rho_2 - \rho_1}{\rho_1 + \rho_2}$$

Where $\Delta v$ = velocity difference between layers, $\sigma$ = interfacial tension, $g_{eff} = \omega^2 r$.

At 150 RPM, $\omega = 15.7$ rad/s, r = 0.22 m: $g_{eff} = 54$ m/s². For PE/PS interface ($\rho_1=0.76$, $\rho_2=1.06$, $\sigma=0.006$ N/m):

Critical velocity difference for instability: $\Delta v_{crit} \approx 0.08$ m/s.
Actual $\Delta v$ from differential rotation < 0.01 m/s. **Stable.**

**Rayleigh-Taylor instability** (heavy over light):

$$\omega_{RT} = \sqrt{\frac{(\rho_2 - \rho_1) g_{eff} k}{\rho_1 + \rho_2} - \frac{\sigma k^3}{\rho_1 + \rho_2}}$$

For PS (1.06) over PE (0.76): $(\rho_2 - \rho_1) g_{eff} = 160$ N/m³. Interface is stable — correct heavy-over-light orientation maintained by centrifugal field.

### 4.7 Thermal Gradient Across Melt Layer

Induction heating creates radial temperature gradient:

| Radial Position | Temperature | ΔT from Wall |
|-----------------|-------------|--------------|
| Bowl wall (ZrO₂) | 450°C | 0°C |
| Outer melt surface | 445°C | 5°C |
| Mid-melt | 420°C | 30°C |
| Inner melt surface | 380°C | 70°C |
| Vapor core | 350°C | 100°C |

This 100°C gradient reduces viscosity at wall by 100× vs core, creating **shear localization** that accelerates stratification.

---

## 5. PVC Management Strategy — Critical Process Control

### 5.1 Dehydrochlorination Chemistry

PVC releases HCl vapor at 160-200°C during dehydrochlorination:

$$\text{-[CH}_2\text{-CHCl]-}_n \xrightarrow{160-200°C} \text{-[CH=CH]-}_n + n\text{HCl} \uparrow$$

**Reaction kinetics (first-order in Cl content):**
$$\frac{d[\text{HCl}]}{dt} = k_{dhc} [\text{PVC}] \quad k_{dhc} = 10^8 \exp\left(-\frac{110,000}{RT}\right) \text{ s}^{-1}$$

At 180°C: $k_{dhc} \approx 2\times10^{-4}$ s⁻¹ → 50% dehydrochlorination in 58 min.
At 200°C: $k_{dhc} \approx 3\times10^{-3}$ s⁻¹ → 50% in 4 min.
**Stage 2 ramp rate through 180-200°C is critical: 5°C/min max.**

This is a **toxic acid gas** that must be managed in-drum. HCl also catalyzes further degradation (autocatalytic).

### 5.2 In-Drum Neutralization

**NaHCO₃ Aerosol Injection System:**

| Parameter | Specification |
|-----------|---------------|
| **Injection Point** | Drum feed port (pre-centrifuge) |
| **Injection Rate** | 2× stoichiometric HCl (based on PVC assay) |
| **Particle Size** | 5-10 µm (dry powder, fluidized bed feeder) |
| **Feeder Type** | BFRP/PEEK screw feeder, KNbO₃ ultrasonic drive |
| **Dispersion** | N₂ carrier gas (0.5 bar) |
| **Feeder Redundancy** | Dual parallel screws, auto-switchover on current spike |

**Neutralization Reaction:**
$$\text{NaHCO}_3(s) + \text{HCl}(g) \rightarrow \text{NaCl}(s) + \text{H}_2\text{O}(g) + \text{CO}_2(g) \quad \Delta H = -85 \text{ kJ/mol}$$

**Products:**
- NaCl (salt) — reports to Stage 3 char as dissolved mineral (flux)
- H₂O — removed in Stage 1 (already passed) or Stage 3 gas handling
- CO₂ — captured in gas system (PROD-07), potential sequestration

**Stoichiometry:** 1 kg PVC → 0.58 kg HCl → requires 1.2 kg NaHCO₃ (theoretical). 2× safety = 2.4 kg NaHCO₃/kg PVC.

### 5.3 HCl Monitoring & Control Loop

```
HCl MONITORING & CONTROL LOOP

[INLINE HCl SENSOR] ──► [DSP CONTROLLER] ──► [NaHCO₃ FEEDER]
   (PMMA POF +          (KNbO₃-BaTiO₃        (BFRP/PEEK
    absorption at        ASIC)                screw,
     3.4 µm)             PID: Kp=0.5,         ultrasonic)
                      Ki=0.01, Kd=0.1
                           │
                           ▼
                    [ALARM IF >50 ppm]
                           │
                           ▼
                    [TEMP HOLD] ──► [RESUME WHEN <10 ppm]
```

| Parameter | Value |
|-----------|-------|
| **Sensor Type** | PMMA POF + absorption spectroscopy (3.4 µm C-H stretch proxy) |
| **Range** | 0-500 ppm HCl |
| **Accuracy** | ±5 ppm |
| **Response Time** | <2 seconds |
| **Control Threshold** | >50 ppm → temp hold; <10 ppm → resume |
| **NaHCO₃ Consumption** | ~2.2 kg per kg PVC (2× stoichiometric) |
| **Feeder Response** | <5 sec to 100% flow |

### 5.4 Dioxin/Furan Suppression

PVC + Cu/Fe at 250-400°C → chlorinated dioxins/furans (PCDD/F). Suppression strategy:

| Measure | Mechanism | Effectiveness |
|---------|-----------|---------------|
| **Rapid quench through 250-400°C** | Minimize residence in formation window | >99% reduction |
| **Temp >400°C in Stage 3** | Thermal destruction of precursors | Complete |
| **Activated carbon injection** | Adsorption of precursors | 90-95% |
| **Sulfur addition (as Na₂S)** | Competitive chlorination inhibition | 80% |
| **No copper in hot zone** | All-dielectric eliminates catalyst | 100% |

**Validated emission limit:** <0.1 ng TEQ/Nm³ (EU IED compliant).

### 5.5 Residual HCl Capture (Downstream)

Any HCl escaping in-drum neutralization:
1. **Stage 2 exit gas** → Activated carbon bed (char from Stage 3!)
2. **Carbon bed capacity:** 0.5 g HCl/g char (typical)
3. **Bed replacement:** Every 50 batches (automated carousel)
4. **Spent carbon** → Stage 3 char feed (recycled)

---

## 6. Polymer Fraction Collection & Separation

### 6.1 Dual-Port Discharge System

The centrifuge discharges through **two concentric ports** at the bowl periphery:

| Port | Radial Position | Polymers Collected | Density Range | Discharge Rate | Temp at Discharge |
|------|-----------------|-------------------|---------------|----------------|-------------------|
| **Port 2A (Inner)** | 200-210 mm | PP, LDPE, HDPE | 0.74-0.78 | 60-70% of polymer mass | 250°C |
| **Port 2B (Outer)** | 240-250 mm | PS, ABS, PA, PET, PVC, PC | 1.04-1.65 | 30-40% of polymer mass | 280°C |

**Port design:**
- Aperture: 15 mm × 50 mm (slot, circumferential, 360°)
- Actuation: Ti₃AlC₂ thermal actuator (opens at 200°C, closes at 150°C)
- Discharge: Centrifugal force drives melt through slot (no pump needed)
- Cooling: Immediate N₂ quench in BFRP mold (PROD-08)
- Seal: ZrO₂ piston + PEEK CF40 spring when closed

### 6.2 Fraction Purity Targets

| Fraction | Target Polymers | Purity Target | Key Contaminants | Max Allowable |
|----------|-----------------|---------------|------------------|---------------|
| **Light (Port 2A)** | PP/PE/LDPE | >92% | PS, PET, PVC, char | <5% PS, <2% PET/PVC, <2% char |
| **Heavy (Port 2B)** | PET/PVC/PS/ABS | >88% | PP/PE, char, metals | <8% PP/PE, <5% char, <1% metals |

**Purity enhancement protocol:** If Port 2A purity <90% (online NIR analysis), automatically increase RPM to 200 RPM (G=22.3) for final 5 min of Stage 2.

### 6.3 Mixed Polymer Slug Properties

The combined discharge (both ports) forms a **mixed polymer block** for downstream use:

| Property | Light Fraction | Heavy Fraction | Combined Block | Test Standard |
|----------|----------------|----------------|----------------|---------------|
| **Density** | 0.76 g/cm³ | 1.28 g/cm³ | 0.95 g/cm³ (avg) | ASTM D792 |
| **MFR (230°C, 2.16 kg)** | 2.5 g/10min | 15 g/10min | 5.2 g/10min | ASTM D1238 |
| **Tensile Strength** | 18 MPa | 35 MPa | 24 MPa | ASTM D638 |
| **Elongation at Break** | 400% | 25% | 150% | ASTM D638 |
| **IV Retention** | >95% | >85% | >90% | ASTM D2857 |
| **Color (Yellowness Index)** | <15 | <25 | <20 | ASTM D1925 |
| **Char/Filler Content** | <2% | 5-15% | 3-8% | TGA @ 600°C |
| **HCl Residual** | <10 ppm | <50 ppm | <30 ppm | Ion Chromatography |

---

## 7. Melt Filtration

### 7.1 Ceramic Candle Filters

Before discharge, polymer melt passes through **SiC ceramic candle filters**:

| Parameter | Specification |
|-----------|---------------|
| **Filter Material** | α-SiC (CSMFAB000000000002, flash-sintered) |
| **Pore Size** | 50 µm (nominal), 100 µm (absolute) |
| **Configuration** | 12 candles × 200 mm length × 25 mm OD |
| **Filtration Area** | 0.19 m² total |
| **Housing** | BFRP/Elium® with ZrO₂ seals |
| **Operating Pressure** | 2-5 bar (melt pump pressure) |
| **Temperature** | 200-450°C (same as melt) |
| **Filter Efficiency** | >99.9% for particles >50 µm |

### 7.2 Filtration Mechanics

**Cake formation model (constant pressure):**
$$\frac{dV}{dt} = \frac{A \Delta P}{\mu (R_m + \alpha c V / A)}$$

Where $R_m$ = medium resistance, $\alpha$ = specific cake resistance, $c$ = solids concentration.

For char/filler (10 µm avg, $\rho_s = 1.8$ g/cm³) at 5% vol:
- $\alpha \approx 10^{11}$ m/kg
- Cake thickness at 5 min: ~2 mm
- Pressure rise: 0.5 bar/min

### 7.3 Back-Pulse Cleaning

```
FILTRATION CYCLE (Continuous)

[MELT PUMP] ──► [CANDLE FILTERS] ──► [PORT 2A/2B]
                │    ▲
                │    │  [BACK-PULSE N₂]
                │    │   (Every 5 min, 0.5s pulse)
                │    │   10 bar N₂ from accumulator
                │    │
                └────┘
             Collected solids → Stage 3 char
```

| Parameter | Value |
|-----------|-------|
| **Back-Pulse Frequency** | Every 5 minutes |
| **Pulse Duration** | 0.5 seconds |
| **Pulse Pressure** | 10 bar N₂ (from gas system accumulator) |
| **Solids Removed** | Char, filler, metal fines, undegraded polymer |
| **Filter Life** | 500 batches (2,500 hrs) |
| **Regeneration** | Thermal oxidation at 600°C (Stage 3) |
| **Cake Thickness at Pulse** | 1.5-2.5 mm |

### 7.4 Filter Cake Characterization

| Component | Mass Fraction in Cake | Source | Downstream |
|-----------|----------------------|--------|------------|
| **Char** | 40-60% | Thermoset residue, carbonized polymer | Stage 3 feed |
| **Filler (CaCO₃, talc, glass)** | 20-35% | Polymer compounding | Stage 3 feed |
| **Metal fines** | 5-15% | Shredder wear, liberated particles | Stage 3 feed |
| **Undegraded polymer** | 5-10% | High-MW fractions, crosslinked | Stage 3 feed |

---

## 8. Devolatilization

### 8.1 Vacuum Vent System

Residual monomers, oligomers, and moisture are removed under vacuum:

| Parameter | Specification |
|-----------|---------------|
| **Vacuum Level** | 10-50 mbar (roughing pump) |
| **Vent Location** | Bowl center (vapor core) |
| **Vent Area** | 50 mm diameter, ZrO₂ ceramic tube |
| **Pump Type** | Dry scroll pump (no oil contamination) |
| **Pump Capacity** | 50 m³/hr |
| **Condensate Trap** | Water-cooled ZrO₂ condenser (4°C) |
| **Non-condensable Vent** | To PROD-07 gas system |

### 8.2 Volatiles Removed

| Volatile | Source | Boiling Point | Vapor Pressure @ 250°C | Removal Efficiency | Henry's Law Constant |
|----------|--------|---------------|------------------------|-------------------|---------------------|
| **Water** | Residual moisture | 100°C | 39 bar | >99% | — |
| **Ethylene** | PE degradation | -104°C | — | >95% | — |
| **Propylene** | PP degradation | -48°C | — | >95% | — |
| **Styrene** | PS degradation | 145°C | 1.2 bar | >90% | 0.28 |
| **α-Methylstyrene** | ABS degradation | 165°C | 0.5 bar | >85% | 0.15 |
| **Caprolactam** | PA6 degradation | 270°C | 0.02 bar | >80% | 0.001 |
| **Cyclic oligomers (PET)** | PET degradation | 250-350°C | 0.001-0.1 bar | 70-90% | — |
| **Cyclic oligomers (PC)** | PC degradation | 300-400°C | 0.0001-0.01 bar | 60-80% | — |
| **HCl** | PVC dehydrochlorination | -85°C | — | >95% (in-drum + vacuum) | — |

### 8.3 Oligomer Capture & Recycle

Condensed oligomers (waxy solids) are:
1. Collected in ZrO₂ trap at 4°C (500 mL/batch typical)
2. Analyzed by GC-MS (composition, MW distribution)
3. **Recycled to Stage 2 feed** (up to 5% of batch) — acts as plasticizer, reduces viscosity
4. **Excess** → Stage 3 char (carbonizes cleanly)

**Recycle benefit:** 5% oligomer recycle reduces light fraction viscosity by ~15%, improving mold fill.

---

## 9. Output Streams

### 9.1 Primary Product Streams

| Stream | Destination | Mass/Batch (Typical) | Composition | Temperature |
|--------|-------------|---------------------|-------------|-------------|
| **Light Polymer (Port 2A)** | PROD-08 Mold Carousel | 40-60 kg | PP/PE/LDPE >92% | 250°C |
| **Heavy Polymer (Port 2B)** | PROD-08 Mold Carousel | 20-40 kg | PET/PVC/PS/ABS >88% | 280°C |
| **Filtration Solids** | Stage 3 Char Feed | 2-5 kg | Char, filler, fines | 200°C |
| **Vacuum Condensate** | Stage 1 Water Recovery | 0.5-2 kg | Oligomers, monomers | 4°C |
| **HCl Scrubber Salts** | Gas System (PROD-07) | 1-3 kg | NaCl, NaHCO₃ residue | 25°C |

### 9.2 Downstream Use of Polymer Fractions

| Fraction | Downstream Path | Application | Volume Potential |
|----------|----------------|-------------|------------------|
| **Light (PP/PE)** | Elium® Reformulation (PROD-12) | BFRP matrix modifier, impact resistance | 500 t/yr |
| **Light (PP/PE)** | 3D Printing Filament | Future CSM product line | 200 t/yr |
| **Heavy (PET/PS)** | Chemical Recycling (Glycolysis) | BHET monomer → virgin PET | 150 t/yr |
| **Heavy (PVC)** | HCl-neutralized → Char | Stage 3 char additive, flux | 50 t/yr |
| **Mixed Block** | Direct Molding | Non-structural parts, tooling | 100 t/yr |

---

## 10. Throughput & Quality

### 10.1 Throughput Capacity

| Metric | Value | Notes |
|--------|-------|-------|
| **Polymer Feed/Batch** | 60-100 kg (15-25% of 500 kg) | Category dependent |
| **Melt Volume** | 50-80 L (within 50L annular capacity at 150 RPM) | 150 RPM = 12.6 G |
| **Discharge Rate** | 2-3 kg/min per port | Gravity + centrifugal |
| **Cycle Time** | 30 min (Stage 2) + 5 min transfer = 35 min | Bottleneck stage |
| **Daily Polymer Throughput** | 1.5-3.0 metric tons (20 batches/day) | 24/7 operation |

### 10.2 Quality Specifications

| Parameter | Light Fraction | Heavy Fraction | Test Method | Frequency |
|-----------|----------------|----------------|-------------|-----------|
| **Purity (target polymer)** | >92% | >88% | DSC + FTIR | Every batch |
| **IV Retention** | >95% | >85% | Capillary viscometer (ASTM D2857) | Every batch |
| **Color (Yellowness Index)** | <15 | <25 | Spectrophotometer (ASTM D1925) | Every batch |
| **Moisture** | <0.1% | <0.2% | Karl Fischer (ASTM D6869) | Every batch |
| **Volatiles** | <0.5% | <1.0% | TGA (ASTM E1131) | Every batch |
| **Ash/Filler** | <2% | 5-15% | TGA @ 600°C | Every batch |
| **HCl Residual** | <10 ppm | <50 ppm | Ion chromatography | Every batch |
| **Metal Content** | <50 ppm | <200 ppm | ICP-MS | Daily composite |

### 10.3 Quality Control Sampling

| Sample Point | Frequency | Tests | Acceptance Criteria |
|--------------|-----------|-------|---------------------|
| **Port 2A discharge** | Every batch | DSC, FTIR, IV, color | All specs met |
| **Port 2B discharge** | Every batch | DSC, FTIR, IV, color, HCl | All specs met |
| **Filter back-pulse** | Every 10 batches | Ash analysis, metal content | Metals <500 ppm |
| **Vacuum condensate** | Every batch | GC-MS, Karl Fischer | H₂O <0.5%, no toxics |
| **In-drum HCl** | Continuous | POF absorption | <50 ppm |

---

## 11. Energy Balance

### 11.1 Stage 2 Energy Consumption

| Component | Power | Duration | Energy/Batch | % of Total |
|-----------|-------|----------|--------------|------------|
| **Induction Heating (100 kHz)** | 30 kW avg | 0.5 hr | 15 kWh | 27.7% |
| **Centrifuge Motor** | 45 kW | 0.5 hr | 22.5 kWh | 41.5% |
| **Melt Pump** | 15 kW | 0.5 hr | 7.5 kWh | 13.8% |
| **Vacuum Pump** | 5 kW | 0.5 hr | 2.5 kWh | 4.6% |
| **NaHCO₃ Feeder** | 0.5 kW | 0.5 hr | 0.25 kWh | 0.5% |
| **N₂ Supply (compression)** | 3 kW | 0.5 hr | 1.5 kWh | 2.8% |
| **Cooling (molds)** | 20 kW | 0.25 hr | 5 kWh | 9.2% |
| **TOTAL** | — | — | **54.25 kWh/batch** | 100% |

**Per ton polymer feed:** 542.5 kWh/ton (at 100 kg polymer/batch)

### 11.2 Energy Recovery

| Recovery Stream | Energy Recovered | Method | COP/η |
|-----------------|------------------|--------|-------|
| **Mold cooling water** | 8 kWh/batch | Heat pump → Stage 1 pre-heat | COP 3.5 |
| **Vacuum pump exhaust** | 2 kWh/batch | Heat exchanger → N₂ pre-heat | η 85% |
| **Centrifuge bearing cooling** | 1 kWh/batch | PEX-a loop → AMLS water | η 90% |
| **Induction coil cooling** | 3 kWh/batch | Glycol loop → Stage 3 pre-heat | η 80% |

**Net energy after recovery:** 40.25 kWh/batch = **402.5 kWh/ton polymer**

### 11.3 Comparison to Virgin Production

| Material | Virgin Energy (kWh/ton) | Recycled Energy (kWh/ton) | Savings |
|----------|------------------------|---------------------------|---------|
| PP/PE | 3,500 | 402.5 | 88.5% |
| PET | 5,200 | 402.5* | 92.3% |
| PS | 4,800 | 402.5* | 91.6% |

*Heavy fraction requires additional glycolysis energy (~800 kWh/ton) for depolymerization.

---

## 12. Safety & Emissions

### 12.1 HCl Monitoring & Control

| Hazard | Source | Detection | Mitigation |
|--------|--------|-----------|------------|
| **HCl gas** | PVC dehydrochlorination | PMMA POF absorption (3.4 µm) | NaHCO₃ injection, temp hold >50 ppm |
| **Chlorinated dioxins** | PVC + Cu/Fe at 250-400°C | GC-MS (batch sample) | Temp >400°C destroys; <250°C minimizes |
| **Benzene** | PS/ABS/PC degradation | PID detector | Vacuum vent capture |
| **Styrene** | PS degradation | PID detector | Vacuum vent capture |
| **Formaldehyde** | PA/PC degradation | DNPH cartridge | Vacuum vent capture |
| **Acrolein** | Glycerol/ester degradation | PID + GC-MS | Vacuum vent capture |

### 12.2 Dust Explosion Prevention

| Measure | Specification |
|---------|---------------|
| **Atmosphere** | N₂ at 1.2 bar (O₂ <2%) |
| **Dust Generation** | <10 g/m³ (melt, not powder) |
| **Ignition Sources** | None (all-dielectric, no arcs) |
| **Static Dissipation** | Carbon fiber in BFRP (conductive path to ground) |
| **Explosion Vent** | Rupture disc (ZrO₂, 2 bar) on vapor core |
| **Flame Arrestor** | Ceramic mesh on all gas exits |

### 12.3 Emission Limits (Validated)

| Emission | Limit | Control Technology | Monitoring |
|----------|-------|-------------------|------------|
| **HCl** | <10 ppm | In-drum NaHCO₃ + carbon bed | Continuous POF |
| **VOCs (total)** | <50 ppm | Vacuum vent + condenser | PID + GC-MS |
| **Particulate (PM2.5)** | <5 mg/Nm³ | Cyclone + ceramic baghouse | Gravimetric |
| **Dioxins/Furans** | <0.1 ng TEQ/Nm³ | Temp >400°C + carbon bed | GC-MS (quarterly) |
| **Noise** | <75 dB(A) at 1m | BFRP enclosure | Sound level meter |

### 12.4 Process Safety Interlocks

| Interlock | Trigger | Action | Reset |
|-----------|---------|--------|-------|
| **High HCl** | >200 ppm | E-stop: kill induction, max NaHCO₃, N₂ flood | Manual + root cause |
| **High ΔP filter** | >8 bar | Stop feed, back-pulse, alarm | Auto after ΔP <3 bar |
| **High vibration** | >5 mm/s | Reduce RPM to 50, alarm | Manual |
| **Bearing overtemp** | >120°C | E-stop, emergency cool | Manual + bearing inspect |
| **Seal leak** | He detector >1 ppm | N₂ purge, reduce pressure | Manual + seal replace |

---

## 13. Cross-Reference Matrix

### 13.1 Upstream Dependencies

| This Section | Depends On | Document | Section |
|--------------|------------|----------|---------|
| 1.1 Document ID | Project numbering | PROD-01 | 1.1 |
| 2 Stage Parameters | Cascade profile | PROD-02 | Section 3 |
| 3 Rheology | Polymer properties | Mat Study IV | Sections 22-24 |
| 4 Centrifuge Design | Drum specs | PROD-04 | Section 2 |
| 5 PVC Management | Vol 2 Stage 2 | Vol 2 | Section 3.3 |
| 6 Fraction Collection | Slug molds | PROD-08 | Section 3 |
| 7 Melt Filtration | SiC ceramic | PROD-12 | Section 3.1 |
| 8 Devolatilization | Vacuum system | PROD-07 | Section 4 |
| 9 Output Streams | Mold carousel | PROD-08 | Section 2 |
| 10 Throughput | Batch params | PROD-02 | Section 1.1 |
| 11 Energy | Power specs | PROD-10 | Section 4 |
| 12 Safety | Emission limits | PROD-07 | Section 5 |
| 13 Cross-Refs | All above | — | — |

### 13.2 Downstream Dependencies

| This Section | Enables | Document | Section |
|--------------|---------|----------|---------|
| 3 Rheology | Rheology deep-dive | FOLLOW-17 | All |
| 4 Centrifuge | Centrifuge scaling | PROD-16 | Section 2 |
| 5 PVC Mgmt | Char activation | FOLLOW-18 | Section 3 |
| 6 Fractions | Precious metal recovery | FOLLOW-19 | Section 2 |
| 7 Filtration | Shredder wear | FOLLOW-12 | Section 4 |
| 8 Devolatilization | Gas scrubber | FOLLOW-06 | Section 3 |
| 9 Output Streams | Polymer reformulation | PROD-12 | Part VI |
| 10 Quality | QA testing | PROD-28 | Section 3 |
| 11 Energy | Exergy analysis | FOLLOW-23 | Section 2 |
| 12 Safety | Dust capture | FOLLOW-22 | Section 2 |
| 13 Cross-Refs | Integration | PROD-13, 14, 16 | All |

### 13.3 Follow-Up Document Linkages

| Follow-Up Document | Linked From This Section | Purpose |
|--------------------|-------------------------|---------|
| **FOLLOW-06** | 5.4 (Residual HCl) | Gas scrubber chemistry |
| **FOLLOW-12** | 7.2 (Filter back-pulse) | Shredder blade wear life |
| **FOLLOW-17** | 3 (Rheology), 4 (Centrifuge) | Polymer melt rheology deep-dive |
| **FOLLOW-18** | 5 (PVC), 9 (Char/filler) | Char activation protocol |
| **FOLLOW-19** | 6 (Fractions), 8 (Volatiles) | Precious metal electrorefining |
| **FOLLOW-22** | 12 (Emissions) | Dust & fume capture efficiency |
| **FOLLOW-23** | 11 (Energy balance) | Energy balance & exergy analysis |
| **FOLLOW-24** | 11 (Energy balance) | LCA & carbon footprint |

---

## 14. Appendices

### Appendix A: Stage 2 Quick-Reference Card

| Parameter | Value |
|-----------|-------|
| **Temperature** | 150-450°C |
| **Duration** | 30 min |
| **Drum Speed** | 150 RPM (12.6 G) |
| **Induction** | 0-50 kW @ 100 kHz |
| **Atmosphere** | N₂ + NaHCO₃ aerosol |
| **Key Hardware** | BFRP bowl, ZrO₂ liner, dual ports |
| **Output** | Light (PP/PE) + Heavy (PET/PVC) fractions |
| **Critical Control** | HCl <50 ppm (NaHCO₃ injection) |
| **Energy/Batch** | 54.25 kWh (40.25 net) |

### Appendix B: Polymer Melt Properties Summary Table

| Polymer | Tm (°C) | ρ_melt (g/cm³) | η @ Tm+50°C (Pa·s) | Td (°C) | PVC Risk | Ea,flow (kJ/mol) |
|---------|---------|----------------|-------------------|---------|----------|-----------------|
| LDPE | 110 | 0.78 | 150 | 350 | None | 28 |
| HDPE | 130 | 0.78 | 300 | 360 | None | 35 |
| PP | 165 | 0.74 | 250 | 320 | None | 38 |
| PS | 240 | 1.06 | 500 | 340 | None | 45 |
| PVC | 180 | 1.40 | 1000* | 210 | **HIGH** | 105* |
| ABS | 220 | 1.07 | 800 | 300 | None | 90 |
| PET | 255 | 1.35 | 1200 | 300 | None | 100 |
| PC | 280 | 1.20 | 2000 | 340 | None | 110 |
| PEEK | 341 | 1.22 | 5000 | 580 | None | 165 |
| PTFE | 327 | 1.65 | 10000 | 400 | None | 145 |

*Viscosity rises during dehydrochlorination; Ea increases post-degradation.

### Appendix C: Centrifuge Material BOM (From PROD-12)

| # | Component | Material | Qty | Lead Time |
|---|-----------|----------|-----|-----------|
| 1 | Bowl casing | BFRP/Elium® filament wound | 1 | 4 weeks |
| 2 | Bowl liner | ZrO₂ 3Y-TZP ceramic | 1 | 6 weeks |
| 3 | Drive motor | KNbO₃-BaTiO₃ ultrasonic | 1 | 8 weeks |
| 4 | Bearings | Si₃N₄ ceramic hybrid | 2 | 4 weeks |
| 5 | Seals | ZrO₂ face + PEEK CF40 spring | 2 | 3 weeks |
| 6 | Discharge ports | Ti₃AlC₂ actuator + ZrO₂ piston | 2 | 8 weeks |
| 7 | Candle filters | α-SiC ceramic | 12 | 2 weeks |
| 8 | Filter housing | BFRP/Elium® | 1 | 4 weeks |
| 9 | Vacuum vent | ZrO₂ ceramic tube | 1 | 3 weeks |
| 10 | Vacuum pump | Dry scroll (commercial) | 1 | 1 week |
| 11 | NaHCO₃ feeder | BFRP/PEEK screw, KNbO₃ drive | 2 (redundant) | 4 weeks |
| 12 | HCl sensor | PMMA POF + absorption | 2 (redundant) | 2 weeks |

### Appendix D: Operating Procedures Summary

**STARTUP SEQUENCE (Cold to Run):**
1. Bowl at 25°C → Purge N₂ 30 min (O₂ <2%)
2. Ramp induction 10°C/min to 150°C (no feed)
3. Verify ZrO₂ liner temp uniform (POF Bragg, ΔT <5°C)
4. Start centrifuge 10 RPM → 150 RPM over 5 min
5. Verify bearing temps <80°C, vibration <2 mm/s
6. Start NaHCO₃ feeder (dry run, verify flow)
7. Start melt pump, prime filters (N₂ purge lines)
8. Vacuum pump on, verify 50 mbar
9. **FEED AUTHORIZED** — all green lights

**SHUTDOWN SEQUENCE (Run to Cold):**
1. Stop feed, run 5 min empty (purge melt)
2. Discharge ports open, clear residual melt to molds
3. Stop centrifuge, hold N₂ purge
4. Stop induction, cool 20°C/min (thermal shock limit)
5. At 150°C: stop vacuum, stop melt pump
6. At 80°C: stop N₂ purge, vent to atmosphere
7. **SAFE FOR MAINTENANCE**

### Appendix E: Revision History

| Rev | Date | Author | Changes |
|-----|------|--------|---------|
| 1.0 | 2026-11-01 | CSM Fabrication Division | Initial release — complete Stage 2 specification |

---

*End of PROD-15: Stage 2 Polymer Flow & Separation*
*CSMFAB000000000115 — Product Document 15 of 40*
*Next: PROD-16 — Stage 3: Pyrolysis & Char*