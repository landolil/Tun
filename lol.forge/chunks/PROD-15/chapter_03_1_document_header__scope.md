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
