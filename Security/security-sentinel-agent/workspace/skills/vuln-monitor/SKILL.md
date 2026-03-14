---
name: vuln-monitor
description: Monitor dependencies for vulnerabilities across repositories
metadata:
  {
    "openclaw": { "emoji": "🔍" },
  }
---

# Vulnerability Monitor Skill

Monitor dependencies for vulnerabilities across repositories.

## When to Use

- During heartbeat checks
- When asked about vulnerabilities
- On scheduled cron jobs

## Capabilities

### 1. Dependabot Alert Monitoring

Query GitHub Dependabot for:
- Open vulnerabilities
- Severity levels
- Affected package versions
- Remediation status

### 2. Vulnerability Tracking

Track vulnerabilities over time:
- New findings
- Remediations in progress
- Resolved issues

### 3. Remediation Guidance

For each vulnerability, provide:
- CVE/NVD reference
- Affected versions
- Fixed version
- Remediation steps

## Output Format

```
## Vulnerability Report

**Organization**: [ORG]
**Report Date**: [DATE]
**Repositories Monitored**: [COUNT]

### Summary

| Severity | Open | In Progress | Resolved |
|----------|------|-------------|----------|
| Critical | 2 | 1 | 5 |
| High | 5 | 2 | 12 |
| Medium | 10 | 3 | 25 |
| Low | 15 | 5 | 40 |

### Critical Vulnerabilities

| Repository | Package | Severity | Status | Due Date |
|------------|---------|----------|--------|----------|
| frontend | lodash 4.17.20 | Critical | Open | 2026-03-15 |
```

## Alert Thresholds

| Severity | Alert Immediately | Auto-Create Issue |
|----------|------------------|-------------------|
| Critical | Yes | Yes |
| High | Yes | Yes |
| Medium | Weekly report | Optional |
| Low | Monthly report | No |

## Configuration

- `GITHUB_TOKEN` - GitHub API token
- `AUTO_ESCALATE` - Send alerts for critical vulns

## Integration

Works with:
- `secret-scanner` - Combined security reports
- `cve-tracker` - CVE context
