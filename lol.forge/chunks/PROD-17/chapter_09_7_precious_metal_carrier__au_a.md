## 7. Precious Metal Carrier — Au/Ag/Pd Partitioning

### 7.1 Partitioning Behavior in Stage 4

Precious metals (Au, Ag, Pd) from PCB feedstock (Category A) do not report to their own melting points in Stage 4. Instead, they **partition into the In/Sn liquid phase** due to:
1. **Solubility**: Au (0.1% in Sn at 250°C), Ag (high in Sn), Pd (moderate in Sn)
2. **Wetting**: Au/Sn, Ag/Sn, Pd/Sn form intermetallics readily
3. **Density**: Au (19.3 g/cm³), Ag (10.5 g/cm³), Pd (12.0 g/cm³) — but as trace solutes, follow host melt

**Partition Coefficients (K = C_metal / C_slag) at Stage 4 Conditions:**

| Precious Metal | K (In/Sn melt vs slag) | Recovery to In/Sn Stream | Downstream Recovery |
|---|---|---|---|
| **Gold (Au)** | 10³ - 10⁴ | >99.5% | Stage 6 electrorefining (PROD-19) |
| **Silver (Ag)** | 10² - 10³ | >99% | Stage 6 electrorefining (PROD-19) |
| **Palladium (Pd)** | 10² - 10³ | >95% | Stage 6 electrorefining (PROD-19) |
| **Platinum (Pt)** | 10¹ - 10² | 80-90% | Stage 6/7 (PROD-19/20) |

**Mechanism:** During Stage 4 Step 1 (160°C), In is the only liquid. Au/Ag/Pd particles (from PCB traces, typically 1-100 μm) are wetted by molten In and incorporated into the In-rich droplet. As temperature rises and Sn melts (Steps 2-3), additional PMs partition into the Sn-rich phase.

### 7.2 Precious Metal Content per Ton of PCBs

| Metal | Content (g/ton PCB) | Value at 2026 Prices | Recovery Target |
|---|---|---|---|
| **Gold (Au)** | 300-400 g | $3,200/tr oz = **$31-41k/ton** | >99.5% |
| **Silver (Ag)** | 3,000-5,000 g | $32/tr oz = **$3.1-5.1k/ton** | >99% |
| **Palladium (Pd)** | 100-200 g | $1,000/tr oz = **$3.2-6.4k/ton** | >95% |
| **Platinum (Pt)** | 10-50 g | $950/tr oz = **$0.3-1.5k/ton** | >80% |

**Total PM Value per Ton PCB:** **$38-54k** — primary revenue driver for Aegis-Forge I economics.

### 7.3 Downstream Electrorefining (Stage 6, PROD-19)

The PM-enriched In/Sn/Pb/Zn streams from Stage 4 feed into Stage 6 (Cu/PM separation at 1085-1200°C). There, the PMs report to the copper anode slime during Cu electrorefining:

```
Stage 4 Output (In/Sn/Pb/Zn slugs with PMs)
         ↓
Stage 5 (Al separation) — PMs remain in residue
         ↓
Stage 6 (Cu melt at 1085°C) — PMs dissolve in Cu melt
         ↓
Cu Electrorefining (FOLLOW-19):
  Anode: Cu + Au + Ag + Pd + Pt (99% Cu)
  Cathode: 99.99% Cu
  Anode Slime: Au, Ag, Pd, Pt, Se, Te (10-20% of anode mass)
         ↓
  Hydrometallurgical separation (FOLLOW-19):
    - Au: Chlorination → reduction → 99.99% Au sponge
    - Ag: Nitric acid leach → electrolysis → 99.9% Ag
    - Pd/Pt: Aqua regia → selective precipitation → 99.95% Pd/Pt
```

---
