#!/usr/bin/env python3
import os, re

SCAN_DIRS = [
    "/workspace/bb8f9c5f-e866-4346-a29c-8d72daa0ad2d/sessions/agent_23cc8a63-c0f1-420a-8ae2-c36fa4276be9/Subatomic/OrganizedLibrary",
    "/workspace/bb8f9c5f-e866-4346-a29c-8d72daa0ad2d/sessions/agent_b5a7d01d-ebef-4a90-bc4b-206ab5177645/CSM_WORK_IN_PROGRESS/SubAtom_WIP",
]

OUTPUT = "/workspace/bb8f9c5f-e866-4346-a29c-8d72daa0ad2d/sessions/agent_b5a7d01d-ebef-4a90-bc4b-206ab5177645/CSM_WORK_IN_PROGRESS/SubAtom_WIP/PRIME_ELECTRON_MATHEMATICAL_COMPENDIUM.md"

def scan_directory(base_dir, prefix=""):
    results = []
    if not os.path.exists(base_dir):
        return results
    for item in sorted(os.listdir(base_dir)):
        path = os.path.join(base_dir, item)
        if os.path.isdir(path):
            if item in ['__pycache__', '.git', 'node_modules']:
                continue
            results.extend(scan_directory(path, prefix=f"{prefix}{item}/"))
        elif item.endswith('.md'):
            try:
                with open(path, 'r', encoding='utf-8', errors='ignore') as f:
                    content = f.read()
                if content.strip():
                    results.append({
                        'file': f"{prefix}{item}",
                        'content': content
                    })
            except:
                pass
    return results

print("Scanning for mathematical content...")
all_files = []
for scan_dir in SCAN_DIRS:
    all_files.extend(scan_directory(scan_dir))

print(f"Found {len(all_files)} markdown files")

# Build compendium
output = []
output.append("# PRIME ELECTRON RESEARCH — COMPLETE MATHEMATICAL COMPENDIUM")
output.append("## Author: Jason Isaac Brodsky (California 1976)")
output.append("## Date: 2026-08-31")
output.append("")
output.append("---")
output.append("")

eq_counter = 0

for file_info in all_files:
    content = file_info['content']
    fname = file_info['file']
    
    # Extract display math
    display_math = re.findall(r'\$\$(.+?)\$\$', content, re.DOTALL)
    # Extract inline math (longer than 10 chars)
    inline_math = re.findall(r'(?<!\$)\$(?!\$)((?:[^$]|\\$){10,}?)\$(?!\$)', content)
    # Extract code blocks
    code_blocks = re.findall(r'```(?:\w+)?\n(.*?)```', content, re.DOTALL)
    
    if display_math or inline_math or code_blocks:
        output.append(f"## {fname}")
        output.append("")
        
        for math in display_math:
            eq_counter += 1
            output.append(f"**Eq {eq_counter}:**")
            output.append(f"$${math.strip()}$$")
            output.append("")
        
        for math in inline_math:
            eq_counter += 1
            output.append(f"**Eq {eq_counter}:** ${math.strip()}$")
            output.append("")
        
        for code in code_blocks:
            lines = code.strip().split('\n')
            if len(lines) > 2:
                output.append(f"**Code Block:**")
                output.append(f"```{code.strip()}```")
                output.append("")
        
        output.append("---")
        output.append("")

output.append(f"# SUMMARY")
output.append(f"- Total files scanned: {len(all_files)}")
output.append(f"- Total equations: {eq_counter}")

with open(OUTPUT, 'w') as f:
    f.write('\n'.join(output))

print(f"Compendium written to: {OUTPUT}")
print(f"Total equations: {eq_counter}")
print(f"Total lines: {len(output)}")
print(f"Size: {os.path.getsize(OUTPUT) / 1024 / 1024:.2f} MB")
