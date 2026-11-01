## 6. Char Activation Protocol (In-Situ)

### 6.1 Activation Overview — Steam/CO₂ at 800-900°C

Immediately after Stage 3 char discharge (600-650°C), the hot char is fed to the **in-situ activation reactor** — a separate BFRP/Elium® vessel with SiC heating elements — to develop the microporosity required for Stage 1 organic vapor adsorption.

| Parameter | Specification | Rationale |
|-----------|---------------|-----------|
| **Activation Temperature** | 800-900°C | Optimal for steam/CO₂ gasification without excessive burn-off |
| **Activating Agent** | Steam (H₂O) + CO₂ (50/50 vol%) | Steam: higher reactivity, CO₂: more uniform pore development |
| **Agent-to-Char Ratio** | 2:1 to 3:1 (kg steam+CO₂ / kg char) | Ensures complete activation, minimizes unreacted agent |
| **Dwell Time** | 30-45 minutes | Sufficient for >800 m²/g development |
| **Target Surface Area** | >800 m²/g (BET) | Exceeds Stage 1 requirement (500 m²/g) with margin |
| **Target Iodine Number** | >800 mg/g | Direct correlation to BET for these chars |
| **Burn-off (Weight Loss)** | 30-45% | Optimal range: <30% = under-activated, >50% = structural collapse |
| **Atmosphere** | N₂ carrier + steam + CO₂ | N₂ prevents air ingress, maintains reducing conditions |

**Why in-situ?** Char exits Stage 3 at 600-650°C. Reheating cold char to 850°C requires 250 kWh/ton. Using sensible heat saves **~60% activation energy**. The activation reactor is integrated into the drum gas circuit — no separate heat-up cycle.

### 6.2 Activation Kinetics

**Steam gasification (primary reaction):**
$$\text{C} + \text{H}_2\text{O} \rightarrow \text{CO} + \text{H}_2 \quad \Delta H = +131 \text{ kJ/mol} \quad \text{(endothermic)}$$

**CO₂ gasification (Boudouard):**
$$\text{C} + \text{CO}_2 \rightarrow 2\text{CO} \quad \Delta H = +172 \text{ kJ/mol} \quad \text{(endothermic)}$$

**Rate equation (Random Pore Model - RPM):**
$$\frac{dX}{dt} = k_0 \exp\left(-\frac{E_a}{RT}\right) (1-X) \sqrt{1 - \psi \ln(1-X)}$$

Where:
- $X$ = carbon conversion (burn-off fraction)
- $\psi$ = structural parameter (4-8 for these chars, from pore size distribution)
- $k_0$ = 10⁵-10⁶ s⁻¹ (pre-exponential)
- $E_a$ = 180-220 kJ/mol (steam), 200-250 kJ/mol (CO₂)

**Kinetic parameters by char type:**

| Char Source | $E_a$ Steam (kJ/mol) | $E_a$ CO₂ (kJ/mol) | $\psi$ | Time to 800 m²/g (min) |
|-------------|---------------------|-------------------|--------|------------------------|
| Epoxy/FR4 | 195±15 | 220±20 | 5.2 | 25 |
| Phenolic | 185±10 | 210±15 | 6.8 | 20 |
| Rubber | 210±20 | 240±25 | 4.0 | 35 |
| Cellulosic | 175±15 | 200±20 | 7.5 | 18 |
| **Mixed (typical)** | **195±15** | **220±20** | **5.5** | **28** |

**Activation progression (typical mixed char at 850°C, 50/50 steam/CO₂):**

| Time (min) | Burn-off (%) | BET (m²/g) | Iodine (mg/g) | Pore Vol (cm³/g) | Avg Pore (nm) |
|------------|--------------|------------|---------------|------------------|---------------|
| 0 (raw) | 0 | 400 | 350 | 0.20 | 2.5 |
| 10 | 12 | 580 | 520 | 0.28 | 2.3 |
| 20 | 25 | 750 | 680 | 0.35 | 2.1 |
| **30** | **35** | **880** | **820** | **0.42** | **2.0** |
| 40 | 45 | 920 | 850 | 0.45 | 1.9 |
| 50 | 52 | 900 | 830 | 0.44 | 1.8 |

**Optimum at 30-35 min, 35% burn-off.** Beyond 45% burn-off: micropores widen to mesopores, surface area declines, mechanical strength drops.

