## 10. Stage 8 — Refractory Mineral Residue (1600-2200°C): Zircon Dissociation & Critical Mineral Concentration

### 10.1 What Remains at 1600°C+

After all organic matter, polymers, metals through iron have been removed, the remaining solids at 1600°C are oxide minerals and refractory ceramics:

| Material | Melting/Decomposition | State at 1600°C | State at 2200°C | Notes |
|---|---|---|---|---|
| Silica glass fibers (FR4) | 1600-1700°C | Melting | Liquid | Forms slag matrix |
| Zirconia (ZrO₂ from returns) | 2716°C | Solid | Solid | Concentrated |
| Rare earth oxides (Y,La,Ce,Nd) | 2200-2400°C | Solid | Solid | Concentrated |
| Titanium dioxide (TiO₂) | ~1840°C (decomp) | Decomposing | Solid | Ilmenite-derived |
| Alumina (Al₂O₃) | 2072°C | Solid | Partial melt | From anodized Al |
| Silicon carbide (SiC) | 2700°C (subl) | Solid | Solid | From ZrB₂-SiC drum wear |
| Zircon sand (ZrSiO₄) | 1676°C (dissoc) | Dissociating | ZrO₂ + SiO₂ | **Critical reaction** |

### 10.2 Zircon Sand Processing — Critical CSMFAB Material Recovery

At 1700°C, zircon sand (ZrSiO₄) dissociates:
$$\text{ZrSiO}_4 \xrightarrow{1676^\circ\text{C}} \text{ZrO}_2 + \text{SiO}_2$$

This is a **disproportionation reaction** — not melting, but solid-state dissociation. The kinetics are temperature-dependent:

**Dissociation rate (shrinking core model):**
$$\frac{dX}{dt} = \frac{3k}{\rho r_0} (1-X)^{2/3}$$
Where $k = k_0 \exp(-E_a/RT)$, $E_a \approx 520 \text{ kJ/mol}$ for zircon.

At 1700°C: ~60% dissociation in 20 min (validated by TGA)
At 2000°C: ~95% dissociation in 10 min
At 2200°C: >99% dissociation in 5 min

**Process strategy:** Ramp to 2200°C, hold 10 min for complete dissociation. SiO₂ joins slag matrix; ZrO₂ remains as discrete high-density particles (ρ = 5.68 g/cm³) — centrifugally separable!

### 10.3 Stage 8 Output: Mineral Concentrate Slug — The Treasure Chest

The partially fused slag-like material exiting **Port 8** (2200°C set-point) is rich in Zr, Ti, rare earth oxides, Al₂O₃, SiO₂. This is the **primary input for the Materials Study Part V critical mineral recovery program.**

**Chemical analyses of Port 8 output from mixed electronics recycling (per ton input):**

| Component | Concentration | Source | Downstream Use |
|---|---|---|---|
| ZrO₂ | 0.5-3% | ITO-bearing LCD glass | 3Y-TZP powder, ZrB₂ synthesis |
| TiO₂ | 1-4% | White pigments, ilmenite | TiO₂ pigment, Ti metal |
| REE oxides | 0.1-2% | Magnets, phosphors, catalysts | Nd, Sm, Co, Dy recovery |
| Al₂O₃ | 15-25% | Anodized Al, aluminosilicates | Alumina ceramic, YInMn |
| SiO₂ | 40-60% | Glass, PCB substrate | Slag flux, silica fume |
| Fe₂O₃ | 2-5% | Residual magnetic | Recycle to Stage 7 |
| Carbon (unoxidized) | 2-5% | Char residue | Reductant for ZrB₂ |

**Physical form:** Partially vitrified slag, 50-200 mm chunks, density 2.8-3.2 g/cm³. Collected in ZrO₂-lined bin, crushed (ceramic crusher), fed to hydromet refinery.

### 10.4 Induction Heating in Stage 8 — Conduction Only

- Frequency: 1 kHz (Zone 8)
- Power: 200-500 kW (maximum — heating refractory oxides by conduction from hot SiC drum wall and residual carbon)
- No inductive coupling to oxides (all are insulators: ρ > 10⁶ Ω·m)
- Heating mechanism: **Radiation + conduction from drum wall** (drum at 2200°C) + **resistive heating of residual carbon** (carbon conducts at high T)
- SiC drum wall radiates: $q = \varepsilon \sigma T^4 \approx 0.8 \times 5.67 \times 10^{-8} \times 2473^4 = 1.6 \text{ MW/m}^2$

### 10.5 Centrifuge & Discharge

- Drum speed: 300 RPM (G = 50.2) — consolidation, not separation
- Port 8 opens at 2200°C (Ti₃AlC₂ actuator, 11.5 mm deflection at 2160°C ΔT)
- Discharge: Semi-solid slag plugs, intermittent
- Collection: ZrO₂-lined trough, air-cooled to 800°C, then crushed

### 10.6 Stage 8 Control Parameters

| Parameter | Setpoint | Tolerance | Sensor |
|---|---|---|---|
| Drum temperature | 1600→2200°C ramp | ±10°C | FBG Zone 8 (W-fiber) |
| Drum rotation | 300 RPM | ±10 RPM | Optical encoder |
| Ar pressure | 3.0 bar | ±0.2 bar | Pressure transducer |
| Port 8 mass flow | Intermittent | Visual/weight | Load cell on bin |
| Dissociation completeness | >95% ZrSiO₄ | XRD spot-check | Offline lab |

---

