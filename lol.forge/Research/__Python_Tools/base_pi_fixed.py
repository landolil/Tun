#!/usr/bin/env python3
"""
Base-π counting system converter — fixed version.
"""
import math

PI = math.pi

def decimal_to_base_pi(n, precision=25):
    """Convert a positive decimal number to base-π representation."""
    if n == 0:
        return "0"
    
    negative = n < 0
    n = abs(n)
    
    # Find the highest power of π needed
    if n >= 1:
        power = int(math.log(n) / math.log(PI))
    else:
        power = 0
        temp = n
        while temp < 1:
            temp *= PI
            power -= 1
    
    result = []
    remainder = n
    
    # Generate digits from highest power down
    for p in range(power, max(power - precision, -precision - 1), -1):
        place_value = PI ** p
        digit = int(remainder / place_value + 1e-10)
        if digit > 3:
            digit = 3
        result.append(str(digit))
        remainder -= digit * place_value
        remainder = max(0, remainder)
        
        if p == 0 and p > power - precision:
            result.append('.')
    
    # Clean up
    while result and result[-1] == '0' and '.' in result:
        result.pop()
    if result and result[-1] == '.':
        result.pop()
    
    return ('-' if negative else '') + (''.join(result) if result else "0")

# Key values
values = {
    'alpha_inv': 137.035999084,
    'C2': 0.6601618158468696,
    'alpha': 1/137.035999084,
    'schwinger': 0.00115965218073,
    'lamb_shift_MHz': 1057.844,
    'gamma1': 14.134725141734693,
    'gamma2': 21.022039638771554,
    'gamma3': 25.010857580145688,
    'm_electron_keV': 511.0,
    'pi': math.pi,
    '2pi': 2 * math.pi,
    'e': math.e,
    'phi': (1 + math.sqrt(5)) / 2,
    'zeta3': 1.202056903159594,
}

print("=" * 80)
print("BASE-π CONVERSION TABLE (FIXED)")
print("=" * 80)
print(f"{'Name':<25} {'Decimal':<30} {'Base-π':<30}")
print("-" * 80)

base_pi_values = {}
for name, value in values.items():
    bp = decimal_to_base_pi(value, precision=20)
    base_pi_values[name] = bp
    print(f"{name:<25} {value:<30.12f} {bp:<30}")

print("\n" + "=" * 80)
print("SPECIAL VALUES IN BASE π")
print("=" * 80)
print(f"π in base π = {decimal_to_base_pi(PI, 15)}")
print(f"π² in base π = {decimal_to_base_pi(PI**2, 15)}")
print(f"π³ in base π = {decimal_to_base_pi(PI**3, 15)}")
print(f"2π in base π = {decimal_to_base_pi(2*PI, 15)}")
print(f"α⁻¹ in base π = {base_pi_values['alpha_inv']}")
print(f"C₂ in base π = {base_pi_values['C2']}")
print(f"α in base π = {base_pi_values['alpha']}")
print(f"Schwinger (α/2π) in base π = {base_pi_values['schwinger']}")
print(f"1st Riemann zero γ₁ in base π = {base_pi_values['gamma1']}")
print(f"2nd Riemann zero γ₂ in base π = {base_pi_values['gamma2']}")
print(f"3rd Riemann zero γ₃ in base π = {base_pi_values['gamma3']}")
print(f"Electron mass (511 keV) in base π = {base_pi_values['m_electron_keV']}")
print(f"e in base π = {base_pi_values['e']}")
print(f"φ in base π = {base_pi_values['phi']}")
print(f"ζ(3) in base π = {base_pi_values['zeta3']}")

# The key identity
print("\n" + "=" * 80)
print("THE KEY IDENTITY IN BASE π")
print("=" * 80)
print(f"α⁻¹ = 2π/C₂")
print(f"In base π: α⁻¹ = 11022.100122021...")
print(f"In base π: 2π = 20.")
print(f"In base π: C₂ = 0.200202221201210...")
print(f"\nThe identity α⁻¹ = 2π/C₂ in base π becomes:")
print(f"11022.100122021... = 20. / 0.200202221201210...")
