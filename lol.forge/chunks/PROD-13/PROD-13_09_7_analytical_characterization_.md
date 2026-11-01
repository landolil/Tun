## 7. Analytical Characterization Protocols

### 7.1 Incoming Feedstock Assay — Required Analyses

Every feedstock lot must be characterized by the following methods before blending:

| Analysis | Method | Sample Size | Turnaround | Purpose |
|----------|--------|-------------|------------|---------|
| **Elemental Composition (Major)** | XRF (FP method) | 10g pressed pellet | 10 min | Batch blending, category ID |
| **Elemental Composition (Trace/PM/REE)** | ICP-MS (acid digest) | 0.5g | 4 hr | Revenue valuation, REE tracking |
| **Mineralogical Phase ID** | XRD (Rietveld) | 5g powder | 30 min | Stage behavior prediction |
| **Particle Size Distribution** | Laser diffraction | 50g | 5 min | Shredder performance, Stage 0 design |
| **Moisture Content** | Gravimetric (105°C) | 50g | 2 hr | Pre-dry decision, Stage 1 load |
| **LOI (Loss on Ignition)** | Gravimetric (950°C) | 10g | 3 hr | Organic content, Stage 2/3 sizing |
| **Halogen Content (Cl, Br, F)** | Ion chromatography (combustion) | 0.5g | 1 hr | PVC/fluoropolymer quantification |
| **Sulfur Speciation** | LECO + XRD | 1g | 30 min | Sulfide vs. sulfate (acid generation) |
| **Carbon Speciation** | LECO (TC, TOC, TIC) | 1g | 30 min | Stage 3 char yield prediction |

### 7.2 XRF Calibration Standards for Feedstock Matrix

| Matrix Type | Calibration Standard | Elements Covered | Frequency |
|-------------|---------------------|------------------|-----------|
| Electronic scrap | NIST SRM 2583 (PCB) + custom Cu-Au-Ag | Cu, Sn, Pb, Au, Ag, Pd, Ni, Fe, Al | Daily |
| Municipal waste | NIST SRM 1648a (Urban Particulate) + custom | Al, Fe, Cu, Zn, Pb, Cl, S | Daily |
| Mineral/ore | USGS GSD-1 to GSD-11 (Rock) | Si, Al, Fe, Ca, Mg, Ti, Zr, REE | Per lot |
| Slag/tailings | Custom synthetic slag standards | Fe, Mn, Cr, V, Ti, REE | Per lot |
| Phoenix returns | CSMFAB certified reference panels | Zr, B, Si, N, In, Y, Co | Per shipment |

### 7.3 Rapid On-Line Analysis (Feed Hopper Integration)

| Sensor | Location | Measurement | Frequency | Integration |
|--------|----------|-------------|-----------|-------------|
| **XRF Analyzer** | Feed hopper outlet | Major elements (Al, Fe, Cu, Zn, Pb, Sn, Ti, Zr) | Every 30 sec | Blend algorithm input |
| **Gamma Spectrometer** | Feed conveyor | NORM (Ra, Th, K, U) | Continuous | Reject/divert trigger |
| **Moisture NIR** | Feed conveyor | H₂O content | Continuous | Pre-dry trigger |
| **Particle Size (Laser)** | Post-shredder | P80, P50 | Every batch | Shredder wear monitor |
| **FBG Weight** | Ferrous/non-ferrous bins | Mass split | Continuous | Ferrous separation efficiency |

---
