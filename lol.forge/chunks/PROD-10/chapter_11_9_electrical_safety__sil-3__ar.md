## 9. Electrical Safety & SIL-3 — Arc Flash, Ground Fault, Carrington Hardening

### 9.1 Safety Integrity Level 3 (SIL-3) Architecture

The power electronics subsystem achieves SIL-3 (IEC 61508) through:

| Safety Function | Implementation | PFD<sub>avg</sub> |
|-----------------|----------------|-------------------|
| Over-temperature shutdown | Dual FBG sensors (2oo3 voting) | 1×10⁻⁴ |
| Over-current protection | GaN desaturation detection (hardware) | 5×10⁻⁵ |
| Ground fault detection | NGR + residual current monitor | 2×10⁻⁴ |
| Arc flash mitigation | BFRP enclosure, no exposed conductors | 1×10⁻⁴ |
| Emergency stop | Hardwired optical E-stop (PMMA POF) | 1×10⁻⁴ |

**Total PFD<sub>avg</sub> = 5.5×10⁻⁴** (meets SIL-3: 10⁻⁴ to 10⁻³)

### 9.2 Arc Flash Mitigation

- **No exposed conductors** inside the BFRP pressure vessel boundary
- **All connections** are bolted, torque-verified, insulated with ZrO₂ sleeves
- **Incident energy** < 1.2 cal/cm² at working distance (PPE Category 0)
- **Arc-resistant switchgear** not required — enclosed in BFRP

### 9.3 Ground Fault Protection

- **High-resistance grounding** (5 A NGR) limits fault current
- **Residual current monitors** on each phase (30 mA trip, 100 ms)
- **PMMA POF communication** ensures fault signals reach controller even during GIC event

### 9.4 Carrington Event Hardening

| Threat | Mitigation |
|--------|------------|
| Geomagnetically Induced Current (DC) | Floating secondary, NGR, no earth reference |
| E1 HEMP (fast pulse) | All-dielectric control (PMMA POF), no copper antennas |
| E2 HEMP (intermediate) | GDT surge protection at grid interface |
| E3 HEMP (slow, GIC-like) | Same as GIC — floating architecture |
| Surface charging (space) | Conductive YInMn Blue glaze provides bleed path |

---