### 6.3 Activation Reactor Design

```
IN-SITU CHAR ACTIVATION REACTOR

    ┌─────────────────────────────────────┐
    │      BFRP/Elium® VESSEL (1.5 m³)    │  ← 20 mm wall, filament wound
    │  ┌───────────────────────────────┐  │
    │  │   SiC HEATING ELEMENTS        │  │  ← 6 zones, 50 kW each = 300 kW
    │  │   (Globar-type, 1400°C max)   │  │
    │  │  ┌─────────────────────────┐  │  │
    │  │  │   CHAR BED (fluidized)  │  │  │  ← 100 kg capacity, 0.5 m dia
    │  │  │   Steam + CO₂ + N₂ ↑    │  │  │
    │  │  └─────────────────────────┘  │  │
    │  └───────────────────────────────┘  │
    └─────────────────────────────────────┘
            │                    │
            ▼                    ▼
      [STEAM INJECTOR]      [PRODUCT OUT]
       (800°C, 10 bar)      → Cool → Screen → Stage 1
```

**Key specifications:**
- **Vessel:** BFRP/Elium® with ZrO₂ liner (3 mm), 1.5 m³ volume
- **Heating:** 6 × SiC Globar elements (50 kW each), zoned PID control
- **Fluidization:** N₂ + steam + CO₂ at 0.3-0.5 m/s superficial velocity
- **Feed:** Char from Port 3 via ZrO₂-lined screw conveyor (water-cooled)
- **Discharge:** Rotary valve (ZrO₂/PEEK CF40) → N₂ quench conveyor → screen
- **Gas exit:** Cyclone (char fines) → heat recovery → PROD-07 gas system
- **Control:** Bed temperature ±5°C, O₂ <1% (zirconia probe), pressure 1.5 bar

### 6.4 In-Situ vs Ex-Situ Activation Trade-offs

| Factor | In-Situ (This Design) | Ex-Situ (Separate Facility) |
|--------|----------------------|----------------------------|
| **Energy Use** | 100 kWh/ton (uses 650°C sensible heat) | 250 kWh/ton (cold start) |
| **Capital Cost** | $180K (integrated reactor) | $350K (separate kiln + handling) |
| **Footprint** | +2 m² on forge footprint | +50 m² separate building |
| **Char Handling** | Hot screw conveyor (100 kg/hr) | Cool, store, reheat, convey |
| **Activation Control** | Real-time, integrated with Stage 3 | Batch, offline QC |
| **Product Consistency** | High (continuous, steady state) | Variable (batch-to-batch) |
| **Steam/CO₂ Source** | Stage 3 gas + boiler (integrated) | Dedicated boiler |
| **Maintenance** | Shared with forge PM schedule | Separate PM program |

**Decision: In-situ activation is mandatory** for Aegis-Forge I — energy integration, footprint, and control consistency are forced by the All-Aegis architecture (PROD-01, PROD-12).

### 6.5 Activated Char Allocation — Closed Loop

| Stream | Allocation | Spec | Downstream |
|--------|------------|------|------------|
| **Stage 1 Adsorption** | 60-70% | BET >800, I₂ >800, <5% ash | PROD-02 Stage 1 gas treatment |
| **Stage 4 Flux/Reductant** | 20-30% | Fixed C >85%, <2% S, <1 mm | PROD-17 metal melting |
| **Surplus/External** | 0-10% | Meets above + packaging | Carbon black market, carburizing |

**Stage 1 adsorption cycle (per batch):**
- 15 kg activated char loaded in BFRP adsorber cartridges (2 × 50 L)
- Treats Stage 1 exit gas (200 Nm³, 150°C) for 20 min
- Organic removal: >95% (VOCs, residual monomers)
- Spent char (loaded with organics) → Stage 3 feed (re-pyrolyzes cleanly)
- **True closed loop:** Char cycles Stage 3 → activation → Stage 1 → Stage 3 → ...

**Stage 4 flux use:**
- Activated char (high fixed C, low ash) replaces coke in Pb/Sn/Zn melting
- Reducing agent: C + MO → M + CO (prevents metal oxidation)
- Flux: Char ash (CaO, MgO, SiO₂) modifies slag basicity
- Consumption: 2-5 kg per batch (depends on metal content)

---
