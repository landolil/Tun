## 5. Permanent Magnet Ferrous Separation — Detailed Engineering

### 5.1 Magnetic Circuit Design

The ferrous separator uses a **16-pole NdFeB N52 drum** with alternating radial magnetization. This creates a high-gradient field at the belt surface that captures ferrous particles while allowing non-ferrous material to follow the belt trajectory.

```
MAGNETIC DRUM CROSS-SECTION:

         [BELT]  ← 800mm wide, 3mm PEN non-conductive belt
              ═══════════════════════════════════
              │  ◐  ◑  ◐  ◑  ◐  ◑  ◐  ◑  ◐  ◑  │  ← 16 poles (N-S-N-S...)
              │  N  S  N  S  N  S  N  S  N  S  │
              │  ◑  ◐  ◑  ◐  ◑  ◐  ◑  ◐  ◑  ◐  │
              ═══════════════════════════════════
         [STAINLESS SHELL] (non-magnetic, 316L, 2mm)
         [NDFEB MAGNETS] (N52, 30×30×20mm blocks, 16 pcs)
         [BFRP BACKPLATE] (structural, non-magnetic)
         [Si3N4 SHAFT] (ceramic, non-magnetic)
```

**Field analysis:**
- Surface field (pole center): 1.2 T
- Field gradient at inter-pole gap: 45 T/m
- Penetration depth (90% field): 40 mm above belt
- Force on 50 mm steel sphere (ρ=7850 kg/m³): F_mag = 180 N vs. F_grav = 0.6 N — capture assured

### 5.2 NdFeB Magnet Specification & Sourcing

**Material:** Sintered NdFeB, grade N52 (Br = 1.44-1.48 T, Hcj = 11-12 kOe, (BH)max = 50-53 MGOe)

| Parameter | Value | Source |
|-----------|-------|--------|
| Grade | N52 (highest commercial energy product) | CSMFAB Materials Study Part V |
| Coating | Ni-Cu-Ni (20-30 µm) + epoxy topcoat | Corrosion protection to 200°C |
| Dimensions | 30×30×20 mm blocks, 16 per drum | Optimized for 300mm drum OD |
| Orientation | Radial (through-thickness) | Maximizes surface field |
| Operating temperature | -40°C to 150°C | Well below Tc = 310°C |
| Temperature coefficient | -0.11%/°C (Br), -0.6%/°C (Hcj) | Minimal degradation at ambient |

**Domestic sourcing strategy (Critical Minerals independence):**
- **NdFeB supply chain:** Mountain Pass (CA) → Neo Performance (ON, Canada) → USA Rare Earth (TX)
- **Heavy REE (Dy, Tb) for Hcj:** Currently 100% China — CSMFAB Part V addresses via recycling
- **In-house magnet production:** Not feasible (requires vacuum sintering, H2 decrepitation)
- **Phoenix Protocol recovery:** End-of-life Aegis magnets → Stage 7 RE recovery → new magnet blocks

### 5.3 Belt & Conveyance System

**Belt material:** PEN (Polyethylene Naphthalate) — non-conductive, non-magnetic, 120°C Tg
- Thickness: 3 mm
- Tensile strength: 180 MPa (machine direction)
- Dielectric strength: 25 kV/mm
- Surface: Textured (Rz = 15 µm) for particle grip

**Belt drive:**
- Motor: KNbO3-BaTiO3 ultrasonic piezoelectric (same platform as shredder)
- Speed: 0.5 m/s (variable 0.3-0.8 m/s via frequency control)
- Tension: Pneumatic tensioner (N2 actuated, PEEK CF40 cylinder)
- Tracking: Edge-guided by BFRP flanges

**Ferrous discharge:**
- Captured ferrous held against drum by magnetic force
- Released at 270° position (field minimum) by centrifugal + gravity
- Chute: BFRP, 45° incline, ZrO2 ceramic wear strips
- Direct feed to Stage 7 buffer hopper (no intermediate handling)

### 5.4 Performance Metrics

| Metric | Target | Test Method |
|--------|--------|-------------|
| Ferrous capture (>10 mm) | ≥99% | Mass balance, magnetic susceptibility |
| Ferrous capture (5-10 mm) | ≥95% | Sieve fraction analysis |
| Ferrous capture (<5 mm) | ≥80% | Fine fraction magnetic sep test |
| Non-ferrous carryover | <2% mass | XRF analysis of ferrous stream |
| Belt life | 50,000 hrs | Wear indicator (thickness gauge) |
| Magnet degradation | <5% Br loss/yr | Annual Hall probe mapping |
| Throughput capacity | 1,000 kg/hr (peak) | Belt loading at 0.8 m/s |

### 5.5 Why Permanent Magnet, Not Electromagnetic?

| Factor | Permanent Magnet (NdFeB) | Electromagnetic |
|--------|-------------------------|-----------------|
| **GIC immunity** | Complete (no conductors) | Copper windings = antenna |
| **Power consumption** | Zero (static field) | 5-15 kW continuous |
| **Failure mode** | Gradual demag (years) | Coil burnout, power loss |
| **Field stability** | 0.1%/°C | Current stability dependent |
| **Carrington event** | Unaffected | Induced currents destroy coils |
| **Maintenance** | None (sealed) | Brushes, cooling, insulation |
| **Mass** | 45 kg (magnets only) | 180 kg (coils, core, cooling) |

The permanent magnet separator is the **only Carrington-immune** option for ferrous pre-separation. Electromagnetic separators introduce the very vulnerability (copper windings, ferromagnetic cores) that the Aegis-Forge I is designed to eliminate.


---
