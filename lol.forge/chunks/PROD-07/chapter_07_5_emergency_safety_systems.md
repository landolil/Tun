## 5. EMERGENCY SAFETY SYSTEMS

### 5.1 Pressure Relief (Three Independent Layers)

Per ASME BPVC Section VIII and IEC 61511 SIL-3:

| Layer | Device | Set Pressure | Capacity | Activation |
|-------|--------|--------------|----------|------------|
| Primary | PEEK CF40 spring-loaded relief valve (PSV-101) | 3.0 bar gauge | 100 SLPM N₂ | Mechanical spring |
| Secondary | ZrO₂ ceramic rupture disk (PSD-101) | 4.5 bar gauge | Full bore (50mm) | Non-reclosing burst |
| Emergency | Manual ZrO₂ ceramic ball valve (MV-101) | Human-authorized | Full bore | Two-key authorization |

Primary Relief (PSV-101): PEEK CF40 body, ZrO₂ seat, PEEK CF40 spring (10⁶ cycles fatigue rated), discharge to 500L BFRP expansion vessel.

Secondary Relief (PSD-101): ZrO₂ ceramic disc, 50mm diameter, 2mm thickness, 4.5 bar ±5% burst, non-fragmenting petal pattern.

Emergency Relief (MV-101): ZrO₂ ceramic ball, 50mm bore, PEEK CF40 stem/seals, manual handwheel with two-key interlock.

### 5.2 Temperature Runaway Prevention

If induction coil fails in ON state:
- PMMA fiber FBG temp sensors detect >50°C over-temperature
- All induction inverters trigger isolated IGBT off-state via optical signal (GIC immune)
- N₂ quench valve opens: floods drum at 5 bar N₂ (thermal ballast)
- Automatic drum speed reduction to 10 RPM (convective cooling)

### 5.3 Acoustic Overpressure Alert (AMLS Stage 0)

- Acoustic power limited by structural resonance of BFRP pre-chamber
- FBG sensors continuously monitor strain in chamber wall
- If strain > 60% of failure threshold: power reduced proportionally (PID control)

---
