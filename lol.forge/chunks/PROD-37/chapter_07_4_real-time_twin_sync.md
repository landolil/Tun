## 4. Real-Time Twin Sync

### 4.1 OPC-UA over Data Diode

The OT→IT data path uses OPC-UA PubSub over TSN on the OT side, converted to Kafka on the IT side:

**OT Side (SCADA → Data Diode):**
- OPC-UA PubSub dataset: `ForgeStateDataSet` (10 Hz)
- Fields: timestamp, zone_states[8], drum_profile[384], SIF_states[24], gas[4], merkle_root
- Transport: TSN VLAN 50 (read-only from OT), 1 Gbps, priority 7 (highest)
- Security: No encryption (air-gap provides), but signed with L3 SCADA HSM key

**Data Diode:**
- Hardware: Fox DataDiode 1G, unidirectional fiber, protocol break
- Application layer: OPC-UA binary → Kafka Avro schema translation
- Integrity: SHA-256 merkle tree per frame, root in frame header

**IT Side (Data Diode → Kafka → Data Lake):**
- Kafka topic: `forge.twin.state.v1` (Avro schema registered in Schema Registry)
- Consumers: Digital twin HPC, Fleet analytics, Training simulator, Compliance archive
- Retention: Hot (SSD) 30 days, Warm (HDD) 1 yr, Cold (tape/S3) 7 yrs

### 4.2 Bandwidth & Latency Budget

| Stage | Data Volume | Latency | Budget |
|-------|-------------|---------|--------|
| SCADA frame assembly | 12 KB | 2 ms | <5 ms |
| Data diode transit | 12 KB | 50 μs | <100 μs |
| OPC-UA → Kafka translation | 12 KB | 1 ms | <2 ms |
| Kafka commit (acks=all) | 12 KB | 5 ms | <10 ms |
| HPC ingest + twin step | 12 KB | 50 ms | <100 ms |
| **Total OT→Twin** | **12 KB** | **~58 ms** | **<120 ms** |

The 10 Hz cycle provides 100 ms budget; 58 ms leaves 42 ms margin for GC pauses, network jitter, and twin compute.

### 4.3 Integrity Verification

Every frame carries a **merkle tree root** over the 384 FBG channels + 8 zone states + 24 SIF states:

```
Frame Merkle Tree:
Leaf 0-383:  FBG_001 || FBG_002 || ... || FBG_384 (each: λ[nm] + power[dBm] + status)
Leaf 384-391: Zone_01 || ... || Zone_08 (each: P[kW] + V[V] + I[A] + f[Hz] + status)
Leaf 392-415: SIF_01 || ... || SIF_24 (each: state + timestamp + vote)
Root: SHA-256(Leaf_0 || Leaf_1 || ... || Leaf_415)

Verification (IT side):
  1. Reconstruct leaves from Kafka message
  2. Compute root = merkle(leaves)
  3. Compare root == frame.header.merkle_root
  4. If mismatch: log integrity violation, increment CPAT V-tensor (PROD-36), alert
```

This detects both data diode bit errors AND malicious frame injection at the IT ingress point.

---
