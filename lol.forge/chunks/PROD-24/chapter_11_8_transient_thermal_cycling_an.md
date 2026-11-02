## 8. Transient Thermal Cycling Analysis

### 8.1 Batch Cycle Thermal Profile

```
TIME (min)    EVENT                              DRUM T_MAX    VESSEL T_MAX
0-15          Stage 0 (Acoustic)                 80°C          35°C
15-35         Stage 1 (Drying)                   150°C         45°C
35-65         Stage 2 (Polymer)                  450°C         85°C
65-95         Stage 3 (Pyrolysis)                660°C         110°C
95-120        Stage 4 (Low-Temp Metals)          900°C         130°C
120-145       Stage 5 (Al Window)                720°C         135°C
145-175       Hold (Brass/Bronze)                1085°C        145°C
175-205       Stage 6 (Cu/PM)                    1200°C        155°C
205-240       Stage 7 (Ferrous)                  1600°C        170°C
240-270       Stage 8 (Mineral)                  2200°C        175°C
270-300       Cool-down (N₂ purge)               2200→80°C     175→40°C
```

### 8.2 Thermal Fatigue (Coffin-Manson)

**Drum (ZrB₂-SiC):**
$$\Delta \epsilon_p / 2 = \epsilon_f' (2N_f)^c$$
$\epsilon_f' = 0.005$, $c = -0.6$ (ceramic)
$\Delta T = 2120°C$ (2200→80°C), $\Delta \epsilon_{th} = \alpha \Delta T = 6.5\times10^{-6} \times 2120 = 0.0138$
$N_f = \frac{1}{2}\left(\frac{0.0138/2}{0.005}\right)^{1/-0.6} = 2,800$ cycles
**Design Life:** 500 batches → **SF = 5.6 on thermal fatigue**

**Vessel (BFRP):**
$\Delta T = 150°C$ (175→25°C), $\Delta \epsilon_{th} = 7.5\times10^{-6} \times 150 = 0.0011$
Matrix fatigue: $N_f > 10^5$ cycles at this strain → **SF > 200**

**Aerogel:**
Compression cycles: 50 mm → 42 mm → 50 mm (500 cycles)
Creep strain: <0.5% per cycle → 2.5% total < 5% failure threshold

### 8.3 Pressure Fatigue

**Drum:** 5 bar cyclic, 500 cycles. $\Delta \sigma = 42$ MPa (hoop). $N_f > 10^6$ at this stress ratio.

**Vessel:** 5 bar cyclic, 500 cycles. $\Delta \sigma = 41$ MPa. Tsai-Wu fatigue model → $N_f > 10^5$.

---
