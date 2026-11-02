## Appendix J: Red Team Exercise Scenarios (Annual)

| Scenario ID | Threat Actor | Initial Access | Objective | Detection Target |
|-------------|--------------|----------------|-----------|------------------|
| **RT-01** | Nation-State APT | Supply chain (compromised TSN switch firmware) | Modify GCL to allow VLAN 40→10 cross-talk | IDS-001 <1 min |
| **RT-02** | Insider (MT) | Legitimate JIT access (L1 RTU firmware) | Inject PID gain modification → drum thermal runaway | FBG Λ > 10 <5 min |
| **RT-03** | Cybercrime | Phishing IT → pivot to data diode (theoretical) | Exfiltrate historian data | Diode reverse traffic alarm |
| **RT-04** | Hacktivist | Physical access (contractor badge clone) | USB drop on L3 SCADA → ransomware | USB port monitor + UEBA |
| **RT-05** | Supply Chain | Counterfeit GaN driver IC (LMG1210) | Marginal desat threshold → random trips | L0 FPGA desat statistics |
| **RT-06** | Carrington + APT | GIC storm cover | Exploit PTP holdover confusion → SIF spoof | PTP auth fail + SIF lockdown |

---

*End of PROD-36 Cyber-Physical Security (Fully Expanded)*
*Document: 900+ lines body + 200-line combined heuristic intro*
*Cross-referenced: PROD-10, 23, 26, 27, 28, 29, 30, 33, 34, 35, 37, 38, 39 + FOLLOW-11, 29 + IEC 62443, NERC CIP, NIST SP 800-82*