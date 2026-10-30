## 12. Thermal Management — Microchannel Cold Plates

### 12.1 Heat Load Summary

| Component | Zone 1-2 | Zone 3 | Zone 4-5 | Zone 6 | Zone 7 | Zone 8 |
|---|---|---|---|---|---|---|
| GaN HEMTs | 50 W | 80 W | 200 W | 300 W | 400 W | 500 W |
| Gate drivers | 10 W | 15 W | 20 W | 25 W | 30 W | 35 W |
| Resonant capacitors | 100 W | 150 W | 250 W | 300 W | 400 W | 500 W |
| Copper coil (I²R) | 3 W | 50 W | 500 W | 800 W | 1.2 kW | 2.0 kW |
| **Total per zone** | **163 W** | **295 W** | **970 W** | **1.4 kW** | **2.0 kW** | **3.0 kW** |

**Total system heat rejection: ~7.6 kW** (all 8 zones at peak)

### 12.2 Microchannel Cold Plate Design

**Why microchannels?** Conventional cold plates (drilled passages) cannot achieve the thermal resistance needed for 500 kW zone with 50°C water.

**Microchannel specifications:**
- Material: Copper (C10100, oxygen-free), nickel-plated
- Channel width: 0.5 mm
- Channel depth: 1.0 mm
- Fin thickness: 0.2 mm
- Number of channels: 120 per cold plate
- Plate size: 120 mm × 80 mm × 10 mm (matches GaN module footprint)
- Flow rate: 8 L/min per cold plate
- Pressure drop: 0.8 bar at 8 L/min (water, 50°C)

**Thermal performance:**
- Thermal resistance (junction-to-water): R_th_jw = 0.05 °C/W
- With 500 W heat load: ΔT = 500 × 0.05 = 25°C
- Water inlet: 50°C → GaN junction: 75°C (well below 150°C limit)
- Water outlet: 50°C + (3000 W / (4180 × 8/60)) = 55.4°C

### 12.3 Cooling Circuit Architecture

**Per-zone cooling loop:**
```
Chiller (45°C) → Manifold → Zone Cold Plate → Return → Chiller
                    │
         ┌──────────┼──────────┐
         │          │          │
    Zone 1 CP  Zone 2 CP   ...  Zone 8 CP
         │          │          │
         └──────────┼──────────┘
                    │
              Heat Exchanger
                    │
               Chiller Loop
```

**Flow balancing:**
- Orifice plates at each cold plate inlet (calibrated for design flow)
- Flow meter per zone (turbine, PEEK body, FBG temp compensated)
- Alarm if flow < 90% design

**Chiller specification:**
- Capacity: 15 kW (2× peak load for margin)
- Temperature stability: ±0.5°C
- Fluid: Deionized water + 20% propylene glycol (freeze protection)
- Redundancy: N+1 chillers (2× 15 kW)

### 12.4 Thermal Interface Materials

**GaN-to-cold-plate:**
- Material: Indium foil (0.1 mm) — soft, conformal, 86 W/m·K
- Alternative: Thermal grease (3 W/m·K) for serviceability
- Clamping: 500 kPa uniform pressure (torqued bolts, Belleville washers)

**Capacitor-to-cold-plate:**
- Gap pad: 1 mm silicone, 5 W/m·K, 30% compression
- Allows for capacitor height variation

**Coil water cooling (separate loop):**
- PEX-a tubing through copper tube bore (20 mm ID)
- Flow: 15 L/min per zone
- Inlet: 45°C, Outlet: <60°C
- No cold plate needed — direct convection

### 12.5 Thermal Protection

**Overtemperature thresholds:**
| Location | Warning | Alarm | Emergency Stop |
|---|---|---|---|
| GaN junction (FBG on cold plate) | 100°C | 120°C | 140°C |
| Capacitor case (FBG) | 70°C | 85°C | 100°C |
| Coil housing (FBG) | 80°C | 100°C | 120°C |
| Cooling water outlet | 60°C | 70°C | 80°C |

**Action on alarm:** Reduce zone power by 50%, increase cooling flow.
**Action on emergency stop:** Zone shutdown, maintain cooling flow.

---


---
