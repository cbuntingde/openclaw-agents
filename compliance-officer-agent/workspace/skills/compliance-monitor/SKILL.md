---
name: compliance-monitor
description: Monitor regulatory changes and compliance requirements across multiple frameworks
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["REGULATORY_API_KEY"] },
        "primaryEnv": "REGULATORY_API_KEY",
        "emoji": "📋",
      },
  }
---

# Compliance Monitor Skill

Monitor regulatory changes and compliance requirements from authoritative sources.

## When to Use

- During heartbeat checks
- When asked to check for regulatory updates
- On scheduled cron jobs

## How It Works

1. Query configured regulatory update APIs
2. Filter for applicable regulations
3. Compare against known requirements
4. Generate alerts for new/changed requirements

## Supported Frameworks

- GDPR (EU)
- CCPA (California)
- HIPAA (Healthcare)
- SOC 2 (Security)
- PCI-DSS (Payment Cards)
- ISO 27001 (Security)

## Output Format

For each regulatory update, provide:

```
## [Regulation Name]

**Change Type**: [New/Amended/Withdrawn]
**Effective Date**: YYYY-MM-DD
**Affected Areas**: [List of affected requirements]
**Impact**: [Low/Medium/High/Critical]
**Action Required**: [Description]
```

## Alert Thresholds

| Change Type | Impact | Alert Level |
|-------------|--------|-------------|
| New requirement | Critical | Immediate |
| New requirement | High | 24 hours |
| Amendment | High | 24 hours |
| Amendment | Medium | Weekly report |
| Withdrawn | Any | Weekly report |

## Configuration

Set via environment variables:

- `REGULATORY_API_KEY` - API key for regulatory monitoring service
- `MONITORED_REGULATIONS` - Comma-separated list (default: all)
- `ALERT_WEBHOOK` - Slack/Teams webhook for alerts

## Notes

- Always verify regulatory updates from official sources
- Include official source links in all reports
- When uncertain about applicability, escalate to human reviewer
