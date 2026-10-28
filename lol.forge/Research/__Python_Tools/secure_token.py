#!/usr/bin/env python3
"""Secure OAuth token storage helpers.

Token paths come from CSM_TOKEN_PATH or an explicit argument. Token files must
be regular files owned by the current user and must not be group/world readable.
Symlinks are rejected. Tokens are written atomically with mode 0600.
"""

import json
import os
import stat
import tempfile
import time


def resolve_token_path(path=None):
    candidate = path or os.environ.get("CSM_TOKEN_PATH")
    if not candidate:
        candidate = os.path.expanduser("~/.csm_oauth/token.json")
    return os.path.abspath(os.path.expanduser(candidate))


def _validate_token_file(path):
    info = os.lstat(path)
    if stat.S_ISLNK(info.st_mode):
        raise PermissionError("OAuth token path must not be a symlink: %s" % path)
    if not stat.S_ISREG(info.st_mode):
        raise PermissionError("OAuth token path must be a regular file: %s" % path)
    if hasattr(os, "getuid") and info.st_uid != os.getuid():
        raise PermissionError("OAuth token file must be owned by the current user: %s" % path)
    if info.st_mode & 0o077:
        try:
            os.chmod(path, 0o600)
        except OSError as exc:
            raise PermissionError(
                "OAuth token file must not be group/world accessible; chmod 600 failed: %s" % exc
            )
    return info


def load_token_data(path=None):
    resolved = resolve_token_path(path)
    _validate_token_file(resolved)
    with open(resolved, encoding="utf-8") as handle:
        data = json.load(handle)
    if not isinstance(data, dict):
        raise PermissionError("OAuth token file is not a JSON object: %s" % resolved)
    return data


def load_access_token(path=None, refresh_skew=60):
    resolved = resolve_token_path(path)
    data = load_token_data(resolved)
    token = data.get("access_token")
    if not token:
        raise PermissionError("OAuth token file has no access_token: %s" % resolved)
    expires_on = data.get("expires_on")
    if expires_on is not None:
        try:
            if float(expires_on) <= time.time() + refresh_skew:
                raise PermissionError("OAuth access token is expired; re-authenticate")
        except (TypeError, ValueError):
            pass
    return token


def save_token_data(data, path=None):
    resolved = resolve_token_path(path)
    directory = os.path.dirname(resolved) or "."
    os.makedirs(directory, mode=0o700, exist_ok=True)
    try:
        os.chmod(directory, 0o700)
    except OSError:
        pass
    fd, temporary = tempfile.mkstemp(dir=directory, prefix=".oauth-token-", text=True)
    try:
        os.fchmod(fd, 0o600)
        with os.fdopen(fd, "w", encoding="utf-8") as handle:
            json.dump(data, handle)
        os.replace(temporary, resolved)
        os.chmod(resolved, 0o600)
    finally:
        if os.path.exists(temporary):
            os.unlink(temporary)
    return resolved
