## Appendix E: Thermal Cascade Profile - Complete Time-Temperature Trajectory

### E.1 Full Batch Profile (3.5-5 hours)

| Time (min) | Temp (C) | Stage | Zone Active | Frequency | Power (kW) | Key Physics |
|------------|----------|-------|-------------|-----------|------------|-------------|
| 0-15 | 20-80 | 0 | - | - | - | Acoustic liberation (pre-chamber) |
| 15-35 | 80-150 | 1 | 1-2 | 100 kHz | 0-30 | IR drying, moisture removal |
| 35-65 | 150-450 | 2 | 1-2 | 100 kHz | 30-50 | Polymer melt, density strat |
| 65-95 | 450-660 | 3 | 3 | 50 kHz | 60-80 | Pyrolysis, char formation |
| 95-120 | 420-900 | 4 | 4-5 | 10 kHz | 100-150 | Zn/Pb/Sn/In melt (In first!) |
| 120-145 | 660-720 | 5 | 5 | 10 kHz | 120-150 | Al window - pure Al melt |
| 145-175 | 720-1085 | Hold | 5-6 | 10→5 kHz | 100-150 | Brass/bronze transition |
| 175-205 | 1085-1200 | 6 | 6 | 5 kHz | 150-200 | Cu melt, PM co-collection |
| 205-240 | 1200-1600 | 7 | 7 | 2 kHz | 200-350 | Fe melt, REE co-collection |
| 240-270 | 1600-2200 | 8 | 8 | 1 kHz | 300-500 | Mineral dissociation |
| 270-300 | 2200→cool | Cool | - | - | - | Controlled cool under N2 |

### E.2 Zone Power Profile Per Stage

```
STAGE 1 (80-150C, 20 min): Zone 1-2 only
  Power: 0 → 30 kW ramp (air heating)
  FBG: Drum wall 80→150C, liner 50→100C

STAGE 2 (150-450C, 30 min): Zone 1-2
  Power: 30 → 50 kW (polymer melt)
  FBG: Wall 150→450C, Zone A liner 100→400C

STAGE 3 (450-660C, 30 min): Zone 3 primary
  Power: 0 → 80 kW (Zone 3), Zone 1-2 hold 30 kW
  FBG: Wall 450→660C, Zone B liner 400→600C

STAGE 4 (420-900C, 25 min): Zone 4-5
  Power: 0 → 150 kW (Zone 4), Zone 5 ramps
  Zone 3 holds 50 kW
  FBG: Zone B liner 400→800C, Port 4 actuator 156C trigger

STAGE 5 (660-720C, 25 min): Zone 5 peak
  Power: 150 kW (Zone 5), Zone 4 holds 80 kW
  FBG: Zone B liner 660→720C, Port 5 actuator 680C trigger

STAGE 6 (1085-1200C, 30 min): Zone 6
  Power: 0 → 200 kW (Zone 6), Zone 5 ramps down
  FBG: Zone B→C transition 720→1100C, Port 6 actuator 1085C trigger

STAGE 7 (1200-1600C, 35 min): Zone 7
  Power: 0 → 350 kW (Zone 7), Zone 6 holds 150 kW
  FBG: Zone C liner 1100→1500C, Port 7 actuator 1538C trigger

STAGE 8 (1600-2200C, 20 min): Zone 8
  Power: 0 → 500 kW (Zone 8), Zone 7 holds 200 kW
  FBG: Zone C liner 1500→2200C, Port 8 actuator 1676C trigger
```

### E.3 Energy Balance Per Batch

| Stage | Energy (MJ) | Power (kW) | Time (min) | Efficiency |
|-------|-------------|------------|------------|------------|
| 0 | 0 | - | 15 | N/A (acoustic) |
| 1 | 36 | 30 | 20 | 85% (IR) |
| 2 | 90 | 50 | 30 | 90% (indirect) |
| 3 | 144 | 80 | 30 | 92% |
| 4 | 225 | 150 | 25 | 94% |
| 5 | 225 | 150 | 25 | 95% |
| 6 | 360 | 200 | 30 | 93% |
| 7 | 420 | 200 | 35 | 91% |
| 8 | 600 | 500 | 20 | 88% |
| **Total** | **2,100 MJ** | **avg 210 kW** | **230 min** | **91.5%** |

2,100 MJ = 583 kWh per batch (50 kg feedstock = 11.7 kWh/kg)
At $0.10/kWh industrial: $58/batch energy cost
Revenue: In (50g @ $500/kg = $25), Cu (5kg @ $9/kg = $45), Al (10kg @ $2.5/kg = $25), Fe (20kg @ $0.5/kg = $10), REE (100g @ $50/kg = $5), Zr (500g @ $10/kg = $5)
Total revenue: ~$115/batch - energy cost $58 = $57 margin (before capex, labor, maintenance)

---
