## 2.2 Site Carrying Capacity — The Hard Biophysical Limits

### 2.2.1 Capacity Definition & Current Status

| Site | Biophysical Cap (Persons/Day) | Operational Cap (CONAF/CPA) | 2023 Peak Actual | Overcapacity Factor | Primary Impact |
|------|-------------------------------|----------------------------|------------------|---------------------|----------------|
| **Valle de la Luna (CNV)** | 1,000 (trail erosion threshold) | **800** | 1,200 | **1.50×** | Trail widening, cryptobiotic crust destruction, dust |
| **Geysers del Tatio (CONAF)** | 500 (thermal safety + bofedal protection) | **400** | 650 | **1.62×** | Boardwalk damage, geyser vent clogging, noise disturbance |
| **Lagunas Miscanti/Miñiques** | 400 (flamingo disturbance threshold) | **300** | 480 | **1.60×** | Nesting failure, water quality (sunscreen), vicuña displacement |
| **Pukará de Quitor (CMN/CPA)** | 250 (archaeological preservation) | **200** | 350 | **1.75×** | Wall erosion, graffiti, artifact theft, vibration damage |
| **Termas de Puritama (Concession)** | 400 (water renewal + thermal safety) | **350** | 500 | **1.43×** | Thermal pollution, trail erosion, waste accumulation |
| **Laguna Chaxa (Flamingos, RN Los Flamencos)** | 200 (bird disturbance 100m buffer) | **150** | 280 | **1.87×** | Breeding abandonment, feeding disruption, mortality |

### 2.2.2 Carrying Capacity Formulas — The Mathematical Reality

**Trail Erosion Model (Valle de la Luna)**:
```
E = k × N^α × S^β × P^γ
Where:
E = Annual erosion (mm/yr)
N = Daily visitors (persons)
S = Trail slope (%)
P = Precipitation events (>5mm)
k, α, β, γ = Calibrated constants (α=1.3, β=0.8, γ=0.5)

Current: N=1,200 → E=4.2 mm/yr (threshold 2.0 mm/yr for cryptobiotic crust survival)
Target: N=800 → E=1.9 mm/yr → **SUSTAINABLE**
```

**Flamingo Disturbance Function (Laguna Chaxa)**:
```
D = 1 / (1 + e^(-β×(d - d₅₀)))
Where:
D = Disturbance probability (0-1)
d = Visitor distance to colony (m)
d₅₀ = 100m (50% disturbance distance)
β = 0.08 (steepness)

Current: Avg d=65m (uncontrolled) → D=0.78 → **78% nests disturbed**
Target: Enforced 150m buffer → D=0.12 → **ACCEPTABLE**
```

**Geyser Thermal Safety Limit**:
```
Q_max = (ρ × c_p × ΔT_max × V_pool) / t_residence
Where:
ρ = 1000 kg/m³, c_p = 4184 J/kg·K
ΔT_max = 2°C (max safe temp rise for thermophiles)
V_pool = 50 m³ (avg geyser pool)
t_residence = 20 min (visitor dwell)
Q_max = 350 kW thermal load → **400 persons max (0.87 kW/person metabolic + conductive)**
```

---
