## 7. Stage 5 — Aluminum Separation (660-720°C): The Pure Aluminum Window

### 7.1 The Aluminum Window — Physics of Selective Separation

660°C is the liquidus of pure aluminum. Copper melts at 1085°C, iron at 1538°C. The **60°C window between 660°C and 720°C** creates a clean aluminum separation stage:

- Only Al, Al alloys, and Al-Si die cast melt
- All copper, iron, nickel, cobalt remain solid
- Zinc (Tm = 420°C) has already been removed in Stage 4

**Aluminum alloy melting ranges in feedstock:**
| Alloy | Solidus (°C) | Liquidus (°C) | Typical Source |
|---|---|---|---|
| Pure Al (1xxx) | 660 | 660 | Electrical wire, foil |
| 6061 (Mg,Si) | 582 | 652 | Structural, extrusions |
| 7075 (Zn,Mg,Cu) | 477 | 635 | Aerospace, high-strength |
| A380 (Si,Cu) | 566 | 577 | Die-cast (automotive) |
| A356 (Si,Mg) | 557 | 613 | Cast wheels, engine parts |
| 2024 (Cu,Mg) | 502 | 638 | Aerospace sheet |

**Key insight:** Most Al alloys in feedstock are **fully liquid by 660°C**. The 660-720°C window captures all Al while excluding Cu/Fe.

### 7.2 Centrifuge Parameters for Stage 5

- Drum speed: 300 RPM (G = 25.1 at r = 0.3 m)
- Aluminum melt viscosity at 700°C: 1.3 mPa·s (extremely fluid — flows like water)
- Centrifugal separation is rapid: 5-minute dwell at 680°C collects >95% of Al content
- Melt pool dynamics: Al forms continuous annular film at drum wall, drains to Port 5

**Centrifugal pressure at 300 RPM:**
$$\Delta P = \frac{1}{2} \rho \omega^2 (r_o^2 - r_i^2) = \frac{1}{2} \times 2380 \times 31.4^2 \times (0.3^2 - 0.05^2) = 33 \text{ kPa}$$
Sufficient to drive 1.3 mPa·s Al through 12 mm port against 1.5 bar backpressure.

### 7.3 Expected Aluminum Slug Composition

| Element | Range (wt%) | Source |
|---|---|---|
| Al | 85-97% | Base metal |
| Si | 1-8% | Die-cast A380/A356 (5-12% Si) |
| Cu | 0.5-3% | 2024, 7075 alloys |
| Mg | 0.3-1.5% | 6061, 7075, A356 |
| Fe | 0.1-0.8% | Impurity in scrap |
| Mn | 0.1-0.5% | Alloying |
| Zn | 0.1-2% | 7075, residual |

This mixed alloy slug goes to **downstream refining** (CSMFAB000000000112) for property-specific casting.

**CSMFAB relevance:** Recovered aluminum is NOT used directly in Aegis products (which avoid structural metals), but:
- Sold as commercial scrap to fund operations
- Used in non-structural tooling (molds, fixtures, jigs)
- Alloy-segregated for specific downstream casting needs

### 7.4 Induction Heating in Stage 5

- Frequency: 10 kHz (Zones 4-5) — optimal for Al eddy current coupling
- Power: 80-150 kW/zone
- Skin depth in Al at 10 kHz, 700°C: δ ≈ 0.9 mm (excellent for 1-5 mm Al pieces)
- Selective heating: Al couples, Cu/Fe remain solid and poorly coupled at 10 kHz

**Induction power equation for Al:**
$$P_{Al} = \frac{\pi^2 B_{peak}^2 d^2 f^2}{6 \rho_{Al} D}$$
At 10 kHz, ρ_Al(700°C) ≈ 4.5×10⁻⁸ Ω·m → 15× better coupling than Cu at same frequency.

### 7.5 Port 5 — Aluminum Exit

- Port 5 opens at 720°C (Ti₃AlC₂ actuator, 3.6 mm deflection at 680°C ΔT)
- Aperture: 12 mm diameter
- Discharge: Continuous Al stream during 25-min dwell
- Collection: ZrO₂ mold carousel position 5, N₂ quench at -150°C

### 7.6 Stage 5 Control Parameters

| Parameter | Setpoint | Tolerance | Sensor |
|---|---|---|---|
| Drum temperature | 660→720°C ramp | ±3°C | FBG Zone 4-5 |
| Drum rotation | 300 RPM | ±5 RPM | Optical encoder |
| N₂ pressure | 1.5 bar | ±0.1 bar | Pressure transducer |
| Port 5 mass flow | Monitor | <1% peak = clear | Coriolis flowmeter |
| Al slug temperature | 680-720°C | ±10°C | IR pyrometer (ex-port) |

---

