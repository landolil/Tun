## 5. Slag Analysis and Auto-Sorting — LIBS Inline Spectrometry

Each slug emerging from the carousel is analyzed by an inline Laser-Induced Breakdown Spectroscopy (LIBS) system before routing. This provides real-time elemental composition for grade assignment and downstream routing decisions.

### 5.1 LIBS System Architecture

```
LIBS ANALYSIS STATION
┌─────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│   CONVEYOR ──► [SLUG] ──► ┌──────────────────────────────────────────┐      │
│                           │  LIBS MEASUREMENT CHAMBER                  │      │
│                           │  ┌────────────────────────────────────┐   │      │
│                           │  │  Nd:YAG Laser (1064 nm, 5 mJ)       │   │      │
│                           │  │  ├─ Pulse width: 5 ns               │   │      │
│                           │  │  ├─ Rep rate: 10 Hz                 │   │      │
│                           │  │  └─ Beam delivery: PMMA POF (1mm)   │   │      │
│                           │  ├────────────────────────────────────┤   │      │
│                           │  │  Focusing Optics: ZrO₂ lens (f=50mm)│   │      │
│                           │  │  ├─ Spot size: 100 μm               │   │      │
│                           │  │  ├─ Power density: 6.4 GW/cm²       │   │      │
│                           │  │  └─ Ablation crater: 50 μm dia      │   │      │
│                           │  ├────────────────────────────────────┤   │      │
│                           │  │  Plasma Collection:                 │   │      │
│                           │  │  ├─ KNbO₃-BaTiO₃ detector array     │   │      │
│                           │  │  │  (synchronous vibration lock-in) │   │      │
│                           │  │  ├─ Spectral range: 200-980 nm       │   │      │
│                           │  │  ├─ Resolution: 0.05 nm (FWHM)      │   │      │
│                           │  │  └─ PMMA POF → Spectrometer (3m)    │   │      │
│                           │  ├────────────────────────────────────┤   │      │
│                           │  │  Atmosphere: N₂ purge (10 SLPM)     │   │      │
│                           │  │  └─ Window: Sapphire (Al₂O₃)        │   │      │
│                           │  └────────────────────────────────────┘   │      │
│                           └──────────────────────────────────────────┘      │
│                                    │                                         │
│                                    ▼                                         │
│                         ┌─────────────────────┐                             │
│                         │  GRADE ASSIGNMENT   │                             │
│                         │  ENGINE (FPGA)      │                             │
│                         │  ├─ Peak matching   │                             │
│                         │  │  (NIST DB + CSM) │                             │
│                         │  ├─ Quantification  │                             │
│                         │  │  (CF-LIBS model) │                             │
│                         │  └─ Grade lookup    │                             │
│                         │     (rule table)    │                             │
│                         └─────────────────────┘                             │
│                                    │                                         │
│                     ┌─────────────┼─────────────┐                          │
│                     ▼             ▼             ▼                          │
│               DIRECT USE    REFINEMENT      COMMERCIAL                     │
│               (Conveyor 1)  (Conveyor 2)    (Conveyor 3)                   │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 5.2 LIBS Technical Specifications

| Parameter | Specification | Notes |
|---|---|---|
| Laser | Nd:YAG, 1064 nm, Q-switched | CSMFAB-certified, no Ti:sapphire |
| Pulse energy | 5 mJ (adjustable 1-10 mJ) | Optimized per material |
| Pulse width | 5 ns | Standard Q-switched |
| Repetition rate | 10 Hz (single-shot per slug) | 10 pulses averaged |
| Spot diameter | 100 μm | ZrO₂ lens, f=50mm |
| Power density | 6.4 GW/cm² | Above breakdown threshold |
| Ablation mass | ~100 ng per pulse | Minimal material loss |
| Spectrometer | Echelle + ICCD (KNbO₃-BaTiO₃) | 200-980 nm, 0.05 nm res |
| Detector gating | 1 μs delay, 10 μs width | Continuum rejection |
| Acquisition time | 2 seconds per slug | 10 pulses × 10 Hz + processing |
| Elements detectable | All metals, C, Si, S, P, B, REE | 70+ elements |
| Detection limits | 1-50 ppm (metals), 100-500 ppm (light) | Matrix dependent |
| Precision (RSD) | < 2% (major), < 5% (minor), < 10% (trace) | With CF-LIBS correction |

### 5.3 Calibration-Free LIBS (CF-LIBS) Model

**Physics-Based Quantification (No Standards Required):**

```
I_ij = (F × n_s × g_i × A_ij × hν_ij) / (U(T) × 4π) × exp(-E_i/kT)

Where:
  I_ij = measured line intensity (photons/s)
  F = instrument factor (calibrated once)
  n_s = species number density
  g_i = statistical weight of upper level
  A_ij = Einstein transition probability
  hν_ij = photon energy
  U(T) = partition function at temperature T
  E_i = upper level energy
  k = Boltzmann constant
  T = plasma temperature (from Boltzmann plot)
