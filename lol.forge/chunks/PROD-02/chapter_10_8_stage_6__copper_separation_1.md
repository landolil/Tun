## 8. Stage 6 — Copper Separation (1085-1200°C): Precious Metal Recovery

### 8.1 Copper Recovery — The Revenue Engine

At 1085°C, copper melts. Copper is present in:
- PCB traces and plated-through holes (20-35% Cu by weight in PCB)
- Motor windings (99.9% Cu)
- Plumbing scrap (99.5% Cu pipe)
- Electrical wire (99.9% Cu)

**Induction heating of copper at Stage 6:**
- Coil frequency: 5 kHz (penetration depth in Cu at 1100°C: ~1.0 mm — suitable for wire/trace sizes)
- Power: 100-200 kW/zone (Zones 5-6)
- Energy required: 0.385 J/g·K × 200 kg × 1065°C = 82 MJ (thermal mass only)

### 8.2 Precious Metals with Copper — The High-Value Co-Product

Both Au and Ag melt before or at Stage 6 temperature. They report with copper in Port 6 output. Downstream electrolytic refining separates these from the Cu slug — **this is a primary revenue stream.**

| Metal | Melting Point (°C) | Behavior in Stage 6 | Recovery Method |
|---|---|---|---|
| Gold (Au) | 1064 | Melts 21°C before Cu, reports with Cu | Electrorefining anode slime |
| Silver (Ag) | 962 | Melts 123°C before Cu, reports with Cu | Electrorefining anode slime |
| Palladium (Pd) | 1555 | Solid at Stage 6, reports with Fe (Stage 7) | Hydromet from Fe slag |
| Platinum (Pt) | 1768 | Solid, reports with Fe/mineral | Hydromet from Fe slag |

**PCB precious metal content (per ton of PCBs):**
- Gold: 300-400 g/ton
- Silver: 3,000-5,000 g/ton
- Palladium: 100-200 g/ton
- Copper: 150,000-250,000 g/ton (0.15-0.25 kg/board)

**At 2026 prices ($3,200/troy oz Au, $35/oz Ag, $1,400/oz Pd):**
- 300g/ton Au = **$30,900/ton PCB in gold alone**
- 4,000g/ton Ag = **$4,500/ton PCB in silver**
- 150g/ton Pd = **$6,750/ton PCB in palladium**
- **Total PM value: ~$42,000/ton PCB feedstock**

### 8.3 Copper Melt Centrifuge Physics

- Drum speed: 350 RPM (G = 68.1 at r = 0.3 m)
- Copper melt viscosity at 1150°C: 4.3 mPa·s
- Cu density at 1150°C: 7.9 g/cm³
- Centrifugal pressure: ΔP = 89 kPa (drives Cu through 12 mm port at 2 bar backpressure)

**Co-melting behavior:** Au (1064°C) and Ag (962°C) are fully liquid when Cu melts. They dissolve in Cu melt (Au solubility in Cu: ~8% at 1100°C; Ag: complete miscibility). No separate PM droplets — they report in Cu slug.

### 8.4 Brass/Bronze Transition Zone (Hold Stage: 720-1085°C)

Before Stage 6 proper, a **30-minute hold at 720-1085°C** separates copper alloys:

| Alloy | Composition | Solidus (°C) | Liquidus (°C) | Separation |
|---|---|---|---|---|
| Brass (Cu-Zn) | 60-70% Cu, 30-40% Zn | 900-940 | 950-1000 | Zn boils at 907°C — vapor captured |
| Bronze (Cu-Sn) | 88% Cu, 12% Sn | 950 | 1040 | Sn melts at 232°C — already removed |
| Cu-Ni | 70-90% Cu, 10-30% Ni | 1050-1150 | 1150-1250 | Reports with Cu in Stage 6 |

**Process:** Ramp through 720→1085°C at 12°C/min. Zn vapor from brass captured in gas system. Cu-Ni alloys partially melt at upper end.

### 8.5 Stage 6 Control Parameters

| Parameter | Setpoint | Tolerance | Sensor |
|---|---|---|---|
| Drum temperature | 1085→1200°C ramp | ±5°C | FBG Zone 5-6 |
| Drum rotation | 350 RPM | ±10 RPM | Optical encoder |
| N₂ pressure | 2.0 bar | ±0.1 bar | Pressure transducer |
| Port 6 mass flow | Monitor | <1% peak = clear | Coriolis flowmeter |
| Cu slug temperature | 1100-1200°C | ±15°C | IR pyrometer (ex-port) |
| Gas composition | O₂ < 0.5% | Alarm >1% | Zirconia probe |

### 8.6 Downstream Electrorefining (CSMFAB000000000112)

Cu + PM slug → **Electrorefining cells:**
- Anode: Cu+PM slug (cast into anode plates)
- Cathode: Pure Cu starter sheets
- Electrolyte: CuSO₄ + H₂SO₄, 60°C
- Current density: 250-300 A/m²
- **Products:**
  - Cu cathode: 99.99% Cu (LME Grade A)
  - Anode slime: Au, Ag, Pd, Pt, Se, Te → sent to PM refinery
  - Electrolyte bleed: Ni, Co, Fe buildup → purge to Stage 7 Fe stream

---

