## Appendix J: Operational Procedures

### J.1 Normal Startup Sequence

1. **Pre-start Checks (T-30 min)**
   - Verify water chiller at 25°C, 16 L/min flow
   - Verify FBG interrogator online, all 384 sensors reporting
   - Verify LoRa telemetry link to control room
   - Verify E-stop circuit continuity (optical loop)

2. **Inverter Power-Up (T-10 min)**
   - Close 480V breaker (soft-start via pre-charge resistors)
   - Verify DC link voltage: 650 VDC ± 5%
   - Enable inverter modules sequentially (Z1→Z8, 10s intervals)
   - Verify ZVS at idle (10% power) for all zones

3. **Drum Rotation Start (T-0 min)**
   - Ramp drum to 50 RPM (piezoelectric motor)
   - Verify rotation sensor (FBG-based encoder on shaft)
   - Confirm coolant ΔT < 2°C across all modules

4. **Thermal Ramp (T+0 to T+180 min)**
   - Load feedstock batch
   - Execute thermal profile per PROD-02 schedule
   - Monitor FBG temperatures, adjust PID as needed
   - Log all data to digital twin (PROD-37)

### J.2 Emergency Shutdown Procedures

| Scenario | Trigger | Action | Recovery |
|----------|---------|--------|----------|
| Over-temperature | Any FBG > T<sub>set</sub> + 25°C | Immediate inverter disable, drum coast-down | Cool to <200°C, investigate |
| Ground fault | NGR current > 5 A | All inverters off, isolate transformer | Megger test, clear fault |
| Arc flash | Optical sensor (PMMA POF) | <1 ms inverter cutoff, E-stop | Replace damaged module |
| GIC event | Grid dV/dt > threshold | Ride-through (floating architecture) | Monitor, log, continue |
| Cooling loss | Flow < 10 L/min or ΔT > 10°C | Graceful power reduction to 20% | Restore cooling, ramp up |
| FBG failure | >10 sensors lost in zone | Zone power limited to 50% | Replace fiber bundle at next outage |

### J.3 Maintenance Intervals

| Interval | Task | Duration | Parts |
|----------|------|----------|-------|
| Daily | Visual inspection, FBG health check | 15 min | — |
| Weekly | Water quality (DI resistivity, pH), filter check | 30 min | Filter cartridge |
| Monthly | Torque check (flange bolts, electrical connections) | 2 hr | — |
| Quarterly | Cold plate cleaning (chemical flush) | 4 hr | Citric acid solution |
| Annually | GaN module inspection (thermal cycling fatigue) | 8 hr | Spare modules |
| 5 Years | FBG fiber bundle replacement | 16 hr | PMMA POF spools |
| 10 Years | Isolation transformer rewind | 40 hr | Rewind kit |

---
