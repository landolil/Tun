## 1.5 Feedstock Blending Strategy — Optimizing Batch Composition

The Aegis-Forge I processes 500 kg batches with controlled feedstock blending to optimize thermal cascade efficiency and elemental recovery. The blend ratio is determined by the feedstock assay and the target elemental output.

### 1.5.1 Blend Ratio Optimization

The thermal cascade has fixed stage temperatures but variable dwell times. Feedstock blending adjusts the mass flow through each stage to match the drum's thermal capacity:

| Blend Parameter | Target Range | Control Method |
|-----------------|--------------|----------------|
| **Organic content (Stage 1-2)** | 15-25% of batch mass | Limits polymer melt volume to <50L |
| **Low-temp metals (Stage 4)** | 5-12% of batch mass | Controls Zn/Pb/Sn/In port loading |
| **Aluminum (Stage 5)** | 10-20% of batch mass | Primary revenue driver, max port capacity |
| **Copper/Precious (Stage 6)** | 3-8% of batch mass | High value, thermal mass management |
| **Ferrous/REE (Stage 7)** | 20-35% of batch mass | Largest mass flow, highest power |
| **Mineral residue (Stage 8)** | 25-40% of batch mass | Slag volume, zircon dissociation |

### 1.5.2 Blending Algorithm

The control system (PROD-23) calculates the optimal blend:

```python
def calculate_blend(feedstock_assays, target_revenue):
    # Input: assays for each available feedstock stream
    # Output: mass fractions for 500 kg batch
    
    # Constraints:
    # - Total mass = 500 kg
    # - Stage 2 polymer volume < 50 L (drum capacity)
    # - Stage 5 Al mass < 100 kg (port capacity)
    # - Stage 7 Fe mass < 175 kg (port capacity)
    # - Stage 8 mineral < 200 kg (port capacity)
    # - Moisture < 25% (else pre-dry)
    # - Particle size P80 < 150 mm
    
    # Objective: Maximize revenue = Σ(element_mass × price)
    # Subject to: Thermal cascade capacity constraints
    
    return optimal_mass_fractions
```

### 1.5.3 Real-Time Blend Adjustment

During continuous operation, the blend is adjusted based on:
- **Incoming feedstock assay** (XRF analyzer at feed hopper)
- **Previous batch recovery data** (mass spec feedback)
- **Current drum thermal state** (FBG temperature profile)
- **Market price signals** (commodity prices for Cu, Al, REE, Au)

---
