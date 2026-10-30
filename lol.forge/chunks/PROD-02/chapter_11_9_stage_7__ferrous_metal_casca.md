## 9. Stage 7 — Ferrous Metal Cascade (1200-1600°C): Iron, Steel & Rare Earth Recovery

### 9.1 Iron, Steel, and Ferromagnetic Metal Recovery

Ferrous metals are uniquely efficiently heated by induction — ferromagnetic cores couple at 2-10× the power density of non-ferrous metals. The Stage 7 induction system therefore uses the **lowest frequency (2 kHz)** for maximum penetration and ferromagnetic coupling.

| Metal | Melting Point (°C) | Induction Coupling | Notes |
|---|---|---|---|
| Carbon steel | 1370-1400 | Excellent (ferromagnetic below Curie 770°C) | Primary Fe source |
| Stainless 304 | 1400-1430 | Good (austenitic, non-magnetic — eddy current only) | Lower coupling above Curie |
| Cast iron | 1150-1200 | Excellent (high carbon, approaches Cu at boundary) | Melts early in stage |
| Nickel | 1455 | Very good (ferromagnetic Tc=358°C; non-mag at Stage 7 but conductive) | Battery scrap, alloys |
| Cobalt | 1495 | Good (ferromagnetic Tc=1115°C; magnetic through stage) | Superalloys, batteries |
| Chromium | 1907 | Remains solid — segregates to Stage 8 residue | Alloying element |

**Iron slug chemical analysis target:**
- Fe: >90%
- C: 2-4% (from cast iron, steel)
- Si: 1-2%
- Mn: 0.5-1%
- Cr: 0.5-2% (from stainless)
- Ni: 0.2-1% (from stainless, Ni alloys)

This low-alloy iron/steel slug can be remelted for general castings or sold as secondary iron.

### 9.2 Rare Earth Magnets in Stage 7 — Critical Value Recovery

**NdFeB magnets (Tm = 1177°C):** Melt in Stage 7 window.
**SmCo magnets (Tm = 1490°C):** Melt in Stage 7 as well.

Combined RE-Fe-B and RE-Co melts report to **Port 7 with main ferrous stream**.

**IMPORTANT:** This stream contains Nd, Sm, Co — valuable rare earths for new magnet production!

**Downstream hydrometallurgical refining (CSMFAB downstream):**
1. Fe slug dissolved in HCl/H₂SO₄
2. Solvent extraction: PC-88A for HREE, D2EHPA for LREE
3. Selective precipitation: Nd, Sm, Co separated
4. Oxalate precipitation → calcination → REE oxides
5. Fe recovered as Fe₂O₃ or re-reduced to Fe

**Typical REE content in ferrous stream (per 500 kg batch with 10% motor scrap):**
- Nd: 1.5-3 kg
- Sm: 0.2-0.5 kg
- Co: 0.5-1.5 kg
- Dy: 0.1-0.3 kg (from NdFeB-Dy)
- **Value at 2026 prices: ~$1,500-3,000/batch**

### 9.3 Induction Physics — Ferromagnetic Coupling

**Frequency: 2 kHz (Zones 6-7)**
**Power: 150-350 kW/zone**

**Coupling mechanism transition:**
- Below 770°C (Curie temp of Fe): Ferromagnetic → hysteresis + eddy current heating (2-10× power)
- Above 770°C: Paramagnetic → eddy current only (still good at 2 kHz)

**Skin depth at 2 kHz:**
- Fe (solid, 700°C, ferromagnetic): δ ≈ 0.3 mm (μ_r ≈ 100-200)
- Fe (liquid, 1500°C, paramagnetic): δ ≈ 3.5 mm (μ_r = 1)
- Ni (1500°C): δ ≈ 4.2 mm
- Co (1500°C): δ ≈ 3.8 mm

The frequency is chosen to penetrate fully through typical Fe piece sizes (5-20 mm) once melted.

### 9.4 Centrifuge Parameters for Stage 7

- Drum speed: 450 RPM (G = 112.8 at r = 0.3 m) — **maximum separation force**
- Fe melt viscosity at 1500°C: 6.5 mPa·s
- Fe density at 1500°C: 7.0 g/cm³
- Centrifugal pressure: ΔP = 148 kPa (drives Fe through port at 2.5 bar Ar backpressure)

### 9.5 Stage 7 Control Parameters

| Parameter | Setpoint | Tolerance | Sensor |
|---|---|---|---|
| Drum temperature | 1200→1600°C ramp | ±5°C | FBG Zone 6-7 |
| Drum rotation | 450 RPM | ±10 RPM | Optical encoder |
| Ar pressure | 2.5 bar | ±0.1 bar | Pressure transducer |
| Port 7 mass flow | Monitor | <1% peak = clear | Coriolis flowmeter |
| Fe slug temperature | 1400-1600°C | ±20°C | IR pyrometer (ex-port) |
| Ar O₂ content | <10 ppm | Alarm >50 ppm | ZrO₂ sensor |

### 9.6 Downstream Processing (CSMFAB000000000112)

Fe + REE slug → **Hydromet refinery:**
1. Size reduction (ceramic jaw crusher, ZrO₂-lined)
2. Acid leach (HCl, 80°C, 4 h) → Fe/REE chloride solution
3. Fe removal: Oxidation to Fe³⁺, precipitation as jarosite/goethite
4. REE separation: Multi-stage solvent extraction (IX + SX)
5. Individual REE oxide production: Nd₂O₃, Sm₂O₃, Co₃O₄, Dy₂O₃
6. Fe oxide product: Pigment grade or reduction to Fe powder

---

