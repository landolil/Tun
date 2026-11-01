## 2. Category A: Pre-Sorted Industrial Streams

### 2.1 Overview

Category A encompasses electronics, PCBs, motors, and power electronics — the highest-value feedstock by elemental concentration. These streams are typically pre-sorted at electronics recyclers or industrial scrap processors before arriving at the Aegis-Forge I.

### 2.2 Subcategory A1: Consumer Electronics

| Parameter | Specification |
|-----------|---------------|
| **Typical Items** | Smartphones, tablets, laptops, wearables, gaming consoles |
| **Mass per Unit** | Phone: 150-200g; Laptop: 1.5-2.5kg; Tablet: 300-500g |
| **Annual US Volume** | ~350M phones, ~50M laptops, ~40M tablets (2026 EPA) |
| **Key Elements** | Au (0.03%), Ag (0.15%), Pd (0.01%), Cu (15-25%), Al (5-15%), REE in magnets (Nd, Dy, Tb: 0.5-2%) |
| **Hazardous Components** | Li-ion battery (MANDATORY removal), LCD screen (Hg in CCFL, In in ITO), vibration motors (NdFeB) |
| **Pre-processing** | Battery removal → screen separation → coarse shred <150mm |
| **Target Recovery** | >99% Au/Ag/Pd, >95% Cu, >90% REE, >95% Al |

**Elemental Composition Detail (per kg mixed consumer electronics):**

| Element | Mass (g) | Recovery Target | Value @ 2026 Prices |
|---------|----------|-----------------|---------------------|
| Gold (Au) | 0.3 | 99% | $24.00 |
| Silver (Ag) | 1.5 | 99% | $1.80 |
| Palladium (Pd) | 0.1 | 95% | $6.50 |
| Copper (Cu) | 180 | 95% | $1.80 |
| Aluminum (Al) | 80 | 95% | $0.18 |
| Neodymium (Nd) | 5 | 90% | $3.50 |
| Dysprosium (Dy) | 0.5 | 85% | $2.00 |
| Indium (In) | 0.5 | 99% | $1.80 |
| **Total Recoverable Value** | — | — | **~$41.58/kg** |

### 2.3 Subcategory A2: Printed Circuit Boards (PCBs)

| Parameter | Specification |
|-----------|---------------|
| **Typical Items** | Motherboards, GPU boards, server blades, router boards, control boards |
| **Substrate** | FR4 (glass-epoxy) → SiO₂ (55-65%), char (20-30%), Cu (20-30%) |
| **Key Elements** | Cu (20-30%), Sn/Pb solder (3-5%), Au (0.01-0.05%), Ag (0.05-0.2%), Pd (0.005-0.02%), REE traces |
| **Annual US Volume** | ~2.5M metric tons PCB scrap (2026 ISRI) |
| **Pre-processing** | Depaneling → coarse shred <150mm → Stage 0 acoustic liberation |
| **Target Recovery** | >95% Cu, >99% Au/Ag/Pd, >90% Sn/Pb |

**PCB Grade Classification (per IEC 61190):**

| Grade | Cu Content | Au Content | Typical Source | Aegis-Forge Priority |
|-------|------------|------------|----------------|---------------------|
| **Grade 1 (High-Yield)** | 25-30% | 0.03-0.05% | Server, telecom, military | Highest — Stage 6 priority |
| **Grade 2 (Mid-Yield)** | 18-25% | 0.01-0.03% | Consumer motherboards, GPU | Standard |
| **Grade 3 (Low-Yield)** | 12-18% | <0.01% | Peripheral boards, toys | Blend with Grade 2 |
| **Grade 4 (FR4 Scrap)** | 5-12% | <0.005% | Panel trim, test coupons | Stage 3 char + SiO₂ |

**PVC Content Warning:** PCBs with PVC-based solder mask or conformal coating require NaHCO₃ injection at Stage 2 (per PROD-15). Target PVC <2% of PCB mass.

### 2.4 Subcategory A3: Motors and Drives

| Parameter | Specification |
|-----------|---------------|
| **Typical Items** | HDD spindle motors, fan motors, actuators, servo motors, BLDC motors |
| **Key Elements** | Cu windings (40-60%), Fe stator (30-40%), NdFeB magnets (1-3% with Dy/Tb), Ni, Co |
| **Magnet Grades** | N35-N52 (Nd₂Fe₁₄B), Dy-doped (H-series), Tb-doped (SH-series) |
| **Pre-processing** | Ferrous pre-separation (PROD-11 NdFeB Halbach belt) → magnet extraction → shred <150mm |
| **Target Recovery** | >95% Cu, >95% Fe, >90% Nd/Dy/Tb, >90% Ni/Co |

**Motor Size Classification:**

| Frame Size | Mass | Cu Mass | Fe Mass | Magnet Mass | Processing Notes |
|------------|------|---------|---------|-------------|------------------|
| NEMA 17 (3D printer) | 0.3 kg | 60g | 120g | 5g | Batch with small electronics |
| NEMA 23/34 (CNC) | 1-2 kg | 300g | 800g | 20g | Individual feed |
| NEMA 42/52 (Industrial) | 5-15 kg | 2-4 kg | 8-10 kg | 50-100g | Pre-separate rotor/stator |
| Servo (Robotics) | 2-8 kg | 500g-2kg | 1-4kg | 30-80g | High Dy/Tb content |

### 2.5 Subcategory A4: Power Electronics

| Parameter | Specification |
|-----------|---------------|
| **Typical Items** | Inverters, PSU, chargers, UPS, solar optimizers, EV chargers |
| **Key Elements** | SiC/GaN dies (trace), Al heatsinks (30-50%), Cu busbars (10-20%), ceramic substrates (AlN, Al₂O₃, Si₃N₄), film capacitors |
| **Pre-processing** | Heatsink removal → capacitor discharge (safety) → coarse shred |
| **Target Recovery** | >95% Al, >95% Cu, >90% ceramic substrates (Stage 8), >95% film cap Al |

**Critical Note:** Large electrolytic capacitors (>20mm diameter) MUST be discharged and removed pre-shredder. Stored energy >10J poses explosion risk in BFRP shredder. Discharge protocol: 100Ω bleed resistor, 5 min minimum, verify <1V.

---
