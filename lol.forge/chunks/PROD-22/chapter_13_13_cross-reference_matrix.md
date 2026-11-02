## 13. Cross-Reference Matrix

| Section | Upstream Dependencies | Downstream Dependencies |
|---------|----------------------|------------------------|
| 1. Overview | PROD-01 (Architecture) | PROD-31 (Economics), PROD-39 (T&E) |
| 2. Logistics | PROD-13 (Feedstock), PROD-11 (Shredding) | PROD-29 (Deployment), PROD-33 (Supply Chain) |
| 3. Categorization | PROD-13 (Cat A-D), PROD-08 (Output Catalog) | PROD-14-21 (Stage re-entry) |
| 4. Preprocessing | PROD-05 (AMLS), PROD-07 (Gas), PROD-16 (Char) | FOLLOW-05 (BFRP winding), FOLLOW-18 (Char activation) |
| 5. Re-Entry | PROD-02 (Cascade), PROD-14-21 (Stages 0-8) | PROD-22 (Self), FOLLOW-14,15,19,20,32 |
| 6. Mass Balance | PROD-02 (Cascade mass balance), PROD-13 | PROD-31 (Economics), PROD-37 (Digital Twin) |
| 7. Drum Circularity | PROD-04 (Drum), PROD-21 (Stage 8), FOLLOW-01,32 | PROD-04 (Next gen), FOLLOW-01 |
| 8. EMI Circularity | PROD-09 (Port valves), PROD-36 (Security) | FOLLOW-04, 32 |
| 9. Refurbishment | PROD-12 (BOM), PROD-08 (Output catalog) | PROD-29 (Operations), PROD-30 (Maintenance) |
| 10. Digital Twin | PROD-23 (Control), PROD-37 (Data Mgmt) | PROD-37 (Digital Twin), FOLLOW-29 (ML) |
| 11. Economics | PROD-31 (Economic Analysis) | PROD-31, PROD-39 (Viability) |
| 12. Safety | PROD-07 (Gas), PROD-26 (GIC), PROD-32 (Compliance) | PROD-26, PROD-32, PROD-39 |

### 13.1 Detailed Interface Specifications

| Interface | From | To | Data Exchanged | Frequency | Protocol |
|-----------|------|----|----------------|-----------|----------|
| **Depot→Forge** | Phoenix Depot WMS | Forge SCADA | Crate manifest, LIBS assay, mass, UUID | Per crate | OPC-UA over TSN |
| **Forge→Depot** | Forge SCADA | Phoenix Depot WMS | Re-entry spec updates, blend targets | Per batch | OPC-UA over TSN |
| **Forge→Hydromet** | Stage 8/7 output | FOLLOW-15/32 | Slug UUID, composition, mass | Per slug | MQTT + Data Matrix |
| **Hydromet→Forge** | FOLLOW-15/32 | Forge SCADA | Precursor quality, yield, lot ID | Per batch | OPC-UA |
| **Product→Depot** | Field (IoT) | Phoenix Depot | Health data, service hours, degradation | Continuous | LoRaWAN → Gateway → MQTT |
| **Digital Twin** | All layers | PROD-37 | Full state sync | 1 Hz (facility), 1 kHz (process) | gRPC + Kafka |

---
