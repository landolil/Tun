#!/usr/bin/env python3
"""
Base-π counting system converter for the Prime Electron flagship document.
Converts all numerical values to base-π representation.
"""
import math

PI = math.pi

def decimal_to_base_pi(n, precision=20):
    """Convert a positive decimal number to base-π representation."""
    if n == 0:
        return "0"
    
    # Find the highest power of π needed
    if n >= 1:
        power = int(math.log(n) / math.log(PI))
    else:
        power = -1
        temp = n
        while temp < 1:
            temp *= PI
            power -= 1
        power += 1
    
    result = []
    remainder = n
    
    # Generate digits from highest power down
    for p in range(power, max(power - precision, -precision - 1), -1):
        place_value = PI ** p
        digit = int(remainder / place_value)
        if digit > 3:
            digit = 3  # Max digit in base π
        result.append(str(digit))
        remainder -= digit * place_value
        
        if p == 0:
            result.append('.')
    
    # Remove trailing zeros after decimal
    while result and result[-1] == '0' and '.' in result:
        result.pop()
    
    return ''.join(result) if result else "0"

def base_pi_to_decimal(s):
    """Convert a base-π string back to decimal."""
    if '.' in s:
        integer_part, fractional_part = s.split('.')
    else:
        integer_part = s
        fractional_part = ''
    
    result = 0.0
    
    # Integer part (positive powers)
    for i, digit in enumerate(reversed(integer_part)):
        result += int(digit) * (PI ** i)
    
    # Fractional part (negative powers)
    for i, digit in enumerate(fractional_part, 1):
        result += int(digit) * (PI ** (-i))
    
    return result

# Key values to convert
values = {
    'alpha_inv': 137.035999084,
    'C2': 0.6601618158468696,
    '2pi/C2': 2 * math.pi / 0.6601618158468696,
    'pi': math.pi,
    '2pi': 2 * math.pi,
    'm_electron_keV': 511.0,
    'hbar_eVs': 6.582119569e-16,
    'm_electron_kg': 9.1093837015e-31,
    'c_m_s': 299792458.0,
    'hbar_Js': 1.054571817e-34,
    'alpha': 1/137.035999084,
    'schwinger': 0.00115965218073,
    'lamb_shift_MHz': 1057.844,
    'gamma1': 14.134725141734693,
    'gamma2': 21.022039638771554,
    'gamma3': 25.010857580145688,
    'twin_prime_pairs_100': 8,  # (3,5), (5,7), (11,13), (17,19), (29,31), (41,43), (59,61), (71,73)
    'primes_100': 25,
    'e': math.e,
    'phi': (1 + math.sqrt(5)) / 2,
    'zeta3': 1.202056903159594,
}

print("=" * 80)
print("BASE-π CONVERSION TABLE")
print("=" * 80)
print(f"{'Name':<25} {'Decimal':<30} {'Base-π':<25}")
print("-" * 80)

base_pi_values = {}
for name, value in values.items():
    bp = decimal_to_base_pi(value, precision=15)
    base_pi_values[name] = bp
    print(f"{name:<25} {value:<30.10f} {bp:<25}")

print("\n" + "=" * 80)
print("VERIFICATION (convert back)")
print("=" * 80)
for name, bp in base_pi_values.items():
    back = base_pi_to_decimal(bp)
    original = values[name]
    error = abs(back - original) / original * 100 if original != 0 else 0
    print(f"{name:<25} {back:<30.10f} error: {error:.6f}%")

# Special: show that 2π/C₂ in base π has a special form
print("\n" + "=" * 80)
print("SPECIAL VALUES IN BASE π")
print("=" * 80)
print(f"π in base π = {decimal_to_base_pi(PI, 10)}")
print(f"π² in base π = {decimal_to_base_pi(PI**2, 10)}")
print(f"2π in base π = {decimal_to_base_pi(2*PI, 10)}")
print(f"α⁻¹ in base π = {base_pi_values['alpha_inv']}")
print(f"C₂ in base π = {base_pi_values['C2']}")
print(f"2π/C₂ in base π = {base_pi_values['2pi/C2']}")
print(f"\nNote: 2π/C₂ ≈ α⁻¹, so in base π these should be similar")
print(f"Difference: {abs(values['2pi/C2'] - values['alpha_inv']):.10f}")
