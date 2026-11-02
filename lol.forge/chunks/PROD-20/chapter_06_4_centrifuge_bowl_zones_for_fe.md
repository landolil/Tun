## 4. Centrifuge Bowl Zones for Fe/REE/Slag Separation

### 4.1 Zone Architecture — 5-Zone Design for Stage 7

| Zone | Axial Position | Function | Temperature | RPM | Key Features |
|---|---|---|---|---|---|
| **Z7-1 (Charge/Preheat)** | 600-660 mm | Charge feed, preheat to 1200°C | 1200°C | 200 | Feed inlet, FBG, POF level |
| **Z7-2 (Cast Iron Melt)** | 660-700 mm | Cast iron melting (1150-1200°C) | 1250°C | 200 | Early Fe fraction, magnet melting |
| **Z7-3 (Main Fe Melt/Dwell)** | 700-750 mm | Complete melting, REE dissolution | 1580°C | 200 | 40 min dwell, C/Si/Mn control, XRF |
| **Z7-4 (Fe Drainage/REE Sep)** | 750-780 mm | Fe film to Port 7, REE to Port 7A | 1550°C | 200 | Dual ports, slag conditioning |
| **Z7-5 (Transition)** | 780-800 mm | Residual clearance, Stage 8 prep | 1600°C | 200 | Slag conditioning, atmosphere prep |

### 4.2 Zone 7-3: Main Melt and Dwell — The REE Dissolution Reactor

**Process Parameters:**
- Temperature: 1580°C ±10°C
- Duration: 40 minutes
- RPM: 200 (G=13.9)
- Atmosphere: 5% H₂/95% N₂ at 1.2 bar, dew point <-40°C

**Carbon/Silicon/Manganese Control Loops:**
```
C_control: CO/CO₂ injection → p_CO/p_CO₂ → [%C] via XRF feedback (1/min)
Si_control: CaO addition → slag basicity B → L_Si → [%Si] via XRF feedback
Mn_control: FeO in slag (via C_level) → oxygen potential → [%Mn] via XRF
```

**REE Dissolution Kinetics:**
```
dm_REE/dt = k_diss × A_REE × (C_sat - C_bulk)
k_diss = 2D/δ_diff
D_Nd_in_Fe = 5×10⁻⁹ m²/s at 1580°C
δ_diff = √(D×t) = 0.0011 m at t=2400 s
```
- 100 μm REE particle dissolves in ~60 seconds
- All REEs fully dissolved within first 10 minutes of dwell
- **Remaining 30 minutes: homogenization, slag equilibration, C/Si/Mn tuning**

**In-Situ Monitoring (Zone 7-3):**
| Sensor | Parameter | Frequency | Action on Deviation |
|---|---|---|---|
| **FBG (48 sensors)** | Wall temperature | 1 kHz | PID power adjustment |
| **POF Level (2 sensors)** | Melt height | 10 Hz | Feed rate adjustment |
| **Inline XRF** | Fe, C, Si, Mn, Nd, Sm, Co | 1/min | C/Si/Mn control, REE tracking |
| **Gas Analyzer (MS)** | H₂, CO, CO₂, H₂O | 10 Hz | Atmosphere control, C control |
| **Magnetic Sensor** | Fe melt level (inductive) | 100 Hz | Cross-check POF level |

### 4.3 Zone 7-4: Dual-Port Separation

**Port 7 (Fe Bullion) — Primary Stream:**
- Aperture: 20 mm at r=280mm
- Opens at 1550°C (Ti₃AlC₂/ZrO₂ thermal actuator)
- Continuous Fe stream → ZrO₂ molds (4-position carousel, 50 kg each)
- N₂ quench: 25 SLPM at 4 bar, target cooling rate 30°C/min

**Port 7A (REE Concentrate) — Secondary Stream:**
- Aperture: 15 mm at r=250mm (inward of Port 7)
- Opens at 1500°C (earlier, captures REE-rich droplets)
- Intermittent collection → ZrO₂ molds (2-position, 15 kg each)
- Collects: REE-rich slag droplets + REE-containing metal droplets
- N₂ quench: 15 SLPM at 3 bar, target cooling rate 20°C/min

**Separation Logic:**
```
Centrifugal equilibrium radius:
- Fe-rich liquid (ρ=7.0): r_eq = 285 mm → Port 7
- REE-rich droplets (ρ=7.5-8.0): r_eq = 275-280 mm → Port 7A
- Slag liquid (ρ=2.8): r_eq = 195 mm → retained in drum
```
- 30 mm radial separation between ports = clean separation
- Port 7A opens 50°C earlier to capture REE droplets before they mix into main Fe stream

### 4.4 Zone 7-5: Transition to Stage 8

**Residual Clearance:**
- After Fe bullion casting (4×50 kg = 200 kg) + REE concentrate (2×15 kg = 30 kg)
- Residual Fe < 5 kg
- Power taper: 400 → 200 → 100 → 0 kW over 5 min
- Temperature: 1580 → 1600°C (Stage 8 entry)
- Atmosphere: 5% H₂/95% N₂ maintained

**Slag Conditioning for Stage 8:**
- Slag composition: CaO 25%, SiO₂ 35%, MgO 12%, Al₂O₃ 8%, REE oxides 2%, FeO 10%, MnO 5%
- Basicity B = CaO/SiO₂ = 1.2 (target for Stage 8 Zr dissociation)
- **NO additional flux** — upstream dross provides MgO/Al₂O₃
- Stage 8 induction (Zone 8, 1 kHz) takes over heating

---
