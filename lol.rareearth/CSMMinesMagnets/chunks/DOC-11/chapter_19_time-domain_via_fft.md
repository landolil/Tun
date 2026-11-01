# Time-domain via FFT
def geoelectric_field(B_time, Z_freq, dt):
    B_freq = np.fft.rfft(B_time)
    E_freq = Z_freq * B_freq * (2*np.pi*freq)  # E = Z * dB/dt
    E_time = np.fft.irfft(E_freq)
    return E_time
```

**Step 4: Power System Nodal Admittance (SEN Model)**
```python