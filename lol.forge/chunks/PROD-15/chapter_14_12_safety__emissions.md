## 12. Safety & Emissions

### 12.1 HCl Monitoring & Control

| Hazard | Source | Detection | Mitigation |
|--------|--------|-----------|------------|
| **HCl gas** | PVC dehydrochlorination | PMMA POF absorption (3.4 µm) | NaHCO₃ injection, temp hold >50 ppm |
| **Chlorinated dioxins** | PVC + Cu/Fe at 250-400°C | GC-MS (batch sample) | Temp >400°C destroys; <250°C minimizes |
| **Benzene** | PS/ABS/PC degradation | PID detector | Vacuum vent capture |
| **Styrene** | PS degradation | PID detector | Vacuum vent capture |
| **Formaldehyde** | PA/PC degradation | DNPH cartridge | Vacuum vent capture |
| **Acrolein** | Glycerol/ester degradation | PID + GC-MS | Vacuum vent capture |

### 12.2 Dust Explosion Prevention

| Measure | Specification |
|---------|---------------|
| **Atmosphere** | N₂ at 1.2 bar (O₂ <2%) |
| **Dust Generation** | <10 g/m³ (melt, not powder) |
| **Ignition Sources** | None (all-dielectric, no arcs) |
| **Static Dissipation** | Carbon fiber in BFRP (conductive path to ground) |
| **Explosion Vent** | Rupture disc (ZrO₂, 2 bar) on vapor core |
| **Flame Arrestor** | Ceramic mesh on all gas exits |

### 12.3 Emission Limits (Validated)

| Emission | Limit | Control Technology | Monitoring |
|----------|-------|-------------------|------------|
| **HCl** | <10 ppm | In-drum NaHCO₃ + carbon bed | Continuous POF |
| **VOCs (total)** | <50 ppm | Vacuum vent + condenser | PID + GC-MS |
| **Particulate (PM2.5)** | <5 mg/Nm³ | Cyclone + ceramic baghouse | Gravimetric |
| **Dioxins/Furans** | <0.1 ng TEQ/Nm³ | Temp >400°C + carbon bed | GC-MS (quarterly) |
| **Noise** | <75 dB(A) at 1m | BFRP enclosure | Sound level meter |

### 12.4 Process Safety Interlocks

| Interlock | Trigger | Action | Reset |
|-----------|---------|--------|-------|
| **High HCl** | >200 ppm | E-stop: kill induction, max NaHCO₃, N₂ flood | Manual + root cause |
| **High ΔP filter** | >8 bar | Stop feed, back-pulse, alarm | Auto after ΔP <3 bar |
| **High vibration** | >5 mm/s | Reduce RPM to 50, alarm | Manual |
| **Bearing overtemp** | >120°C | E-stop, emergency cool | Manual + bearing inspect |
| **Seal leak** | He detector >1 ppm | N₂ purge, reduce pressure | Manual + seal replace |

---
