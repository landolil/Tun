# NOAA SWPC API Endpoints (Real-time)
swpc_endpoints = {
    'solar_wind': 'https://services.swpc.noaa.gov/products/solar-wind/mag-1-day.json',
    'kp_index': 'https://services.swpc.noaa.gov/products/noaa-planetary-k-index.json',
    'dst_forecast': 'https://services.swpc.noaa.gov/products/dst-forecast.json',
    'geomag_storm': 'https://services.swpc.noaa.gov/products/geospace/geospace-30-min.json',
    'alerts': 'https://services.swpc.noaa.gov/products/alerts.json',
    '3day_forecast': 'https://services.swpc.noaa.gov/text/3-day-forecast.txt',
}
```

**Kp Index to Geoelectric Field Conversion (Chile):**
```
E_peak (V/km) ≈ 0.5 × Kp^2.5  (empirical, mid-latitude)
For Norte Grande (ρ enhancement ×7):
E_NorteGrande ≈ 3.5 × Kp^2.5
```
| Kp | E_Standard (V/km) | E_NorteGrande (V/km) | GIC Risk |
|----|-------------------|----------------------|----------|
| 5 (G1) | 2.8 | 19.6 | Low |
| 6 (G2) | 5.6 | 39.2 | Moderate |
| 7 (G3) | 10.5 | 73.5 | **High** |
| 8 (G4) | 18.1 | 126.7 | **Severe** |
| 9 (G5) | 30.4 | 212.8 | **Extreme** |

**Dst Forecast to GIC Risk:**
```
I_GIC_peak ≈ 0.7 × |Dst| (nT) / 100  [A/phase, Norte Grande 500/220 kV]
```
| Dst (nT) | SWPC Level | I_GIC (A) | Action |
|----------|------------|-----------|--------|
| -50 to -100 | G1–G2 | 35–70 | Monitor |
| -100 to -200 | G3 | 70–140 | **Alert, Pre-arm** |
| -200 to -350 | G4 | 140–245 | **Pre-arm Islanding** |
| -350 to -500 | G5 | 245–350 | **Immediate Islanding** |
| -907 (Carrington) | G5+ | 635 | **Catastrophic** |

**Operational Translation for CEN Control Center:**
| SWPC Product | CEN Action | Responsible | Timeline |
|--------------|------------|-------------|----------|
| G1 Watch | Notify operators, verify monitoring | Shift Supervisor | T+0 |
| G2 Watch | Verify Hall CT data flow, check SVC | Shift Supervisor | T+0 |
| G3 Watch | **Pre-arm RAS**, notify mining | Control Center Manager | T+0 |
| G3 Warning | **Arm RAS**, reduce 500 kV loading | Control Center Manager | T+0 |
| G4 Watch | **Arm Islanding**, mining curtail | Director of Operations | T+0 |
| G4 Warning | **Execute Islanding** (auto) | RAS System | T+0 |
| G5 Watch | **Full Emergency**, blackstart prep | General Manager | T+0 |

**Chile SWPC Data Redundancy:**
- Primary: NOAA SWPC API (fiber, Santiago)
- Backup: NOAA SWPC Email (satellite)
- Tertiary: INTERMAGNET (Santiago magnetometer, real-time)
- Local: Chilean Navy SHOA magnetometers (Antofagasta, Punta Arenas)


### 7.2 Chilean Navy SHOA Space Weather Monitoring

The **Servicio Hidrográfico y Oceanográfico de la Armada de Chile (SHOA)** operates Chile's national geomagnetic monitoring network, providing sovereign space weather data for national security and critical infrastructure protection.

**SHOA Magnetometer Network (2024):**
| Station | Code | Geographic Lat/Lon | Magnetic Lat | Type | Data Rate | Availability |
|---------|------|-------------------|--------------|------|-----------|--------------|
| **Santiago** | SCL | -33.45°, -70.67° | -22.5° | INTERMAGNET | 1-min, 1-sec | 99.9% |
| **Antofagasta** | ANT | -23.65°, -70.40° | -13.2° | Fluxgate | 1-min | 99% |
| **Punta Arenas** | PTA | -53.15°, -70.91° | -42.8° | Fluxgate | 1-min | 98% |
| **Isla de Pascua** | IPC | -27.15°, -109.42° | -16.8° | Fluxgate | 1-min | 95% |
| **Teniente Marsh** | TNM | -62.20°, -58.97° | -51.5° | Fluxgate | 1-min | 90% (seasonal) |

**Planned Expansion (SHOA 2025–2028):**
| Station | Location | Purpose | Target Date |
|---------|----------|---------|-------------|
| **Calama** | -22.45°, -68.92° | Norte Grande mining corridor | 2026 |
| **Copiapó** | -27.37°, -70.33° | Central Norte coverage | 2026 |
| **Puerto Montt** | -41.47°, -72.94° | Southern grid coverage | 2027 |
| **Escudero Base** | -62.20°, -58.97° | Antarctic reference | 2028 |

**SHOA Data Products for GIC Operations:**
| Product | Description | Latency | Format | Distribution |
|---------|-------------|---------|--------|--------------|
| **Real-time B-field** | 3-component (H, D, Z) at 1 Hz | < 1 s | SeedLink, WebSocket | CEN SCADA, SHOA Web |
| **K-index (Local)** | 3-hour logarithmic index | 3-hour | JSON, CSV | CEN, SENAPRED |
| **Storm Detection** | Automated SSC/SI identification | < 5 min | CAP/XML | CEN, SENAPRED, ONEMI |
| **Daily Summary** | K-indices, storm log, plots | Daily 00:00 UTC | PDF, PNG | CEN, Academia |
| **Monthly Report** | Statistics, extreme events | Monthly 5th | PDF | CEN, SENAPRED, SHOA |

**SHOA-CEN Data Sharing Agreement (2024):**
- **Protocol**: SeedLink over dedicated fiber (Santiago) + VPN (regional)
- **Latency**: < 500 ms (Santiago), < 2 s (regional)
- **Redundancy**: Dual-path (fiber + satellite VSAT)
- **Security**: AES-256, mutual TLS, Chilean government CLASSIFIED handling
- **Cost**: CLP 50M/yr (SHOA operations) + CLP 20M/yr (CEN integration)

**Local K-Index Calculation (Chile-Specific):**
Standard K-index uses fixed thresholds. SHOA developed **Chile-adapted K-index (K_CL)**:
```
K_CL = log10(max(|dH/dt|, |dD/dt|, |dZ/dt|) × 10^3) + C(φ_mag)
```
Where C(φ_mag) = latitude correction factor (lower threshold at higher magnetic latitudes).
- **Calibration**: Based on 20 years Santiago data + 10 years Antofagasta/Punta Arenas
- **Validation**: Matches NOAA planetary Kp within ±0.5 K during 2003, 2015, 2024 storms

**Integration with CEN GIC Operations:**
```
SHOA Magnetometer (1 Hz)
       │
       ▼
