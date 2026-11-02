## Appendix E: Detailed HMI Screen Specifications (Expanded)

### E.1 Level 1 — Process Overview Screen (Wall Display)

**Layout: 55" 4K Display (3840×2160)**

| Region | Content | Update Rate | Interaction |
|--------|---------|-------------|-------------|
| **Top Banner (5%)** | Forge ID, Batch UUID, Shift, Time (PTP), Carrington Status | 1 Hz | Read-only |
| **Left Sidebar (20%)** | Stage 0-8 mini-status: T, RPM, Port, Gas, Energy | 1 Hz | Click → Level 2 |
| **Center Canvas (60%)** | Cascade schematic: 8 stages connected, material flow arrows | 1 Hz | Hover → tooltip, Click → Level 2 |
| **Right Sidebar (15%)** | SIF Status Grid (24), Blend Ratio, Mass Balance, Energy | 1 Hz | Click SIF → Level 4 |
| **Bottom Bar (5%)** | Alarm Summary (count by priority), E-Stop Status, UPS SOC | 1 Hz | Click → Alarm List |

**Color Coding on Cascade Schematic:**
- Stage background: Green (running), Amber (degraded), Red (tripped), Blue (standby), Purple (Phoenix feed)
- Flow arrows: Width ∝ mass flow rate, Color = material type (In=purple, Cu=orange, Fe=gray, Al=silver, Zr=teal)
- Port valves: Circle indicator (Green=open, Red=closed, Amber=transitioning)

### E.2 Level 2 — Stage Group Detail (Monitor 1-3)

**Layout per Monitor: 24" 1920×1080, 3 panes horizontal**

| Pane | Stage Group | Key Parameters |
|------|-------------|----------------|
| **Left** | Stages 0-1 (Monitor 1) | AMLS amplitude, IR dryer T, Moisture %, Liberation Index |
| **Center** | Stages 2-3 (Monitor 1) | Centrifuge RPM, Melt T, Polymer %, Char %, Port 2/3 status |
| **Right** | Stages 4-5 (Monitor 2) | Stage 4: In/Sn/Pb/Zn/Bi T, RPM, Port 4A/4B/4C; Stage 5: Al T, Mg ppm, Port 5 |

**Interaction Model:**
- Trackball hover → parameter tooltip (value, unit, trend sparkline, limit)
- Left-click → parameter faceplate (PID tuning, setpoint, alarm limits)
- Right-click → trend popup (1 hr / 8 hr / 24 hr)
- F1-F8 keys → jump to Zone RTU detail (Level 3)

### E.3 Level 3 — Zone RTU Detail (Monitor 4)

**Layout: 24" 1920×1080, 4 quadrants**

| Quadrant | Content | Source |
|----------|---------|--------|
| **TL** | Thermal Profile: T_inner (model), T_flange (FBG), Setpoint, PID Output | L1 RTU 1 kHz |
| **TR** | Resonance Tracker: f_actual, f_target, Varactor Bias, Cap Bank, ZVS Margin | L1 RTU 1 kHz |
| **BL** | FBG Health Map: 48 channels × 8 zones, Λ color-coded, Drift trend | L1 RTU 125 Hz |
| **BR** | MFC Status: 32 channels, Flow/Setpoint/Valve%, Gas Type, Alarm | L1 RTU 10 Hz |

### E.4 Level 4 — Diagnostic/Configuration (Monitor 6)

**Layout: 24" 1920×1080, Tabbed Interface**

| Tab | Content | Update |
|-----|---------|--------|
| **Health** | Component Bayesian Λ: Drum, Vessel, Ports, Coils, Inverters, TSN, PTP | 10 Hz |
| **NDT** | UT/CT/AE/FBG/IR/Vibe trends per component, PQR reference | On-demand |
| **Config** | Git tag, ECO list, Firmware versions, Calibration due dates | Event-driven |
| **Cyber** | Network topology, FRER status, PTP offset, Intrusion alerts, FW integrity | 1 Hz |
| **Phoenix** | Depot status, Crate flow, LIBS classification, Blend ratio MFC | 10 Hz |

---
