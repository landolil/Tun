## Appendix Q: Chapter 5 Deep Dive — Aegis-Forge Technical Integration

### Q.1 Alpha-7..11 — High-Altitude Induction Heating Design

**Altitude Derating Factors (2,500–3,500 masl)**:

| Parameter | Sea Level | 3,000 masl | Derating Factor | Design Compensation |
|-----------|-----------|------------|-----------------|---------------------|
| **Air Density** | 1.225 kg/m³ | 0.909 kg/m³ | 0.74× | **Larger heat sinks, forced air** |
| **Convective Cooling** | 1.0× | 0.74× | 0.74× | **Liquid cooling mandatory** |
| **Dielectric Strength** | 1.0× | 0.74× | 0.74× | **Increased clearance, SF6/Gas insulation** |
| **Corona Threshold** | 1.0× | 0.74× | 0.74× | **Toroidal coils, graded insulation** |
| **GaN Switching Loss** | 1.0× | 1.0× | **No derating** | **GaN advantage at altitude** |

**Coil Cooling Design — Liquid Immersion**:
- **Coolant**: **3M Novec 7200 (dielectric, non-flammable, -50°C pour point)**
- **Flow Rate**: 15 L/min per coil (8 coils/cluster)
- **Heat Rejection**: **Plate heat exchanger → glycol loop → dry cooler (adiabatic assist)**
- **Temperature Rise**: **ΔT = 12°C** (inlet 35°C, outlet 47°C max)
- **Pump Redundancy**: **N+1 per cluster** — **fail-safe**

**FBG Sensor Network — High-Altitude Qualified**:
- **Fiber**: **Polyimide-coated (Heracleus) — qualified to -60°C, 200°C**
- **Grating Type**: **Draw-tower (DTG) — high temperature stability**
- **Interrogator**: **Micron Optics si425 — 1 kHz, 80 channels, ruggedized**
- **Channels per Cluster**: **160** (20/zone × 8 zones) + **20 glacier/dust sentinel**
- **Data**: **MQTT over private 5G (Tardigradia network) → GPF dashboard + PTI archive**

### Q.2 Bravo-5 — E-Waste Preprocessing Automation

**Robotic Disassembly Cell (Santiago Hub)**:

| Robot | Task | Throughput | AI Vision | Pehuenche Role |
|-------|------|------------|-----------|----------------|
| **Bot-1: Depanelizer** | PCB separation from chassis | 120 units/hr | YOLOv8 (component detection) | PTI grad programs |
| **Bot-2: Component Picker** | High-value component removal (ICs, connectors) | 80 units/hr | Instance segmentation | PTI grad operates |
| **Bot-3: Magnet Harvester** | NdFeB magnet extraction from HDDs/motors | 200 units/hr | Magnetic field mapping | PTI grad operates |
| **Bot-4: Battery Dismantler** | Safe Li-ion cell extraction | 60 units/hr | Thermal runaway detection | PTI grad safety lead |

**Automation Rate**: **85% of preprocessing** — **15% manual (complex/hazardous) — Pehuenche technicians**.

---
