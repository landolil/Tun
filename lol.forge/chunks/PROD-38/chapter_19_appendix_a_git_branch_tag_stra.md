## Appendix A: Git Branch/Tag Strategy

### A.1 Branch Naming Convention

```
main                          # Production baseline (tags only)
release/v3.2                  # Release 3.2 candidate
feature/eco-1042-drum-liner   # ECO-1042 implementation
feature/eco-1038-vessel-glaze # ECO-1038 implementation
hotfix/eco-1045-critical-sif  # Emergency ECO-1045
develop                       # Nightly integration
```

### A.2 Tag Naming Convention

| Tag Pattern | Example | Description |
|-------------|---------|-------------|
| `prod-v<M>.<m>.<p>` | `prod-v3.2.1` | Production baseline (all PROD docs) |
| `follow-v<M>.<m>.<p>` | `follow-v2.1.0` | Follow-up baseline (all FOLLOW docs) |
| `fat-v<M>.<m>` | `fat-v1.0` | FAT baseline |
| `sat-v<M>.<m>` | `sat-v1.0` | SAT baseline |
| `eco-<NNNN>` | `eco-1042` | ECO implementation commit |
| `fpga-v<M>.<m>.<p>` | `fpga-v1.3.7` | L0 FPGA bitstream |
| `rtu-v<M>.<m>.<p>` | `rtu-v2.1.4` | L1 RTU firmware |
| `plc-v<M>.<m>.<p>` | `plc-v3.0.1` | L2 PLC program |
| `scada-v<M>.<m>.<p>` | `scada-v1.2.0` | L3 SCADA software |
| `twin-v<M>.<m>.<p>` | `twin-v2.0.0` | Digital twin software |
| `rom-v<M>.<m>.<p>` | `rom-v2.1.3` | ROM export |
| `ml-v<M>.<m>.<p>` | `ml-v3.2.1` | ML models |
| `sec-v<M>.<m>.<p>` | `sec-v1.4.0` | Security baseline |
| `avl-v<M>.<m>.<p>` | `avl-v3.2.1` | AVL baseline |
| `curr-v<M>.<m>.<p>` | `curr-v2.1.0` | Curriculum version |
| `sim-v<M>.<m>.<p>` | `sim-v1.3.0` | Simulator version |

### A.3 Tag Signature Verification

```bash