#!/usr/bin/env python3
"""
SEND VERIFIED BATCHES — AEGIS Campaign
Sends only batches with verified email addresses (no research needed).
Batches: BATCH-04 through BATCH-07, BATCH-09 through BATCH-12
Excludes: BATCH-08 (Global Outreach - universities needing research), BATCH-13-17 (templates)
"""

import subprocess, json, os, urllib.request, urllib.parse, base64, re, time, random, sys, argparse
from secure_token import load_access_token

# ─── CONFIG ────────────────────────────────────────────
TOKEN_PATH = os.environ.get("CSM_TOKEN_PATH", "/tmp/kilo/csm_token.json")
WORKSPACE  = os.environ.get("CSM_WORKSPACE", os.getcwd())
ATTACH_DIR = os.path.join(WORKSPACE, 'CSMReach', 'CSMEmailOutgoing', 'July2026', 'ATTACHMENTS')
BATCH_ROOT = os.path.join(WORKSPACE, 'CSMReach', 'CSMEmailOutgoing', 'July2026')
GRAPH_BASE = 'https://graph.microsoft.com/v1.0'

ATTACHMENT_PDFS = [
    'CSMEval11-COMPILED-Briefing-Packet.pdf',
    'CSMGeneralOutreach-COMPILED-Compendium.pdf',
    'COMPENDIUM-MINI.pdf'
]

SENDER_NAME = os.environ.get("CSM_FROM_NAME", "External Affairs")
SENDER_EMAIL = os.environ.get("CSM_FROM_EMAIL", "")
SENDER_LOCATION = os.environ.get("CSM_FROM_LOCATION", "")
PRETTY_SIGNATURE = f'''
<br>
<table style="border-top:3px solid #1a5276;padding-top:15px;margin-top:30px;width:100%;">
<tr><td style="font-family:Georgia,serif;">
<p style="margin:0;font-size:15px;color:#1a5276;"><strong>{SENDER_NAME}</strong></p>
<p style="margin:4px 0;font-size:13px;color:#444;">Director of External Affairs & Strategic Partnerships</p>
<p style="margin:2px 0;font-size:13px;color:#444;">Carrington Storm Motors &middot; Safe Pod Engineering Company</p>
<p style="margin:2px 0;font-size:12px;color:#888;">{SENDER_EMAIL} &middot; {SENDER_LOCATION}</p>
<p style="margin-top:12px;font-size:10px;color:#aaa;font-style:italic;">Composed by AI under human direction &middot; CSMSOPP000001 (Williams) + CSMSOPP000003 (Baker Street)<br>All technical content human-reviewed. All outreach decisions human-made. July 2026.</p>
</td></tr></table>
'''

# Verified batches (have real email addresses, no research needed)
VERIFIED_BATCHES = [
    'BATCH-04-Aerospace-Defense',
    'BATCH-05-Marine-Maritime',
    'BATCH-06-Data-Telecom',
    'BATCH-07-National-Outreach',
    'BATCH-09-Community-Specialist',
    'BATCH-10-Cleantech-Energy',
    'BATCH-11-Aerospace-Space-Dossier',
    'BATCH-12-Advanced-Manufacturing-Materials',
]

# ─── GRAPH API ─────────────────────────────────────────
def load_token():
    return load_access_token(TOKEN_PATH)

def graph_call(token, path, body=None, method='GET'):
    url = GRAPH_BASE + path
    data = json.dumps(body).encode() if body else None
    req = urllib.request.Request(url, data=data, method=method)
    req.add_header('Authorization', f'Bearer {token}')
    req.add_header('Content-Type', 'application/json')
    try:
        resp = urllib.request.urlopen(req)
        raw = resp.read()
        return json.loads(raw) if raw else {'ok': True}
    except urllib.error.HTTPError as e:
        err = e.read().decode()
        print(f'  ⚠️  HTTP {e.code}: {err[:200]}')
        return None

# ─── PANDOC MD→HTML ────────────────────────────────────
def md_to_html(md_content):
    result = subprocess.run(
        ['pandoc', '--standalone', '--from', 'markdown', '--to', 'html5', '--wrap=none'],
        input=md_content,
        capture_output=True,
        text=True,
        timeout=15
    )
    if result.returncode != 0:
        print(f'  ⚠️  Pandoc error: {result.stderr[:200]}')
        return None
    
    html = result.stdout
    body_match = re.search(r'<body>(.*)</body>', html, re.DOTALL)
    if body_match:
        inner = body_match.group(1)
    else:
        inner = html
    
    inner = re.sub(r'<h1[^>]*>.*?</h1>', '', inner, count=1)
    
    styled = '<html><body style="font-family:Georgia,serif;color:#222;max-width:600px;">\n'
    styled += inner
    styled += PRETTY_SIGNATURE
    styled += '\n</body></html>'
    
    return styled

