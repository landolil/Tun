## Appendix I: Economic Analysis - Power Electronics Subsystem

### I.1 Bill of Materials Cost (Gen I, 226L)

| Subsystem | Qty | Unit Cost | Total | Notes |
|-----------|-----|-----------|-------|-------|
| GaN Devices (GS66516T) | 136 | $45 | $6,120 | 16+14+12+10+8+8+8+8 per zone |
| Gate Drivers (Si8274) | 68 | $12 | $816 | 1 per half-bridge |
| DBC Substrates | 68 | $25 | $1,700 | Al2O3, Cu clad |
| Cold Plates | 8 | $850 | $6,800 | Microchannel, 2-phase |
| Resonant Capacitors | 8 | $120 | $960 | Film, custom values |
| DC Link Capacitors | 8 | $300 | $2,400 | Film banks |
| Optical CTs | 8 | $200 | $1,600 | 500:1 ratio |
| Interrogators | 8 | $3,500 | $28,000 | Tunable laser + PD |
| Silica FBGs | 384 | $15 | $5,760 | Polyimide, 1550nm |
| PMMA POF | 500m | $0.15/m | $75 | 15m x 384 / 2 (splice) |
| FPGA (ZU9EG) | 1 | $1,200 | $1,200 | Single controller |
| BFRP Housings | 8 | $1,500 | $12,000 | Filament wound |
| **Subtotal** | | | **$67,431** | |
| Assembly & Test | | | $15,000 | Labor, calibration |
| **Total** | | | **$82,431** | Per forge unit |

### I.2 Cost Scaling

| Generation | Volume | Power | BOM Cost | Cost/kW |
|------------|--------|-------|----------|---------|
| Gen I | 226L | 500 kW | $82k | $164/kW |
| Gen II | 2,000L | 4.4 MW | $420k | $95/kW |
| Gen III | 20,000L | 44 MW | $2.8M | $64/kW |

**Learning Curve:** 85% (mature GaN, custom magnetics)
**Volume Discount:** GaN $45 → $15 at 10k units/yr

### I.3 Revenue Impact

Power electronics enables the **selective heating** that makes the thermal cascade viable.
Without frequency-agile GaN inverters:
- Single frequency (10 kHz) → Al + Cu + Fe all heat together
- No aluminum window → mixed alloy slugs
- Revenue drops from $115/batch to ~$40/batch (mixed scrap value)
- **Power electronics value: $75/batch = $150,000/yr at 2000 batches/yr**

ROI on power electronics: $82k / $150k/yr = 0.55 years (6.6 months)

---

*End of PROD-10 Appendices*
*Complete document: ~2,500 lines body + appendices*
*CSMFAB000000000108 - Aegis-Forge I Series TCIMS*
