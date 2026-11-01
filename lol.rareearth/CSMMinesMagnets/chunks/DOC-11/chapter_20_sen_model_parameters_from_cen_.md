# SEN Model Parameters (from CEN PET 2025)
sen_model = {
    'nodes': 380,  # Substations ≥66 kV
    'lines': 520,  # Transmission lines
    'transformers': 420,  # Wye-grounded units
    'grounding': {node: R_g for node, R_g in grounding_data.items()},
    'line_params': {line: {'R_dc': R, 'length': L, 'orientation': theta} ...}
}

def build_Y_node(sen_model):
    N = len(sen_model['nodes'])
    Y = np.zeros((N, N))
    J = np.zeros(N)
    
    # Line admittances
    for line in sen_model['lines']:
        i, j = line['from'], line['to']
        G = 1 / line['R_dc']
        Y[i,i] += G
        Y[j,j] += G
        Y[i,j] -= G
        Y[j,i] -= G
        
        # Source injection
        E_parallel = E_field[line['zone']] * np.cos(line['orientation'])
        J[i] += E_parallel * line['length'] / line['R_dc']
        J[j] -= E_parallel * line['length'] / line['R_dc']
    
    # Grounding
    for node, R_g in sen_model['grounding'].items():
        Y[node,node] += 1 / R_g
    
    return Y, J