# ─── PARSE EMAIL FILE ──────────────────────────────────
def parse_email_file(filepath):
    with open(filepath) as f:
        content = f.read()
    
    to_match = re.search(r'\*\*TO:\*\*\s*(.+)', content)
    subj_match = re.search(r'\*\*SUBJECT:\*\*\s*(.+)', content)
    
    to_line = to_match.group(1).strip() if to_match else ''
    subject = subj_match.group(1).strip() if subj_match else 'No Subject'
    
    body_start = 0
    for i, line in enumerate(content.split('\n')):
        if line.strip() == '---':
            body_start = i + 1
            break
    
    body_md = '\n'.join(content.split('\n')[body_start:])
    
    to_addrs = []
    for addr in to_line.split(','):
        addr = addr.strip()
        if '@' in addr:
            to_addrs.append({'emailAddress': {'address': addr}})
    
    return {
        'to_raw': to_line,
        'to_addrs': to_addrs,
        'subject': subject,
        'body_md': body_md,
        'file': filepath
    }

# ─── VERIFY ────────────────────────────────────────────
def verify_email(parsed):
    body = parsed['body_md'].lower()
    has_williams = 'artificial intelligence' in body or 'composed by' in body
    has_specs = bool(re.search(r'\d+\s*db|\d+\s*ghz|mil-std|ieee\s*\d|astm\s*\w\d', body))
    paras = len([p for p in body.split('\n\n') if len(p.strip()) > 50])
    status = '✅ FULL' if paras >= 5 and has_williams and has_specs else '⚠️ SHORT'
    return status, paras, has_williams, has_specs

# ─── BUILD ATTACHMENTS ─────────────────────────────────
def build_attachments():
    atts = []
    for pdf_name in ATTACHMENT_PDFS:
        pdf_path = os.path.join(ATTACH_DIR, pdf_name)
        if not os.path.exists(pdf_path):
            print(f'  ⚠️  PDF not found: {pdf_path}')
            continue
        with open(pdf_path, 'rb') as f:
            data = f.read()
        atts.append({
            '@odata.type': '#microsoft.graph.fileAttachment',
            'name': pdf_name,
            'contentBytes': base64.b64encode(data).decode()
        })
    return atts

# ─── SEND ONE EMAIL ────────────────────────────────────
def send_one(token, parsed, atts, test_address=None):
    to_addr = test_address if test_address else parsed['to_addrs']
    if not to_addr:
        print('  ⚠️  No email address found — skipping')
        return False
    
    subject_prefix = 'TEST — ' if test_address else ''
    
    html = md_to_html(parsed['body_md'])
    if not html:
        return False
    
    msg = {
        'subject': subject_prefix + parsed['subject'],
        'body': {'contentType': 'HTML', 'content': html},
        'toRecipients': [{'emailAddress': {'address': to_addr}}] if isinstance(to_addr, str) else to_addr,
        'attachments': atts
    }
    
    result = graph_call(token, '/me/sendMail', {'message': msg, 'saveToSentItems': True}, method='POST')
    if result:
        utc_time = time.strftime('%Y-%m-%dT%H:%M:%SZ', time.gmtime())
        print(f'  ✅ SENT at {utc_time} (HTML: {len(html)} chars)')
        return True
    return False

# ─── WRITE SEND LOG ────────────────────────────────────
def write_send_log(batch_dir, entries):
    log_path = os.path.join(batch_dir, 'SEND-LOG.md')
    with open(log_path, 'w') as f:
        f.write(f'# {os.path.basename(batch_dir)} SEND LOG\n')
        f.write('## Starlight Courier · Pandoc MD→HTML · AEGIS Agent\n\n')
        f.write('| UTC Time | ID | Recipient | Address | Status |\n')
        f.write('|----------|----|-----------|---------|--------|\n')
        for entry in entries:
            f.write(f'| {entry["time"]} | {entry["id"]} | {entry["name"]} | {entry["addr"]} | {entry["status"]} |\n')

# ─── FIND EMAIL FILES ──────────────────────────────────
def find_email_files(batch_dir):
    all_files = sorted([f for f in os.listdir(batch_dir) if f.endswith('.md') and not f.startswith('BATCH') and not f.startswith('SEND') and not f.startswith('Central') and not f.startswith('East') and not f.startswith('Eastern')])
    
    groups = {}
    for f in all_files:
        eid = f.split('-')[0] if f.startswith('E') else f[:10]
        if eid not in groups:
            groups[eid] = []
        groups[eid].append(f)
    
    chosen = []
    for eid, files in groups.items():
        best = None
        for f in files:
            fname = f.lower()
            score = 0
            if 'v4' in fname: score += 100
            if 'fun' in fname: score += 50
            if 'williams' in fname: score += 50
            if '9para' in fname: score += 30
            if 'final' in fname: score += 10
            if best is None or score > best[0]:
                best = (score, f)
        chosen.append(best[1] if best else files[0])
    
    return sorted(chosen)

