## 12. Scaling Laws (226L → 2000L, PROD-30)

### 12.1 Geometric Similarity

| Parameter | Pilot (226L) | Commercial (2000L) | Scale Factor |
|-----------|--------------|-------------------|--------------|
| Drum ID | 600 mm | 1200 mm | 2.0× |
| Drum Length | 800 mm | 1600 mm | 2.0× |
| Drum Volume | 226 L | 1810 L | 8.0× |
| Wall Thickness | 35 mm | 70 mm | 2.0× |
| Coil Gap | 15 mm | 30 mm | 2.0× |
| RPM (max) | 500 | 354 | $1/\sqrt{2}$ (tip speed) |

### 12.2 Dimensionless Group Preservation

| Group | Definition | Pilot | Commercial | Action |
|-------|------------|-------|------------|--------|
| **Fourier (Fo)** | $\alpha t / L^2$ | 0.15 | 0.15 | Double cycle time |
| **Reynolds (Re)** | $\rho v D / \mu$ | 2.5×10⁵ | 2.5×10⁵ | Adjust gas flow |
| **Peclet (Pe)** | $v D / \alpha$ | 1.2×10⁴ | 1.2×10⁴ | Scale power ∝ D² |
| **Nusselt (Nu)** | $h D / k$ | 450 | 450 | Maintain $h$ |
| **Skin Depth Ratio** | $\delta / d_{particle}$ | 0.2 | 0.2 | Scale freq ∝ 1/D² |
| **Centrifugal (G)** | $\omega^2 r / g$ | 112 | 112 | $\omega \propto 1/\sqrt{r}$ |

### 12.3 Power Scaling

$$P_{total} \propto D^3 \quad \text{(volume heating)}$$
Pilot: 500 kW, 226 L → Commercial: 500 × (2000/226) = 4,400 kW
**Zone Power:** 8 zones × 550 kW = 4,400 kW (requires parallel inverter strings)

---
