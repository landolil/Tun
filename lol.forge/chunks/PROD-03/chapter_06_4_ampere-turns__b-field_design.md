## 4. Ampere-Turns & B-Field Design — Electromagnetic Engineering

### 4.1 Coil Geometry & Turn Calculation

Each zone: 100 mm axial length, 15 mm gap to drum OD (630 mm coil ID)

**Copper tube conductor:** 25 mm OD × 2.5 mm wall (20 mm ID for water cooling)
**Turns per zone:** 12 turns (3 layers × 4 turns/layer)
**Coil inductance (estimated):** 12 μH per zone at operating frequency
**Coil mean diameter:** 630 mm
**Magnetic path length:** π × 0.63 = 1.98 m

### 4.2 Ampere-Turns Required for Target B-Field

The magnetic field in the air gap (15 mm) is determined by the coil ampere-turns minus the reluctance of the gap:

$$NI = \frac{B_{gap} \cdot l_{gap}}{\mu_0} + H_{drum} \cdot l_{drum} + H_{coil} \cdot l_{coil}$$

For air gap dominance (l_gap = 15 mm, μ_r = 1):
$$NI \approx \frac{B_{gap} \times 0.015}{4\pi \times 10^{-7}} = 11,937 \times B_{gap} \quad \text{(A-turns per Tesla)}$$

With 12 turns: $I_{RMS} = NI / 12$

| Zone | Frequency | Target B_peak | NI (A-turns) | I_RMS (A) | B_gap at drum |
|---|---|---|---|---|---|
| 1-2 | 100 kHz | 0.05 T | 597 | 50 | 0.05 T |
| 3 | 50 kHz | 0.10 T | 1,194 | 100 | 0.10 T |
| 4-5 | 10 kHz | 0.20 T | 2,387 | 199 | 0.20 T |
| 6 | 5 kHz | 0.25 T | 2,984 | 249 | 0.25 T |
| 7 | 2 kHz | 0.30 T | 3,581 | 298 | 0.30 T |
| 8 | 1 kHz | 0.35 T | 4,178 | 348 | 0.35 T |

**Note:** These are peak B-field in the 15 mm gap. The drum surface sees slightly lower field due to gap fringing. The currents are achievable with 25 mm copper tube (current density ~1.6 A/mm² at 350 A — very conservative).

### 4.3 B-Field Validation — Heating Power Check

**Induction heating power in a conductive cylinder (drum wall):**
$$P = \frac{\pi^2 B_{peak}^2 d^2 f^2}{6 \rho D} \times V_{active}$$

For Zone 5 (10 kHz, B=0.2 T, drum wall 35 mm ZrB₂-SiC):
- ZrB₂-SiC resistivity at 700°C: ~0.1 Ω·m (insulator — negligible heating)
- **Power goes to charge inside drum**, not drum wall

**Power to charge (simplified for spherical particle):**
$$P_{particle} = \frac{\pi^2 B_{peak}^2 d^3 f^2}{20 \rho} \quad \text{(for sphere diameter d)}$$

For 10 mm Al sphere at 10 kHz, B=0.2 T, ρ=4.5×10⁻⁸:
$P = \frac{\pi^2 \times 0.2^2 \times 0.01^3 \times 10000^2}{20 \times 4.5 \times 10^{-8}} = 439 \text{ W per sphere}$

With ~500 such spheres in zone: ~200 kW (matches design target).

### 4.4 Coil Resistance & Conduction Losses

**DC resistance per zone (12 turns, 12 m Cu):**
$$R_{DC} = \rho \frac{L}{A} = 1.7 \times 10^{-8} \times \frac{12}{\pi (0.0125^2 - 0.01^2)} = 0.38 \text{ m}\Omega$$

**AC resistance at frequency (skin + proximity effect):**
- 100 kHz: skin depth in Cu = 0.2 mm → R_AC ≈ 3 × R_DC = 1.1 mΩ
- 10 kHz: skin depth = 0.65 mm → R_AC ≈ 1.5 × R_DC = 0.57 mΩ
- 1 kHz: skin depth = 2 mm → R_AC ≈ 1.1 × R_DC = 0.42 mΩ

**Conduction loss at peak current:**
- Zone 8 (1 kHz, 348 A): $I^2 R = 348^2 \times 0.00042 = 51 \text{ W}$ (negligible vs 500 kW)
- Zone 1 (100 kHz, 50 A): $I^2 R = 50^2 \times 0.0011 = 2.7 \text{ W}$ (negligible)

**Conclusion:** Copper losses are <0.01% of transmitted power. Water cooling handles this easily.

---


---