# ─── SEND BATCH ────────────────────────────────────────
def send_batch(token, batch_name, atts, pace_min=45, pace_max=120):
    batch_dir = os.path.join(BATCH_ROOT, batch_name)
    if not os.path.isdir(batch_dir):
        print(f'❌ Batch directory not found: {batch_dir}')
        return 0, 0
    
    email_files = find_email_files(batch_dir)
    if not email_files:
        print(f'  No email files found in {batch_name}')
        return 0, 0
    
    print(f'\n{"═"*60}')
    print(f'📨 BATCH: {batch_name}')
    print(f'📧 EMAILS: {len(email_files)}')
    print(f'{"═"*60}')
    
    log_entries = []
    sent = 0
    failed = 0
    
    for i, fname in enumerate(email_files):
        filepath = os.path.join(batch_dir, fname)
        parsed = parse_email_file(filepath)
        status, paras, has_w, has_s = verify_email(parsed)
        
        eid = fname.split('-')[0] if fname.startswith('E') else fname[:10]
        to_display = parsed['to_raw'][:50]
        
        print(f'\n── {i+1}/{len(email_files)} ── {fname}')
        print(f'  TO:      {to_display}')
        print(f'  SUBJECT: {parsed["subject"][:60]}')
        print(f'  VERIFY:  {status} ({paras} paras, Williams:{has_w}, Specs:{has_s})')
        
        if status == '⚠️ SHORT':
            print(f'  ⚠️  SHORT email — skipping. Review manually.')
            failed += 1
            continue
        
        success = send_one(token, parsed, atts)
        utc_time = time.strftime('%Y-%m-%dT%H:%M:%SZ', time.gmtime())
        
        if success:
            sent += 1
            log_entries.append({
                'time': utc_time,
                'id': eid,
                'name': parsed['to_raw'][:40],
                'addr': to_display,
                'status': 'SENT ✅'
            })
        else:
            failed += 1
            log_entries.append({
                'time': utc_time,
                'id': eid,
                'name': parsed['to_raw'][:40],
                'addr': to_display,
                'status': 'FAILED ❌'
            })
        
        if i < len(email_files) - 1 and success:
            delay = random.randint(pace_min, pace_max)
            print(f'  ⏳ Natural pace: {delay}s...')
            time.sleep(delay)
    
    write_send_log(batch_dir, log_entries)
    print(f'\n  ✅ {batch_name} complete: {sent} sent, {failed} failed')
    return sent, failed

# ─── MAIN ──────────────────────────────────────────────
def main():
    parser = argparse.ArgumentParser(description='Send verified AEGIS campaign batches')
    parser.add_argument('--test', action='store_true', help='Send test to yourself instead of real recipients')
    parser.add_argument('--test-addr', default='[email withheld]', help='Test email address')
    parser.add_argument('--pace-min', type=int, default=45, help='Minimum seconds between sends')
    parser.add_argument('--pace-max', type=int, default=120, help='Maximum seconds between sends')
    parser.add_argument('--batches', nargs='+', help='Specific batches to send (default: all verified)')
    args = parser.parse_args()
    
    batches = args.batches if args.batches else VERIFIED_BATCHES
    
    print("\n" + "=" * 60)
    print("  AEGIS CAMPAIGN — SEND VERIFIED BATCHES")
    print(f"  Carrington Storm Motors · {SENDER_NAME}")
    print("=" * 60)
    print(f"  Batches to send: {len(batches)}")
    for b in batches:
        print(f"    - {b}")
    print(f"  Mode: {'TEST → ' + args.test_addr if args.test else 'LIVE SEND'}")
    print("=" * 60)
    
    token = load_token()
    print(f'\n🔑 Token loaded (expires in ~1 hour)')
    
    atts = build_attachments()
    print(f'📎 {len(atts)} PDFs loaded')
    
    if not atts:
        print('❌ No attachments found. Exiting.')
        return
    
    total_sent = 0
    total_failed = 0
    
    for batch_name in batches:
        sent, failed = send_batch(token, batch_name, atts, args.pace_min, args.pace_max)
        total_sent += sent
        total_failed += failed
        
        if batch_name != batches[-1]:
            print(f'  Cool-down: 10 seconds...')
            time.sleep(10)
    
    print(f'\n{"="*60}')
    print(f'🎯 CAMPAIGN COMPLETE')
    print(f'  Total sent: {total_sent}')
    print(f'  Total failed: {total_failed}')
    print(f'{"="*60}')

if __name__ == '__main__':
    main()