SHOA SeedLink Server (Santiago)
       │
       ├──► CEN SCADA (Real-time B-field display, alarming)
       │
       ├──► GIC Nowcast Model (Input: B-field → E-field → GIC)
       │
       └──► SENAPRED (National alerting)
```
**Model Chain (SHOA Data → GIC Forecast):**
```
B_H(t), B_D(t), B_Z(t) [SHOA, 1 Hz]
    │
    ▼
d/dt calculation (Savitzky-Golay filter, 30-s window)
    │
    ▼
1D/3D Earth Model (Section 2.5) → E_N(t), E_E(t)
    │
    ▼
Nodal Admittance (Section 1.4) → GIC_k(t) per transformer
    │
    ▼
CEN Dashboard: Real-time GIC + 30-min forecast
```

**SHOA Space Weather Forecasting (Emerging Capability):**
- **Collaboration**: SHOA + Universidad de Chile + NOAA SWPC
- **Model**: WAM-IPE (Whole Atmosphere Model - Ionosphere Plasmasphere Electrodynamics)
- **Input**: DSCOVR solar wind + SHOA ground magnetometers
- **Output**: Regional E-field forecast (1–24 hr) for Chile
- **Status**: Research phase (2024), operational target 2027

**Antarctic Connection (TNM Station):**
- Teniente Marsh (King George Island, -62°S) — **auroral zone monitor**
- Provides **early warning** of auroral electrojet expansion equatorward
- When TNM K-index > 6 → **high probability** of GIC in Norte Grande within 30–60 min
- **Operational Rule**: TNM K > 6 → Automatic G3 pre-arm for Norte Grande

**Key Formula — SHOA Data to GIC Nowcast Latency:**
```
T_total = T_SHOA_acquire + T_transmit + T_model + T_display
        = 1 s + 0.5 s + 2 s + 0.5 s = 4 s (Santiago)
        = 1 s + 2 s + 2 s + 0.5 s = 5.5 s (Antofagasta)