```

**Boltzmann Plot for Plasma Temperature:**
```
ln(I_λ / (g_i A_ij λ)) vs. E_i  →  slope = -1/kT
```

**Self-Absorption Correction:** Curve-of-growth method using line pairs (resonance + non-resonance)

**Matrix Effect Correction:** Internal standardization using major element (Fe, Cu, Al as matrix)

### 5.4 Elemental Line Selection Table (Key Elements)

| Element | Primary Line (nm) | Secondary Line (nm) | Use Case |
|---|---|---|---|
| Al | 396.15 | 394.40 | Major in S-06 |
| Cu | 324.75 | 327.40 | Major in S-07 |
| Fe | 438.35 | 440.47 | Major in S-09 |
| Zn | 213.86 | 334.50 | Major in S-05 |
| Pb | 405.78 | 368.35 | Major in S-05 |
| Sn | 283.99 | 317.50 | Major in S-05 |
| In | 325.61 | 410.18 | Trace in S-04, S-05 |
| Au | 267.60 | 242.80 | Trace in S-08 |
| Ag | 328.07 | 338.29 | Trace in S-08 |
| Pd | 340.46 | 363.47 | Trace in S-08 |
| Nd | 430.36 | 401.23 | REE in S-10 |
| Sm | 443.43 | 442.43 | REE in S-10 |
| Dy | 418.71 | 421.17 | REE in S-10 |
| Zr | 339.20 | 343.82 | Major in S-11 |
| Ti | 334.94 | 336.12 | Major in S-11 |
| Si | 288.16 | 251.61 | Major in S-11, slag |
| C | 247.86 | 193.09 | Char (S-03), carbides |
| S | 180.73 | 182.04 | Sulfide content |
| Cl | 134.72 | 136.34 | PVC residue (S-02) |

### 5.5 Grade Assignment Rules (Automated)

**Routing Logic (FPGA Implementation):**

```
IF stream == S-07 (Copper):
  IF Cu >= 99.5% AND (Au+Ag+Pd) >= 50 ppm:
    GRADE = DIRECT_USE → Machine 114 (Cu wire drawing)
  ELSE IF Cu >= 99.0%:
    GRADE = REFINEMENT → Machine 114 (fire refining first)
  ELSE:
    GRADE = COMMERCIAL_SALE → Commodity copper market

IF stream == S-06 (Aluminum):
  IF Al >= 95% AND Fe+Si <= 1%:
    GRADE = COMMERCIAL_SALE → Secondary Al market (CSM uses no Al)
  ELSE:
    GRADE = REFINEMENT → Machine 114 (fractional crystallization)

IF stream == S-09 (Ferrous):
  IF Fe >= 95% AND (Nd+Sm+Dy) >= 0.1%:
    GRADE = DIRECT_USE → Machine 113 (RE leach → magnet feed)
  ELSE IF Fe >= 98%:
    GRADE = COMMERCIAL_SALE → Steel mill feed
  ELSE:
    GRADE = REFINEMENT → Machine 113 (slag adjustment)

IF stream == S-04 (Indium):
  IF In >= 10% AND Sn+Zn <= 30%:
    GRADE = DIRECT_USE → Machine 119 (YInMn synthesis)
  ELSE:
    GRADE = REFINEMENT → Ionic liquid extraction (Phoenix)

IF stream == S-11 (Mineral):
  IF ZrO₂ >= 60% AND REE >= 2%:
    GRADE = DIRECT_USE → Machine 113 (Zr/Ti/REE hydromet)
  ELSE:
    GRADE = STOCKPILE → Await Phase 2 hydromet capacity

DEFAULT:
  GRADE = COMMERCIAL_SALE
```

### 5.6 Three-Way Routing Conveyors

| Conveyor | Destination | Typical Materials | Cycle Time |
|---|---|---|---|
| **Conveyor 1: Direct Use** | Downstream CSMFAB machines (113-119) | Qualified slugs meeting grade specs | Immediate |
| **Conveyor 2: Refinement** | Refinery queue (hydromet, electrolytic, zone refining) | Off-spec but recoverable | Batched (4 hr) |
| **Conveyor 3: Commercial Sale** | Weigh station → Shipping container | Commodity-grade metals | Daily batch |

**Conveyor Specifications (All Three):**
- Belt: BFRP/Elium® 200mm wide, anti-static carbon fiber woven
- Rollers: ZrO₂ ceramic, PEEK CF40 bearings
- Drive: KNbO₃-BaTiO₃ ultrasonic motor (no EM fields)
- Load cells: FBG-based force sensors at each divert point
- Diverter: PEEK CF40 pivoting blade, piezo-actuated (<100ms)
- Vision: PMMA POF barcode reader at each exit



