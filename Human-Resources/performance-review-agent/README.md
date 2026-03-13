# Performance Review Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

📝 Comprehensive performance review and goal tracking agent.

## Features

- **Goal Tracking** — Monitor employee goals and OKRs
- **Feedback Collection** — Gather 360-degree feedback
- **Review Generation** — Generate performance review drafts
- **Review Cycle Management** — Manage annual and quarterly cycles
- **Calibration Support** — Assist with calibration meetings

## Architecture

```
performance-review-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term review knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── goal-tracker/          # Track employee goals
│       ├── feedback-collector/    # Collect feedback
│       └── review-generator/      # Generate reviews
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- At least one configured channel (Slack, Email)
- Access to HRIS and performance systems

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-performance-review

# Copy workspace files
cp -r performance-review-agent/workspace/* ~/.openclaw/workspace-performance-review/
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
openclaw agents add performance-review
```

### 5. Configure Channels

```bash
# Slack (recommended for HR updates)
openclaw channels login --channel slack --account performance-review-bot
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
        id: "performance-review",
        name: "Performance Review Agent",
        workspace: "~/.openclaw/workspace-performance-review",
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

### goal-tracker

Tracks employee goals.

```markdown
# Features
- Track OKRs
- Monitor progress
- Flag at-risk goals
- Progress reporting
```

### feedback-collector

Collects feedback.

```markdown
# Features
- Gather peer feedback
- Manager input
- Self-assessments
- Anonymous collection
```

### review-generator

Generates reviews.

```markdown
# Features
- Synthesize feedback
- Generate drafts
- Ensure consistency
- Rating calibration
```

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks (default: daily) to:
- Check goal progress
- Review pending feedback
- Monitor review cycle status

### Manual Commands

```bash
# Goal status
openclaw agent --message "goal status for john" --agent performance-review

# Collect feedback
openclaw agent --message "collect feedback for team" --agent performance-review

# Generate review
openclaw agent --message "generate review for employee-123" --agent performance-review
```

### Review Cycle Timeline

```
Week 1: Self-assessments
Week 2: Peer feedback
Week 3: Manager review
Week 4: Calibration
Week 5: Delivery
```

## Integration

| HRIS | Status |
|------|--------|
| Workday | Supported |
| BambooHR | Supported |
| SAP SuccessFactors | Supported |
| Custom | API configurable |

## Security Considerations

- **Confidential Data**: Handles sensitive employee information
- **Access Control**: HR and managers only
- **Data Privacy**: GDPR compliant

See [OpenClaw Security](https://docs.openclaw.ai/gateway/security) for more.

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)
- **Discord**: [OpenClaw Community](https://discord.gg/openclaw)

---

*Built for HR and management*
