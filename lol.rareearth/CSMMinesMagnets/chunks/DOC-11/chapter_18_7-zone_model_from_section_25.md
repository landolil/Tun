# 7-zone model from Section 2.5
chile_conductivity_zones = {
    'atacama_core': {'lat': (19, 25), 'layers': [
        {'thickness': 100, 'rho': 50000},   # 0-100m
        {'thickness': 900, 'rho': 10000},   # 100-1000m
        {'thickness': 9000, 'rho': 1000},   # 1-10km
        {'thickness': 90000, 'rho': 100},   # 10-100km
        {'thickness': 'inf', 'rho': 10},    # >100km
    ]},
    'atacama_transition': {'lat': (18, 19), (25, 28), 'layers': [...]},
    'coastal_fog': {'lat': (18, 28), 'coastal': True, 'layers': [...]},
    'central_valley': {'lat': (28, 38), 'layers': [...]},
    'andes_cordillera': {'lat': (18, 40), 'elevation': '>2000', 'layers': [...]},
    'southern_chile': {'lat': (38, 53), 'layers': [...]},
    'austral': {'lat': (53, 56), 'layers': [...]},
}
```

**Step 3: Geoelectric Field Calculation (Frequency Domain)**
```python
def surface_impedance(layers, freq):
    # Recursive 1D impedance calculation
    Z = 1j * 2*np.pi*freq * mu0 / gamma(layers[-1]['rho'])  # Half-space
    for layer in reversed(layers[:-1]):
        gamma = np.sqrt(1j * 2*np.pi*freq * mu0 / layer['rho'])
        Z0 = 1j * 2*np.pi*freq * mu0 / gamma
        Z = Z0 * (Z + Z0 * np.tanh(gamma * layer['thickness'])) / (Z0 + Z * np.tanh(gamma * layer['thickness']))
    return Z
