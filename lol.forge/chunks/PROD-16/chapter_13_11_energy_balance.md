## 11. Energy Balance

### 11.1 Energy Consumption Summary

| Energy Component | Power (kW) | Duration (hr) | Energy/Batch (kWh) | % of Total |
|------------------|------------|---------------|-------------------|------------|
| **Induction Heating (50 kHz)** | 65 avg | 0.75 | 48.75 | 52.1% |
| **Drum Drive (200 RPM)** | 15 | 0.75 | 11.25 | 12.0% |
| **Activation Reactor (SiC elements)** | 150 | 0.5 | 75.0 | 80.1%* |
| **N₂/CO₂ Compression** | 5 | 0.75 | 3.75 | 4.0% |
| **Screw Conveyors (char, slag)** | 3 | 0.75 | 2.25 | 2.4% |
| **Gas Handling (cyclone, heat exch.)** | 2 | 0.75 | 1.5 | 1.6% |
| **Control/Instrumentation** | 1 | 0.75 | 0.75 | 0.8% |
| **TOTAL (Stage 3 only)** | — | — | **93.5 kWh** | **100%** |
| **Incl. Activation** | — | — | **168.5 kWh** | — |

*Activation reactor runs 30 min during Stage 3 + 15 min into Stage 4 (overlap).

**Per ton of thermoset feed:** 935 kWh/ton (Stage 3 only), 1,685 kWh/ton (with activation)
**Per ton of total feed:** 187 kWh/ton (Stage 3), 337 kWh/ton (with activation)

### 11.2 Endothermic Pyrolysis vs Exothermic Char Oxidation

**Pyrolysis is net endothermic** — requires continuous energy input:

| Reaction | ΔH (kJ/mol) | Per kg Thermoset | Energy (kWh/ton) |
|----------|-------------|------------------|------------------|
| **Epoxy decomposition** | +120 to +180 (net) | 150-250 kJ/kg | 42-69 |
| **Phenolic decomposition** | +80 to +120 (net) | 100-180 kJ/kg | 28-50 |
| **Rubber decomposition** | +100 to +150 (net) | 120-200 kJ/kg | 33-56 |
| **Cellulose decomposition** | +50 to +100 (net) | 60-130 kJ/kg | 17-36 |
| **CaCO₃ calcination** | +178 (CaCO₃→CaO+CO₂) | 1780 kJ/kg CaCO₃ | 494* |

*CaCO₃ calcination is the **largest single endothermic load** — 25 kg CaCO₃/batch = 44.5 MJ = 12.4 kWh/batch.

**Char oxidation (if O₂ present) would be exothermic:**
$$\text{C} + \text{O}_2 \rightarrow \text{CO}_2 \quad \Delta H = -393 \text{ kJ/mol}$$
$$\text{C} + \frac{1}{2}\text{O}_2 \rightarrow \text{CO} \quad \Delta H = -111 \text{ kJ/mol}$$

**But in Stage 3: O₂ <2% (N₂/CO₂ atmosphere) — no significant oxidation.**
The char retains its calorific value (30-35 MJ/kg) for Stage 4 flux use or Stage 1 adsorption.

**Net Stage 3 energy balance (per 500 kg batch):**
- Induction input: 48.75 kWh
- Drum drive: 11.25 kWh
- **Pyrolysis endotherm (consumed):** ~35 kWh (sensible + latent)
- **Calcination endotherm (consumed):** ~12.4 kWh
- **Sensible heat (feed 150→700°C):** ~15 kWh
- **Losses (radiation, convection, gas enthalpy):** ~15 kWh
- **Net:** Input ≈ Consumption + Losses (balanced by control system)

### 11.3 Heat Recovery Integration

**Stage 3 has three major recoverable heat streams:**

| Stream | Temperature | Energy Available | Recovery Method | Destination |
|--------|-------------|------------------|-----------------|-------------|
| **Pyrolysis Gas** | 650°C → 200°C | 25 kWh/batch | SiC heat exchanger (gas-gas) | Pre-heat Stage 4 N₂ to 300°C |
| **Char (Port 3)** | 650°C → 100°C | 8 kWh/batch | N₂ quench → heat recovery | Stage 1 pre-heat (80°C) |
| **Activation Reactor Exhaust** | 850°C → 200°C | 30 kWh/batch | SiC heat exchanger | Stage 4 pre-heat + steam generation |
| **Drum Wall (radiation)** | 700°C | 10 kWh/batch | BFRP vessel → aerogel gap → vessel cooling | PEX-a water loop → Stage 1 |

**Total recoverable:** ~73 kWh/batch (78% of Stage 3+activation input)

**Integrated cascade recovery (PROD-02):**
1. Stage 3 gas → Stage 4 N₂ pre-heat (300°C) → saves 25 kWh/batch Stage 4 induction
2. Activation exhaust → Stage 4 N₂ pre-heat + steam for activation → saves 30 kWh/batch
3. Char quench → Stage 1 IR pre-heat → saves 8 kWh/batch Stage 1
4. Drum cooling water → Stage 1 water pre-heat → saves 10 kWh/batch

**Net cascade energy (Stages 1-4 integrated):** 40% reduction vs. isolated stages.

### 11.4 Activation Reactor Energy Detail

| Component | Energy (kWh/batch) | Notes |
|-----------|-------------------|-------|
| **Sensible heat (char 650→850°C)** | 8 | From Stage 3 discharge temp |
| **Steam generation (2:1 ratio, 30 kg)** | 22 | 2.26 MJ/kg latent heat |
| **CO₂ heating (30 kg, 150→850°C)** | 3 | Cp = 0.85 kJ/kg·K |
| **Endothermic gasification (35% burn-off)** | 35 | C + H₂O/CO₂ → CO + H₂ |
| **Radiation/convection losses** | 7 | 20 mm aerogel insulation |
| **Total Activation** | **75** | 50 kWh/ton char |

**Optimization:** Use Stage 3 pyrolysis gas (18-22 MJ/Nm³) to fire steam boiler for activation → **closes energy loop**. Gas energy content: 35 kWh/batch → covers 47% of activation energy.

---
