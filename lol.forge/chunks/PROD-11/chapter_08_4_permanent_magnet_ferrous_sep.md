## 4. Permanent Magnet Ferrous Separation — Pre-Drum Iron Removal

Before shredding, bulk ferrous material is removed by a permanent magnet belt separator. This reduces drum loading and recovers clean ferrous scrap directly.

### 4.1 Separator Design

| Parameter | Specification |
|-----------|---------------|
| **Magnet Type** | NdFeB (N52 grade), 60 mm × 60 mm × 30 mm blocks |
| **Array Configuration** | Halbach array, 24 blocks, 1.2T surface field |
| **Belt Width** | 1200 mm (matches shredder feed width) |
| **Belt Material** | UHMWPE (CSMFAB Materials Study Part II) — dielectric, wear-resistant |
| **Belt Speed** | 0.5–2.0 m/s (VFD controlled) |
| **Gap to Belt** | 50 mm (adjustable via BFRP spacers) |
| **Ferrous Capture Efficiency** | >95% for pieces >20 mm, >80% for 5-20 mm |

### 4.2 Halbach Array Physics

The Halbach array doubles the field on the working side while canceling on the non-working side:

```
Magnet orientation (top view):
→ ↑ ← ↓ → ↑ ← ↓ → ↑ ← ↓ → ↑ ← ↓ →
  1   2   3   4   5   6   7   8   9  ...

Field on belt side: B = B₀ + B₁ = 2×B₀ ≈ 1.2T
Field on non-working side: B ≈ 0
```

**Magnet Mounting:** Each N52 block (60×60×30mm, 0.52 kg) bonded to BFRP backing plate with structural adhesive (Elium®-compatible). Total array mass: 12.5 kg.

### 4.3 UHMWPE Belt Engineering

- **Carcass:** 3-ply Dyneema® SK75, 4 mm total thickness
- **Top cover:** 1 mm UHMWPE (wear surface)
- **Bottom cover:** 0.5 mm UHMWPE (low friction)
- **Splice:** Finger splice (vulcanized equivalent for UHMWPE)
- **Tension:** 15 kN/m operating, 45 kN/m break strength
- **Tracking:** Self-tracking via crowned BFRP drive drum

### 4.2 Operation Sequence

1. **Feedstock spreads** on UHMWPE belt (vibratory feeder ensures monolayer)
2. **Ferrous pieces** attracted to magnet array, held against belt
3. **Non-ferrous material** falls off belt end into shredder hopper
4. **Ferrous pieces** carried past belt end, released as belt curves away from magnet
5. **Clean ferrous stream** drops into collection bin → direct to ferrous slug molds (bypasses drum)

**Economic Impact:** Removes 40-60% of Category B mass before shredding, reducing shredder wear by ~50% and drum thermal load by ~30%.

---
