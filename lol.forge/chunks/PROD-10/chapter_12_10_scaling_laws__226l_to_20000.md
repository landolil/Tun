## 10. Scaling Laws — 226L to 20,000L

The Aegis-Forge I architecture scales from the 226 L prototype to 20,000 L production units.

### 10.1 Geometric Scaling

| Parameter | 226 L (Lab) | 2,000 L (Pilot) | 20,000 L (Production) |
|-----------|-------------|-----------------|----------------------|
| Drum Diameter | 600 mm | 1200 mm | 2500 mm |
| Drum Length | 800 mm | 1800 mm | 4000 mm |
| Wall Thickness | 35 mm | 50 mm | 80 mm |
| Volume | 226 L | 2,035 L | 19,635 L |
| Rotational Speed | 500 RPM | 350 RPM | 240 RPM |
| G-Force (at wall) | 84.5 G | 82 G | 81 G |

### 10.2 Power Scaling

Power scales with surface area (heat loss) and volume (thermal mass):

$$P_{scale} = P_{ref} \left( \frac{V}{V_{ref}} \right)^{2/3} \times \text{efficiency factor}$$

| Scale | Volume | Total Power | Per-Zone Power | Inverter Count |
|-------|--------|-------------|----------------|----------------|
| Lab | 226 L | 500 kW | 62.5 kW | 8 × 62.5 kW |
| Pilot | 2,000 L | 2.1 MW | 262 kW | 8 × 262 kW |
| Production | 20,000 L | 12.5 MW | 1.56 MW | 16 × 780 kW (paralleled) |

### 10.3 Inverter Paralleling Strategy

At production scale, each zone uses multiple inverter modules in parallel with current-sharing control:
- **Master-slave current sharing** via optical fiber (PMMA POF)
- **Phase interleaving** (180° for 2 modules, 120° for 3) reduces ripple
- **Common DC bus** with individual AC filters per module

---
