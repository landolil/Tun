#!/usr/bin/env python3
import os, sys, json, urllib.request, urllib.parse
from secure_token import load_access_token

ws = os.environ.get("CSM_WORKSPACE", os.getcwd())

# Load token
token = {"access_token": load_access_token(os.path.join(ws, "hotmail_token.json"))}

# Load emails content
with open(os.path.join(ws, 'CSM_WORK_IN_PROGRESS/SubAtom_WIP/EMAILS_FOR_OUTREACH.md')) as f:
    emails_text = f.read()

# Parse emails (split by === lines)
emails = []
sections = emails_text.split('=' * 80)
for section in sections:
    lines = section.strip().split('\n')
    to_addr = None
    subject = None
    body_lines = []
    in_body = False
    for line in lines:
        if line.startswith('To:') and not to_addr:
            to_addr = line.split(':', 1)[1].strip()
        elif line.startswith('Subject:') and not subject:
            subject = line.split(':', 1)[1].strip()
        elif line.startswith('Dear') or in_body:
            in_body = True
            body_lines.append(line)
    if to_addr and subject:
        body = '\n'.join(body_lines).strip()
        emails.append({'to': to_addr, 'subject': subject, 'body': body})

print(f'Found {len(emails)} emails to save as drafts')

headers = {
    'Authorization': f'Bearer {token["access_token"]}',
    'Content-Type': 'application/json'
}

graph_base = 'https://graph.microsoft.com/v1.0'

for i, email in enumerate(emails):
    # Create draft message
    draft = {
        'subject': email['subject'],
        'body': {
            'contentType': 'HTML',
            'content': f'<html><body><pre>{email["body"]}</pre></body></html>'
        },
        'toRecipients': [
            {'emailAddress': {'address': email['to']}}
        ]
    }
    
    data = json.dumps(draft).encode()
    req = urllib.request.Request(f'{graph_base}/me/messages', data=data, method='POST')
    for k, v in headers.items():
        req.add_header(k, v)
    
    try:
        resp = urllib.request.urlopen(req)
        result = json.loads(resp.read())
        print(f'  [{i+1}] ✅ Draft created: {email["subject"][:60]}...')
        print(f'       To: {email["to"]}')
    except urllib.error.HTTPError as e:
        err = e.read().decode()
        print(f'  [{i+1}] ❌ Error: {e.code} - {err[:100]}')

print('\nDone! Check your Outlook Drafts folder to review and send.')
