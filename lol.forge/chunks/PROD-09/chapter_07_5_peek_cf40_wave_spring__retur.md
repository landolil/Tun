## 5. PEEK CF40 Wave Spring — Return Mechanism

### 5.1 Spring Design

| Parameter | Value |
|---|---|
| **Material** | PEEK CF40 (30% carbon fiber reinforced) |
| **Type** | Wave spring (axial compression) |
| **Free Height** | 8 mm |
| **Operating Height** | 5 mm (3 mm compression) |
| **Spring Rate** | 12 N/mm |
| **Preload Force** | 50 N (at 3 mm compression) |
| **Max Force** | 86 N (at 6 mm compression, full open) |
| **Wire Cross-section** | 1.2 mm × 0.8 mm (rectangular) |
| **Number of Waves** | 3.5 turns |
| **Mean Diameter** | 14 mm (OD 16 mm, ID 12 mm) |

### 5.2 PEEK CF40 Properties at Temperature

| Temperature | Tensile Strength | Modulus | Creep (1000 hr, 50 MPa) | Notes |
|---|---|---|---|---|
| 25°C | 220 MPa | 18 GPa | — | Baseline |
| 150°C | 180 MPa | 15 GPa | <0.1% | Port 1-3 range |
| 250°C | 150 MPa | 12 GPa | 0.2% | Continuous limit |
| 300°C | 120 MPa | 10 GPa | 0.5% | Peak excursion |

**Design Margin:** At Port 5 (680°C drum), spring sees ~150°C via thermal gradient — well within continuous rating. Spring is **thermally isolated** from drum by ZrO₂ piston stem and aerogel gap.

### 5.3 Spring Force Curve

```
Force (N)
  90 |                    /
     |                  /
  80 |                /  ← Full open (6 mm compression)
     |              /
  70 |            /
     |          /
  60 |        /  ← Preload + pressure (3 mm)
     |      /
  50 |____/_________________________ ← Preload (5 mm = free height - 3 mm)
     |
     +----+----+----+----+----+----+
     2    3    4    5    6    7    8
           Compression (mm)
```

**Key Points:**
- At 5 mm (closed): 50 N preload > 5 bar pressure force (565 N) × (seat area/piston area) = 15 N effective
- At 6 mm (actuator fully extended): 86 N return force
- Actuator must overcome 565 N + 50 N = 615 N to open — provides 2,400 N (3.9× margin)

### 5.4 Fatigue Life

- Wave spring fatigue (PEEK CF40, 3 mm stroke, 10,000 cycles): **Validated to 50,000 cycles**
- Creep relaxation at 150°C, 10,000 hr: <5% force loss
- **Replacement interval: 10,000 batches** (aligned with piston replacement)

---
