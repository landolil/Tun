## 5. Oxidation Control

### 5.1 Reducing Atmosphere Design

Stage 4 operates in a **N₂ + 5% H₂ atmosphere at 1.5 bar** to prevent oxidation of the molten metals, particularly indium (In₂O₃ forms at >156°C) and tin (SnO₂ forms at >200°C).

**Atmosphere Composition:**
- Nitrogen (N₂): 95% — inert carrier, pressure maintenance
- Hydrogen (H₂): 5% — reducing agent, oxygen scavenger
- Total Pressure: 1.5 bar absolute — suppresses vaporization, improves heat transfer
- Dew Point: <-40°C — minimizes H₂O partial pressure

**Oxygen Partial Pressure Control:**
Target $p_{O_2} < 10^{-20}$ atm at 400°C (thermodynamic requirement for In/Sn/Pb/Zn stability).
Achieved by:
1. N₂ purge at startup (5 volume exchanges)
2. Continuous H₂ injection (5% of flow)
3. Getter material: Zr-Fe alloy chips in drum annulus (scavenges residual O₂)
4. Online O₂ sensor (zirconia cell) — alarm at >1 ppm O₂

### 5.2 Na₂CO₃ Flux Chemistry

Sodium carbonate flux is injected at each sub-stage to:
1. **Dissolve surface oxides** on metal particles
2. **Scavenge residual oxygen** as CO₂
3. **Flux non-metallic inclusions** (char ash, ceramic particles) into slag
4. **Control slag basicity** for downstream processing

**Flux Injection Protocol:**
| Sub-Stage | Flux Type | Injection Rate | Timing |
|---|---|---|---|
| In (160°C) | Na₂CO₃ (5 wt% of metal) | 0.5 kg/min | During 5-min dwell |
| Sn/Pb (200°C) | Na₂CO₃ + 2% NaF | 1.0 kg/min | During 3-min dwell |
| Bi/Sn (280°C) | Na₂CO₃ + 2% NaF | 0.5 kg/min | During 3-min dwell |
| Pb (340°C) | Na₂CO₃ + 5% NaF | 1.5 kg/min | During 3-min dwell |
| Zn (430°C) | Na₂CO₃ + 3% NaF | 2.0 kg/min | During 10-min dwell |

**Flux Reactions:**
```
Na₂CO₃ → Na₂O + CO₂ (at T > 850°C, but in molten metal at 400°C:
Na₂CO₃ + 2Me → 2Na + Me₂O + CO  (Me = In, Sn, Pb, Zn)
Net: Oxide reduction + CO generation

With NaF (flux modifier):
NaF + Na₂O → 2Na + NaFO (enhanced oxide dissolution)
```

**Flux Consumption:**
Total Na₂CO₃ per batch: ~8-12 kg
Total NaF per batch: ~0.5 kg
Flux residue (slag) exits with dross to Stage 7 — total ~15-20 kg/batch.

### 5.3 Indium Oxidation Prevention

Indium is the most oxidation-sensitive Stage 4 metal. In₂O₃ forms spontaneously at 156°C in air.

**In-Specific Controls:**
1. **H₂ partial pressure > 0.075 bar** (5% of 1.5 bar) — reduces In₂O₃:
   $$\text{In}_2\text{O}_3 + 3\text{H}_2 \rightarrow 2\text{In} + 3\text{H}_2\text{O} \quad (\Delta G < 0 \text{ at } 160°C)$$
2. **Flux coverage** — Na₂CO₃ layer on melt surface blocks O₂ diffusion
3. **Minimize surface area** — 400 RPM creates thin annular film (large r, small h)
4. **Port 4A rapid discharge** — In exits within 5 minutes of melting
5. **Inline O₂ monitor** at Port 4A — shutdown if >0.5 ppm O₂

### 5.4 Zinc Vapor Suppression

Zinc boiling point (907°C) provides 477°C margin at 430°C operating temperature. However, induction hot spots and surface vaporization require controls:

**Zn Vapor Controls:**
1. **N₂ pressure 1.5 bar** — raises effective boiling point (Clausius-Clapeyron)
2. **Induction power modulation** — 50 kHz, 80 kW max, pulsed to avoid hot spots
3. **Condenser at Port 4C exit** — water-cooled BFRP, 20°C, captures any vapor
4. **Zn vapor sensor** (optical absorption at 213.9 nm) — alarm at >1 ppm
5. **Emergency N₂ quench** — 10 bar N₂ injection if vapor detected

---
