## Chapter 4: SmCo Manufacturing Supply Chain — Mine to Magnet

### 4.1 End-to-End Flow Architecture

```
CHILEAN SOURCES (DOC-16..20)
    │
    ├── IOCG Co (Norte Grande/Chico) → Alpha-1..7
    ├── Porphyry Co (Zona Central) → Alpha-7..11
    ├── Coal Co (Sur/Austral) → Alpha-13,16
    ├── Epithermal Sm/Tb (Sur/Austral) → Alpha-14,17
    ├── Ion-Adsorption Sm/Tb (Sur/Austral) → Bravo-6,8
    └── Urban Mining Co/Sm (Santiago/Concepción) → Bravo-5,7
    │
    ▼
AEGIS-FORGE CLUSTERS
    │
    ├── Stage 4: Co EW → Co metal ≥99.9% / Co₃O₄ ≥99.9%
    ├── Stage 8: Sm/Tb separation → Sm₂O₃ ≥99.99% / Tb₄O₇ ≥99.99%
    │   (Shared SX circuit with Nd/Dy — DOC-21 Ch. 3)
    │
    ▼
METAL REDUCTION (Chile — Qualifying Country)
    │
    ├── Sm: Ca-reduction (Sm₂O₃ + 3Ca → 2Sm + 3CaO) → Sm ≥99.5%
    ├── Co: Ca-reduction (Co₃O₄ + 2Ca → 3Co + 2CaO) → Co ≥99.9%
    ├── Tb: Ca-reduction (Tb₄O₇ + 6Ca → 4Tb + 3CaO) → Tb ≥99.5%
    ├── Fe: H₂-reduction (Fe₂O₃ + 3H₂ → 2Fe + 3H₂O) → Fe ≥99.9%
    ├── Cu: H₂-reduction → Cu ≥99.99%
    └── Zr: Ca-reduction → Zr ≥99.5%
    │
    ▼
ALLOY PRODUCTION (Chile/US/Japan — Qualifying)
    │
    ├── Sm-Co-Fe-Cu-Zr Master Alloy (2:17 stoichiometry)
    │   Sm: 12-14%, Co: 55-60%, Fe: 20-25%, Cu: 4-6%, Zr: 2-3%
    ├── Tb-Co Master Alloy (for GBD)
    │   Tb: 5-10%, Co: 90-95%
    └── Sm-Co Master Alloy (1:5)
    │   Sm: 16-18%, Co: 82-84%
    │
    ▼
SINTERING (US/Japan — DFARS/ITAR Facilities)
    │
    ├── Electron Energy (US) — SmCo 2:17 32 MGOe, Tb-doped
    ├── Arnold Magnetic (US) — SmCo 1:5/2:17, aerospace
    ├── Vacuumschmelze (DE) — SmCo 2:17, defense
    ├── Hitachi Metals (JP) — SmCo 2:17, high-temp
    └── TDK (JP) — SmCo 1:5, sensors
    │
    ▼
FINISHED MAGNETS
    │
    ├── SmCo 2:17 28-32 MGOe (standard)
    ├── SmCo 2:17 30-34 MGOe (Tb-doped, 0.5-1% Tb)
    ├── SmCo 1:5 18-22 MGOe
    └── Custom grades per MIL-PRF-83311
    │
    ▼
DEFENSE INTEGRATION
    │
    ├── Missile guidance (SmCo 2:17 Tb-doped)
    ├── Downhole drilling (SmCo 2:17 350°C)
    ├── Aerospace actuators (SmCo 1:5)
    └── Nuclear-hardened systems (SmCo radiation resistant)
```

---

### 4.2 Chilean Value Capture Analysis

| Stage | Location | Qualifying Country? | Value Capture | Strategic Priority |
|-------|----------|---------------------|---------------|-------------------|
| Mining | Chile | ✅ Chile | 15% | Baseline |
| Aegis-Forge Processing | Chile | ✅ Chile | 25% | **High** |
| Stage 4/8 Separation | Chile | ✅ Chile | 20% | **Critical** |
| **Metal Reduction** | **Chile (target)** | ✅ Chile | **25%** | **MAXIMIZE** |
| Alloy Production | Chile/US/Japan | ✅ All | 10% | Optional |
| Sintering | US/Japan | ✅ Both | 5% | Downstream |

**Strategic Imperative**: **Locate metal reduction in Chile** (Ca-reduction for Sm/Co/Tb, H₂-reduction for Fe/Cu/Zr). Uses **HIF green H2** (Magallanes) + **grid GFM** (DOC-12). Captures **85% of magnet value at Chilean gate**.

---

### 4.3 SmCo Sintering Process Parameters

| Parameter | SmCo 1:5 | SmCo 2:17 | SmCo 2:17 Tb-Doped |
|-----------|----------|-----------|-------------------|
| **Milling** | Jet mill, Ar, D50=3-5μm | Jet mill, Ar, D50=3-5μm | Jet mill + Tb coating |
| **Pressing** | 150-200 MPa, aligned field | 150-200 MPa, aligned field | Same + Tb layer |
| **Sintering** | 1150-1200°C, 2-4h, Ar | 1180-1220°C, 2-4h, Ar | 1150-1180°C (lower) |
| **Solution Treatment** | N/A | 1150-1180°C, 1-2h | 1120-1150°C, 1-2h |
| **Aging** | N/A | 800-850°C, 4-8h | 750-800°C (Tb diffusion) |
| **Tb Diffusion** | N/A | N/A | 900-1000°C, 2-4h, vacuum |
| **Final Hci** | 1,600-2,400 kA/m | 600-1,600 kA/m | **1,200-2,000 kA/m** |

---

### 4.4 Chapter 4 Summary

SmCo supply chain achieves **DFARS compliance** via **Chilean mine → Aegis-Forge → Stage 4/8 separation → metal reduction in Chile (qualifying country)**. **Metal reduction in Chile** captures 85% of magnet value. **Tb-Co master alloy** enables grain boundary diffusion at US/Japan sintering facilities (Electron Energy, Arnold, VAC, Hitachi, TDK).

**Next Chapter**: Chapter 5 — Tb-Doping Technology: Hci Enhancement, Grain Boundary Diffusion, Tb Supply Criticality.

---
