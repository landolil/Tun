#!/usr/bin/env python3
import os, sys, json, time, urllib.request, urllib.parse
from secure_token import load_token_data, save_token_data

ws = os.environ.get("CSM_WORKSPACE", os.getcwd())

# Load device code from workspace
dc_data = load_token_data(os.path.join(ws, 'device_code.json'))

client_id = '14d82eec-204b-4c2f-b7e8-296a70dab67e'
scopes = 'https://graph.microsoft.com/Mail.ReadWrite https://graph.microsoft.com/Mail.Send offline_access'
dc = dc_data['dc']
exp = dc_data['exp']
account = dc_data['account']

print(f'Polling for {account}...')
sys.stdout.flush()

t0 = time.time()
while time.time() - t0 < exp - 10:
    time.sleep(3)
    td = {
        'client_id': client_id,
        'scope': scopes,
        'grant_type': 'urn:ietf:params:oauth:grant-type:device_code',
        'code': dc
    }
    data = urllib.parse.urlencode(td).encode()
    req = urllib.request.Request(
        'https://login.microsoftonline.com/common/oauth2/v2.0/token',
        data=data
    )
    req.add_header('Content-Type', 'application/x-www-form-urlencoded')
    try:
        tr = json.loads(urllib.request.urlopen(req).read())
        tr['expires_on'] = time.time() + int(tr.get('expires_in', 3600))
        
        # Save token to workspace
        token_path = save_token_data(tr, os.path.join(ws, 'hotmail_token.json'))

        print(f'AUTHENTICATED: {account}')
        print(f'Token saved to {token_path}')
        sys.stdout.flush()
        sys.exit(0)
    except urllib.error.HTTPError as e:
        err = json.loads(e.read())
        ecode = err.get('error', '')
        if ecode == 'authorization_pending':
            print('.', end='', flush=True)
            continue
        else:
            print(f'AUTH ERROR: {ecode}')
            sys.stdout.flush()
            sys.exit(1)

print('TIMEOUT')
sys.stdout.flush()
sys.exit(1)
