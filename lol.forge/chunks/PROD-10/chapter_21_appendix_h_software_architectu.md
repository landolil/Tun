## Appendix H: Software Architecture - FPGA Firmware

### H.1 FPGA Resource Utilization (Xilinx Zynq UltraScale+ ZU9EG)

| Resource | Used | Available | Utilization |
|----------|------|-----------|-------------|
| LUTs | 185,000 | 274,080 | 67% |
| FFs | 320,000 | 548,160 | 58% |
| BRAM | 1,200 | 1,590 | 75% |
| DSP | 1,800 | 2,520 | 71% |
| GTY Transceivers | 16 | 32 | 50% |

**Major Blocks:**
- 8× PID Controllers (thermal): 25k LUTs
- 8× Resonance Trackers: 35k LUTs
- 8× Phase Detectors (CORDIC): 40k LUTs
- 384× FBG Demux (WDM+TDM): 45k LUTs
- Autoencoder Inference: 20k LUTs + 500 DSP
- Safety Voting Logic: 10k LUTs
- Communication (Ethernet-over-POF): 10k LUTs

### H.2 Real-Time Operating System (FreeRTOS on Cortex-A53)

**Task Priorities (Rate Monotonic):**
| Priority | Task | Period | WCET | CPU% |
|----------|------|--------|------|------|
| 31 | Resonance Tracking (8x) | 100 us | 20 us | 16% |
| 30 | Phase Detection (8x) | 100 us | 15 us | 12% |
| 25 | Thermal PID (8x) | 10 ms | 50 us | 4% |
| 20 | FBG Demux | 1 ms | 100 us | 10% |
| 15 | Autoencoder Inference | 10 ms | 500 us | 5% |
| 10 | Safety Voting | 1 ms | 20 us | 2% |
| 5 | Comm Stack | 10 ms | 100 us | 1% |
| 1 | Housekeeping | 1 s | 1 ms | 0.1% |

**Total CPU Load:** ~50% (headroom for margin)

### H.3 Communication Protocol - Ethernet over PMMA POF

**Physical Layer:**
- 1 Gbps, 850 nm VCSEL, PMMA POF (100m max)
- Custom MAC (FPGA) - no standard Ethernet PHY (copper)

**Protocol Stack:**
```
[Application: JSON-RPC over WebSocket]
    [TLS 1.3 - PSK (pre-shared key, optical provisioning)]
        [WebSocket Framing]
            [Custom Lightweight TCP - uIP]
                [IP (static, no DHCP)]
                    [Ethernet II Frame]
                        [PMMA POF Physical]
```

**Message Types:**
- Telemetry: Zone power, freq, phase, temp (1 kHz, multicast)
- Commands: Setpoint, ramp, dwell (reliable, acknowledged)
- Alarms: Fault, warning, info (reliable, persistent)
- Firmware: Update (TFTP over POF, signed)

---