```
**Meets CEN requirement**: GIC nowcast latency < 10 s for RAS arming.

**Recommendation**: Formalize **SHOA-CEN-SENAPRED tripartite MOU** for space weather data sharing, fund Calama/Copiapó stations (2026), and integrate SHOA K_CL index into CEN RAS logic as primary trigger.


### 7.3 SENAPRED National Emergency Protocols

The **Servicio Nacional de Prevención y Respuesta ante Desastres (SENAPRED)** — formerly ONEMI — coordinates Chile's national disaster response. This section defines SENAPRED's role in space weather emergencies and integration with CEN grid operations.

**SENAPRED Mandate (Law 21,364 / DFL 1-19.753):**
- National civil protection system coordination
- Multi-hazard early warning (tsunami, volcanic, seismic, hydrometeorological, **space weather**)
- Resource mobilization (Armed Forces, Carabineros, Firefighters, Health, Utilities)
- Population alerting (SAE - Sistema de Alerta de Emergencia)

**Space Weather in SENAPRED Framework (2024 Update):**
- **Hazard Classification**: "Evento Geofísico Extraterrestre" (EGE) — new category 2023
- **Alert Levels**: Alerta Temprana (Early Warning) → Alerta Amarilla → Alerta Roja
- **Integration**: SHOA (space weather) → SENAPRED (alerting) → CEN (grid ops) → Sectoral (mining, health, water, comms)

**SENAPRED Space Weather Alert Protocol:**

| SENAPRED Level | Trigger | Actions | Audience |
|----------------|---------|---------|----------|
| **Alerta Temprana** (Early Warning) | SWPC G2 Watch OR SHOA K_CL ≥ 5 | Notify regional directors, verify comms, prep SAE | Internal, CEN, Sectoral |
| **Alerta Amarilla** (Yellow Alert) | SWPC G3 Watch/Warning OR SHOA K_CL ≥ 6 OR TNM K > 6 | Activate COE (Centro de Operaciones de Emergencia), sectoral preps | Public (preventive), Critical Infra |
| **Alerta Roja** (Red Alert) | SWPC G4+ Warning OR SHOA K_CL ≥ 7 OR measured GIC > 100 A | Full COE activation, resource mobilization, SAE broadcast | Public (protective), All Sectors |

**SENAPRED-CEN Coordination (Operational Agreement 2024):**
| CEN Action | SENAPRED Notification | Timeline |
|------------|----------------------|----------|
| RAS Pre-arm (G3) | Informativo (Email + Phone) | T+0 |
| RAS Arm (G3 Warning) | Alerta Amarilla (Formal) | T+5 min |
| Islanding Execution (G4) | Alerta Roja (Formal) | T+5 min |
| Blackstart Initiation | Alerta Roja + Sectoral Coord | T+0 |
| Grid Restoration | Alerta Amarilla → Temprana | As achieved |

**SAE (Sistema de Alerta de Emergencia) for Space Weather:**
- **Channel**: Cell Broadcast (CBS), SMS, TV/Radio interrupt, Sirens, App (SAE Chile)
- **Message Template (Space Weather)**:
  ```
  [ALERTA ROJA - EVENTO SOLAR EXTREMO] 
  Tormenta geomagnética severa en curso. 
  Posibles cortes de electricidad prolongados. 
  Manténgase informado por radio. 
  Evite viajes innecesarios. 
  Siga instrucciones autoridades. 
  - SENAPRED/CEN
  ```
- **Language**: Spanish, Mapudungun (Araucanía), Rapa Nui (Isla de Pascua)
- **Geotargeting**: By region (Norte Grande, Centro, Sur, Austral)

**Sectoral Coordination (SENAPRED-Led):**
| Sector | Lead Agency | Space Weather Actions |
|--------|-------------|----------------------|
| **Electricity** | CEN / SEC | Grid ops, islanding, restoration |
| **Mining** | SERNAGEOMIN / Minería | Safe shutdown, worker safety, tailings |
| **Water/Sanitation** | MOP / DOH | Pump backup, treatment continuity |
| **Health** | MINSAL | Hospital power, dialysis, cold chain |
| **Telecom** | SUBTEL | Cell site backup, SATCOM activation |
| **Transport** | MTTE | Traffic signals, tunnels, rail, ports |
| **Fuel** | CNE / ENAP | Refinery safe mode, distribution |
| **Food/Supply** | ODEPA | Cold chain, logistics priority routes |

**National Exercise — "CARRINGTON 2025" (Planned):**
- **Date**: September 2025 (solar max)
- **Scenario**: G5 storm, 12-hour grid collapse Norte Grande, 48-hr Central
- **Participants**: CEN, SENAPRED, SHOA, Mining (3 majors), Health, Telecom, Armed Forces
- **Objectives**: 
  1. Validate RAS → Islanding → Blackstart timeline
  2. Test SAE space weather messaging
  3. Exercise sectoral coordination (mining safe shutdown)
  4. Evaluate public communication effectiveness
  4. Identify gaps in critical infrastructure resilience

**Legal Framework for Space Weather Emergency:**
- **Constitutional**: Estado de Excepción (Catástrofe) — President decree, 30 days renewable
- **Legal**: Law 21,364 (Sistema Nacional de Prevención y Respuesta ante Desastres)
- **Regulatory**: SEC Resolution on Grid Emergency Procedures (2023)
- **International**: ICSU/WMO Space Weather Coordination, Chile-USA MOU (2022)

**Key Formula — SENAPRED Resource Mobilization Timeline:**
```
T_mobilization = T_alert + T_decision + T_deployment
T_alert = 0 (automated from SWPC/SHOA)
T_decision = 5 min (Alerta Amarilla) to 15 min (Alerta Roja)
T_deployment = 30 min (urban) to 4 hr (remote/Antarctic)
```
**Total**: 35 min (urban, Alerta Amarilla) to 4 hr 15 min (remote, Alerta Roja)

**Recommendation**: Conduct **annual "CARRINGTON" national exercise**, embed space weather in SENAPRED's SAE system permanently, and fund SHOA network expansion (Calama, Copiapó) to close Norte Grande monitoring gap.


### 7.4 Automated Load Shedding Triggers (GIC Threshold → Relay Action)

Automated load shedding based on real-time GIC measurements provides the fastest response to prevent voltage collapse during extreme geomagnetic storms. This section defines the trigger logic, relay implementation, and coordination with mining/Aegis-Forge loads.

**GIC-Based Load Shedding Philosophy:**
- **Principle**: Shed non-critical load *before* voltage collapse occurs
- **Trigger**: Real-time GIC measurements (Hall CTs) + voltage/frequency
- **Speed**: < 100 ms from trigger to breaker opening
- **Selectivity**: Preserve critical mining/Aegis-Forge loads, shed deferrable

**Trigger Hierarchy (Multi-Layer Defense):**

| Layer | Trigger | Threshold | Action | Speed | Priority Loads Preserved |
|-------|---------|-----------|--------|-------|--------------------------|
| **L1: GIC Magnitude** | Hall CT I_GIC | > 100 A (500/220 kV) | Alarm + Pre-arm | 1 s | All |
| **L2: GIC Rate** | dI_GIC/dt | > 10 A/s | Pre-arm RAS | 500 ms | All |
| **L3: Voltage** | V_bus | < 0.90 pu (220 kV) | Shed Priority 4 | 100 ms | Priority 1–3 |
| **L4: Voltage** | V_bus | < 0.85 pu | Shed Priority 3 | 100 ms | Priority 1–2 |
| **L5: Frequency** | f | < 49.2 Hz | Shed Priority 2 | 200 ms | Priority 1 |
| **L6: GIC + V** | I_GIC > 150 A AND V < 0.90 | Combined | **Islanding** | 50 ms | Priority 1 (Aegis-Forge) |

**RAS Implementation (IEC 61850 GOOSE):**
```
GOOSE Message (Publisher: Hall CT RTU / Subscriber: Substation RAS)
-------------------------------------------------
GoCBRef: CEN/RAS/GIC_LoadShed
DatSet: GIC_Measurements, Voltage, Frequency
ConfRev: 12
NdsCom: true
TimeAllowedToLive: 100 ms
-------------------------------------------------
Data Attributes:
  I_GIC_500_220_kV [A]      (per transformer)
  I_GIC_220_110_kV [A]      (per transformer)
  V_220_kV_Bus [pu]         (per bus)
  Frequency [Hz]            (system)
  Trigger_Status [enum]     {NORMAL, PRE_ARM, ARM, SHED_L4, SHED_L3, ISLAND}
