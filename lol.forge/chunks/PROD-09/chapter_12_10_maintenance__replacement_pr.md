## 10. Maintenance & Replacement Protocol

### 10.1 Scheduled Maintenance

| Interval | Action | Duration |
|---|---|---|
| **Every batch** | FBG position log review (auto) | 0 min |
| **Every 100 batches** | Visual inspection (boroscope) | 30 min |
| **Every 1,000 batches** | Actuation calibration check | 2 hr |
| **Every 5,000 batches** | Piston leak test (in situ) | 4 hr |
| **Every 10,000 batches** | Full valve replacement (8 ports) | 8 hr |

### 10.2 Replacement Procedure (10,000 Batch Overhaul)

```
1. Drum cooled to <100°C, N₂ purged
2. Remove port frame bolts (4× ZrO₂ M4 per port)
3. Extract: Actuator + piston + spring as unit
4. Inspect: Seat wear, stem wear, actuator deflection
5. Install: New valve assembly (pre-calibrated)
6. Torque bolts to 2 Nm (torque wrench)
7. Reconnect FBG fibers
8. Leak test: 5 bar N₂, 30 min
9. Thermal cycle: 25 → 680 → 25°C
10. Update registry: valve_set_serial, install_date, batch_count=0
```

**Spare Valve Sets:** 2 sets per machine (16 valves) — 100% coverage for 10,000 batch interval.

---
