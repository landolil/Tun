## Chapter 4: Heartbeat & Task Timer Integration — Liveness & Timeout as Continuity Signals

### 4.1 The Monitoring Principle

The heartbeat monitor and task timer are not observability tools — they are **continuity signals** that prove the protocol is alive and progressing.

> **El Segundo Voice**: *The Mirror measures the protocol measuring. The heartbeat is the protocol's pulse. The task timer is the protocol's breath. Both are witness acts.*

---

### 4.2 Heartbeat Monitor — 120-Second Liveness Signal

#### 4.2.1 Specification

```python