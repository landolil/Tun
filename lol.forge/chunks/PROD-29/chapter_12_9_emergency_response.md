## 9. Emergency Response

### 9.1 Emergency Scenarios & Response

| Scenario | Detection | Auto-Action | Operator Action | Recovery |
|---|---|---|---|---|
| **SIL-3 SIF Trip** | SIS FPGA | Immediate safe state (all zones 0 power) | Acknowledge, investigate, CT-04 partial stroke | SOP-005 |
| **Carrington GIC Event** | Magnetometer >100 nT/s | Ride-through mode, data freeze | Monitor, 30 min post-event, staged reconnect | SOP-006 |
| **Vessel Overpressure** | Pressure transducer >11 bar | Port valves open, N₂ purge | Evacuate zone, verify rupture disk intact | SOP-005 + PSM |
| **Drum Thermal Runaway** | FBG >2250°C or dT/dt >100°C/s | Power cut, N₂ flood, quench | Evacuate, assess drum integrity (AE/UT) | SOP-005 |
| **Toxic Gas Release** | CEMS >IDLH | Zone isolation, scrubber max flow | PPE Level A, evacuate, notify authorities | HAZWOPER |
| **Seismic Event** | Accelerometer >0.2g | SIF trip if >OBE, data capture | Post-event inspection SOP-011 | IC-1/IC-2 re-verify |
| **Fire (Electrical)** | IR >300°C + smoke | Inert gas flood, power cut | CO₂ extinguisher (non-conductive), evacuate | SOP-005 |
| **FBG Channel Loss >5** | Interrogator auto-detect | NCR auto-generated, twin alert | Investigate root cause, replace if needed | PROD-28 CAPA |

### 9.2 Emergency Contacts & Resources

| Resource | Contact | Location | SLA |
|---|---|---|---|
| **CSM Emergency Dispatch** | +1-800-CSM-FORGE | 24/7 | <15 min |
| **Local Fire/HAZMAT** | 911 | Municipal | <10 min |
| **Utility Grid Ops** | Grid emergency line | Regional | <30 min |
| **SIS Vendor (TÜV)** | On-call engineer | Remote | <2 hr |
| **FBG Vendor (Micron/Optics)** | Support portal | Remote | <4 hr |
| **Spare Parts Depot** | Regional hub | 500 km radius | <24 hr critical |

---