```

**Load Shedding Priority Table (Norte Grande):**
| Priority | Load Category | Examples | Shed Amount | Shed Time |
|----------|---------------|----------|-------------|-----------|
| **1 (Critical)** | SAG/Ball Mills, Flotation, Water Pumps, Tailings, Aegis-Forge | **NEVER SHED** | 0 MW | N/A |
| **2 (Essential)** | Concentrate Handling, Reagent Plant, Compressed Air, Hospital | Last resort | 150 MW | f < 49.2 Hz |
| **3 (Deferrable)** | Crushing, Stockpile Reclaim, Admin, Lighting | V < 0.85 pu | 200 MW | V < 0.85 pu |
| **4 (Non-Essential)** | Camp, Offices, Non-process Water, EV Charging | V < 0.90 pu | 50 MW | V < 0.90 pu |
| **Total Sheddable** | | | **400 MW** | |

**Mining Load Shedding Coordination (Automated):**
- **Interface**: Mining SCADA ↔ CEN RAS (IEC 61850 GOOSE)
- **Signal**: `LoadShed_Cmd` (Priority level, MW target, deadline)
- **Response**: Mining VFDs reduce speed / shed non-critical motors
- **Feedback**: `LoadShed_Status` (MW shed, time, confirmation)
- **Autonomy**: Mining can override Priority 3/4 shed for 15 min (safety)

**Aegis-Forge Load — Zero Shed Policy:**
- **Contractual**: Tardigradia-CEN agreement — Aegis-Forge loads **never shed**
- **Technical**: Fed from microgrid (islanded before grid shed)
- **Verification**: Real-time power flow monitoring at PCC

**GIC Load Shedding Algorithm (Pseudo-Code):**
```python
def gic_load_shedding_logic(measurements):
    # measurements: {I_GIC, V_bus, f, time}
    
    # Layer 1: GIC Magnitude
    if any(I > 100 for I in measurements.I_GIC_500_220):
        raise_alarm("GIC_PREARM")
        arm_ras()
    
    # Layer 2: GIC Rate of Change
    if any(dI_dt > 10 for dI_dt in measurements.dI_GIC_dt):
        raise_alarm("GIC_RAPID_RISE")
        arm_ras()
    
    # Layer 3: Voltage - Priority 4
    if any(V < 0.90 for V in measurements.V_220kV):
        if not shed_active("P4"):
            shed_load("P4", target_mw=50)
            log_event("SHED_P4_VOLTAGE")
    
    # Layer 4: Voltage - Priority 3
    if any(V < 0.85 for V in measurements.V_220kV):
        if not shed_active("P3"):
            shed_load("P3", target_mw=200)
            log_event("SHED_P3_VOLTAGE")
    
    # Layer 5: Frequency - Priority 2
    if measurements.frequency < 49.2:
        if not shed_active("P2"):
            shed_load("P2", target_mw=150)
            log_event("SHED_P2_FREQUENCY")
    
    # Layer 6: Combined GIC + Voltage → Islanding
    if (any(I > 150 for I in measurements.I_GIC_500_220) and 
        any(V < 0.90 for V in measurements.V_220kV)):
        if not islanding_armed():
            execute_islanding("NORTE_GRANDE")
            log_event("ISLANDING_EXECUTED")
