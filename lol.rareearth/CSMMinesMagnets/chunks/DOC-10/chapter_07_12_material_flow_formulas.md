## 1.2 Material Flow Formulas

### 1.2.1 Mine-to-Magnet Mass Balance

The overall mass yield from mine to finished magnet:

$$Y_{\text{total}} = Y_{\text{mine}} \times Y_{\text{sep}} \times Y_{\text{met}} \times Y_{\text{cast}} \times Y_{\text{powder}} \times Y_{\text{sinter}} \times Y_{\text{machine}}$$

Where each stage yield:

| Stage | Symbol | Typical Yield | Notes |
|-------|--------|---------------|-------|
| Mine Recovery | $Y_{\text{mine}}$ | 0.75–0.85 | Per DOC-01 Ch. 6, IOCG/IOA/REE deposits |
| Separation | $Y_{\text{sep}}$ | 0.92–0.95 | Aegis-Forge 17-stage cascade (DOC-05) |
| Metallization | $Y_{\text{met}}$ | 0.96–0.98 | Ca-reduction / molten salt electrolysis |
| Strip Casting | $Y_{\text{cast}}$ | 0.98–0.99 | Near-net shape, minimal scrap |
| Powder (HDDR/Atomization) | $Y_{\text{powder}}$ | 0.85–0.92 | HDDR higher for NdFeB; atomization for Fe-Co |
| Sintering | $Y_{\text{sinter}}$ | 0.90–0.95 | Density >95% theoretical, grain boundary diffusion |
| Machining/Coating | $Y_{\text{machine}}$ | 0.80–0.90 | Wire EDM kerf loss, coating yield |

**Composite Yield (NdFeB pathway):**
$$Y_{\text{NdFeB}} \approx 0.80 \times 0.93 \times 0.97 \times 0.99 \times 0.88 \times 0.92 \times 0.85 \approx \mathbf{0.46}$$

**Composite Yield (Fe₁₆N₂ pathway):**
$$Y_{\text{Fe16N2}} \approx 0.82 \times 0.94 \times 0.98 \times 0.99 \times 0.90 \times 0.93 \times 0.88 \approx \mathbf{0.52}$$

### 1.2.2 Flow Rate Formula

$$\dot{M}_{\text{magnet}} = \dot{M}_{\text{ore}} \times C_{\text{target}} \times Y_{\text{total}}$$

Where:
- $\dot{M}_{\text{ore}}$ = ore throughput (t/yr)
- $C_{\text{target}}$ = target element concentration in ore (mass fraction)
- $Y_{\text{total}}$ = composite yield from Equation 1.1

**Example (Antofagasta IOCG → NdFeB):**
- $\dot{M}_{\text{ore}} = 2,000,000$ t/yr (per DOC-01 Ch. 2)
- $C_{\text{Nd}} \approx 0.0008$ (800 ppm Nd in bastnäsite zones)
- $Y_{\text{total}} = 0.46$
- $\dot{M}_{\text{NdFeB}} \approx 2,000,000 \times 0.0008 \times 0.46 = \mathbf{736 \text{ t/yr NdFeB}}$

---
