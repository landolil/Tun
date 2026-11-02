## 6.3 Early Warning System — The 45-Minute Lifeline

### 6.3.1 Sensor Network Architecture

| Sensor Type | Count | Locations | Data Rate | Latency | Responsible |
|-------------|-------|-----------|-----------|---------|-------------|
| **Pluviometric (Rain)** | 3 | Volcán Licancabur (5,200m), Portezuelo del Cajón (4,500m), San Pedro (2,400m) | 5 min | <1 min | DGA + ONEMI |
| **Radar (ALMA/APEX)** | 2 | ALMA (5,000m), APEX (5,100m) | 1 min | Real-time | **ALMA/APEX (MOU with ONEMI)** |
| **Level/Pressure (River)** | 4 | Río San Pedro (upstream x2, town x2) | 1 min | <30 sec | DGA + Municipal |
| **Soil Moisture** | 6 | Quebrada Kari, Vilama, Toconce (2 each) | 15 min | <1 min | CPA + DGA |
| **Seismic (Broadband)** | 2 | San Pedro, Toconao | Continuous | Real-time | CSN (Universidad de Chile) |

### 6.3.2 Alert Protocol — The Decision Tree

```
FLASH FLOOD ALERT PROTOCOL — SAN PEDRO DE ATACAMA

LEVEL 1: WATCH (Conditions favorable)
├── Trigger: Radar echo >40 dBZ over catchment OR pluviometric >15mm/hr
├── Action: ONEMI → Municipal → Radio Ayllu + SMS + Sirens (pre-alert tone)
├── Public: "Prepare evacuation, gather documents, move vehicles to high ground"
├── CPA: Activate kimün observers in ayllus, check bofedales status
└── Duration: Until conditions dissipate or escalate

LEVEL 2: WARNING (Flood imminent)
├── Trigger: Upstream level >1.5m rise in 15 min OR pluviometric >30mm/hr sustained
├── Action: **EVACUATION ORDER** — Sirens (continuous), SMS, Radio, Door-to-door (CPA monitors)
├── Routes: 
│   ├── NORTH: Caracoles → RN-23 → Calama (bus pickup points)
│   ├── SOUTH: Toconao road → CH-27 → Argentina border (high ground)
│   └── WEST: Ayllu trails → Pukará plateau (vertical)
├── Vertical: Iglesia (200), Escuela (300), Municipal (150), Hotel rooftops (500+)
├── Special: Tourists → Guide responsibility, hotels → assembly points
└── **Target: 3,000 people evacuated in 30 minutes**

LEVEL 3: EMERGENCY (Flood occurring)
├── Trigger: Water at Plaza de Armas OR bridge failure
├── Action: Rescue operations (Bomberos, Armada, ONEMI, CPA)
├── Priority: Lives > Infrastructure > Heritage
├── Communication: Satellite phones (CPA + Municipal + ONEMI)
└── All-clear: ONLY after SHOA/DGA hydrological confirmation + structural inspection

POST-EVENT:
├── Damage assessment (MOP + Municipal + CPA + MINVU)
├── Kimün territorial reading (CPA elders)
├── Insurance activation (Seguro Comunal + private)
└── Protocol review (lessons learned → update)
```

---
