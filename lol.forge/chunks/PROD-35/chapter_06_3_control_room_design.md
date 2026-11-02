## 3. Control Room Design

### 3.1 Layout & Sightlines

**Room Specifications:**
- **Dimensions**: 8 m × 6 m × 3 m (L×W×H), raised floor for TSN/PTP cabling
- **Operators**: 4 stations (FO-1, FO-2, DT-1, DT-2) in semi-circle
- **Sightlines**: All stations → 6× 24 monitors (3×2 array) + 1× 55 overview wall display
- **Viewing Distance**: 700-900 mm (optimal for 24 1920×1080)
- **Viewing Angle**: ±35° horizontal, ±20° vertical from center

**Station Layout (Each):**
```
┌─────────────────────────────────────────────────────────────┐
│  [Monitor 1: Stage 0-3]  [Monitor 2: Stage 4-5]  [Monitor 3: Stage 6-8]  │
│  [Monitor 4: SIS/SIF]    [Monitor 5: Depot/Phoenix] [Monitor 6: Twin/Health] │
│                                                             │
│  [Keyboard] [Trackball] [Dedicated E-Stop] [Auth Token]    │
│  [FO Badge Reader] [Shift Handover QR] [Voice Comms]       │
└─────────────────────────────────────────────────────────────┘
```

### 3.2 Lighting Design

| Zone | Illuminance | CCT | CRI | Control |
|------|-------------|-----|-----|---------|
| **Ambient** | 50 lux | 4000K | >90 | Dimmable, circadian |
| **Task (Monitors)** | 300 lux | 4000K | >90 | Local override |
| **Wall Display** | 150 lux | 4000K | >90 | Auto-dim with overview |
| **Egress Path** | 10 lux (emergency) | 4000K | >80 | Battery backup 24h |
| **Glare Control** | UGR <16 | — | — | Matte surfaces, monitor hoods |

**Carrington Mode**: All lighting on LiFePO₄ UPS (PROD-10), 24h holdover. Emergency lighting auto-activates on grid disconnect.

### 3.3 Acoustic Design

| Source | Level | Mitigation |
|--------|-------|------------|
| **HVAC** | <35 dBA | Silencers, vibration isolation |
| **Cooling Pumps** | <30 dBA | Remote mechanical room |
| **TSN Switches** | <25 dBA | Fanless, convection cooled |
| **Operator Speech** | 55 dBA @ 1m | Acoustic panels, 0.8s RT60 |
| **Alarm Auditory** | 65-85 dBA | ISA-18.2 priority coding, directional |
| **Total NC** | NC-35 | Verified per ISO 3741 |

### 3.4 Thermal Environment

- **Temperature**: 22±1°C (ASHRAE 55)
- **Humidity**: 40-50% RH (ESD control for PMMA POF)
- **Air Velocity**: <0.15 m/s (no draft on monitors)
- **Air Quality**: CO₂ <800 ppm, HEPA filtration (FORGE cleanroom Class 7)

---
