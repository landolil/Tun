## 4. HMI/SCADA Interface Design

### 4.1 Information Hierarchy (ISA-101 Level 1-4)

**Level 1 — Process Overview (Wall Display):**
- Full cascade schematic (PROD-02 stages 0-8)
- Real-time: feed rate, energy, mass balance, blend ratio P_blend
- SIF status: 24 indicators (green/amber/red), SOE timestamp
- Phoenix depot status: 65 hubs, crate flow, LIBS classification

**Level 2 — Unit Operations (Monitors 1-3):**
- Stage group detail: thermal profiles, RPM, port status, gas flows
- Zone RTU detail: PID output, resonance freq, FBG health Λ
- Trend groups: 1 hr, 8 hr, 24 hr (configurable)

**Level 3 — Detail Displays (Monitor 4-5):**
- L0 FPGA: gate drive waveforms, desat timestamps, ZVS margin
- L1 RTU: FBG wavelength maps, thermal-admittance model residuals
- L2 PLC: interlock logic, recipe step, carousel position
- Depot: disassembly cell status, solvolysis reactor, LIBS results

**Level 4 — Diagnostic/Configuration (Monitor 6 + Maintenance Terminal):**
- Component health: Bayesian Λ per component (PROD-28 Keymaker Key)
- NDT history: UT/CT/AE/FBG trends per drum/vessel/port
- Config management: Git tag, ECO status, firmware versions
- Cyber: network health, intrusion alerts, firmware integrity

### 4.2 Alarm Philosophy (ISA-18.2)

| Priority | Color | Response Time | Action | Examples |
|----------|-------|---------------|--------|----------|
| **1 - Critical (SIF)** | Red + Flash | Immediate (<1s) | Auto-trip + SL acknowledgment | Overtemp, overpressure, GIC, vibration |
| **2 - High** | Red | <30s | Operator action required | FBG Λ>10, MFC drift, Port valve slow |
| **3 - Medium** | Yellow | <5 min | Operator awareness | Trend deviation, PM due, crate cycle |
| **4 - Low** | Blue | <30 min | Log & review | PMMA POF attenuation, firmware update |

**Alarm Rate Targets (ISA-18.2):**
- Steady state: <50 alarms/hr (all priorities)
- Upset (startup/shutdown/transient): <300 alarms/hr
- Flood (>300/hr): Auto-suppression via ISA-18.2 chattering filter

**Alarm Shelving**: Max 4 hrs, auto-unshelve, requires SL authorization + DQR log.

### 4.3 Color Coding Standard (Zero-Metal Adaptation)

| Meaning | Color | Hex | Rationale |
|---------|-------|-----|-----------|
| **Safe/Normal** | Green | #2E7D32 | Dielectric — no copper connotation |
| **Caution/Degraded** | Amber | #FF8F00 | No yellow (caution tape is metal) |
| **Danger/Trip** | Red | #C62828 | Universal |
| **Information** | Blue | #1565C0 | Data diode direction (OT→IT) |
| **Phoenix/EOL** | Purple | #6A1B9A | Circular flow indicator |
| **Maintenance** | Orange | #E65100 | Tool/access indicator |
| **Cyber** | Teal | #00695C | Air-gap boundary indicator |

**No red/green combinations** (deuteranopia safe). All states have shape + text redundant coding.

### 4.4 Navigation & Interaction Model

- **Primary**: Trackball + dedicated function keys (F1-F12 mapped to stages)
- **Secondary**: Touchscreen on Monitor 6 (diagnostics only)
- **Tertiary**: Voice commands (noise-canceling headset, "Forge: Zone 3 PID auto")
- **Gesture**: Leap Motion for 3D twin manipulation (Monitor 6)
- **Authorization**: Hardware token (YubiKey) + badge for gates SG-2, SG-3, CT-04, SAT-05

---
