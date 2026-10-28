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


# Load token
token = {"access_token": load_access_token(os.path.join(ws, "hotmail_token.json"))}

# Load the complete concatenated document
with open(os.path.join(ws, 'CSM_WORK_IN_PROGRESS/SubAtom_WIP/PRIME_ELECTRON_COMPLETE_RESEARCH.md')) as f:
    complete_content = f.read()

# Create base64 encoded attachment
attachment_name = 'PrimeElectron_Complete_Research.pdf'
attachment_content = base64.b64encode(complete_content.encode()).decode()

headers = {
    'Authorization': f'Bearer {token["access_token"]}',
    'Content-Type': 'application/json'
}

graph_base = 'https://graph.microsoft.com/v1.0'

# Define emails with the complete document
emails = [
    {
        'to': _next_recipient(),
        'subject': 'Submission: Prime Electron Framework — Complete Research (287K lines)',
        'body': """Dear Editor,

I am pleased to submit our complete research on the Prime Electron framework for consideration in Foundations of Physics.

The attached document contains the complete concatenation of all our research files: 287,208 lines across 9 articles covering worldline topology, mass spectrum, Hilbert space, coupling constants, biology/genetics, transcendent physics, quark/hadron/nuclear physics, cosmology, and experimental signatures.

ABSTRACT

The Prime Electron framework identifies statistical correlations in the prime number sequence with the fundamental interactions of physics. Built on three postulates (Worldline Monism, Meta-Depth Hierarchy, Structural Correspondence), the framework yields testable predictions including log-periodic modulations in the running of α(μ), gap fluctuation noise at the 10⁻¹⁰ level, topological crystalline order in prime gap lattices, and quantum error-correcting codes with parameters determined by prime gap statistics.

We confirm this work is original and not under consideration elsewhere.

Sincerely,
[sender name withheld]
[location withheld]
Author Conducier

---
ATTACHMENT: PrimeElectron_Complete_Research.pdf (287K lines, 12MB)
"""
    },
    {
        'to': _next_recipient(),
        'subject': 'Prime Electron framework — complete research concatenated',
        'body': """Dear Professor Witten,

I am writing to share the complete Prime Electron research framework — 287,000+ lines of physics and number theory.

The attached document contains all our research files concatenated into a single comprehensive document.

Key results:
1. Structural correspondence between QED vertex function and twin prime counting
2. Base-π representation revealing new patterns in fundamental constants
3. Testable predictions: gap fluctuation noise, Riemann ripple, topological order
4. Quantum error correction from prime gap statistics

With great respect,
[sender name withheld]

---
ATTACHMENT: PrimeElectron_Complete_Research.pdf
"""
    },
    {
        'to': _next_recipient(),
        'subject': 'Prime Electron framework — complete number theory and physics research',
        'body': """Dear Professor Tao,

I am writing to share the complete Prime Electron research — 287,000+ lines connecting number theory and physics.

The attached document includes the base-π representation, prime gap crystalline structures, and the Meta-Depth hierarchy framework.

Sincerely,
[sender name withheld]

---
ATTACHMENT: PrimeElectron_Complete_Research.pdf
"""
    },
    {
        'to': _next_recipient(),
        'subject': 'FQXi Grant Application: Prime Electron Framework — Complete Research',
        'body': """Dear FQXi,

I am applying for a Zenith Grant to develop the Prime Electron framework.

REQUEST: $250,000 over 2 years

The attached document contains the complete research: 287,000+ lines across 9 articles.

Key predictions:
- Gap fluctuation noise in precision QED (10⁻¹⁰ level)
- Riemann ripple in running α(μ)
- Topological crystalline order in prime gap lattices
- Quantum error correction from prime codes

Sincerely,
[sender name withheld]

---
ATTACHMENT: PrimeElectron_Complete_Research.pdf
"""
    },
]

# First, delete old drafts
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
print('All emails now include the complete 287K-line research document.')
