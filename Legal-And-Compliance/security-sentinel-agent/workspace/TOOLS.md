# TOOLS.md - Local Tool Notes

## Available Tools

### Security Skills

- `secret-scanner` - Scan for exposed secrets
- `vuln-monitor` - Track vulnerabilities
- `cve-tracker` - Monitor CVEs
- `breach-checker` - Check for breaches

### Standard Tools

- `read` - Read files in workspace
- `memory_search` - Search security memory
- `memory_get` - Retrieve specific memory entries

## Conventions

### Severity Levels

| Level | Description | Response Time |
|-------|-------------|---------------|
| Critical | Immediate action required | Immediate |
| High | Action within 24 hours | 24 hours |
| Medium | Action within 7 days | 7 days |
| Low | Informational | Weekly report |

### Finding Format

Always include:
- Severity level
- Affected resource
- Description
- Remediation steps
- References

### Secret Patterns to Detect

- AWS keys: `AKIA[0-9A-Z]{16}`
- GitHub tokens: `gh[pousr]_[A-Za-z0-9_]{36,251}`
- Private keys: `-----BEGIN (RSA|DSA|EC) PRIVATE KEY-----`
- Generic API keys: `[aA][pP][iI][_-]?[kK][eE][yY].*['"][0-9a-zA-Z]{32,}['"]`

## External Services

### GitHub

- [CONFIGURE: Add GitHub token]

### HaveIBeenPwned

- [CONFIGURE: Add API key if using breach checking]
