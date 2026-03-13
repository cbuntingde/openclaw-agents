# Learning & Development Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

🎓 Employee training and development management agent.

## Features

- **Training Tracking** — Monitor completion and progress across programs
- **Certification Management** — Track certifications and renewals
- **Course Recommendations** — Personalize learning paths based on roles
- **Skills Gap Analysis** — Identify training needs
- **Compliance Training** — Ensure mandatory training completion

## Architecture

```
learning-development-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term L&D knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── training-tracker/      # Track training
│       ├── certification-manager/ # Manage certs
│       └── course-recommender/   # Recommend courses
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- At least one configured channel (Slack, Email)
- Access to LMS or training records

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-learning

# Copy workspace files
cp -r learning-development-agent/workspace/* ~/.openclaw/workspace-learning/
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
openclaw agents add learning-development
```

### 5. Configure Channels

```bash
# Slack (recommended for training updates)
openclaw channels login --channel slack --account learning-bot
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
        id: "learning-development",
        name: "Learning & Development Agent",
        workspace: "~/.openclaw/workspace-learning",
        model: "anthropic/claude-sonnet-4-5",
        heartbeat: {
          every: "24h",
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

## Skills

### training-tracker

Tracks training completion.

```markdown
# Features
- Monitor completion rates
- Track progress
- Report on metrics
- Identify overdue training
```

### certification-manager

Manages certifications.

```markdown
# Features
- Track expiration
- Manage renewals
- Verify compliance
- Certificate storage
```

### course-recommender

Recommends courses.

```markdown
# Features
- Personalize paths
- Role-based suggestions
- Skills gap analysis
- Recommend content
```

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks (default: daily) to:
- Check for expiring certifications
- Monitor compliance training
- Track overdue training

### Manual Commands

```bash
# Training status
openclaw agent --message "training status for john" --agent learning-development

# Course recommendations
openclaw agent --message "recommend courses for engineer" --agent learning-development

# Compliance report
openclaw agent --message "compliance report" --agent learning-development
```

### Cron Jobs

```bash
# Weekly training report
openclaw cron add \
  --name "Weekly Training Report" \
  --cron "0 9 * * 1" \
  --session isolated \
  --message "Generate training report" \
  --announce \
  --channel slack
```

## Integration

| LMS | Status |
|-----|--------|
| Cornerstone | Supported |
| Workday | Supported |
| SAP SuccessFactors | Supported |
| Custom | API configurable |

## Security Considerations

- **Employee Data**: Handles training records
- **PII Protection**: GDPR compliant
- **Access Control**: HR and managers only

See [OpenClaw Security](https://docs.openclaw.ai/gateway/security) for more.

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)
- **Discord**: [OpenClaw Community](https://discord.gg/openclaw)

---

*Built for HR and L&D teams*
