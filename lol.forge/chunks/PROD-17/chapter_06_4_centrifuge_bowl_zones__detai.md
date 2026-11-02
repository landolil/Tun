## 4. Centrifuge Bowl Zones — Detailed Design

### 4.1 Inner Zone: Indium/Tin Collection (Port 4A, 160°C)

| Parameter | Value | Notes |
|---|---|---|
| **Radial Position** | r = 150-200 mm | Inner liquid annulus |
| **Temperature** | 160°C (In MP + 3.4°C superheat) | Precise control ±1°C |
| **Port Aperture** | 12 mm diameter | Standard Port 4A |
| **Valve Actuation** | Ti₃AlC₂/ZrO₂ bilayer | Calibrated for 160°C |
| **Collection Time** | 5 minutes at 400 RPM | In coalescence + radial migration |
| **Expected Composition** | In 60-80%, Organics 20-40% | Organics from char co-discharge |
| **Downstream** | Electrodeposition (FOLLOW-14) | 99.9% In product |

**In Collection Efficiency:**
At 400 RPM, G=89.2, the centrifugal force on a 1 mm In droplet:
$F_c = \frac{4}{3}\pi r^3 \rho \omega^2 r = 1.2 \times 10^{-5} \text{ N}$
Viscous drag (Stokes): $F_d = 6\pi \mu r v$
Terminal velocity: $v = \frac{2}{9} \frac{r^2 \rho \omega^2 r}{\mu} \approx 0.5 \text{ m/s}$
Time to migrate 150 mm: **0.3 seconds** — well within 5-minute dwell.

### 4.2 Middle Zone: Tin/Bismuth Collection (Port 4B, 200°C & 280°C)

| Parameter | Value | Notes |
|---|---|---|
| **Radial Position** | r = 200-250 mm | Middle liquid annulus |
| **Temperature Step 2** | 200°C (Sn-Pb eutectic) | 63% Sn / 37% Pb |
| **Temperature Step 3** | 280°C (Bi + Sn) | Bi 271°C, Sn 232°C |
| **Port Aperture** | 12 mm diameter | Standard Port 4B |
| **Valve Actuation** | Ti₃AlC₂/ZrO₂ bilayer | Calibrated for 200°C/280°C |
| **Collection Time** | 3 min (eutectic), 3 min (Bi/Sn) | Shorter — lower viscosity |
| **Downstream** | Alloy purification, casting | Solder production |

**Sn-Pb Eutectic Formation:**
The Sn-Pb binary phase diagram shows a eutectic at 183°C (61.9% Sn / 38.1% Pb by weight). Commercial solder is 63/37 Sn/Pb. During Stage 4, Sn and Pb particles melt together at the eutectic temperature, forming a homogeneous liquid that centrifuges to the middle zone.

**Bi-Sn System:**
Bi-Sn eutectic at 139°C (57% Bi / 43% Sn) — already liquid at Step 3 temperature (280°C). Pure Sn melts at 232°C. The combined Bi-Sn liquid has density ~8-9 g/cm³, positioning it between In (inner) and Pb (outer).

### 4.3 Outer Zone: Lead/Zinc Collection (Port 4C, 340°C & 430°C)

| Parameter | Value | Notes |
|---|---|---|
| **Radial Position** | r = 250-300 mm | Outer liquid annulus at drum wall |
| **Temperature Step 4** | 340°C (Pb melt) | Pb 327.5°C + 12.5°C superheat |
| **Temperature Step 5** | 430°C (Zn melt) | Zn 419.5°C + 10.5°C superheat |
| **Port Aperture** | 12 mm diameter | Standard Port 4C |
| **Valve Actuation** | Ti₃AlC₂/ZrO₂ bilayer | Calibrated for 340°C/430°C |
| **Collection Time** | 3 min (Pb), 10 min (Zn) | Zn longer — vapor suppression |
| **RPM** | 300 RPM (Pb), 400 RPM (Zn) | Higher RPM for Zn improves collection |
| **Downstream** | Pb bullion, Zn dust/oxide | Commercial markets |

**Zn Vapor Suppression:**
Zn boiling point = 907°C. At 430°C, Zn vapor pressure = 0.01 Pa (negligible). However, local hot spots from induction could create transient vapor. Mitigation:
- N₂ blanket at 1.5 bar suppresses vaporization (Raoult's law)
- Rapid condensation zone immediately after Port 4C (water-cooled BFRP condenser)
- 400 RPM maximizes centrifugal retention of liquid Zn
- **Target Zn loss: <0.1% of Zn feed**

**Pb Collection Purity:**
By Step 4 (340°C), Sn and Bi have already been removed (Steps 2-3). The remaining Pb is >95% pure in the liquid phase. Dross (PbO, flux residue) forms on surface and is skimmed before Port 4C discharge.

---
