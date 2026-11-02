## 6. Control System Architecture

### 6.1 Stage 0 Control Hierarchy

The AMLS control system operates as a **three-level hierarchy**:

```
LEVEL 1: SUPERVISORY (Batch Level)
├── Batch recipe selection (feedstock category A-D)
├── Target LI setting (75% default, category-adjusted)
├── Total duration limit (30 min max)
└── Interlock: Drum ready, water level, N₂ pressure

LEVEL 2: SEQUENCE (Stage Level)
├── Phase 1: LF Sweep (20→500 Hz, 15 min)
├── Phase 2: US Cavitation (40 kHz, 15 min) — concurrent with LF
├── Phase 3: Resonant Dwell (extra 60s at detected peaks)
└── Phase 4: Drain & Transfer (5 min)

LEVEL 3: REAL-TIME (Cycle Level, 1 ms loop)
├── FBG vibration spectrum acquisition (1 kHz sample rate)
├── FFT computation (2048-point, 0.5 Hz resolution)
├── Peak detection & tracking (adaptive threshold)
├── Frequency/power setpoint update (per transducer)
└── Phase-lock maintenance (all 16 channels synchronized)
```

### 6.2 Adaptive Frequency Sweep Algorithm

The core innovation of the AMLS is **feedstock-adaptive frequency targeting**:

```python
def adaptive_sweep(fbg_spectrum, current_freq, dwell_timer):
    
    Input: FBG vibration spectrum (magnitude vs frequency)
    Output: Next frequency setpoint, dwell extension
    
    # Detect resonant peaks >3 dB above local baseline
    peaks = find_peaks(fbg_spectrum, prominence=3, distance=5)  # Hz
    
    # Classify peaks by mineral signature (pre-calibrated library)
    mineral_matches = {}
    for peak_freq in peaks:
        for mineral, sig in MINERAL_SIGNATURES.items():
            if abs(peak_freq - sig.freq) < sig.bandwidth:
                mineral_matches[mineral] = peak_freq
    
    # Priority dwell extension for high-value minerals
    dwell_extension = 0
    if 'zircon' in mineral_matches:
        dwell_extension += 60  # Extra 60s at zircon resonance
    if 'bastnasite' in mineral_matches:
        dwell_extension += 45
    if 'ilmenite' in mineral_matches:
        dwell_extension += 30
    
    # Continue sweep unless at final frequency
    if current_freq >= 500:
        return SWEEP_COMPLETE, dwell_extension
    else:
        next_freq = current_freq * 1.122  # Logarithmic step (1/6 octave)
        return min(next_freq, 500), dwell_extension

MINERAL_SIGNATURES = {
    'zircon': {'freq': 185, 'bandwidth': 15, 'priority': 'HIGH'},
    'bastnasite': {'freq': 95, 'bandwidth': 20, 'priority': 'HIGH'},
    'ilmenite': {'freq': 55, 'bandwidth': 10, 'priority': 'MED'},
    'quartz': {'freq': 280, 'bandwidth': 25, 'priority': 'LOW'},
    'feldspar': {'freq': 145, 'bandwidth': 15, 'priority': 'LOW'},
}
```

### 6.3 Phase-Locked Multi-Channel Synchronization

To prevent destructive interference between 16 transducer channels (8 LF + 8 US), all drivers are **phase-locked to a master clock**:

```
MASTER CLOCK (KNbO₃-BaTiO₃ ASIC)
         │
         ├── LF CHANNEL 0 (0° reference)
         ├── LF CHANNEL 1 (+45°)
         ├── LF CHANNEL 2 (+90°)
         ├── LF CHANNEL 3 (+135°)
         ├── LF CHANNEL 4 (+180°)
         ├── LF CHANNEL 5 (+225°)
         ├── LF CHANNEL 6 (+270°)
         ├── LF CHANNEL 7 (+315°)
         ├── US CHANNEL 0 (40 kHz, 0°)
         ├── US CHANNEL 1 (40 kHz, +45°)
         ├── US CHANNEL 2 (40 kHz, +90°)
         ├── US CHANNEL 3 (40 kHz, +135°)
         ├── US CHANNEL 4 (40 kHz, +180°)
         ├── US CHANNEL 5 (40 kHz, +225°)
         ├── US CHANNEL 6 (40 kHz, +270°)
         └── US CHANNEL 7 (40 kHz, +315°)
```

**Phase error budget:** <5° at 40 kHz, <0.5° at 100 Hz (achieved via optical fiber distribution of master clock).

### 6.4 Stage 1 IR Drying Control

**Quadrant-independent PID control:**

| Quadrant | Setpoint (°C) | Kp | Ki | Kd | Control Output |
|----------|---------------|-----|-----|-----|----------------|
| Top | 150 | 0.8 | 0.02 | 0.1 | SCR firing angle |
| Right | 140 | 0.7 | 0.015 | 0.08 | SCR firing angle |
| Bottom | 120 | 0.6 | 0.01 | 0.05 | SCR firing angle |
| Left | 140 | 0.7 | 0.015 | 0.08 | SCR firing angle |

**Feedforward compensation:** NIR moisture measurement → predicted power demand → pre-emptive SCR adjustment.

**Safety interlocks:**
- Chamber pressure >2 bar → emergency N₂ vent
- Emitter surface temp >950°C → power cut
- FBG humidity sensor failure → fallback to mass loss rate
- Water level <5L in AMLS → pause LF sweep

---
