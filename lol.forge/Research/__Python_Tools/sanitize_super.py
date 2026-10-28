import os
import re

input_path = os.environ.get("CSM_INPUT_PATH", "")
output_path = os.environ.get("CSM_OUTPUT_PATH", "")

with open(input_path, 'r') as f:
    content = f.read()

# Replace specific names with generic references. Set the PII values in the environment.
pii_name = os.environ.get("CSM_PII_NAME", "[sender name withheld]")
pii_name_long = os.environ.get("CSM_PII_NAME_LONG", pii_name)
pii_location = os.environ.get("CSM_PII_LOCATION", "[location withheld]")
replacements = {
    re.escape(pii_name_long): 'the Lead Researcher',
    re.escape(pii_name): 'the Lead Researcher',
    re.escape(f'{pii_name_long} of {pii_location}'): 'the Lead Researcher',
    re.escape(f'{pii_name} of {pii_location}'): 'the Lead Researcher',
}

for pattern, replacement in replacements.items():
    content = re.sub(pattern, replacement, content)

# Also sanitize configured email addresses.
pii_emails = [x.strip() for x in os.environ.get("CSM_PII_EMAILS", "").split(",") if x.strip()]
for pii_email in pii_emails:
    content = re.sub(re.escape(pii_email), "lead.researcher@example.invalid", content, flags=re.I)

with open(output_path, 'w') as f:
    f.write(content)

print(f"Sanitized version saved to {output_path}")
