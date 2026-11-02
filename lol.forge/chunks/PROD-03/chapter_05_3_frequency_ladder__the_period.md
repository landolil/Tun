## 3. Frequency Ladder — The Periodic Table's Conductivity Map

### 3.1 Complete Frequency Ladder with Penetration Depths

| Zone | Frequency | Stages | Target | ρ at T (Ω·m) | μ_r | Skin Depth δ (mm) | Coupling |
|---|---|---|---|---|---|---|---|
| 1-2 | 100 kHz | 1-2 | Air/N₂, organics | N/A | 1 | N/A | Indirect convection |
| 3 | 50 kHz | 3 | Zn, Pb | 6×10⁻⁸, 2×10⁻⁷ | 1 | 0.35, 0.65 | Onset |
| 4-5 | 10 kHz | 4-5 | Al | 4.5×10⁻⁸ | 1 | 0.9 | **Optimal** |
| 6 | 5 kHz | 6 | Cu | 2.5×10⁻⁸ | 1 | 1.0 | Deep |
| 7 | 2 kHz | 7 | Fe (ferro) | 1.2×10⁻⁷ | 100 | 0.3 | **Max** |
| 8 | 1 kHz | 8 | Minerals | >10⁶ | 1 | >20 | Conduction only |

**Skin depth formula:** δ = √(2ρ / ωμ) where ω = 2πf, μ = μ₀μ_r

### 3.2 Skin Depth Physics — Why Frequency Selects Material

**Induction heating power density in a conductor:**
$$P_v = \frac{\pi^2 B_{peak}^2 d^2 f^2}{6 \rho D} \quad \text{(for solid cylinder, diameter d, length D)}$$

For a semi-infinite conductor (skin effect dominant):
$$P_v \approx \frac{B_{peak}^2}{2 \rho \mu \delta} \propto \frac{f^{1/2}}{\rho^{3/2} \mu^{1/2}}$$

**Key insight:** At fixed B-field, power density scales as f^½ / ρ^3/2. Lower resistivity → dramatically higher heating.

**Material comparison at 10 kHz (Zone 4-5):**
| Material | ρ (700°C) | μ_r | Relative P_v | Behavior |
|---|---|---|---|---|
| Aluminum | 4.5×10⁻⁸ | 1 | 1.0 (reference) | **Melts** |
| Copper | 2.5×10⁻⁸ | 1 | 3.4 | Would melt if large pieces |
| Zinc | 6×10⁻⁸ | 1 | 0.7 | Already melted (Stage 4) |
| Iron (paramag) | 1.2×10⁻⁷ | 1 | 0.2 | Weak coupling |
| Iron (ferro, <770°C) | 1.2×10⁻⁷ | 200 | 40 | **Intense heating** |

### 3.3 Selective Melting Mechanism — The Frequency Key

**The problem:** At Stage 5 (660-720°C), we have Al pieces (1-50 mm) mixed with Cu pieces (1-20 mm) and Fe pieces (5-100 mm). All are conductive. How to melt ONLY Al?

**The solution: Frequency as a low-pass filter for eddy currents.**

At 10 kHz:
- Al skin depth: 0.9 mm → **full penetration for pieces < 2 mm**, partial for larger
- Cu skin depth: 0.7 mm → **insufficient for bulk Cu** (> 3 mm pieces shielded)
- Fe skin depth: 0.3 mm (ferromagnetic) → surface heating only, but Fe is solid

**At 5 kHz (Zone 6, Stage 6):**
- Cu skin depth: 1.0 mm → full penetration for wire/traces, partial for bulk
- Fe skin depth: 0.4 mm (ferromagnetic lost at 770°C) → eddy current only

**At 2 kHz (Zone 7, Stage 7):**
- Fe skin depth: 0.3 mm (ferromagnetic, μ_r=100) → **intense surface heating**
- But Fe pieces are large → hysteresis heating dominates (μ_r × f = 200 × 2000 = 400,000)
- Total Fe heating: 10-20× Al at same B-field

**The frequency ladder IS the separation mechanism:** Each frequency unlocks one material class while leaving others solid or poorly coupled.

### 3.4 Stage 4 Detail — Indium First Strategy at 50 kHz

Zone 3 (50 kHz) handles Stage 4 (420-900°C) where Zn, Pb, Sn, In melt. At 50 kHz:
- In skin depth: 0.6 mm (melts first at 156°C, small particles)
- Sn skin depth: 0.5 mm (melts at 232°C)
- Pb skin depth: 0.65 mm (melts at 327°C)
- Zn skin depth: 0.35 mm (melts at 420°C, excellent coupling)

The 50 kHz frequency couples well to ALL these metals — which is correct because they melt in rapid succession and all report to Port 4. The temporal separation (Indium First) handles selectivity, not frequency.

---


---
