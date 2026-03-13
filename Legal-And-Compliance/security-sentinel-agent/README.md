# Security Sentinel Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Security: Secrets | Vulnerabilities | CVEs](https://img.shields.io/badge/Security-Secrets%20%7C%20Vulnerabilities%20%7C%20CVEs-red.svg)](README.md)

A professional OpenClaw agent for enterprise security monitoring. Detects exposed secrets, tracks vulnerabilities, alerts on CVEs, and monitors for security breaches.

## Features

- **Secret Detection** — Scan for exposed API keys, tokens, credentials in codebases
- **Vulnerability Monitoring** — Track vulnerable dependencies across repositories
- **CVE Alerts** — Monitor for relevant security vulnerabilities
- **Breach Monitoring** — Check for compromised credentials
- **Security Reporting** — Generate security status reports
- **Incident Alerting** — Route critical security alerts immediately

## Architecture

```
security-sentinel-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term security knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── secret-scanner/       # Exposed secrets detection
│       ├── vuln-monitor/         # Dependency vulnerability tracking
│       ├── cve-tracker/          # CVE monitoring & alerts
│       └── breach-checker/       # Credential breach monitoring
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- GitHub/GitLab API access for repository scanning
- Security API keys (optional for enhanced features)

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-security

# Copy workspace files
cp -r security-sentinel-agent/workspace/* ~/.openclaw/workspace-security/
```

### 3. Configure the Agent

```bash
# Copy configuration template
cp config/openclaw.json.example ~/.openclaw/openclaw.json

# Edit with your credentials
nano ~/.openclaw/openclaw.json
```

### 4. Register the Agent

```bash
openclaw agents add security
```

### 5. Configure Channels

```bash
# Slack (recommended for alerts)
openclaw channels login --channel slack --account security-bot
```

### 6. Start the Gateway

```bash
openclaw gateway restart
```

## Configuration

### Agent Settings

Edit `~/.openclaw/openclaw.json` to customize:

```json5
{
  agents: {
    list: [
      {
        id: "security",
        name: "Security Sentinel",
        workspace: "~/.openclaw/workspace-security",
        model: "anthropic/claude-sonnet-4-5",
        heartbeat: {
          every: "15m",
          target: "slack",
        },
        sandbox: {
          mode: "all",
          scope: "agent",
        },
        tools: {
          allow: ["read", "memory_search", "cron_list"],
          deny: ["exec", "write", "browser"],
        },
      },
    ],
  },
}
```

### Channel Bindings

Route security alerts to specific channels:

```json5
bindings: [
  {
    agentId: "security",
    match: { channel: "slack" },
  },
],
```

### Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `GITHUB_TOKEN` | GitHub API token for scanning | Yes |
| `GITLAB_TOKEN` | GitLab API token | No |
| `HAVEBEENPWNED_API_KEY` | HaveIBeenPwned API | No |
| `SLACK_WEBHOOK` | Slack webhook for alerts | No |

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks (default: every 15 minutes) to:
- Check for new vulnerabilities
- Monitor for exposed secrets
- Verify security scan results

### Manual Commands

```bash
# Run security scan
openclaw agent --message "scan repositories for secrets" --agent security

# Check for CVEs
openclaw agent --message "check for new CVEs" --agent security

# Generate security report
openclaw agent --message "generate weekly security report" --agent security
```

### Cron Jobs

Schedule automated security scans:

```bash
# Daily security scan at 2 AM
openclaw cron add \
  --name "Daily Security Scan" \
  --cron "0 2 * * *" \
  --session isolated \
  --message "Run full security scan on all repositories" \
  --announce \
  --channel slack
```

## Skills

### secret-scanner

Scans repositories for exposed secrets.

```markdown
# Capabilities
- API key detection
- Token scanning
- Credential detection
- Custom pattern matching
```

### vuln-monitor

Monitors dependencies for vulnerabilities.

```markdown
# Features
- GitHub Dependabot integration
- npm audit support
- Python safety checks
- Container scanning
```

### cve-tracker

Tracks and alerts on CVEs.

```markdown
# Alert Levels
- Critical: Immediate (phone + Slack + email)
- High: 24 hours (Slack + email)
- Medium: 7 days (email)
- Low: Weekly report
```

### breach-checker

Checks for compromised credentials.

```markdown
# Checks
- Email breach monitoring
- Domain breach scanning
- Paste detection
```

## Customization

### Add Custom Secret Patterns

Edit `workspace/skills/secret-scanner/SKILL.md` to add custom regex patterns.

### Configure Scan Targets

Edit `workspace/MEMORY.md`:

```markdown
## Scan Targets

### Repositories
- org/frontend-app
- org/backend-api
- org/infrastructure
```

## Troubleshooting

### Agent Not Responding

```bash
# Check agent status
openclaw agents list

# View logs
openclaw logs --agent security
```

### API Rate Limits

```bash
# Check rate limits
curl -H "Authorization: token $GITHUB_TOKEN" \
  https://api.github.com/rate_limit
```

## Security Considerations

- **Sandbox Mode**: Enabled by default; restricts tools to read-only
- **No Exec**: Command execution is disabled for this agent
- **Credential Handling**: Never log or expose sensitive credentials
- **Audit Trail**: All scans and findings are logged

## Supported Integrations

| Service | Status | Description |
|---------|--------|-------------|
| GitHub | Supported | Repository scanning, Dependabot |
| GitLab | Supported | Repository scanning |
| HaveIBeenPwned | Optional | Breach monitoring |
| Slack | Supported | Alert routing |
| PagerDuty | Optional | On-call escalation |

## Roadmap

- [ ] Integration with security dashboards
- [ ] Automated remediation workflows
- [ ] Container security scanning
- [ ] Cloud infrastructure scanning
- [ ] SIEM integration

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)

---

*Built with for enterprise security*
