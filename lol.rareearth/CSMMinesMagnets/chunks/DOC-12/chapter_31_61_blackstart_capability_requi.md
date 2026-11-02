## 6.1 Blackstart Capability Requirements

Chile's grid code (NTSyCS) and CEN operational procedures require:
- **System Blackstart**: Restore from total blackout within 4 hours (CEN target)
- **Regional Blackstart**: Norte Grande corridor (Antofagasta–Atacama) within 2 hours
- **Plant Blackstart**: Aegis-Forge clusters self-blackstart within 5 minutes

**GFM Blackstart Advantages vs. Synchronous Generators:**
| Attribute | Synchronous Gen (Hydro/Gas) | GFM BESS + Aegis-Forge |
|-----------|----------------------------|------------------------|
| **Start Time** | 10–30 min (cranking) | < 30 s (inverter + battery) |
| **Fuel Dependency** | Yes (gas/diesel) | No (stored energy) |
| **Voltage Control** | AVR + excitation | Digital voltage source |
| **Frequency Control** | Governor + inertia | Programmable $H$, $D$ |
| **Inrush Management** | Complex (breaker sequencing) | Soft ramp (software) |
| **Cold Start** | Hours (thermal) | Immediate |
