#!/usr/bin/env python3
"""
Process all email files in the Aegis campaign:
1. Extract and validate email addresses from TO field
2. Fix any malformed email addresses
3. Add the configured CC field to all emails
4. Report all changes made
"""

import os
import re
import sys
from pathlib import Path

EMAIL_DIR = "CSMReach/CSMEmailOutgoing/July2026"
CC_EMAIL = os.environ.get("CSM_CC_ADDRESS", "")

# Email validation regex
EMAIL_REGEX = re.compile(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')

def extract_emails_from_to_field(to_text):
    """Extract valid email addresses from TO field text."""
    # Find all email-like patterns
    email_pattern = re.compile(r'\b[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\b')
    found = email_pattern.findall(to_text)
    # Validate each
    valid = [e for e in found if EMAIL_REGEX.match(e)]
    return valid

def validate_email_format(email):
    """Check if email is properly formatted."""
    return bool(EMAIL_REGEX.match(email))

def fix_email_format(email):
    """Attempt to fix common email formatting issues."""
    # Remove any surrounding punctuation
    email = email.strip('.,;<>()"[]{}')
    # Fix common issues
    email = email.replace('..', '.')
    email = email.replace(',,', ',')
    # If it has spaces around @, remove them
    email = re.sub(r'\s*@\s*', '@', email)
    return email

def process_email_file(filepath):
    """Process a single email file."""
    with open(filepath, 'r') as f:
        content = f.read()
    
    original_content = content
    changes = []
    
    # Extract TO field
    to_match = re.search(r'\*\*TO:\*\*\s*(.+)', content)
    if not to_match:
        return {'file': filepath, 'changes': ['No TO field found'], 'emails': []}
    
    to_text = to_match.group(1).strip()
    emails = extract_emails_from_to_field(to_text)
    
    # Check each email for formatting issues
    fixed_emails = []
    for email in emails:
        if not validate_email_format(email):
            fixed = fix_email_format(email)
            if validate_email_format(fixed) and fixed != email:
                changes.append(f"Fixed email: {email} -> {fixed}")
                fixed_emails.append(fixed)
            else:
                changes.append(f"WARNING: Could not fix email: {email}")
                fixed_emails.append(email)
        else:
            fixed_emails.append(email)
    
    # If we fixed emails, update the TO field
    if fixed_emails != emails:
        # Replace the TO line
        new_to_text = ', '.join(fixed_emails)
        content = re.sub(
            r'(\*\*TO:\*\*\s*)(.+)',
            r'\1' + new_to_text,
            content
        )
    
    # Add CC field after REPLY-TO or FROM field
    cc_pattern = r'\*\*CC:\*\*'
    if not re.search(cc_pattern, content):
        # Find REPLY-TO or FROM field to insert after
        reply_to_match = re.search(r'(\*\*REPLY-TO:\*\*\s*.+)', content)
        from_match = re.search(r'(\*\*FROM:\*\*\s*.+)', content)
        
        if reply_to_match:
            insert_after = reply_to_match.group(1)
            content = content.replace(insert_after, insert_after + f'\n**CC:** {CC_EMAIL}')
            changes.append(f"Added CC: {CC_EMAIL} (after REPLY-TO)")
        elif from_match:
            insert_after = from_match.group(1)
            content = content.replace(insert_after, insert_after + f'\n**CC:** {CC_EMAIL}')
            changes.append(f"Added CC: {CC_EMAIL} (after FROM)")
        else:
            changes.append("WARNING: No REPLY-TO or FROM field found to insert CC")
    else:
        changes.append("CC field already exists")
    
    # Write back if changed
    if content != original_content:
        with open(filepath, 'w') as f:
            f.write(content)
    
    return {
        'file': filepath,
        'changes': changes,
        'emails': fixed_emails,
        'original_to': to_text
    }

def main():
    email_files = []
    for batch_dir in sorted(Path(EMAIL_DIR).glob("BATCH-*")):
        for email_file in sorted(batch_dir.glob("E*.md")):
            email_files.append(email_file)
    
    print(f"Found {len(email_files)} email files to process\n")
    
    all_results = []
    total_fixes = 0
    total_cc_added = 0
    files_with_issues = 0
    
    for email_file in email_files:
        result = process_email_file(email_file)
        all_results.append(result)
        
        if result['changes']:
            files_with_issues += 1
            for change in result['changes']:
                if 'Fixed email' in change:
                    total_fixes += 1
                if 'Added CC' in change:
                    total_cc_added += 1
    
    # Print summary
    print("=" * 80)
    print("PROCESSING SUMMARY")
    print("=" * 80)
    print(f"Total files processed: {len(email_files)}")
    print(f"Files with changes: {files_with_issues}")
    print(f"Email addresses fixed: {total_fixes}")
    print(f"CC fields added: {total_cc_added}")
    print()
    
    # Print details for files with changes
    print("DETAILED CHANGES:")
    print("-" * 80)
    for result in all_results:
        if result['changes']:
            print(f"\n{result['file']}:")
            for change in result['changes']:
                print(f"  - {change}")
            if result['emails']:
                print(f"  Emails: {', '.join(result['emails'])}")
    
    # Print all unique email addresses found
    all_emails = set()
    for result in all_results:
        all_emails.update(result['emails'])
    
    print(f"\n\nALL UNIQUE EMAIL ADDRESSES ({len(all_emails)} total):")
    print("-" * 80)
    for email in sorted(all_emails):
        print(f"  {email}")

if __name__ == '__main__':
    main()