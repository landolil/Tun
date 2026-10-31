## 6. Thermal Protection System

### 6.1 Thermal Challenge

The vessel faces an extreme thermal gradient: 2200°C at the drum outer surface (670 mm OD) → 200°C at the vessel outer surface (936 mm OD) across 68 mm radial distance (50 mm aerogel + 18 mm BFRP). The heat flux must be reduced from ~150 kW/m² (radiation + convection across gap) to <2 kW/m² at the BFRP outer surface to maintain <200°C.

### 6.2 YInMn Blue Glaze — Primary Radiative Shield

| Property | Value | Role |
|---|---|---|
| Solar Reflectance Index (SRI) | 115 | Highest of any stable blue pigment |
| NIR Reflectance (700–2500 nm) | 85–92% | Reflects thermal radiation from drum |
| Emissivity (ε) at 1000°C | 0.12–0.18 | Low emissivity = low radiative absorption |
| Maximum service temperature | 1200°C | Withstands radiative exposure |
| Thickness | 50 μm | Applied by plasma spray |
| Bond coat | 20 μm CoAl₂O₄ spinel | CTE match, adhesion promoter |

**YInMn Blue mechanism:** The Mn³⁺ ion in trigonal bipyramidal coordination absorbs strongly at ~590 nm (orange) but reflects across NIR. This gives SRI=115 — the surface runs up to 70°C cooler than dark surfaces under equivalent radiative flux. At drum temperatures (1600–2200°C), peak radiation is at 1.3–1.8 μm (NIR) — precisely where YInMn reflects 85–92%.

**Application process:** Atmospheric plasma spray (APS) of YInMn Blue powder (20–45 μm) onto grit-blasted BFRP surface with CoAl₂O₄ spinel bond coat. Total coating thickness 70 μm. Post-spray seal with siloxane infiltrant for moisture resistance.

### 6.3 CoAl₂O₄ Spinel — Complementary High-Temperature Coating

| Property | Value | Role |
|---|---|---|
| SRI | 98 | Excellent NIR reflector |
| Max service temperature | >1400°C | Higher than YInMn Blue |
| NIR Reflectance | 70–80% | Broadband reflection |
| Indium content | 0% | No critical mineral vulnerability |
| Cost | $55–$100/kg | Significantly lower than YInMn |

**Dual-layer strategy:** YInMn Blue outer (50 μm) for maximum reflectivity + CoAl₂O₄ bond coat (20 μm) for high-temperature adhesion and CTE transition. If YInMn degrades above 1200°C, CoAl₂O₄ maintains protection to 1400°C+.

### 6.4 Combined Glaze Performance

Radiative heat transfer from drum to vessel outer surface:

**Without glaze (bare BFRP, ε ≈ 0.9):**
$$q_{rad} = \epsilon \sigma (T_{drum}^4 - T_{surf}^4) \approx 0.9 \times 5.67 \times 10^{-8} \times (2473^4 - 473^4) = \textbf{185 kW/m}^2$$

**With YInMn Blue (ε ≈ 0.15 at 1000°C):**
$$q_{rad} = 0.15 \times 5.67 \times 10^{-8} \times (2473^4 - 473^4) = \textbf{30.8 kW/m}^2$$

**Reduction factor: 6.0×** — glaze alone reduces radiative flux to manageable level for aerogel.

### 6.5 Glaze Durability & Validation

| Test | Condition | Pass Criteria |
|---|---|---|
| Thermal cycling | 20 ↔ 200°C, 10,000 cycles | No spalling, ΔSRI < 5% |
| Thermal shock | 1200°C → water quench | No cracking (YInMn survives) |
| Adhesion (cross-hatch) | ASTM D3359 | 5B (no removal) |
| Abrasion resistance | Taber CS-17, 1000 cycles | <10 μm wear |
| UV exposure | 5000 hrs QUV | ΔSRI < 3% |
| Chemical resistance | pH 2–12 immersion, 1000 hrs | No degradation |

**In-house synthesis (hydrothermal route):** Y(NO₃)₃ + In(NO₃)₃ + Mn(NO₃)₂ → coprecipitate → hydrothermal 250°C → calcine 900°C. Cost: $85–$100/kg (indium-sparing formula) vs. $75–$100 commercial. Feasibility: 4/5.

---
