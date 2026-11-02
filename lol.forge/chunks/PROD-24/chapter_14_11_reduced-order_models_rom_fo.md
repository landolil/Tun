## 11. Reduced-Order Models (ROM) for Digital Twin (PROD-37)

### 11.1 ROM Requirements

| Requirement | Target | Rationale |
|-------------|--------|-----------|
| **Speedup** | 100× vs. full FEA | 10 Hz digital twin sync (PROD-37) |
| **Accuracy** | <2% error on T_inner, σ_vm | Control-relevant fidelity |
| **State Dimension** | <50 states | Embeddable in PLC/RTU |
| **Online Adaptation** | RLS parameter update | Drift compensation |

### 11.2 POD-Galerkin ROM (Thermal)

**Training Data:** 1000 full-order snapshots (thermal FEA, 1 ms spacing, 1 s simulation)
**POD Basis:** 12 modes capture 99.9% energy
**Galerkin Projection:** 12 ODEs for mode coefficients
$$\frac{d\mathbf{a}}{dt} = \mathbf{A}\mathbf{a} + \mathbf{B}u + \mathbf{N}(\mathbf{a})$$
Where $\mathbf{a}$ = 12 modal coefficients, $u$ = power input vector (8 zones)

**ROM Performance:**
| Metric | Full FEA | ROM | Error |
|--------|----------|-----|-------|
| Solve time (1 s sim) | 45 s | 0.38 s | 118× speedup |
| $T_{max}$ error | — | 1.8°C | 0.08% |
| $\sigma_{vm}$ error | — | 4.2 MPa | 1.1% |
| Memory | 2.1 GB | 45 MB | 47× reduction |

### 11.3 ROM Export Format (for PROD-37)

```json
{
  rom_type: POD-Galerkin_Thermal,
  version: 1.0,
  mesh: { nodes: 847, elements: 4120, type: hex },
  basis: {
    n_modes: 12,
    energy_captured: 0.999,
    phi_matrix: [[...]],  // 847 × 12
    singular_values: [...]
  },
  operators: {
    A: [[...]],  // 12 × 12 linear
    B: [[...]],  // 12 × 8 input
    N_coeffs: {...}  // quadratic nonlinearity tensors
  },
  material_props: {
    k(T): piecewise_cubic,
    rho_cp(T): piecewise_cubic,
    eps: 0.85
  },
  validation: {
    test_cases: 50,
    max_error: 0.02,
    rms_error: 0.005
  }
}
```

---
