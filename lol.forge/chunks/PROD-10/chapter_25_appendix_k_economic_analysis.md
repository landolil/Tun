## Appendix K: Economic Analysis

### K.1 Capital Cost Breakdown (226L Unit)

| Subsystem | Qty | Unit Cost | Total | Notes |
|-----------|-----|-----------|-------|-------|
| GS66516T GaN (2/zone) | 16 | $45 | $720 | Wolfspeed volume pricing |
| LMG1210 Driver | 8 | $12 | $96 | |
| Microchannel Cold Plate | 8 | $850 | $6,800 | CNC Cu + Ni-P |
| Nanocrystalline Inductor | 8 | $1,200 | $9,600 | Custom wound |
| Film Capacitors (switched bank) | 96 | $8 | $768 | C0G/NP0 |
| Varactor Diodes | 32 | $3 | $96 | BBY65-02V |
| BFRP Housings | 8 | $2,500 | $20,000 | Filament wound |
| Cu Tube (25mm, 8m/zone) | 64m | $45/m | $2,880 | |
| Al₂O₃ Sleeve | 64m | $120/m | $7,680 | |
| PEX-a Tubing | 80m | $3.75/m | $300 | |
| FBG Sensors (384) | 384 | $15 | $5,760 | Custom PMMA |
| PMMA POF (60m/zone) | 480m | $0.40/m | $192 | In-house draw |
| PMMA Splitters (1×6) | 8 | $85 | $680 | Fused biconical |
| FBG Interrogator | 1 | $12,000 | $12,000 | VCSEL + balanced PD |
| FPGA Controller | 1 | $3,500 | $3,500 | Artix-7 BFRP board |
| Isolation Transformers | 3 | $15,000 | $45,000 | 200 kVA, BFRP case |
| LCL Filter Components | 8 sets | $1,800 | $14,400 | |
| **Subtotal Power Electronics** | | | **$130,472** | |
| Installation & Commissioning | | | $35,000 | |
| **Total PROD-10 CAPEX** | | | **$165,472** | |

### K.2 Operating Cost (Per Batch, 226L)

| Cost Item | Per Batch | Annual (500 batches) |
|-----------|-----------|---------------------|
| Electricity (500 kWh @ $0.07/kWh) | $35 | $17,500 |
| Cooling water (makeup, treatment) | $2 | $1,000 |
| PEX-a replacement (annualized) | $0.60 | $300 |
| FBG fiber replacement (annualized) | $3.20 | $1,600 |
| GaN module replacement (0.5%/yr) | $0.72 | $360 |
| **Total OPEX/Batch** | **$41.52** | **$20,760/yr** |

### K.3 Revenue Contribution

The power electronics enables the thermal cascade that produces:
- **Al slugs:** ~150 kg/batch @ $2.50/kg = $375
- **Cu slugs:** ~80 kg/batch @ $9.00/kg = $720
- **Fe/Steel slugs:** ~400 kg/batch @ $0.50/kg = $200
- **Zn/Pb/Sn slugs:** ~45 kg/batch @ $3.00/kg = $135
- **Precious metals (Au/Ag/Pd):** ~200 g/batch @ $65/g = $13,000
- **RE oxides:** ~25 kg/batch @ $45/kg = $1,125
- **Carbon char:** ~60 kg/batch @ $0.80/kg = $48
- **Mineral concentrate:** ~800 kg/batch @ $0.15/kg = $120

**Gross revenue/batch: ~$15,723**
**Net margin (after OPEX, labor, maintenance): ~$12,000/batch**
**ROI on PROD-10 CAPEX: ~14 batches (at 500 batches/yr = 10 days)**

---

*End of PROD-10: Induction Power Electronics*
*Total Lines: ~950+ (including all appendices)*
*Next: PROD-11 Feed Preparation & Shredding*