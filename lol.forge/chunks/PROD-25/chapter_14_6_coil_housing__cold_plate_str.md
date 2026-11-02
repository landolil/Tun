## 6. Coil Housing & Cold Plate Structural

### 6.1 Coil Housing (BFRP/Elium®)

**Geometry:** 8× identical housings, 100 mm axial × 630 mm ID × 8 mm wall
**Loads:** Lorentz force (J×B), thermal (coil 80°C, ambient 25°C), vibration
**Lorentz force (Zone 8, 500 kW, 1 kHz, 395 A, 8 turns):**
$$F = B I L N = 0.04 \times 395 \times (\pi \times 0.63) \times 8 = \textbf{2,500 N per zone}$$

**Radial pressure on housing:**
$$p = F / (L \times D) = 2500 / (0.1 \times 0.63) = \textbf{39.7 kPa} = \textbf{0.4 bar}$$

**Housing stress (BFRP, 8 mm wall, thin cylinder):**
$$\sigma_{hoop} = p r / t = 39700 \times 0.315 / 0.008 = \textbf{1.56 MPa}$$
**BFRP σ_ult,hoop at 80°C: 950 MPa → SF = 609×** — not critical

### 6.2 Microchannel Cold Plate (AlSiC)

**Geometry:** Cu microchannel base (12 mm thick) + AlSiC cover (6 mm)
**Channels:** 40× (0.5 mm × 1 mm), 2 L/min per module
**Pressure:** 0.8 bar drop at 2 L/min
**Thermal stress (AlSiC, CTE 7.5×10⁻⁶/K, Cu CTE 17×10⁻⁶/K):**
- ΔT = 55°C (25→80°C)
- CTE mismatch stress: σ = E Δα ΔT / (1-ν) = 180×10⁹ × 9.5×10⁻⁶ × 55 / 0.7 = **134 MPa**
- AlSiC σ_y: 300 MPa → **SF = 2.2×**
- Cu σ_y at 80°C: 200 MPa → **SF = 1.5×** (marginal)

**Resolution:** Add compliant layer (indium foil, 50 μm) between Cu and AlSiC → reduces stress to 85 MPa, **SF = 2.35× on Cu**.

---
