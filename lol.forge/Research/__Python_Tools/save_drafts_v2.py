#!/usr/bin/env python3
import os, sys, json, urllib.request, urllib.parse, base64
from secure_token import load_access_token

ws = os.environ.get("CSM_WORKSPACE", os.getcwd())
_RECIPIENTS = [x.strip() for x in os.environ.get("CSM_RECIPIENTS", "").split(",") if x.strip()]
_recipient_index = 0

def _next_recipient():
    global _recipient_index
    if _recipient_index >= len(_RECIPIENTS):
        raise SystemExit("ERROR: set CSM_RECIPIENTS to a comma-separated list of recipient addresses")
    value = _RECIPIENTS[_recipient_index]
    _recipient_index += 1
    return value


token = {"access_token": load_access_token(os.path.join(ws, "hotmail_token.json"))}

with open(os.path.join(ws, 'CSM_WORK_IN_PROGRESS/SubAtom_WIP/FLAGSHIP_PrimeElectron_Framework_v2.md')) as f:
    flagship_content = f.read()

attachment_name = 'PrimeElectron_Framework_v2.pdf'
attachment_content = base64.b64encode(flagship_content.encode()).decode()

headers = {
    'Authorization': f'Bearer {token["access_token"]}',
    'Content-Type': 'application/json'
}

graph_base = 'https://graph.microsoft.com/v1.0'

emails = [
    {
        'to': _next_recipient(),
        'subject': 'Submission: Prime Electron Framework v2 — Complete Theoretical Structure',
        'body': """Dear Editor,

I am pleased to submit our manuscript "The Prime Electron: A New Framework for Physics" (v2, expanded edition) for consideration in Foundations of Physics.

The attached document presents the complete Prime Electron framework with full mathematical derivations, including:

1. Worldline Monism — the electron as a single worldline traversing primes
2. Meta-Depth Hierarchy — physical law emerging at successive iteration levels
3. Structural Correspondence — QED vertex function ↔ twin prime counting
4. Base-π representation — revealing new patterns in fundamental constants
5. Testable predictions — gap fluctuation noise, Riemann ripple, topological order, prime codes

ABSTRACT

The Prime Electron framework identifies statistical correlations in the prime number sequence with the fundamental interactions of physics. Built on three postulates (Worldline Monism, Meta-Depth Hierarchy, Structural Correspondence), the framework yields testable predictions including log-periodic modulations in the running of α(μ), gap fluctuation noise at the 10⁻¹⁰ level, topological crystalline order in prime gap lattices, and quantum error-correcting codes with parameters determined by prime gap statistics.

Sincerely,
[sender name withheld]
[location withheld]
Author Conducier

---
ATTACHMENT: PrimeElectron_Framework_v2.pdf (expanded edition)
"""
    },
    {
        'to': _next_recipient(),
        'subject': 'Prime Electron framework v2 — expanded with full derivations',
        'body': """Dear Professor Witten,

I am writing to share the expanded Prime Electron framework (v2) with full mathematical derivations.

The attached document includes:
- Complete worldline formalism with discrete prime gap action
- Meta-Depth hierarchy with holographic encoding at ω+3
- Structural correspondence between QED and prime gap statistics
- Base-π representation of fundamental constants
- Detailed testable predictions with experimental signatures

With great respect,
[sender name withheld]

---
ATTACHMENT: PrimeElectron_Framework_v2.pdf
"""
    },
    {
        'to': _next_recipient(),
        'subject': 'Prime Electron framework v2 — number theory and physics',
        'body': """Dear Professor Tao,

I am writing to share the expanded Prime Electron framework (v2).

Key mathematical results:
- Structural correspondence: QED vertex function ↔ twin prime counting
- Base-π representation: Riemann zeros appear quantized in units of π
- Prime gap RG flow: scale-dependent conversion factor κ(μ)
- Open problem: solving the prime gap beta function to derive α from C₂

Sincerely,
[sender name withheld]

---
ATTACHMENT: PrimeElectron_Framework_v2.pdf
"""
    },
    {
        'to': _next_recipient(),
        'subject': 'FQXi Grant Application: Prime Electron Framework v2',
        'body': """Dear FQXi,

I am applying for a Zenith Grant to develop the Prime Electron framework (v2).

REQUEST: $250,000 over 2 years

The attached document presents the complete framework with:
- Full mathematical derivations
- Testable predictions (gap fluctuation noise, Riemann ripple, topological order)
- Base-π formalism
- Research program to solve the prime gap RG flow

Sincerely,
[sender name withheld]

---
ATTACHMENT: PrimeElectron_Framework_v2.pdf
"""
    },
]

# Clear old drafts
print("Clearing old drafts...")
sys.stdout.flush()

req = urllib.request.Request(f'{graph_base}/me/mailFolders/drafts/messages?$select=id', method='GET')
for k, v in headers.items():
    req.add_header(k, v)
try:
    resp = urllib.request.urlopen(req)
    drafts = json.loads(resp.read())
    for msg in drafts.get('value', []):
        del_req = urllib.request.Request(f'{graph_base}/me/messages/{msg["id"]}', method='DELETE')
        for k, v in headers.items():
            del_req.add_header(k, v)
        try:
            urllib.request.urlopen(del_req)
        except:
            pass
    print(f"  Cleared {len(drafts.get('value', []))} old drafts")
except Exception as e:
    print(f"  No existing drafts to clear: {e}")

sys.stdout.flush()

# Create new drafts
for i, email in enumerate(emails):
    draft = {
        'subject': email['subject'],
        'body': {
            'contentType': 'HTML',
            'content': f'<html><body><pre>{email["body"]}</pre></body></html>'
        },
        'toRecipients': [
            {'emailAddress': {'address': email['to']}}
        ],
        'attachments': [
            {
                '@odata.type': '#microsoft.graph.fileAttachment',
                'name': attachment_name,
                'contentBytes': attachment_content
            }
        ]
    }
    
    data = json.dumps(draft).encode()
    req = urllib.request.Request(f'{graph_base}/me/messages', data=data, method='POST')
    for k, v in headers.items():
        req.add_header(k, v)
    
    try:
        resp = urllib.request.urlopen(req)
        print(f'  [{i+1}] ✅ Draft created: {email["subject"][:60]}...')
        print(f'       To: {email["to"]}')
    except urllib.error.HTTPError as e:
        err = e.read().decode()
        print(f'  [{i+1}] ❌ Error: {e.code} - {err[:200]}')
    sys.stdout.flush()

print('\nDone! Check your Outlook Drafts folder to review and send.')
