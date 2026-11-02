## 2. Dielectric Design — All Paths ρ > 10⁶ Ω·m

### 2.1 Dielectric Material Matrix

| Path | Material | Volume Resistivity | Application | Lifetime |
|------|----------|-------------------|-------------|----------|
| **Signal** | PMMA POF (980/1000 μm) | >10¹⁵ Ω·m | 480 sensors, 96 actuators, TSN, PTP | 10 yr @ 85°C (FOLLOW-11) |
| **Coolant** | PEX-a (cross-linked PE) | >10¹⁴ Ω·m | 16 L/min deionized water circuit | 20 yr @ 95°C |
| **Enclosure** | BFRP/Elium® | >10¹² Ω·m | RTU, PLC, XFMR, inverter housings | 25 yr @ 80°C |
| **Penetration** | Al₂O₃ ceramic bushing (99.6%) | >10¹⁴ Ω·m | Vessel flange, drum bearing, port | 30 yr @ 2200°C |
| **Penetration** | ZrO₂ ceramic bushing (3Y-TZP) | >10¹³ Ω·m | FBG feedthrough, thermocouple | 30 yr @ 2200°C |
| **Fastener** | PEEK CF40 bolt/sleeve | >10¹² Ω·m | Flange, actuator mount, coil housing | 10 yr @ 250°C |
| **Wire (internal)** | PTFE-insulated (MIL-W-22759) | >10¹⁶ Ω·m | Inside inverter module only | 15 yr @ 150°C |
| **Thermal Interface** | Indium foil (99.99%) | 10⁻⁸ Ω·m (but <1 mm² area) | GaN case-to-cold-plate | 10 yr @ 125°C |

### 2.2 Penetration Design — Zero Conductive Crossing

Every vessel/drum penetration uses **ceramic-to-ceramic** or **ceramic-to-composite** joints with no metal:

```
VESSEL FLANGE (PEEK CF40):
  ├─ 12× M24 ZrO₂ bolts (ceramic paste, 160 N·m)
  ├─ ZrO₂ flat gasket (3 mm, graphite-loaded)
  ├─ 8× FBG feedthrough (Al₂O₃ bushing, ZrO₂ ferrule)
  ├─ 4× POF bulkhead (BFRP ferrule, ZrO₂ sleeve)
  ├─ 2× POF Level sensor (Al₂O₃ bushing)
  └─ 1× Pressure transducer (ZrO₂ bushing, welded)

DRUM BEARING HOUSING (BFRP):
  ├─ Si₃N₄ ceramic races (inner/outer)
  ├─ ZrO₂ ceramic balls (Ø12 mm, 16 per bearing)
  ├─ PEEK CF40 cage (carbon fiber reinforced)
  ├─ N₂ film lubrication (no oil, no metal)
  ├─ FBG strain feedthrough (Al₂O₃ bushing)
  └─ POF encoder (BFRP ferrule)

PORT VALVE PENETRATION (Drum wall):
  ├─ ZrB₂-SiC sleeve (press-fit 0.03 mm)
  ├─ ZrO₂ piston (3Y-TZP, hone 0.05 mm)
  ├─ Ti₃AlC₂ actuator (brazed Ag-CuO-TiO₂)
  ├─ PEEK CF40 wave spring (3 waves, 50 N)
  └─ 5 mm ZrO₂ felt insulation (actuator pocket)
```

**Verification:** Every penetration megger-tested at 500 VDC during FAT (CT-03) and SAT. Pass criteria: >1 GΩ insulation resistance. Re-test annually per PROD-28 NDT program.

### 2.3 PMMA POF Network — The Dielectric Nervous System

| Parameter | Specification | Rationale |
|-----------|---------------|-----------|
| **Fiber** | Step-index PMMA, 980 μm core / 1000 μm clad | 0.15 nm/°C FBG sensitivity, radiation hard |
| **Bandwidth** | >200 MHz·km (1 Gbps @ 100 m) | TSN 1 Gbps dual-ring |
| **Attenuation** | <0.2 dB/m @ 650 nm | 100 m runs with margin |
| **Temperature** | -40°C to +85°C (jacket), +70°C (core) | Vessel exterior ≤150°C, inside ≤70°C |
| **Radiation** | >10⁶ Gy gamma, >10¹⁴ n/cm² neutron | Carrington/space environment |
| **Connector** | BFRP ferrule, ZrO₂ sleeve, push-pull | No metal, 500 mate cycles |
| **Cable Tray** | BFRP with ZrO₂ separators | No metallic conduit |
| **Grounding** | 1 MΩ bleed resistors at each tray section | Static dissipation only |

**Network Topology:** Dual-ring TSN (IEEE 802.1Qbv) with FRER (Frame Replication and Elimination for Reliability). 1 ms cycle time, 4 time slices (SIS 200 μs, RTU 300 μs, PLC 200 μs, SCADA 200 μs), 100 μs guard band. PTP (IEEE 1588v2) <1 μs sync via GNSS+OCXO grandmaster (24 h holdover).

---
