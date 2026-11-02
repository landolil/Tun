## Appendix E: Detailed TSN Security Configuration (Expanded)

### E.1 TSN Switch Hardware Security (BFRP-Housed)

| Component | Specification | Security Feature |
|-----------|---------------|------------------|
| **Switch ASIC** | NXP LS1028A / Intel Cyclone V | Secure boot, trusted execution environment |
| **Enclosure** | BFRP/Elium® (ρ>10¹² Ω·m) | Dielectric, no eddy currents at 2200°C |
| **Ports** | 10× SFP+ (1 Gbps), 2× QSFP28 (10 Gbps uplink) | Optical only, no copper |
| **Power** | Dual 48 VDC (isolated), LiFePO₄ backup 30 min | No AC mains in hot zone |
| **Cooling** | Conduction to BFRP cold plate | No fans, no moving parts |
| **Management** | Out-of-band via TSN VLAN 50 (read-only) | No IP stack on management plane |

### E.2 Gate Control List (GCL) Frozen at FAT

```
GCL Version: gcl-forge-v1.3.7 (Git tag: forge-fat-v1.0)
Cycle Time: 1,000,000 ns (1 ms)
Time Base: PTP (IEEE 802.1AS), GM ID: 00:1B:21:FF:FE:00:12:34

Gate Control Entries (per port, identical on all 4 TSN switches):

VLAN 10 (SIS) - Priority 7:
  Gate 0:  0 - 100,000 ns    OPEN  (SIF trip, SOE, 2oo3 votes)
  Gate 1:  100,000 - 1,000,000 ns  CLOSED

VLAN 20 (RTU) - Priority 6:
  Gate 0:  100,000 - 500,000 ns  OPEN  (PID, FBG, MFC, Resonance)
  Gate 1:  500,000 - 1,000,000 ns  CLOSED

VLAN 30 (PLC) - Priority 5:
  Gate 0:  500,000 - 800,000 ns  OPEN  (Interlocks, Recipes, Carousel)
  Gate 1:  800,000 - 1,000,000 ns  CLOSED

VLAN 40 (SCADA) - Priority 4:
  Gate 0:  800,000 - 900,000 ns  OPEN  (Historian, Alarms, Batch, Twin)
  Gate 1:  900,000 - 1,000,000 ns  CLOSED

VLAN 50 (MGMT) - Priority 3:
  Gate 0:  900,000 - 1,000,000 ns  OPEN  (PTP, Firmware, Config)
  Guard Band: 900,000 - 1,000,000 ns  (100 μs)

FRER Configuration:
  Stream 1: VLAN 10, SIF trip, SeqGen: TSN Switch A1, SeqRec: TSN Switch B1
  Stream 2: VLAN 20, FBG data, SeqGen: TSN Switch A1, SeqRec: TSN Switch B1
  Recovery: Individual, Latency: 0 ms (duplicate on both rings)
```

### E.3 TSN Security Monitoring (Continuous)

| Monitored Parameter | Source | Threshold | Action |
|---------------------|--------|-----------|--------|
| **GCL Deviation** | Switch register read (VLAN 50) | Any bit mismatch vs. golden | SEV-1, immediate freeze |
| **Frame Loss (FRER)** | SeqRec recovery count | >0 recovered frames/min | SEV-2, link health check |
| **Latency (SIS)** | SOE timestamp delta | >50 ms (max) | SEV-1, SIF lockdown |
| **Latency (RTU)** | FBG timestamp vs. PTP | >1 ms jitter | SEV-3, PID degrade mode |
| **VLAN Cross-Talk** | Mirror port capture | Any frame on wrong VLAN | SEV-1, port shutdown |
| **PTP Offset** | GM → Boundary clock | >1 μs sustained 1 min | SEV-2, GM failover |

---
