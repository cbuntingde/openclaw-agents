---
name: secret-scanner
description: Scan repositories for exposed secrets, API keys, tokens and credentials
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["GITHUB_TOKEN"] },
        "primaryEnv": "GITHUB_TOKEN",
        "emoji": "🔐",
      },
  }
---

# Secret Scanner Skill

Scan repositories for exposed secrets, API keys, tokens, and credentials.

## When to Use

- During heartbeat checks
- When asked to scan for secrets
- On scheduled cron jobs

## How It Works

1. Query GitHub API for repository contents
2. Scan files for secret patterns using regex
3. Report findings with severity and location
4. Generate alerts for any findings

## Detectable Secrets

| Type | Pattern | Severity |
|------|---------|----------|
| AWS Access Key | `AKIA[0-9A-Z]{16}` | Critical |
| GitHub Token | `gh[pousr]_[A-Za-z0-9_]{36,}` | Critical |
| Private Key | `-----BEGIN (RSA\|DSA\|EC) PRIVATE KEY-----` | Critical |
| Generic API Key | `[aA][pP][iI][_-]?[kK][eE][yY].*['"][0-9a-zA-Z]{32,}['"]` | High |
| Password | `[pP][aA][sS][sS][wW][oO][rR][dD].*['"][^'"]+['"]` | High |
| JWT | `eyJ[A-Za-z0-9-_=]+\.eyJ[A-Za-z0-9-_=]+\.[A-Za-z0-9-_.+/=]*` | High |

## Output Format

```
## Secret Scan Results

**Repository**: [REPO]
**Scan Date**: [DATE]
**Files Scanned**: [COUNT]

### Findings

| Severity | Type | File | Line |
|----------|------|------|------|
| Critical | AWS Key | src/config.js | 42 |
| High | API Key | lib/auth.py | 15 |

### Remediation

1. Rotate exposed credentials immediately
2. Remove hardcoded secrets from code
3. Use environment variables or secrets management
4. Enable secret scanning in GitHub settings
```

## Configuration

Set via environment variables:

- `GITHUB_TOKEN` - GitHub API token with repo scope
- `SCAN_ORG` - Organization to scan (default: all accessible)
- `EXCLUDE_PATTERNS` - Glob patterns to exclude

## Notes

- Always verify findings before reporting (false positives possible)
- Prioritize findings in production code
- Include remediation steps in all reports
- Never log or store actual secret values
