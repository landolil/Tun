## 6. Stage Thermal Models (1D Transient Cascade)

### 6.1 Model Formulation (Per Stage)

Each stage modeled as 1D transient heat equation with moving boundary (charge level):
$$\rho c_p \frac{\partial T}{\partial t} = \frac{\partial}{\partial z}\left(k \frac{\partial T}{\partial z}\right) + \frac{P_{ind}(z,t)}{A} - \frac{hP}{A}(T - T_{gas}) - \frac{\epsilon\sigma P}{A}(T^4 - T_{surr}^4)$$

Where $z$ = axial coordinate, $A$ = cross-section, $P$ = perimeter.

**State Variables per Stage:**
- $T(z,t)$ — axial temperature profile
- $m_{charge}(t)$ — charge mass (decreasing as ports open)
- $X_{comp}(t)$ — composition vector (from XRF/LIBS feedback)
- $h_{eff}(t)$ — effective heat transfer coeff (from CFD)

### 6.2 Stage 0-1: Acoustic & Drying (PROD-14)

**Energy Balance:**
$$m c_p \frac{dT}{dt} = P_{ind} - \dot{m}_{H_2O}\Delta H_{vap} - Q_{loss}$$

**Parameters:** $m = 50$ kg, $c_p = 900$ J/kg·K, $\Delta H_{vap} = 2257$ kJ/kg
**Target:** 20% moisture → 2% in 20 min at 150°C
**Power Required:** 50 kW (Z1-Z2) + 15 kW latent heat = 65 kW peak

### 6.3 Stage 2: Polymer Flow & Separation (PROD-15)

**Multi-Component Melting:**
$$\frac{dT}{dt} = \frac{P_{ind} - \sum \dot{m}_i \Delta H_{fus,i} - Q_{loss}}{m c_p}$$

**Polymer Melting Sequence (validated by DSC):**
| Polymer | T_melt (°C) | Mass % (Cat A) | ΔH_fus (kJ/kg) |
|---------|-------------|----------------|----------------|
| LDPE | 110 | 8% | 140 |
| HDPE | 130 | 12% | 180 |
| PP | 165 | 15% | 190 |
| PS | 240 | 10% | 85 |
| ABS | 220 | 8% | 100 |
| PET | 260 | 5% | 140 |
| PVC | 160 (decomp) | 8% | HCl release |
| PC | 230 | 4% | 120 |

**Centrifugal Separation:** Stokes settling at G=12.6, $\mu = 100-500$ Pa·s → 95% separation in 30 min

### 6.4 Stage 3: Pyrolysis & Char (PROD-16)

**Global Kinetics (Parallel Reactions):**
$$\frac{d\alpha}{dt} = \sum_{i=1}^3 A_i \exp(-E_{a,i}/RT) (1-\alpha)^{n_i}$$

| Reaction | A (s⁻¹) | E_a (kJ/mol) | n | Product |
|----------|---------|--------------|---|---------|
| Light volatiles | 1.2×10¹³ | 180 | 1.2 | Gas (CO, CO₂, CH₄) |
| Heavy tars | 3.5×10¹⁰ | 150 | 1.5 | Tar (cracks to gas) |
| Char formation | 8.0×10⁸ | 120 | 0.8 | Char (fixed C) |

**Char Yield:** 15-25% of organic input (Category dependent)
**Energy Balance:** Endothermic net (-120 kJ/kg feed) + exothermic char oxidation if O₂ present

### 6.5 Stage 4: Low-Temp Metals (PROD-17)

**Indium-First Strategy (Sequential Melting):**
| Metal | T_melt (°C) | ρ_liquid (g/cm³) | Port | Dwell |
|-------|-------------|------------------|------|-------|
| In | 156.6 | 7.31 | 4A | 5 min |
| Sn | 231.9 | 6.99 | 4B | 3 min |
| Pb | 327.5 | 10.66 | 4C | 3 min |
| Zn | 419.5 | 6.57 | 4C | 10 min |

