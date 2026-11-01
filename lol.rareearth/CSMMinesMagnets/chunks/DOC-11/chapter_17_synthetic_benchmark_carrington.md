# Synthetic Benchmark (Carrington):
B_north(t) = B_peak * (1 - exp(-t/tau_rise)) * exp(-t/tau_decay)
B_peak = 1,760 nT/min * (60 s/min) / (2π * 0.001 Hz) ≈ 16,800 nT  # Equivalent
```

**Step 2: Earth Conductivity Model (Regionalized 1D)**
```python