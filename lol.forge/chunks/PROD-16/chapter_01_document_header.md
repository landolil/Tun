# PROD-16: Stage 3: Pyrolysis & Char (Thermoset Decomposition, Char Activation, Inorganic Transformation)
## CSMFAB000000000116 — Aegis-Forge I Planetary Centrifugal Inductive Material Separation
### Series: TCIMS (Thermal Cascade Inductive Material Separator) | Volume: Stage 3 Pyrolysis & Char
**Document Number:** CSMFAB000000000116 (Product Document 16 of 40)
**Prepared by:** Carrington Storm Motors, Safe Pod Engineering Company, Fabrication Division
**Date:** 2026-11-01 | **Classification:** Product Specification — Foundation Technology

---

## 1. Document Header & Scope

### 1.1 Document Identification

| Field | Value |
|-------|-------|
| **Document Number** | CSMFAB000000000116 |
| **Series** | Aegis-Forge Thermal Cascade Inductive Material Separator (TCIMS) |
| **Volume** | Stage 3 Pyrolysis & Char |
| **Product Document** | 16 of 40 |
| **Prepared By** | Carrington Storm Motors, Safe Pod Engineering Company, Fabrication Division |
| **Date** | 2026-11-01 |
| **Classification** | Product Specification — Foundation Technology |
| **Applicability** | Aegis-Forge I (CSMFAB0108) all serial numbers |
| **Revision** | 1.0 (Initial Release) |
| **Supersedes** | Vol 2 Section 4 (Stage 3) |

### 1.2 Scope and Purpose

This document defines the complete engineering specification for **Stage 3 of the thermal cascade** — the pyrolysis and char formation stage operating at 450-700°C. Stage 3 processes the thermoset polymers and residual organics that did not melt in Stage 2, converting them into valuable carbon char and combustible pyrolysis gas.

This document establishes:
1. **Stage Parameters** — 450-700°C, 45 min, N₂/CO₂ atmosphere, 150 RPM, 100 kHz induction
2. **Thermoset Decomposition Kinetics** — Epoxy, phenolic, polyester, polyurethane, rubber; Arrhenius parameters
3. **Char Formation & Morphology** — Fixed carbon, volatile matter, ash, BET surface area, pore structure
4. **Gas Evolution Profile** — CO, CO₂, CH₄, H₂, H₂O, light hydrocarbons; mass spec timing
5. **Char Activation Protocol (In-Situ)** — Steam/CO₂ activation at 800-900°C, surface area >800 m²/g
6. **Inorganic Transformation** — Filler minerals (CaCO₃→CaO, talc, glass fibers), slag formation
7. **REE Partitioning** — Nd/Sm/Co from Stage 2 heavy fraction → Stage 7; Ce/La from zircon → Stage 8
8. **Output Streams** — Activated char (Stage 4 flux, Stage 1 adsorption), pyrolysis gas (PROD-07), slag (Stage 7)
9. **Throughput & Quality** — Char yield 15-25%, fixed carbon >80%, iodine number >800 mg/g
10. **Energy Balance** — Endothermic pyrolysis vs exothermic char oxidation, net kWh/ton
11. **Safety & Emissions** — Tar cracking, PAH limits, dust explosion prevention (N₂ inerting)
12. **Control System** — Temperature ramp profile, gas composition feedback, char quality hold points
13. **Cross-Reference Matrix** — Links to PROD-02, 07, 12, 15, 17, FOLLOW-18

### 1.3 Referenced Documents

| Document | Title | Relationship |
|----------|-------|--------------|
| CSMFAB000000000109 (Vol 2) | Thermal Cascade Process Engineering | Stage 3 parameters, temperature, dwell |
| CSMFAB Materials Study Part I | Ultra-High Temperature Ceramics | ZrB₂-SiC, SiC, ZrO₂, aerogels |
| CSMFAB Materials Study Part IV | Polymers, Electronics, Support Materials | PEEK, polymers (for char context) |
| CSMFAB Materials Study Part V | Critical Minerals and Rare Earths | Indium, REEs, zircon, monazite |
| CSMFAB Materials Study Part VI | Phoenix Protocol & Circular Economy | Char activation, circular loops |
| PROD-02 | Thermal Cascade Process Engineering | Stage parameters, gas management, dwell times |
| PROD-07 | Gas Capture & Fume Solidification | CO₂, SO₂, HCl, plasma treatment |
| PROD-12 | All-Aegis Material BOM Deep-Dive | BFRP, SiC, ZrO₂, PEEK CF40, Ti₃AlC₂, KNbO₃ specs |
| PROD-15 | Stage 2: Polymer Flow & Separation | Char/filler output from Stage 2, HCl salts, oligomer recycle |
| PROD-17 | Stage 4: Low-Temp Metals | Downstream metal separation |
| FOLLOW-18 | Char Activation Protocol | Deep-dive on steam/CO₂ activation |

### 1.4 Definitions and Abbreviations

| Abbreviation | Definition |
|--------------|------------|
| **TG/DTG** | Thermogravimetric / Derivative Thermogravimetric Analysis |
| **BET** | Brunauer-Emmett-Teller surface area analysis |
| **PAH** | Polycyclic Aromatic Hydrocarbons |
| **BTX** | Benzene, Toluene, Xylene |
| **FR4** | Flame Retardant 4 (glass-epoxy PCB substrate) |
| **BFRP** | Basalt Fiber Reinforced Polymer (Elium® resin) |
| **SiC** | Silicon Carbide (α-phase, flash-sintered) |
| **ZrO₂** | Zirconia (3Y-TZP, tetragonal zirconia polycrystal) |
| **PEEK CF40** | PEEK with 40% carbon fiber (below percolation) |
| **TG-FTIR** | Thermogravimetric-Fourier Transform Infrared (evolved gas analysis) |
| **Iodine Number** | Adsorption capacity of activated carbon (mg I₂/g carbon) |