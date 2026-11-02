## Appendix A: Quick-Reference Card

```
AEGIS-FORGE I — ELECTRICAL SAFETY & GIC IMMUNITY QUICK REFERENCE
===================================================================

DIELECTRIC ARCHITECTURE:
  Signal: PMMA POF (980/1000μm) — 480 sensors, 96 actuators
  Coolant: PEX-a (DI water 18 MΩ·cm) — 16 L/min
  Enclosures: BFRP/Elium® — all housings, trays, structure
  Penetrations: Al₂O₃/ZrO₂ ceramic bushings — zero metal

Carrington GIC (5000 nT/s):
  Floating XFMR (Δ-Y) + NGR 5A = no GIC path
  Ride-through: 5ms cap → 10ms contactor → LiFePO₄ 100 Wh/module
  All-dielectric control = zero antenna

HEMP E1/E2/E3:
  E1: GDT 3kA @ grid, BFRP Faraday >60dB @ 1GHz
  E2: GDT+MOV 20kA @ grid, PEX-a immune
  E3: Same as GIC — floating architecture

LIGHTNING (LPL III):
  BFRP air terminals, carbon down conductors
  UFER + ring ground <5Ω
  SPD zones: LPZ0→LPZ3 (POF immune in LPZ3)

ARC FLASH (NFPA 70E):
  Max incident energy: 4.2 cal/cm² @ grid, 0.3 @ process
  PPE Cat 0 inside forge boundary
  No exposed conductors, all bolted + ZrO₂ sleeves
  LOTO: Grid contactor + DC link verify + pressure/temp verify

SIL-3 SIS (24 SIFs):
  2oo3 voting on dedicated FPGA + POF (VLAN 10)
  PFD_avg = 2.3×10⁻³ (system <10⁻²)
  Proof test: CT-04 quarterly partial, annual full

GROUNDING:
  Single point at substation ONLY
  Forge: Equipotential bonding via 1 MΩ bleed resistors
  No conductive path process-to-earth

POWER QUALITY:
  480V ±10%, 60Hz ±0.5%, THD <5%, sag ride-through 10ms
  UPS: 8 kVA / 21 kWh for 2hr control autonomy

INSULATION (IEC 60664):
  PD3/CatIII: 480V→5.5mm cl/8mm cr, 800V→11mm cl/16mm cr
  PD test: XFMR <5pC, DC link <10pC, GaN <5pC

CYBER (IEC 62443 SL-3):
  Absolute air gap + data diode (OT→IT only)
  Secure boot: eFuse → RSA2048 → ECDSA256 → SHA256+HMAC → TPM
  ML anomaly: FOLLOW-29 autoencoder on digital twin

KEY EQUATIONS:
  GIC: V_ind = -dΦ/dt = -A·dB/dt (A=loop area)
  Ride-through: E_cap = ½CV² = 100 Wh/module
  Skin depth: δ = √(2ρ/ωμ)
  Arc flash: IE = k·E·t/D² (NFPA 70E)
  SIL: PFD = λ·TI/2 (per channel), 2oo3 = 3λ²TI²/2
```

---
