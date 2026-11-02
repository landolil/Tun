## 9.1 Zero Conflation Certification — Pairwise Distinctness

### 9.1.1 DOC-35 vs All Phase 5 Documents — The Conflation Audit

| Comparison Document | Shared Terms | Distinctness Mechanism | Conflation Risk | Status |
|---------------------|--------------|------------------------|-----------------|--------|
| **DOC-26 Atacameño Territory** | CPA, Atacameño, Consulta Previa, Salar, Brine | DOC-26 = territorial governance, cosmology, water rights; DOC-35 = company town, industrial heritage, labor transition | LOW — Different ontological categories (indigenous territory vs corporate municipality) | ✅ CERTIFIED |
| **DOC-27 Diaguita Valleys** | Small-scale mining, cultural heritage, transhumance | DOC-27 = Andean transhumance, ancestral mining; DOC-35 = industrial nitrate/lithium, company housing | LOW — Different temporal/spatial scales | ✅ CERTIFIED |
| **DOC-28 Mapuche-Pehuenche** | Biobío, hydro, indigenous law, cultural mapping | DOC-28 = riverine, hydroelectric, forest; DOC-35 = desert, evaporitic, industrial | LOW — Different biomes, resource types | ✅ CERTIFIED |
| **DOC-29 Mapuche-Sur** | Forestry, marine, tourism, collective property | DOC-29 = temperate rainforest, salmon, Mapuche-Williche; DOC-35 = hyperarid, nitrate, SQM | LOW — No shared geography or resource | ✅ CERTIFIED |
| **DOC-30 Kawéskar/Yagán** | Marine, fjords, nomadism, national parks | DOC-30 = maritime nomads, subantarctic; DOC-35 = Atacama, industrial | ZERO — No overlap | ✅ CERTIFIED |
| **DOC-31 Calama Mining** | Copper, Chuquicamata, Codelco, mining town, automation | DOC-31 = copper, active mine, Codelco; DOC-35 = nitrate/lithium, SQM, heritage preservation | **MEDIUM** — Both mining towns, but DOC-31 = active extraction growth; DOC-35 = managed decline + heritage | ✅ CERTIFIED |
| **DOC-32 Antofagasta Port** | Port, logistics, urban, immigration, lithium hydroxide | DOC-32 = port city, 350k pop, multi-commodity; DOC-35 = company town, 1.2k pop, single-company | LOW — Different urban hierarchies | ✅ CERTIFIED |
| **DOC-33 Tocopilla/Mejillones** | Industrial corridor, thermo closure, just transition, heritage | DOC-33 = coal-to-gas transition, port-industrial; DOC-35 = nitrate-to-lithium, company town | **MEDIUM** — Both transition, but DOC-33 = energy transition; DOC-35 = commodity + heritage | ✅ CERTIFIED |
| **DOC-34 San Pedro Tourism** | Tourism, Dark Sky, archaeology, aquifer, carrying capacity | DOC-34 = pre-Columbian archaeology, high-value tourism; DOC-35 = industrial heritage, niche tourism | LOW — Different heritage types, different tourism models | ✅ CERTIFIED |

### 9.1.2 Conflation Prevention Protocols Applied

| Protocol | Implementation in DOC-35 | Verification Method |
|----------|--------------------------|---------------------|
| **Ontological Tagging** | Every entity tagged: [COMPANY_TOWN], [INDUSTRIAL_HERITAGE], [NITRATE], [LITHIUM], [SQM], [CPA], [MUNICIPAL] | Automated grep for tag consistency |
| **Geographic Bounding** | Explicit: María Elena comuna (12,000 km²), Pampa del Tamarugal, Salar de Atacama (SQM ops) | Cross-ref with DOC-26/31 coordinates |
| **Temporal Bounding** | 1926-present (nitrate), 1990s-present (lithium), 2025-2035 (transition) | Timeline integrity check |
| **Actor Disambiguation** | SQM ≠ Codelco ≠ CPA ≠ Municipality ≠ Union ≠ DIBAM ≠ UNESCO | Actor registry with unique IDs |
| **Resource Disambiguation** | Caliche (nitrate) ≠ Brine (lithium) ≠ Freshwater (Loa) ≠ Fog (camanchaca) | Resource taxonomy enforcement |

---
