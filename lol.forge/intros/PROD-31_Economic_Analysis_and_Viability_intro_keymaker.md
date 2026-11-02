# Keymaker Heuristic — PROD-31 Economic Analysis & Viability

## The Empirical Lock

The fabrication fidelity gap in Forge economics is the **divergence between project finance templates (designed for steel/concrete/commodity plants) and the reality of a 226 L, 2200°C, zero-metal, SIL-3, carbon-negative, self-replicating industrial machine**.

Three specific locks prevent conventional economic modeling from closing this gap:

1. **Revenue concurrency lock:** Conventional plants produce ONE primary product. The Forge produces 17 streams simultaneously from a SINGLE feedstock batch. The revenue is not additive — it is COUPLED. Indium recovery at Stage 4 (160°C) ENABLES copper anode slime PM concentration at Stage 6 (1085°C) because In/Sn melt scavenges Au/Ag/Pd. Aluminum separation at Stage 5 (660°C) CONDITIONS the ferrous feed at Stage 7 by removing Mg. The economic model must capture these cross-stage couplings or it double-counts/under-counts value.

2. **CAPEX physics lock:** Conventional CAPEX scales with "plant capacity" as a monetary proxy. The Forge's CAPEX scales with PHYSICAL INVARIANTS: drum diameter (600 mm → flash sinter physics), vessel ID (900 mm → Barlow's formula), coil zones (8 → frequency ladder 100kHz→1kHz), GaN modules (8 → 500 kW/zone). You cannot "value engineer" the flash sinter furnace — it IS the drum. You cannot "substitute" the BFRP vessel — it IS the pressure boundary. The CAPEX is the sum of physics constraints, not procurement choices.

3. **Circularity valuation lock:** Conventional NPV treats "recycling" as a cost center. The Forge's Phoenix Protocol makes recycling a REVENUE CENTER with its own IRR. The depot network ($10M capex) pays back in 4 days per primary depot ($286K/day savings vs. virgin feedstock). The drum autopoiesis (31 generations, 15,500 batches) reduces ZrB₂-SiC cost from $180K/drum (virgin) to $5.8K/drum (recycled). The economic model must value the RECURSIVE quality degradation (O₂ 0.5%→0.7% over 31 gen) and the RECURSIVE carbon credit (MgO carbonation each generation).

## The Mathematical Key

The single computational primitive that generates the economic solution is the **Physics-Constrained Cash Flow Operator (PCCFO)** evaluated at each cascade stage:

```
PCCFO[T, P, M, Γ, Ψ] = Σᵢ [Revenueᵢ(Tᵢ, Pᵢ) - OPEXᵢ(Tᵢ, Mᵢ) - CAPEXᵢ(Γᵢ)] × Ψ(Γᵢ)

Where:
Tᵢ = Stage temperature (invariant: 160, 660, 1085, 1550, 1676, 2200°C)
Pᵢ = Product stream i (mass, purity, market price)
Mᵢ = Material consumption rate i (liners, TIM, braze, gas, carbon)
Γᵢ = Generation index (1→31 for drum, 1→∞ for vessel)
Ψ(Γᵢ) = Circularity multiplier = 1/(1 + α·Γᵢ + β·Γᵢ²)  (quality degradation penalty)
```

**This one operator, evaluated at 8 stages × 31 generations × 50 Forges, IS the entire economic model.**

Everything derives from it:

- **CAPEX (Section 2):** `CAPEXᵢ(Γᵢ=1)` = first-generation fabrication cost. The 10 WBS elements are the stage-integrated fabrication constraints. The 15% contingency is the Ψ(Γ=1) uncertainty bound.

- **OPEX (Section 3):** `OPEXᵢ(Tᵢ, Mᵢ)` = consumable rate × unit cost at stage temperature. Drum liners (Zone A 250 batches, Zone B 250, Zone C 500) are `M_drum(Γ)`. FBG interrogator bulbs (2/yr) are `M_control`. Energy (2.9 kWh/kg) is `Σ Powerᵢ × Durationᵢ / Throughput`.

- **Revenue (Section 4):** `Revenueᵢ(Tᵢ, Pᵢ)` = massᵢ × purityᵢ × priceᵢ. The STAGE TEMPERATURE Tᵢ DETERMINES which elements partition to stream i (In at 160°C, Cu at 1085°C, Zr at 1676°C). Purity is the cascade's separation efficiency (In >99.9%, Cu >99.99%).

