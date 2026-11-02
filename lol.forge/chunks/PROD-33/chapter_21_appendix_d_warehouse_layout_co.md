## Appendix D: Warehouse Layout (Conceptual)

```
┌─────────────────────────────────────────────────────────────────────┐
│                     FORGE SITE WAREHOUSE (3000 m²)                  │
├──────────┬──────────┬──────────┬──────────┬──────────┬────────────┤
│  Zone A  │  Zone B  │  Zone C  │  Zone D  │  Zone E  │   Zone F   │
│ Critical │Composites│Ceramics/ │Consum-   │ Spares   │  Phoenix   │
│ Powders  │          │ Metals   │ ables    │(Critical)│  Crates    │
│ 200 m²   │ 500 m²   │ 150 m²   │ 800 m²   │ 300 m²   │  1000 m²   │
│ <10% RH  │ 5-25°C   │ 25°C     │ Ambient  │ 25°C     │  Ambient   │
│ N₂ inert │UV protect│Desiccant │ FIFO     │Vibration │ RFID portal│
│          │          │          │ Kanban   │ isolated │ Crate wash │
└──────────┴──────────┴──────────┴──────────┴──────────┴────────────┘
        Rail Siding → Receiving Dock (4 bays) → Sort → Zone Assignment
```

---
