## 3. Stage 1 — Drying and Volatiles Removal (80-150°C)

### 3.1 Target Materials and Phase Transitions

| Material | Transition | Temperature (°C) | Enthalpy (kJ/kg) | Source in Feedstock |
|---|---|---|---|---|
| Free water | Vaporization | 100 (1 atm) | 2257 | Surface moisture, pore water |
| Crystal water (gypsum) | Dehydration | 107-120 | 450 | CaSO₄·2H₂O in construction debris |
| Crystal water (borax) | Dehydration | 100-140 | 380 | Na₂B₄O₇·10H₂O in ore concentrate |
| Crystal water (kaolin) | Dehydroxylation | 150+ | 520 | Al₂Si₂O₅(OH)₄ in clay |
| Alcohols/acetone | Vaporization | 56-78 | 850-900 | PCB cleaning residues |
| Terpineol (flux) | Vaporization onset | 150 | 600 | Solder flux on PCBs |

### 3.2 Heating Method: Infrared Irradiation

Induction heating is ineffective at 80-150°C — target materials are non-conductive dielectrics. Alternative: **SiC glow bars** (CSMFAB000000000002-type resistive elements, same as Ancient Hearth stove burner).

**SiC glow bar specifications:**
- Material: Silicon carbide, resistivity ~1 Ω·cm at RT, negative TCR
- Surface temperature: 800-900°C (controlled by current)
- Emitted IR peak: ~3.6 μm wavelength (Wien's law at 850°C)
- Water absorption peaks: 3.0 μm and 6.3 μm → strong coupling
- Power: 6 bars × 15 kW = 90 kW total, zoned along drum length
- Electrical isolation: Al₂O₃ ceramic standoffs, no metal in hot zone

**Drum rotation during Stage 1:** 5-10 RPM (slow, gentle tumbling — uniform drying, no centrifugation)

**Atmosphere:** N₂ at 1.2 bar (prevents explosive H₂/organic vapor combinations; O₂ < 1%)

**Duration:** 20 minutes (sufficient for 50 kg charge with <30% moisture content)

### 3.3 Heat Transfer Analysis

**Radiative flux to charge:**
$$q_{rad} = \varepsilon \sigma (T_{bar}^4 - T_{charge}^4) F_{view}$$

With $\varepsilon$ ≈ 0.85 (SiC), $T_{bar}$ = 1123 K, $T_{charge}$ = 353 K (80°C initial), view factor $F_{view}$ ≈ 0.3:
$q_{rad}$ ≈ 18 kW/m² incident on charge surface.

**Moisture evaporation rate (50 kg charge, 30% water = 15 kg):**
$$\dot{m}_{evap} = \frac{q_{rad} A_{surface}}{h_{fg}} \approx \frac{18 \times 10^3 \times 2.5}{2.26 \times 10^6} = 0.02 \text{ kg/s} = 72 \text{ kg/h}$$

Theoretical drying time: 15 kg / 72 kg/h ≈ 12.5 min. 20 min dwell provides 60% margin for non-uniformity.

### 3.4 Water and Volatile Recovery System

Exiting vapor (mostly H₂O + trace organics) exits through **Port 1** (150°C set-point, opens at 140°C via Ti₃AlC₂ actuator):

1. **BFRP heat exchanger** — chilled to 10°C by PEX-a cooling circuit (CSMFAB000000000012)
   - Condensation efficiency: >99.5% at 10°C dew point
   - Liquid water collected: analyzed for dissolved metals (ICP-MS), either purified for process reuse or discharged

2. **Activated carbon bed** — char from Stage 3 (elegant closed cycle: char from Stage 3 later used to adsorb Stage 1/2 organics)
   - Bed: 200 L ZrO₂-lined vessel, 50 kg activated carbon (from Stage 3 char)
   - Organic vapor capture: >95% for C₃+ hydrocarbons
   - Regeneration: thermal swing at 200°C during Stage 3 char production

3. **Trace gas monitoring** — inline NDIR for CO/CO₂, GC for organics
   - If VOC > 100 ppm: extended dwell until clearance

### 3.5 Stage 1 Control Parameters

| Parameter | Setpoint | Tolerance | Sensor |
|---|---|---|---|
| Drum temperature | 80→150°C ramp | ±5°C | FBG Zone 1-2 |
| Drum rotation | 5-10 RPM | ±1 RPM | Optical encoder |
| N₂ pressure | 1.2 bar | ±0.1 bar | Pressure transducer |
| Port 1 mass flow | Monitor | <1% peak = clear | Coriolis flowmeter |
| Glow bar current | 0-100% | PID controlled | Shunt resistor |

---

