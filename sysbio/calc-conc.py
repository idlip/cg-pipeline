"""
Script to calculate concentration of ingredients or compounds in grams to molar concentration.
"""

def calculate_concentration(mass, molecular_weight, volume=1):
    """
    Calculate the concentration of a substance in mol/L given its mass, volume, and molecular weight.

    Parameters:
    mass (float): Mass of the substance in grams
    volume (float): Volume in liters
    molecular_weight (float): Molecular weight in g/mol

    Returns:
    float: Concentration in mol/L
    """
    # Calculate moles from mass and molecular weight
    moles = mass / molecular_weight
    # Calculate concentration (mol/L)
    concentration = moles / volume

    return f"{concentration:.8f}"

def cfu_to_grams(cfu_billion):
    # 1 CFU is approximately 1 nanogram (1e-9 grams)
    grams_per_cfu = 1e-9  # 1 nanogram = 1e-9 grams
    # Convert billion CFUs to grams
    grams = cfu_billion * grams_per_cfu
    return f"{grams:.15f}"

# Example usage:
mass = 9.0  # g (mass of the substance)
volume = 0.5  # L (volume of solution)
molecular_weight = 18.015  # g/mol (molecular weight of water, H2O)

concentration = calculate_concentration(mass, molecular_weight, volume)
print(f"Concentration (mol/L): {concentration}")

import pandas as pd

def convert_wts(value, unit):
    if unit == 'mg':
        return f"{value / 1000:.10f}"
    elif unit == 'mcg':
        return f"{value / 1000000:.10f}"
    elif unit == 'g':
        return value
    else:
        return value

df = pd.read_csv('data/meal-replace-mols.csv')
converted_values = []

for i, row in df.iterrows():
    unit = row['kcal'].lower()  # Extract the unit from Column A (case insensitive)
    value = row['205']  # Get the value from Column B

    if 'mg' in unit:
        converted_values.append(convert_wts(value, 'mg'))
    elif 'mcg' in unit:
        converted_values.append(convert_wts(value, 'mcg'))
    elif 'g' in unit:
        converted_values.append(convert_wts(value, 'g'))
    else:
        converted_values.append(None)  # Append None if no valid unit found

for i in converted_values:
    print(i)

"""
Example usage ::

# Potassium
calculate_concentration(1000, 76)

# Inulin
cfu_to_grams(5.1)

# Compound
calculate_concentration(float(converted_values[31]), 280.43)
"""
