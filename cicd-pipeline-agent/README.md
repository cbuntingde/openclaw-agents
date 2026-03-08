# CI/CD Pipeline Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

🔄 Automated CI/CD pipeline monitoring and management.

## Features

- **Build Monitoring** — Track build status, times, and analyze failures
- **Deployment Tracking** — Monitor releases and verify rollouts
- **Failure Alerting** — Alert on failures and recommend fixes
- **Pipeline Optimization** — Identify bottlenecks and improve throughput
- **Integration Support** — Works with GitHub Actions, GitLab CI, Jenkins, CircleCI

## Architecture

```
cicd-pipeline-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term pipeline knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── build-monitor/         # Monitor builds
│       ├── deployment-tracker/   # Track deployments
│       └── failure-alerting/     # Alert on failures
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- At least one configured channel (Slack, Email, or WhatsApp)
- Access to CI/CD provider APIs (GitHub, GitLab, Jenkins, etc.)

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-cicd

# Copy workspace files
cp -r cicd-pipeline-agent/workspace/* ~/.openclaw/workspace-cicd/
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
openclaw agents add cicd
```

### 5. Configure Channels

```bash
# Slack (recommended for deployment alerts)
openclaw channels login --channel slack --account cicd-bot
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
        id: "cicd",
        name: "CI/CD Pipeline Agent",
        workspace: "~/.openclaw/workspace-cicd",
        model: "anthropic/claude-sonnet-4-5",
        heartbeat: {
          every: "15m",
          target: "slack",
        },
        sandbox: {
          mode: "all",
          scope: "agent",
        },
      },
    ],
  },
}
```

### Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `GITHUB_TOKEN` | GitHub API token | No |
| `GITLAB_TOKEN` | GitLab API token | No |
| `JENKINS_URL` | Jenkins server URL | No |
| `SLACK_WEBHOOK` | Slack webhook for alerts | No |

## Skills

### build-monitor

Monitors CI/CD build status.

```markdown
# Features
- Track build status in real-time
- Monitor build times
- Analyze failure patterns
- Identify flaky tests
```

### deployment-tracker

Tracks deployments and releases.

```markdown
# Features
- Monitor deployment status
- Track release versions
- Verify rollouts
- Monitor canary deployments
```

### failure-alerting

Alerts on build and deployment failures.

```markdown
# Features
- Real-time failure notifications
- Root cause analysis
- Recommend fixes
- Track issue resolution
```

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks (default: every 15 minutes) to:
- Check build status across all pipelines
- Monitor active deployments
- Verify recent deployments completed successfully

### Manual Commands

```bash
# Check pipeline status
openclaw agent --message "pipeline status" --agent cicd

# Get deployment info
openclaw agent --message "latest deployment" --agent cicd

# Analyze failures
openclaw agent --message "analyze failures" --agent cicd
```

### Cron Jobs

```bash
# Hourly pipeline health check
openclaw cron add \
  --name "Hourly Pipeline Health" \
  --cron "0 * * * *" \
  --session isolated \
  --message "Check pipeline health" \
  --announce \
  --channel slack
```

## Supported CI/CD Platforms

| Platform | Status |
|----------|--------|
| GitHub Actions | Supported |
| GitLab CI | Supported |
| Jenkins | Supported |
| CircleCI | Supported |
| Azure DevOps | Supported |

## Security Considerations

- **Read-Only Access**: Agent primarily reads from CI/CD APIs
- **Alerts Only**: Does not trigger deployments without approval
- **Audit Trail**: Maintains logs of all actions

See [OpenClaw Security](https://docs.openclaw.ai/gateway/security) for more.

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)
- **Discord**: [OpenClaw Community](https://discord.gg/openclaw)

---

*Built for DevOps teams*
