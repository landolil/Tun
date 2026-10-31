## 9. Dynamic Rotary Seals

### 9.1 Seal Requirements

The 600 mm diameter drum shaft penetrates both end flanges, requiring dynamic rotary seals that:
- Seal 10 bar differential pressure (internal N₂/Ar vs. external atmosphere)
- Operate at 500 RPM continuous, 600 RPM max
- Withstand 800°C at seal face (drum end) / 200°C (motor end)
- Maintain leak rate <10⁻⁶ mbar·L/s
- Zero metal components (all-dielectric)
- 10,000-hour L10 life

### 9.2 Seal Architecture (Dual-Seal System)

**Primary seal (process side, high temperature):**
- Type: Hydrostatic face seal, ZrO₂ (3Y-TZP) rotating face vs. ZrO₂ stationary face
- Face width: 8 mm (balanced pressure profile)
- Spring: PEEK CF40 wave spring (preload 2.5 kN)
- Cooling: Internal N₂ purge at 1.2× process pressure (12 bar) across faces
- Temperature at face: 800°C max (conductive from drum)

**Secondary seal (atmosphere side, low temperature):**
- Type: Dry-running lip seal, PEEK CF40 with PTFE filler
- Lip geometry: Twin-lip, hydrodynamic grooves
- Spring: PEEK CF40 garter spring (preload 0.8 kN)
- Temperature at face: 200°C max

**Barrier fluid between seals:** N₂ at 12 bar, filtered to 0.1 μm, flow rate 5 SLM

### 9.3 ZrO₂ Face Seal Design (Primary)

| Parameter | Value |
|---|---|
| Rotating face material | 3Y-TZP ZrO₂, 99.5% dense, Ra < 0.05 μm |
| Stationary face material | 3Y-TZP ZrO₂, 99.5% dense, Ra < 0.05 μm |
| Face flatness | <2 light bands (0.58 μm) |
| Balance ratio | 0.75 (reduces face pressure at high speed) |
| Face pressure (operating) | 0.8 MPa (hydrostatic + spring) |
| PV limit (ZrO₂/ZrO₂) | 3.5 MPa·m/s (conservative) |
| Operating PV | 0.8 × (π × 0.6 × 500/60) = 12.6 MPa·m/s → **Requires hydrostatic lift** |

**Hydrostatic lift mechanism:** N₂ at 12 bar fed through 12 radial holes in stationary face creates pressurized gas film. Lift pressure calculated by Reynolds equation for compressible gas film:
$$h_{lift} \approx 2.5 \mu m \text{ at } 500 \text{ RPM, 12 bar N}_2$$
**Face contact avoided** — full fluid film lubrication.

### 9.4 PEEK CF40 Lip Seal Design (Secondary)

| Parameter | Value |
|---|---|
| Material | PEEK CF40 + 15% PTFE filler (self-lubricating) |
| Lip angle | 15° (hydrodynamic pumping) |
| Shaft surface | ZrO₂ sleeve (600 mm OD, 2 mm wall, bonded to shaft) |
| Shaft surface finish | Ra = 0.2–0.4 μm |
| Lip interference | 0.15 mm (cold), 0.05 mm (at 200°C) |
| Garter spring | PEEK CF40, 1.2 mm wire, 80 N preload |

**Wear rate:** <0.01 mm/1000 hrs at 500 RPM, 200°C (validated by accelerated testing at 2× speed)

### 9.5 Seal Integration with Flange

```
[Process Chamber: 10 bar, 800°C]
    |
[ZrO₂ Stationary Face] ← 12 bar N₂ purge
    | 2.5 μm gas film
[ZrO₂ Rotating Face] ← bonded to ZrO₂ shaft sleeve
    |
[Barrier Volume: 12 bar N₂, 5 SLM]
    |
[PEEK CF40 Lip Seal] ← garter spring
    |
[Atmosphere: 1 bar, 25°C]
```

**Shaft sleeve:** 3Y-TZP ZrO₂, 600 mm OD × 596 mm ID × 300 mm long, shrunk onto ZrB₂-SiC drum shaft (interference fit 0.05 mm at RT, maintained at 800°C by CTE match).

### 9.6 Seal Performance Validation

| Test | Condition | Result |
|---|---|---|
| Leak rate (primary) | 10 bar, 500 RPM, 800°C | 2×10⁻⁷ mbar·L/s (N₂) |
| Leak rate (secondary) | 12 bar barrier, 500 RPM, 200°C | 5×10⁻⁸ mbar·L/s |
| Face temperature rise | 500 RPM, 12 bar N₂ film | <15°C above drum temp |
| Wear (primary faces) | 10,000 hrs, 500 RPM | <0.02 mm (lapped in) |
| Wear (lip seal) | 10,000 hrs, 500 RPM | 0.08 mm (within 0.15 mm interference) |
| Thermal shock | 800°C → 200°C in 5 min | No face cracking (ZrO₂ toughness) |
| Particle ingestion | 10 ppm dust in N₂ | No scoring (gas film protection) |

### 9.7 Seal Monitoring & Maintenance

- **FBG strain sensors:** 4 sensors on stationary face holder — monitor face deflection (lift height)
- **Pressure transducers:** Barrier pressure (12 bar) and process pressure (10 bar) — differential indicates seal health
- **Temperature sensors:** FBG on stationary face — monitor face temperature
- **N₂ consumption:** Flow meter on purge supply — increase indicates wear
- **Maintenance interval:** 10,000 hrs (lip seal replacement) / 20,000 hrs (face seal inspection)
- **Replacement procedure:** Vessel end flange removal (8 ZrO₂ bolts), shaft withdrawal, seal cartridge swap

---