**Density Stratification (CMCSO):**
$$\Delta r = \frac{2(\rho_i - \rho_j) \omega^2 r^3 t}{9\mu}$$
At 400 RPM, 200°C: In (7.31) vs Sn (6.99) → $\Delta r = 8$ mm in 5 min → clean separation

### 6.6 Stage 5: Aluminum Window (PROD-18)

**Mg Removal Kinetics (Flux Reaction):**
$$\text{Mg} + \text{NaCl} + \text{KCl} + \text{Cryolite} \rightarrow \text{MgF}_2 + \text{Na} + \text{K} + \text{Al}$$
**Rate:** $r = k_0 \exp(-E_a/RT) [\text{Mg}] [\text{Flux}]$, $E_a = 85$ kJ/mol
**Target:** [Mg] < 0.1% in Al product (wrought grade)

**Al Fractionation (Scheil-Gulliver):**
$$C_s = k C_0 (1-f_s)^{k-1}$$
Partition coefficients: $k_{Fe}=0.01$, $k_{Si}=0.13$, $k_{Cu}=0.17$, $k_{Mg}=0.34$

### 6.7 Stage 6: Copper & Precious Metals (PROD-19)

**PM Partitioning (CFDO-CB Operator):**
$$K_{PM} = \frac{C_{slime}}{C_{anode}} = \exp\left(-\frac{\Delta G_{seg}}{RT}\right)$$
| PM | ΔG_seg (kJ/mol) | K_PM | Recovery |
|----|-----------------|------|----------|
| Au | -45 | 10⁴ | >99.6% |
| Ag | -32 | 10³ | >99% |
| Pd | -28 | 10² | >98% |
| Pt | -22 | 10² | >83% |

**Anode Slime Mass:** 40-60 kg/batch (from 200 kg anodes)

### 6.8 Stage 7: Ferrous Cascade (PROD-20)

**Ferromagnetic Coupling Transition (Curie 770°C):**
- Below 770°C: $\mu_r = 200$ → hysteresis heating dominant ($P_h \propto f B^{1.6}$)
- Above 770°C: $\mu_r = 1$ → eddy current only
- **Resonance tracker pre-empts ZVS loss** during transition (PROD-23 Section 3.4)

**REE Magnet Partitioning (CDPPO-RSE):**
$$L_{REE} = \frac{C_{slag}}{C_{Fe}} = \exp\left(\frac{\Delta G_{ox}}{RT}\right) \quad \text{at } a_{FeO}=0.15, B=1.2$$
| REE | L_REE | Recovery to Port 7A |
|-----|-------|---------------------|
| Nd | 300 | 77% |
| Sm | 200 | 71% |
| Co | 10 | 55% |
| Dy | 250 | 70% |

**Carbon Control:** CO/CO₂ injection, XRF feedback at 2/min, $C_{target} = 0.5-4\%$ by stream

### 6.9 Stage 8: Mineral Residue & Zircon (PROD-21)

**Zircon Dissociation Kinetics (Shrinking Core):**
$$\frac{d r_c}{dt} = -\frac{k_0 \exp(-E_a/RT) P_{SiO_2}}{\rho_{ZrSiO_4}} \quad \text{at } P_{SiO_2} = 10^{-3} \text{ atm}$$
$E_a = 415$ kJ/mol, $k_0 = 2.5\times10^5$ m/s, $r_c$ = core radius
**Dissociation Time:** 30 min at 1700°C, 20 SLPM Ar sweep

**3Y-TZP Flash Sinter (CMOSO-RDFS):**
$$\frac{d \rho}{dt} = \frac{\sigma_{DC} E^2}{H_s} \quad \text{(electro-thermal coupling)}$$
$\sigma_{DC}$ jumps 100× at 1200°C → volumetric heating → 50%→97% TD in 60 s at 1800°C, 300 V/cm

**SiO₂ Condenser (Port 8B):**
- Quench: 1700°C → 200°C in 0.5 s (3000°C/s)
- Product: Fumed silica, 50 nm, 200 m²/g
- Capture efficiency: >90%

---
