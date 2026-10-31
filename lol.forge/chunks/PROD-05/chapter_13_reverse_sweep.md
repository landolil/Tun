# Reverse sweep
for f in reversed(frequencies):
    ...
```

### 9.2 Amplitude Modulation

| Stage | Amplitude Profile | Purpose |
|---|---|---|
| Ramp-up (0-2 min) | 0 → 100% | Avoid transducer shock |
| Sweep (2-13 min) | 100% constant | Maximize liberation |
| Ramp-down (13-15 min) | 100% → 0% | Gentle decoupling |

### 9.3 Liberation Index Feedback

**Indirect measurement via FBG vibration damping:**
- Liberated grains decouple from matrix → reduced vibration damping
- FBG spectral bandwidth increases as grains free
- Calibration curve: bandwidth vs. liberation index (from validation batches)

**Direct measurement (periodic):**
- Inline sieve sampler (diverts 100 g every 5th batch)
- Automated image analysis + XRF
- Feeds Kalman filter for next batch sweep optimization

---
