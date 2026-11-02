## 1. Deployment Overview

### 1.1 Deployment Philosophy

The Aegis-Forge I is not "installed" — it is **commissioned into operation**. The distinction is fundamental: a conventional machine arrives, is bolted down, and started. The Forge arrives as 14 verified assemblies (PROD-27 SG-1 through SG-4), each carrying its birth record (QR + Hyperledger), and must be re-verified as a system at the site before any feedstock enters. Deployment is the **continuation of the synchronization function** (PROD-27 Keymaker Key) from factory gates to site gates:

$$SG_{site} = SG_4 \land \bigwedge_{i=1}^{10} IC_i \land \bigwedge_{j=1}^{5} SAT_j$$

Where $SG_4$ is the final factory integration gate, $IC_i$ are the 10 integration checkpoints re-executed at site, and $SAT_j$ are the 5 site acceptance tests. The Forge does not operate until $SG_{site} = \text{TRUE}$.

### 1.2 Site Requirements Summary

| Parameter | Specification | Reference |
|---|---|---|
| **Footprint** | 12 m × 8 m × 6 m (L×W×H) minimum clear | PROD-25 Frame FEA |
| **Floor Loading** | 25 kN/m² uniform + 4.2 t point loads (drum/vessel) | PROD-25 Foundation Design |
| **Seismic** | IEEE 693 High (1.6g HCLPF) | PROD-25 Seismic |
| **Power** | 480 VAC 3-phase, 750 kVA, IEEE 519 THD <5% | PROD-23/26 |
| **Water** | 500 L/min DI water (18 MΩ·cm), 30°C supply | PROD-10/26 PEX-a |
| **Inert Gas** | N₂ 99.999% 200 Nm³/hr, Ar 99.999% 50 Nm³/hr | PROD-04/09/22 |
| **Compressed Air** | Instrument air 8 bar, oil-free, -40°C dew point | PROD-09/27 |
| **Internet** | Dedicated fiber 1 Gbps (IT network, air-gapped from OT) | PROD-23/36 |
| **Ventilation** | 20 ACH, HEPA filtration, negative pressure | PROD-07/32 |
| **Fire Suppression** | N₂ inerting + ceramic passive (PROD-26) | PROD-26/FOLLOW-26 |

### 1.3 Deployment Organization

| Role | Responsibility | Authority |
|---|---|---|
| **Deployment Manager** | Overall schedule, site coordination, stakeholder comms | Approve IC/SAT deviations |
| **Lead Electrical Engineer** | Power, grounding, TSN/PTP, SIS commissioning | Sign IC-3, IC-4, SAT-3, SAT-4 |
| **Lead Mechanical Engineer** | Alignment, rigging, hydrotest, thermal commissioning | Sign IC-1, IC-2, IC-5, SAT-2 |
| **SIS Engineer** | SIL-3 SIF proof tests, GIC ride-through, PTP sync | Sign IC-4, SAT-3, SAT-4 |
| **Quality Engineer** | NCR/CAPA, documentation turnover, audit compliance | Sign all IC/SAT data packages |
| **Operations Lead** | Operator training, SOP validation, shift handover | Sign SAT-5, OPS handover |
| **Safety Engineer** | PSM, LOTO, arc flash, emergency response | Approve emergency procedures |

---