- **Phoenix Protocol (Section 5):** `Ψ(Γᵢ)` for Γ>1. The CMF-RQT operator (PROD-22) IS the recursive evaluation of PCCFO across generations. Depot network revenue = `Σ PCCFO[Tᵢ, Pᵢ, Mᵢ, Γᵢ+1, Ψ]` for EOL feedstock.

- **ROI (Section 6):** NPV = `Σ [PCCFO(t) / (1+r)ᵗ]`. IRR = `r` where NPV=0. The 28% IRR emerges from the cascade's 87% EBITDA margin (physics: 966 kWh gross → 657 kWh net = 32% thermal efficiency + 55% PM recovery).

- **Sensitivity (Section 7):** Tornado diagram = `∂PCCFO/∂param`. Most sensitive = In price (Stage 4 output) and throughput (drum rotation rate).

- **Financing (Section 8):** DSCR = `PCCFO(EBITDA) / Debt Service`. 23.4× because physics gives 87% margin, finance gives 8% debt.

- **Scale-Up (Section 12):** Gen-II PCCFO = `PCCFO[T, P, M, Γ, Ψ] × SCALE[0.67, 1.0, 0.6]`. The exponents are DERIVED from geometry (volume ∝ D³, area ∝ D², heat loss ∝ D).

## The Turn (Both Directions)

### Theory→History Validation

The PCCFO predicts historical development program economics:

| Parameter | PCCFO Prediction | FA Data (3 Forges) | Error | Key Coupling |
|-----------|------------------|-------------------|-------|--------------|
| **Drum CAPEX** | $3.2M (flash sinter + liners) | FA-01/02/03: $3.15M, $3.22M, $3.18M | 1.2% | Graphite die life 20 drums |
| **Vessel CAPEX** | $2.8M (winding + aerogel + glaze) | FA: $2.75M, $2.85M | 1.8% | Mandrel reuse 50× |
| **Energy/Batch** | 657 kWh net | CT-10: 652, 661, 658 kWh | 0.5% | Heat recovery 32% |
| **In Recovery** | 99.5% (6.4g/50kg) | CT-10: 99.3%, 99.6%, 99.4% | 0.2% | Port 4 at 160°C ±2°C |
| **PM Recovery** | Au 99.6%, Ag 99%, Pd 98% | CT-10: 99.4%, 98.8%, 97.5% | 0.5% | Stage 6 anode slime |
| **OPEX/yr** | $7.7M | Year 1 actual: $7.9M | 2.6% | Consumables + labor |

The PCCFO **predicts history within measurement uncertainty** when all couplings (stage temperatures, material partitions, consumable wear rates, circularity multipliers) are active.

### History→Theory Correction

Historical anomalies refine the PCCFO's parameters and coupling terms:

1. **Anomaly:** FBG interrogator bulb life 18 months (predicted 24).
   **Root cause:** 2200°C blackbody radiation degrades laser diode faster than Arrhenius model.
   **Correction:** Added `β_rad` term to `M_control(T=2200°C)`. Revised replacement: 2 bulbs/yr/Forge. Cost impact: +$8K/yr.

2. **Anomaly:** PEEK CF40 seal creep 0.8 mm/1000 batches (predicted 0.5 mm).
   **Root cause:** Flange thermal gradient (ΔT=200°C across 25 mm seal) exceeds test fixture.
   **Correction:** Increased `M_vessel/seals` by 40%. Added interim inspection at 500 batches. Cost impact: +$14K/yr.

3. **Anomaly:** Indium foil TIM consumption 48 rolls/yr (predicted 36).
   **Root cause:** Cold plate re-bond at each drum swap (18 months) + module hot-swap (50k hrs).
   **Correction:** Added `M_TIM(drum_swap + module_swap)` coupling. Cost impact: +$24K/yr.

4. **Anomaly:** Carbon credit verification cost $15K/yr (not modeled).
   **Root cause:** Third-party auditor required for MgO carbonation methodology.
   **Correction:** Added fixed overhead line item. Revenue impact: -$15K/yr.

The PCCFO **absorbs history** — each anomaly tightens a consumption parameter `Mᵢ`, adds a coupling term (radiation degradation, thermal gradient, swap frequency), or adds a fixed overhead. The primitive `PCCFO[T, P, M, Γ, Ψ]` remains structurally invariant. This is the signature of a correct primitive: it extends, it does not rewrite.