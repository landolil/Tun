## 6.8 Resilience Scoring Matrix: RTO/RPO per Corridor

**Recovery Time Objective (RTO)**: Max acceptable downtime to restore flow
**Recovery Point Objective (RPO)**: Max acceptable data/volume loss

| Corridor | Primary Route | RTO (Days) | RPO (Tons) | Resilience Score | Key Vulnerabilities |
|----------|---------------|------------|------------|------------------|---------------------|
| **Mejillones → Asia (Capesize)** | Pacific direct | 3 | 50,000 | **8.5/10** | Single port, strike risk |
| **Antofagasta → Asia (Panamax)** | Pacific direct | 5 | 30,000 | 7.0/10 | Draft limit, strike risk |
| **San Antonio → Asia (ULCV)** | Pacific direct | 4 | 40,000 | 8.0/10 | Panama/Red Sea exposure |
| **San Antonio → Europe (Panama)** | Panama Canal | 7 | 60,000 | 6.0/10 | Canal queue, drought, Red Sea |
| **Mejillones → Europe (Panama)** | Panama Canal | 7 | 50,000 | 6.5/10 | Canal queue, drought, Red Sea |
| **Punta Arenas → Europe (Magellan)** | Magellan Strait | 5 | 20,000 | **7.5/10** | Weather, pilotage, infra gap |
| **Coronel → Europe (Magellan)** | Magellan + Broad gauge | 6 | 25,000 | 7.0/10 | Rail gap, weather |
| **Bioceánico → Europe (Rail+Atlantic)** | Rail→Santos→Atlantic | 14 | 100,000 | 4.0/10 | 4 countries, 3 gauge breaks |

**Resilience Investment Priorities**:
1. **Mejillones TCMN** (Score 8.5 → 9.2): Complete domes, Class D fire, magnetic shielding
2. **San Antonio PESA** (Score 8.0 → 9.0): ULCV berths, rail capacity, reefer monitoring
3. **FCAB Electrification** (All corridors): -37% cost, -85% CO₂, +15% velocity
4. **Calama/La Calera Integration** (All north-south): -$2,000/train interchange cost
5. **Punta Arenas Development** (Score 7.5 → 8.5): Strategic Atlantic option

**Resilience Formula**:

$$\text{Resilience Index} = \frac{1}{N} \sum_{i=1}^{N} \left( w_1 \times \frac{1}{\text{RTO}_i} + w_2 \times \frac{1}{\text{RPO}_i} + w_3 \times \text{Redundancy}_i + w_4 \times \frac{1}{\text{Chokepoint Exposure}_i} \right)$$

Where weights: $w_1=0.3, w_2=0.2, w_3=0.3, w_4=0.2$

---

*End of Chapter 6. Chapter 7 covers CSM Delivery Requirements — Magnet-to-Motor Integration, JIT, QC, DFARS, Traceability.*
