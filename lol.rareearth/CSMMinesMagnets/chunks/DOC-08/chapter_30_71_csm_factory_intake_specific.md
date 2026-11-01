## 7.1 CSM Factory Intake Specifications (from DOC-06)

Carrington Storm Motors operates magnet-intensive motor production lines requiring **zero-defect intake** for permanent magnet rotors and assemblies. All incoming magnetic materials must meet the following factory gate specifications before entering CSM production cells.

### 7.1.1 NdFeB Grade Specifications (N42H, N48SH, N52EH)

| Parameter | **N42H** | **N48SH** | **N52EH** | Test Method | Lot Acceptance |
|-----------|----------|-----------|-----------|-------------|----------------|
| **$B_r$ (Residual Flux Density)** | 1.28-1.32 T | 1.37-1.42 T | 1.43-1.48 T | MIL-STD-1540 3.3.2 | ±1.5% of nominal |
| **$H_{cB}$ (Coercivity)** | ≥ 955 kA/m | ≥ 1,035 kA/m | ≥ 1,114 kA/m | MIL-STD-1540 3.3.3 | ≥ Minimum |
| **$H_{cJ}$ (Intrinsic Coercivity)** | ≥ 1,353 kA/m | ≥ 1,592 kA/m | ≥ 1,990 kA/m | MIL-STD-1540 3.3.3 | ≥ Minimum |
| **$(BH)_{max}$ (Energy Product)** | 318-342 kJ/m³ | 366-398 kJ/m³ | 406-438 kJ/m³ | Calculated | ±2% |
| **Max Operating Temp ($T_{max}$)** | 120°C | 150°C | 200°C | MIL-STD-1540 3.3.6 | No irreversible loss |
| **$\alpha_{Br}$ (Reversible Temp Coeff.)** | -0.11%/°C | -0.10%/°C | -0.09%/°C | MIL-STD-1540 3.3.5 | Within grade range |
| **$\alpha_{HcJ}$ (Reversible Temp Coeff.)** | -0.60%/°C | -0.55%/°C | -0.50%/°C | MIL-STD-1540 3.3.5 | Within grade range |
| **Density** | 7.5 g/cm³ | 7.5 g/cm³ | 7.5 g/cm³ | Archimedes | ±0.1 g/cm³ |
| **Corrosion Protection** | Ni-Cu-Ni (15-25µm) + epoxy (50µm) | Ni-Cu-Ni + epoxy | Ni-Cu-Ni + epoxy | ASTM B117 (96hr) | No red rust, <5% $B_r$ loss |
| **Dimensional Tolerance** | ±0.05mm (blocks), ±0.02mm (machined) | ±0.05mm, ±0.02mm | ±0.05mm, ±0.02mm | CMM | 100% inspection |

**Grade Selection Logic for CSM Motor Lines**:
- **N42H**: Standard efficiency motors (IE3/IE4), cost-optimized, high volume
- **N48SH**: High-efficiency motors (IE4/IE5), traction drives, elevated temp
- **N52EH**: Ultra-high performance, aerospace/defense, maximum power density

**Supply Chain Mapping (Chilean Source → CSM Grade)**:
| Chilean Source (DOC-01) | REE Concentrate | Aegis-Forge Separation | Metal/Alloy | Final Grade | Annual Capacity |
|-------------------------|-----------------|------------------------|-------------|-------------|-----------------|
| Antofagasta IOCG (Bastnäsite) | Ce, La, Nd, Pr | Nd ≥ 99.5%, Pr ≥ 99% | NdFeB strip cast | N42H / N48SH | 5,000 tons REO/yr |
| Atacama IOCG (Monazite) | Nd, Sm, Gd, Dy | Sm ≥ 99%, Nd ≥ 99% | SmCo / NdFeB | N48SH / SmCo 2:17 | 3,000 tons REO/yr |
| Imported (Tardigradia Trading) | Dy, Tb, Co | >99.9% purity | Alloying additions | N52EH (Dy-doped) | As required |

### 7.1.2 SmCo Grade Specifications (SmCo 1:5, 2:17 Series)

| Parameter | **SmCo 1:5 (S18G)** | **SmCo 2:17 (S30H)** | Test Method | Lot Acceptance |
|-----------|---------------------|----------------------|-------------|----------------|
| **$B_r$** | 0.85-0.95 T | 1.05-1.15 T | MIL-STD-1540 3.3.2 | ±1.5% |
| **$H_{cB}$** | ≥ 597 kA/m | ≥ 796 kA/m | MIL-STD-1540 3.3.3 | ≥ Min |
| **$H_{cJ}$** | ≥ 1,194 kA/m | ≥ 1,592 kA/m | MIL-STD-1540 3.3.3 | ≥ Min |
| **$(BH)_{max}$** | 127-175 kJ/m³ | 191-255 kJ/m³ | Calculated | ±2% |
| **$T_{max}$** | 250°C | 350°C | MIL-STD-1540 3.3.6 | No irreversible loss |
| **$\alpha_{Br}$** | -0.045%/°C | -0.035%/°C | MIL-STD-1540 3.3.5 | Within range |
| **$\alpha_{HcJ}$** | -0.30%/°C | -0.20%/°C | MIL-STD-1540 3.3.5 | Within range |
| **Density** | 8.3 g/cm³ | 8.4 g/cm³ | Archimedes | ±0.1 |
| **Corrosion** | Inherent (no coating needed) | Inherent | ASTM B117 | No degradation |
| **Mechanical** | Brittle (fracture tough ~10 MPa√m) | Brittle (~12 MPa√m) | 4-point bend | > Design × 1.5 |

