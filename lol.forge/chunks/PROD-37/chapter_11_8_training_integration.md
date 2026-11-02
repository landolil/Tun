## 8. Training Integration

### 8.1 Simulator Scenarios from Twin

Per PROD-34 and Section 5.3, the digital twin feeds the training simulator:

| Scenario Type | Source | Frequency | Fidelity |
|---------------|--------|-----------|----------|
| Nominal batch | Twin steady-state | Daily | ROM (118×) |
| Stage transition | Twin cascade model | Per batch | Full twin |
| Anomaly response | Auto-generated (Sec 5.3) | Monthly | Full twin + ML injection |
| Carrington ride-through | PROD-26 test vector | Quarterly | Full twin + GIC injection |
| Cyber-physical | PROD-36 IR playbooks | Quarterly | Full twin + CPAT injection |
| SIF proof test | PROD-28 CT-04 | Annual | Full twin + SIF logic |

Simulator runs on same HPC as twin (partitioned cores) — enables **hardware-in-the-loop** for operator certification.

### 8.2 Personalized Remediation

When operator fails scenario:
```
1. Twin analyzes failure trajectory → root cause (hesitation, wrong action, comms failure)
2. RCT tensor updated: P(pass | competency) ↓
3. Remediation generated:
    a. Micro-scenario: 5-min focused replay of failure moment
    b. Cognitive aid: ISA-101 Level 2 screen walkthrough
    c. Peer pairing: Assign mentor with high RCT in that scenario
4. Re-test in 7 days → RCT update → certify or escalate
```

---
