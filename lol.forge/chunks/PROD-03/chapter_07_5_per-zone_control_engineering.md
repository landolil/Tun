## 5. Per-Zone Control Engineering

### 5.1 Zone 1-2: 100 kHz, Air/Indirect Heating (Stages 1-2)

**Challenge:** No conductive material to couple to. Heat transfer via hot N₂ gas.
**Solution:** High frequency (100 kHz) → small skin depth in copper tube → high current density → high resistive loss in coil → heats coil → heats N₂ gas → IR + convection to feedstock.

**Power Profile:**
- Stage 1: 20 kW/zone (IR supplement from SiC glow bars)
- Stage 2: 50 kW/zone (polymer melt requires more energy)
- Total: 100 kW for both zones

**Control Strategy:**
- T_target from cascade profile
- FBG at drum inner surface (Zone A)
- PID: Kp=0.8, Ki=0.02, Kd=0.1 (tuned for gas thermal inertia)
- Ramp rate limit: 10°C/min (Stage 2 viscosity constraint)

### 5.2 Zone 3: 50 kHz, Zn/Pb Coupling (Stage 3)

**Challenge:** Zn/Pb begin coupling; organics pyrolyzing (endothermic then exothermic).
**Power Profile:** 50-80 kW (varies with Zn/Pb content)
**Control Strategy:**
- Feedforward: XRF assay → predicted Zn/Pb mass → power pre-set
- Feedback: FBG at Zone B surface
- Phase monitoring: V/I phase shift indicates coupling onset
- Ramp rate: 7°C/min (pyrolysis kinetics limited)

### 5.3 Zones 4-5: 10 kHz, Aluminum Window (Stages 4-5)

**Challenge:** Al melts at 660°C; Cu/Fe must remain solid. 10 kHz is Al's "sweet spot" — deep enough for bulk Al, too shallow for Cu/Fe at this temperature.
**Power Profile:** 80-150 kW/zone (combined 160-300 kW for Al)
**Control Strategy:**
- Dual-zone coordination: Zone 4 ramps to 900°C for Zn/Pb clearance, Zone 5 holds at 680°C for Al
- Port 4 (In/Zn) opens first, then Port 5 (Al)
- FBG at Zone B mid-wall (17.5 mm) — best represents feedstock temperature
- Ramp rate: 2.4°C/min through Al window (660-720°C)

### 5.4 Zone 6: 5 kHz, Copper Deep Penetration (Stage 6)

**Challenge:** Cu has high thermal mass, PCB traces are thin (need penetration).
**Solution:** 5 kHz → δ ≈ 4 mm in Cu at 1100°C → penetrates wire/trace cross-sections.
**Power Profile:** 100-200 kW
**Control Strategy:**
- Feedforward: Cu mass from assay → energy budget
- Feedback: FBG Zone B deep (mid-wall)
- Resonance tracking critical: Cu coupling changes dramatically as it melts
- Ramp rate: 3.8°C/min (Cu thermal inertia)

### 5.5 Zone 7: 2 kHz, Ferromagnetic Iron (Stage 7)

**Challenge:** Fe is ferromagnetic below 770°C (huge hysteresis coupling), paramagnetic above.
**Solution:** 2 kHz maximizes penetration while maintaining ferromagnetic enhancement at lower T.
**Power Profile:** 150-350 kW (highest — Fe has high heat capacity + Curie transition)
**Control Strategy:**
- Curie transition management: Power automatically drops as Fe passes 770°C (μ_r → 1)
- PID gain scheduling: High gain below Curie, low gain above
- FBG Zone C surface (Fe melt pool contact)
- Ramp rate: 11.4°C/min (Fe thermal conductivity helps)

### 5.6 Zone 8: 1 kHz, Mineral Conduction Heating (Stage 8)

**Challenge:** Minerals are non-conductive (ρ = 10⁻³-10⁻¹ Ω·m). Induction only works via conduction from hot gas/coil.
**Solution:** 1 kHz → deep field penetration → volumetric heating of mineral bed via eddy currents in any conductive inclusions + conduction from coil.
**Power Profile:** 200-500 kW (highest — mineral thermal mass + low coupling)
**Control Strategy:**
- Open-loop power profile (FBG unreliable at 2200°C, silica fiber softens)
- Optical pyrometer backup (ZrO₂ window, 1.55 μm wavelength)
- Ramp rate: 20°C/min (limited by zircon dissociation kinetics)
- 20 min dwell at 1750°C for ZrSiO₄ dissociation

---
