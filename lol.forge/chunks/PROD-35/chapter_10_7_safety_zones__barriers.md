## 7. Safety Zones & Barriers

### 7.1 Zone Definitions (PROD-04, 06, 09, 23, 26, 29)

| Zone | Boundary | Hazard | Access Control | PPE Required |
|------|----------|--------|----------------|--------------|
| **Z0 — Control Room** | Building envelope | None (safe) | Badge + PIN | None |
| **Z1 — Electrical Room** | TSN/PTP/Inverter cabinets | Arc flash (Cat 2), 480V | Electrical qualified badge | Arc flash suit Cat 2 |
| **Z2 — Gas/Flux Room** | MFC panels, NaHCO₃, H₂ | Chemical, asphyxiation | Gas monitor badge | SCBA if >10% LEL |
| **Z3 — Forge Bay (Cold)** | Drum/vessel/coil exterior | Mechanical, pinch points | FO/DT/MT badge | Hard hat, safety glasses |
| **Z4 — Forge Bay (Hot)** | Drum interior, ports, induction | 2200°C, EMF, radiation | SL authorization + dual-key | Proximity suit, PAPR |
| **Z5 — SIS Cabinet** | SIL-3 logic solvers | None (safe) | Safety Eng badge | None |
| **Z6 — Depot Disassembly** | 6-axis cell, solvolysis | Mechanical, chemical, thermal | DT badge | Proximity suit, PAPR |
| **Z7 — Depot Crate Wash** | Wash bay, water recycle | Slip, chemical | DT badge | Chemical splash suit |
| **Z8 — IT/Office** | Corporate network | Cyber | IT badge | None |

### 7.2 Barrier Systems

| Barrier | Type | Rating | Interlock |
|---------|------|--------|-----------|
| **Z3→Z4 Gate** | BFRP sliding door, PMMA POF interlock | 2200°C radiant, 10 bar | SIS: T_drum <200°C + Port valves closed |
| **Z1 Arc Flash** | PEEK CF40 curtain, IR window | 40 cal/cm² | SIS: Inverter gates off |
| **Z2 Gas** | BFRP vestibule, double-door | H₂ 4% LEL | SIS: Gas detectors <10% LEL |
| **Z6 Disassembly** | Light curtain + E-stop loop | SIL-3 | SIS: Cell E-stop <1 ms |
| **Z7 Wash Bay** | Grated floor, containment curb | 500L spill | Level sensor → pump shutdown |

### 7.3 Signage & Wayfinding

- **ISO 7010** symbols + Forge-specific: FBG sensor, TSN cable, Phoenix crate, CMF-RQT flow
- **Photoluminescent** egress paths (24h glow, LiFePO₄ backup)
- **Dynamic LED** zone status: Green (safe), Amber (authorized only), Red (SIF active/forbidden)
- **QR Codes** at every zone entry: links to DQR, PPE matrix, emergency procedure

---