```

**Relay Hardware (CEN Standard):**
| Function | Device | Speed | Interface |
|----------|--------|-------|-----------|
| GIC Measurement | ABB GIC-M / GE T60 / Siemens 7SJ82 | 1 sample/s | IEC 61850 |
| Voltage/Frequency | SEL-487E / GE T60 / Siemens 7UT85 | 4 samples/cycle | IEC 61850 |
| RAS Logic | SEL-3530 / Siemens SICAM RAS | < 4 ms | GOOSE |
| Breaker Trip | 220 kV Vacuum / 500 kV SF6 | 3 cycles (50 ms) | Hardwired + GOOSE |

**Testing & Validation:**
- **Simulation**: RTDS/HiL with GIC waveforms (Carrington, 2024 Gannon)
- **Commissioning**: Primary injection test (GIC simulator + voltage/freq)
- **Periodic**: Quarterly GOOSE latency test, annual full RAS test
- **Metrics**: 
  - Trigger-to-trip < 100 ms
  - Selectivity: Zero Priority 1 shed in test
  - Coordination: No misoperation during 2024 Gannon storm

**Key Formula — Load Shed Amount for Voltage Recovery:**
```
ΔP_shed = (V_target - V_measured) / (dV/dP)_bus
```
Where (dV/dP)_bus = voltage sensitivity at bus (pu/MW).
For Norte Grande 220 kV: dV/dP ≈ 0.001 pu/MW.
To recover from 0.85 to 0.90 pu: ΔP = 0.05 / 0.001 = **50 MW shed per bus**.

**Recommendation**: Deploy **GIC-based RAS Layer 1–3 by 2026** (Phase 1 hardening). Layer 4–6 require mining SCADA integration (Phase 2). The 400 MW shed capability provides voltage recovery margin for G4/G5 events without collapsing critical mining/Aegis-Forge processes.


### 7.5 Operator Decision Timeline (CME Detection → Grid Impact: 18–36 hrs)

The time between coronal mass ejection (CME) detection and geomagnetic impact on Earth's grid is the critical decision window. This section defines the timeline, decision points, and responsibilities for CEN operators.

**Space Weather Timeline (Typical CME):**
```
T-0:       CME eruption (solar flare observed)
T+0–1 hr:  SWPC issues Watch (CME parameters: speed, direction, mass)
T+1–4 hr:  DSCOVR/L1 confirms CME arrival (Bz, V_sw, density)
T+4–8 hr:  SWPC issues Warning (geomagnetic storm imminent)
T+18–36 hr: CME arrives at Earth → Geomagnetic storm → GIC
T+36–72 hr: Storm main phase (peak GIC)
T+72+ hr:  Recovery phase (decaying GIC)
```

**Carrington-Class Exception (1859):**
- CME speed: ~2,380 km/s (vs. typical 400–1,000 km/s)
- Transit time: **17.6 hours** (vs. typical 48–72 hours)
- **Decision window: < 18 hours** from L1 confirmation to impact

**CEN Operator Decision Timeline (Standard CME):**

| Time | Event | CEN Action | Responsible | Tools |
|------|-------|------------|-------------|-------|
| **T-48 to T-24 hr** | SWPC 3-Day Forecast (G1–G2) | Review forecast, verify monitoring | Shift Supervisor | SWPC API, SHOA |
| **T-24 to T-12 hr** | SWPC 1-Day Forecast (G2–G3) | Brief oncoming shift, verify RAS | Shift Supervisor | SWPC, SHOA K_CL |
| **T-12 to T-6 hr** | DSCOVR L1 Data (CME confirmed) | **Pre-arm RAS**, notify mining | Control Center Manager | DSCOVR, SWPC Warning |
| **T-6 to T-2 hr** | SWPC Warning Issued (G3–G4) | **Arm RAS**, mining curtailment prep | Director of Operations | SWPC Warning, SHOA |
| **T-2 to T-0 hr** | Storm Commencement (SSC) | **Execute RAS/Islanding** (auto) | RAS System | Real-time GIC, V, f |
| **T+0 to T+6 hr** | Storm Main Phase | Monitor, coordinate load shed | Control Center Manager | GIC Dashboard, SCADA |
| **T+6 to T+24 hr** | Peak/Decay | Assess damage, plan restoration | Director + Engineers | DGA, FRA, Visual |
| **T+24 to T+72 hr** | Recovery | Phased restoration, blackstart | General Manager | CEN Restoration Plan |

**Decision Gates (Go/No-Go):**

| Gate | Condition | Go Action | No-Go Action |
|------|-----------|-----------|--------------|
| **Gate 1 (T-12 hr)** | SWPC G3 Watch + DSCOVR confirms Earth-directed | Pre-arm RAS, mining notify | Continue monitoring |
| **Gate 2 (T-6 hr)** | SWPC G3 Warning + Bz < -10 nT sustained | Arm RAS, mining curtail | Hold RAS armed |
| **Gate 3 (T-1 hr)** | SHOA K_CL ≥ 6 OR I_GIC > 50 A | Full RAS armed, mining shed P4 | Disarm if false alarm |
| **Gate 4 (T-0)** | SSC detected + I_GIC rising | Auto-execute islanding | N/A (automatic) |

**Operator Workload Management:**
- **Minimum Staffing (G3+)**: 3 operators (SCADA, RAS, Comms) + 1 Manager
- **Shift Extension**: 12-hr shifts during G3+ (max 16 hr with relief)
- **Fatigue Management**: Mandatory 8-hr rest after 16-hr shift
- **Backup**: Off-site control center (Santiago + Antofagasta redundancy)

**Communication Protocols (CEN Internal):**
| Channel | Use | Redundancy |
|---------|-----|------------|
| **Primary** | CEN SCADA Voice + Chat (Microsoft Teams Gov) | Fiber |
| **Secondary** | Satellite Phone (Iridium) + HF Radio | Satellite |
| **Tertiary** | SENAPRED COE Line (Dedicated) | Gov Network |
| **Mining Direct** | Dedicated Fiber (Escondida, Collahuasi, Los Pelambres) | Fiber |

**Decision Support Tools (CEN Control Center):**
1. **GIC Dashboard**: Real-time I_GIC, V, f, RAS status (auto-refresh 1 s)
2. **SWPC/SHOA Feed**: Integrated alerts, K_CL, DSCOVR Bz/V
3. **Contingency Analysis**: N-1 + GIC (run every 5 min during G3+)
4. **Restoration Simulator**: Post-event recovery sequencing
5. **Damage Assessment**: Transformer DGA/FRA scheduling tool

**Carrington-Class Compressed Timeline (17.6 hr transit):**
| Time | Event | Action |
|------|-------|--------|
| T-18 hr | DSCOVR confirms extreme CME (V > 2,000 km/s, Bz < -100 nT) | **Emergency Declaration**, full RAS arm, mining immediate curtail |
| T-12 hr | SWPC G5 Warning | **Alerta Roja**, SENAPRED COE activation |
| T-6 hr | L1 Bz < -200 nT confirmed | **Full Islanding Pre-arm**, blackstart units online |
| T-2 hr | Ionospheric absorption (HF comms loss) | Satellite comms only |
| T-0 hr | SSC (sudden commencement) | **Auto-islanding execution** |
| T+1 hr | Peak GIC (200–300 A) | Monitor, blackstart cranking paths |
| T+12 hr | Storm decay | Damage assessment, phased restoration |

**Key Formula — Decision Window:**
```
T_decision = T_CME_arrival - T_detection - T_operator_response
T_CME_arrival = 17.6 hr (Carrington) to 72 hr (typical)
T_detection = 1 hr (flare) to 4 hr (L1 confirmation)
T_operator_response = 30 min (pre-arm) to 2 hr (full arm)
```
**Minimum Decision Window (Carrington)**: 17.6 - 4 - 0.5 = **13.1 hours**
**Typical Decision Window**: 48 - 4 - 1 = **43 hours**

**Recommendation**: Codify **CEN Operating Procedure PO-GIC-003 (Operator Decision Timeline)** with mandatory Gate reviews, shift protocols, and fatigue management. Conduct quarterly tabletop exercises with compressed Carrington timeline.


### 7.6 Post-Event Assessment & Recovery Procedures

After a geomagnetic storm, systematic assessment and phased recovery are essential to restore the grid safely and document lessons learned.

**Phase 1: Immediate Post-Storm (T+0 to T+6 hr)**

**Transformer Assessment (Priority Order):**
| Priority | Transformers | Assessment | Action |
|----------|--------------|------------|--------|
| 1 | 500/220 kV autos with I_GIC > 100 A | Visual (bushings, tank), DGA (oil sample) | If DGA normal → re-energize; if abnormal → isolate |
| 2 | 220/110 kV mining with I_GIC > 75 A | Visual, DGA, FRA (if DGA elevated) | Same as above |
| 3 | 500/220 kV with I_GIC 50–100 A | DGA only (within 24 hr) | Schedule maintenance |
| 4 | All others | Visual only | Return to service |

**DGA (Dissolved Gas Analysis) — GIC Damage Indicators:**
| Gas | Normal (ppm) | GIC Damage Threshold | Significance |
|-----|--------------|---------------------|--------------|
| **H₂** | < 100 | > 500 | Hotspot heating (core, clamps) |
| **CH₄** | < 50 | > 200 | Core hotspot, insulation |
| **C₂H₆** | < 10 | > 50 | Severe hotspot (>300°C) |
| **C₂H₄** | < 20 | > 100 | Very high temp (>500°C) |
| **CO/CO₂** | < 500 | > 2,000 | Cellulose insulation overheating |
| **C₂H₂** | < 1 | > 5 | Arcing (unlikely from GIC alone) |

**Interpretation (IEEE C57.104 + GIC Experience):**
- **H₂ + CH₄ elevated, no C₂H₂** → Thermal heating from GIC saturation (most common)
- **C₂H₄ + C₂H₆ elevated** → Severe core/hotspot damage
- **CO/CO₂ elevated** → Insulation damage (paper)
- **All gases normal** → No significant damage (re-energize OK)

**FRA (Frequency Response Analysis) — Mechanical Integrity:**
- **Test**: 20 Hz – 2 MHz sweep, compare to fingerprint
- **GIC Damage Signatures**: 
  - Shift in low-frequency resonance (core clamping movement)
  - Damping change in 1–10 kHz range (winding displacement)
- **Pass Criterion**: FRA trace within ±5% of baseline (magnitude), ±2° (phase)

**Visual Inspection Checklist (Post-GIC):**
- [ ] Bushing oil level, cracks, oil leaks
- [ ] Tank deformation, paint blistering (hotspot indicator)
- [ ] Radiator fin alignment, fan operation
- [ ] Neutral bushing, CT connections, grounding straps
- [ ] Pressure relief device (PRD) status (operated?)
- [ ] Conservator oil level, N₂ blanket pressure
- [ ] Cooling system (pumps, fans, flow indicators)

**Phase 2: Damage Assessment & Repair (T+6 hr to T+72 hr)**

**Transformer Categorization:**
| Category | Criteria | Action | Timeline |
|----------|----------|--------|----------|
| **A: Undamaged** | DGA normal, FRA pass, visual OK | Return to service | Immediate |
| **B: Minor Damage** | H₂/CH₄ elevated < 2× threshold, FRA ±5% | Online monitoring, schedule maintenance | 30 days |
| **C: Moderate Damage** | Gases 2–5× threshold, FRA 5–10% shift | Offline repair (clamps, cooling) | 60–90 days |
| **D: Severe Damage** | Gases > 5× threshold, FRA > 10% shift | Replace / major rewind | 180–360 days |
| **E: Catastrophic** | Tank rupture, fire, PRD operated | Replace | 360+ days |

**Repair Priority (Norte Grande Critical Path):**
1. S/E Crucero 500/220 kV autos (3 units) — feeds Collahuasi, QB2
2. S/E Antofagasta 500/220 kV autos (3 units) — feeds Escondida, Centinela
3. S/E Encuentro 500/220 kV autos (2 units) — feeds Los Pelambres
4. Mining 220/110 kV transformers (8 units)
4. S/E Mejillones, Sección, Maitencillo 500/220 kV

**Spare Transformer Strategy (CEN):**
| Voltage | Spares Available | Location | Mobilization Time |
|---------|------------------|----------|-------------------|
| 500/220 kV, 500 MVA | 2 | Santiago (Polpaico) | 72 hr (heavy haul) |
| 220/110 kV, 250 MVA | 4 | Antofagasta, Santiago | 24–48 hr |
| 220/66 kV, 150 MVA | 3 | Antofagasta, Santiago | 24 hr |
| 110/66 kV, 100 MVA | 6 | Distributed | 12–24 hr |
| **Gap** | **Need 3 more 500/220 kV** | **Procurement initiated** | **24 months lead** |

**Phase 3: Phased Restoration (T+24 hr to T+30 days)**

**Restoration Sequence (CEN Plan):**
1. **Blackstart Units Online** (Rapel, Colbún, Ralco, BESS) — T+2 hr
2. **Cranking Paths** — 500 kV backbone sectionalized — T+6 hr
3. **Critical 220 kV Mining Loads** — Priority 1 only — T+12 hr
4. **Aegis-Forge Clusters** — Microgrid reconnection — T+6 hr (independent)
5. **Santiago Metropolitan** — Essential services — T+18 hr
6. **Full 500 kV Backbone** — Synchronize North/Central — T+36 hr
7. **Non-Critical Mining Loads** — Priority 2–4 — T+48 hr
8. **Full System Normal** — T+72 hr to T+30 days (depending on damage)

**Restoration Constraints:**
- **GIC Residual**: Verify I_GIC < 10 A before each 500 kV closing
- **Synchronism**: Voltage/phase/frequency match < 5° / 0.5 Hz / 5%
- **Load Pickup**: Ramp rate < 100 MW/min per cranking path
- **Reactive Management**: Pre-switch capacitors, SVC/STATCOM online first

**Phase 4: Lessons Learned & Model Update (T+30 days to T+90 days)**

**Post-Event Report (CEN Standard):**
| Section | Content | Owner |
|---------|---------|-------|
| 1. Event Summary | Timeline, SWPC/SHOA data, peak GIC | Operations |
| 2. System Performance | RAS operations, load shed, islanding | Operations |
| 3. Equipment Damage | Transformer DGA/FRA, FACTS, relays | Engineering |
| 4. Operational Response | Decisions, timeline, communication | Control Center |
| 5. Sectoral Impact | Mining, health, telecom, water | SENAPRED Liaison |
| 6. Model Validation | Measured vs. predicted GIC (NRME) | Planning |
| 7. Corrective Actions | Hardware, software, procedures | All |
| 8. Cost Assessment | Repair, outage, societal | Finance |

**Model Validation Metric (NRME):**
```
NRME = √(Σ(I_GIC_measured - I_GIC_predicted)² / Σ(I_GIC_measured)²)
Target: NRME < 30% (per IEEE 1313.2)
```
- If NRME > 30% → Ground conductivity model update required
- If NRME > 50% → Full model recalibration (MT survey)

**Procedure Updates (Continuous Improvement):**
- Update RAS logic (thresholds, timing)
- Update grounding models (measured R_ground vs. design)
- Update transformer thermal limits (DGA-calibrated)
- Update restoration sequences (actual vs. planned)

**Key Formula — Restoration Cost Estimate:**
```
C_restoration = Σ (C_repair_i + C_outage_i)
C_repair_i = f(Category_i)  [A: $0, B: $50k, C: $500k, D: $5M, E: $20M]
C_outage_i = P_lost_i × Duration_i × Value_i  [Mining: $400M/day]
```
**Example (Carrington, 3 Category D + 2 Category E):**
```
C_repair = 3×$5M + 2×$20M = $55M
C_outage = 10 days × $400M/day = $4B
Total ≈ $4.055B
```

**Recommendation**: Institutionalize **post-GIC event protocol** in CEN Operating Procedure PO-GIC-004, with mandatory DGA within 24 hr for all transformers with I_GIC > 50 A, FRA within 72 hr for I_GIC > 100 A, and NRME calculation for model validation. Maintain strategic spare transformer reserve (minimum 3× 500/220 kV).