**CSM Application Matrix**:
| Motor Type | Temperature | Grade | Rationale |
|------------|-------------|-------|-----------|
| **Downhole/Geothermal** | 200-250°C | SmCo 2:17 | Only grade surviving >200°C continuous |
| **Aerospace Actuator** | -55°C to +200°C | SmCo 1:5 | Low $\alpha_{Br}$, wide temp range |
| **High-Speed Spindle** | 150°C continuous | SmCo 2:17 | Thermal stability, no irreversible loss |
| **Radiation Environment** | Variable | SmCo 2:17 | Radiation hard (100 krad < 5% loss) |

### 7.1.3 FeN/FeCo Emerging Grade Specifications

#### Fe₁₆N₂ (Alpha-double-prime Iron Nitride)

| Parameter | **Target Specification** | Status | Test Method | Notes |
|-----------|-------------------------|--------|-------------|-------|
| **$B_r$** | 1.80-2.00 T | R&D (achieved 1.85 T lab) | MIL-STD-1540 3.3.2 | Highest $B_r$ of any permanent magnet |
| **$H_{cJ}$** | 600-1,000 kA/m | R&D (achieved 750 kA/m) | MIL-STD-1540 3.3.3 | Lower than NdFeB, adequate for rotors |
| **$(BH)_{max}$** | 215-255 kJ/m³ (27-32 MGOe) | **Target: 27 MGOe** | Calculated | Competitive with N42H-N48SH |
| **$T_{max}$** | **80°C (HARD LIMIT)** | **Phase decomp. >80°C** | MIL-STD-1540 3.3.6 | **Metastable phase — irreversible above 80°C** |
| **$\alpha_{Br}$** | -0.15%/°C (est.) | Estimated | MIL-STD-1540 3.3.5 | Higher temp sensitivity |
| **$\alpha_{HcJ}$** | -0.70%/°C (est.) | Estimated | MIL-STD-1540 3.3.5 | Higher temp sensitivity |
| **Density** | 7.2 g/cm³ | Measured | Archimedes | Lightest magnet (advantage: rotating mass) |
| **Corrosion** | **Poor (oxidizes rapidly)** | **Critical** | ASTM B117 | **Requires hermetic seal / inert gas packaging** |
| **Mechanical** | **Ductile (Fe-based)** | Advantage | 4-point bend | Machinable, tough, not brittle |
| **REE Content** | **0% (Zero REE)** | **DFARS COMPLIANT** | ICP-MS | **Strategic: no China supply chain exposure** |
| **Cost ($/kg)** | $500-800 (R&D) | Pilot scale | — | Target < $200 at volume |

**Fe₁₆N₂ CSM Integration Pathway**:
1. **Phase 1 (2026-2027)**: Pilot production at Aegis-Forge Chile (Coquimbo Fe-N laterite) → 2,000 tons/yr blocks
2. **Phase 2 (2028-2030)**: Rotor assembly at CSM Austin (blocks shipped at -20°C, assembled at factory)
3. **Phase 3 (2031+)**: Full vertical integration — mine-to-motor Fe₁₆N₂ rotors at scale

#### Fe-Co (Iron-Cobalt, Hiperco 50 / Vacodil)

| Parameter | **Hiperco 50 (Fe₅₀Co₅₀)** | **Vacodil (Fe₅₀Co₅₀V₂)** | Test Method | CSM Application |
|-----------|---------------------------|--------------------------|-------------|-----------------|
| **$B_r$** | 2.35-2.42 T | 2.35-2.42 T | MIL-STD-1540 3.3.2 | **Highest $B_r$ — pole pieces, stator teeth** |
| **$H_{cJ}$** | 40-80 kA/m | 40-80 kA/m | MIL-STD-1540 3.3.3 | **Soft magnetic — NOT permanent magnet** |
| **$(BH)_{max}$** | 80-95 kJ/m³ | 80-95 kJ/m³ | N/A (soft mag) | Not used as PM rotor |
| **$T_{max}$** | 450°C | 450°C | MIL-STD-1540 3.3.6 | Extreme thermal stability |
| **$\alpha_{Br}$** | -0.01%/°C | -0.01%/°C | MIL-STD-1540 3.3.5 | Near-zero temp coefficient |
| **Density** | 8.1 g/cm³ | 8.1 g/cm³ | Archimedes | — |
| **Corrosion** | Fair (passivate) | Fair | ASTM B117 | Controlled atmosphere |
| **REE Content** | **0% (Zero REE)** | **0%** | ICP-MS | **DFARS COMPLIANT** |
| **Cost ($/kg)** | $60-100 | $80-130 | — | Mature supply chain |

**Fe-Co CSM Role**: **Stator/rotor core laminations, pole pieces, magnetic concentrators** — NOT permanent magnet rotors. Enables high-flux-density motor designs complementing NdFeB/SmCo/Fe₁₆N₂ PM rotors.

**Chilean Source (DOC-01)**: Biobío Region Fe-Co hydrothermal deposits → Aegis-Forge ordering process → Hiperco 50 equivalent. Annual capacity: 10,000 tons.

---
