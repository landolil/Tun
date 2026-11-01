## 5. PVC Management Strategy — Critical Process Control

### 5.1 Dehydrochlorination Chemistry

PVC releases HCl vapor at 160-200°C during dehydrochlorination:

$$\text{-[CH}_2\text{-CHCl]-}_n \xrightarrow{160-200°C} \text{-[CH=CH]-}_n + n\text{HCl} \uparrow$$

**Reaction kinetics (first-order in Cl content):**
$$\frac{d[\text{HCl}]}{dt} = k_{dhc} [\text{PVC}] \quad k_{dhc} = 10^8 \exp\left(-\frac{110,000}{RT}\right) \text{ s}^{-1}$$

At 180°C: $k_{dhc} \approx 2\times10^{-4}$ s⁻¹ → 50% dehydrochlorination in 58 min.
At 200°C: $k_{dhc} \approx 3\times10^{-3}$ s⁻¹ → 50% in 4 min.
**Stage 2 ramp rate through 180-200°C is critical: 5°C/min max.**

This is a **toxic acid gas** that must be managed in-drum. HCl also catalyzes further degradation (autocatalytic).

### 5.2 In-Drum Neutralization

**NaHCO₃ Aerosol Injection System:**

| Parameter | Specification |
|-----------|---------------|
| **Injection Point** | Drum feed port (pre-centrifuge) |
| **Injection Rate** | 2× stoichiometric HCl (based on PVC assay) |
| **Particle Size** | 5-10 µm (dry powder, fluidized bed feeder) |
| **Feeder Type** | BFRP/PEEK screw feeder, KNbO₃ ultrasonic drive |
| **Dispersion** | N₂ carrier gas (0.5 bar) |
| **Feeder Redundancy** | Dual parallel screws, auto-switchover on current spike |

**Neutralization Reaction:**
$$\text{NaHCO}_3(s) + \text{HCl}(g) \rightarrow \text{NaCl}(s) + \text{H}_2\text{O}(g) + \text{CO}_2(g) \quad \Delta H = -85 \text{ kJ/mol}$$

**Products:**
- NaCl (salt) — reports to Stage 3 char as dissolved mineral (flux)
- H₂O — removed in Stage 1 (already passed) or Stage 3 gas handling
- CO₂ — captured in gas system (PROD-07), potential sequestration

**Stoichiometry:** 1 kg PVC → 0.58 kg HCl → requires 1.2 kg NaHCO₃ (theoretical). 2× safety = 2.4 kg NaHCO₃/kg PVC.

### 5.3 HCl Monitoring & Control Loop

```
HCl MONITORING & CONTROL LOOP

[INLINE HCl SENSOR] ──► [DSP CONTROLLER] ──► [NaHCO₃ FEEDER]
   (PMMA POF +          (KNbO₃-BaTiO₃        (BFRP/PEEK
    absorption at        ASIC)                screw,
     3.4 µm)             PID: Kp=0.5,         ultrasonic)
                      Ki=0.01, Kd=0.1
                           │
                           ▼
                    [ALARM IF >50 ppm]
                           │
                           ▼
                    [TEMP HOLD] ──► [RESUME WHEN <10 ppm]
```

| Parameter | Value |
|-----------|-------|
| **Sensor Type** | PMMA POF + absorption spectroscopy (3.4 µm C-H stretch proxy) |
| **Range** | 0-500 ppm HCl |
| **Accuracy** | ±5 ppm |
| **Response Time** | <2 seconds |
| **Control Threshold** | >50 ppm → temp hold; <10 ppm → resume |
| **NaHCO₃ Consumption** | ~2.2 kg per kg PVC (2× stoichiometric) |
| **Feeder Response** | <5 sec to 100% flow |

### 5.4 Dioxin/Furan Suppression

PVC + Cu/Fe at 250-400°C → chlorinated dioxins/furans (PCDD/F). Suppression strategy:

| Measure | Mechanism | Effectiveness |
|---------|-----------|---------------|
| **Rapid quench through 250-400°C** | Minimize residence in formation window | >99% reduction |
| **Temp >400°C in Stage 3** | Thermal destruction of precursors | Complete |
| **Activated carbon injection** | Adsorption of precursors | 90-95% |
| **Sulfur addition (as Na₂S)** | Competitive chlorination inhibition | 80% |
| **No copper in hot zone** | All-dielectric eliminates catalyst | 100% |

**Validated emission limit:** <0.1 ng TEQ/Nm³ (EU IED compliant).

### 5.5 Residual HCl Capture (Downstream)

Any HCl escaping in-drum neutralization:
1. **Stage 2 exit gas** → Activated carbon bed (char from Stage 3!)
2. **Carbon bed capacity:** 0.5 g HCl/g char (typical)
3. **Bed replacement:** Every 50 batches (automated carousel)
4. **Spent carbon** → Stage 3 char feed (recycled)

---
