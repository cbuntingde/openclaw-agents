# TOOLS.md - Local Tool Notes

## Available Tools

### Compliance Skills

- `compliance_monitor` - Check regulatory update feeds
- `audit_tracker` - List and manage compliance deadlines
- `policy_alerts` - Generate and send compliance alerts

### Standard Tools

- `read` - Read files in workspace
- `memory_search` - Search compliance memory
- `memory_get` - Retrieve specific memory entries

### Communication Tools

- `message` - Send messages via configured channels
- `email` - Send email reports (if configured)

## Conventions

### Deadline Format

Always use ISO 8601 dates: `YYYY-MM-DD`

Example: `2024-03-15` for March 15, 2024

### Report Headers

Include in all reports:
- Report date
- Reporting period
- Distribution list
- Classification level

### Alert Severity

| Level | Description | Response |
|-------|-------------|----------|
| Critical | Immediate action required | Phone + Slack + Email |
| High | Action within 24 hours | Slack + Email |
| Medium | Action within 7 days | Email |
| Low | Informational | Weekly report |

## External Services

### Regulatory APIs

- [CONFIGURE: List your regulatory API credentials]

### Calendar Integration

- [CONFIGURE: Add calendar credentials]

### Communication Channels

- Slack: #compliance-alerts
- Email: compliance-reports@[domain].com
