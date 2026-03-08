# Workforce Planning Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

👥 Strategic workforce planning and talent management agent.

## Features

- **Headcount Planning** — Model staffing needs and headcount scenarios
- **Skills Gap Analysis** — Identify skill gaps and training needs
- **Succession Planning** — Identify successors and track readiness
- **Workforce Analytics** — Workforce metrics and reporting
- **Budget Planning** — Headcount budget modeling

## Architecture

```
workforce-planning-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term workforce knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── headcount-planner/      # Plan headcount
│       ├── skills-gap-analyzer/    # Analyze skill gaps
│       └── succession-planner/    # Plan succession
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- At least one configured channel (Slack, Email)
- Access to HRIS and workforce data

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-workforce-planning

# Copy workspace files
cp -r workforce-planning-agent/workspace/* ~/.openclaw/workspace-workforce-planning/
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
openclaw agents add workforce-planning
```

### 5. Configure Channels

```bash
# Slack (recommended for HR updates)
openclaw channels login --channel slack --account workforce-planning-bot
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
        id: "workforce-planning",
        name: "Workforce Planning Agent",
        workspace: "~/.openclaw/workspace-workforce-planning",
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

### headcount-planner

Plans headcount.

```markdown
# Features
- Model staffing needs
- Growth scenarios
- Budget modeling
- Trend analysis
```

### skills-gap-analyzer

Analyzes skills gaps.

```markdown
# Features
- Identify gaps
- Recommend training
- Track capabilities
- Future skills planning
```

### succession-planner

Plans succession.

```markdown
# Features
- Identify successors
- Track readiness
- Development planning
- Risk mitigation
```

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks (default: daily) to:
- Monitor headcount changes
- Track skills gaps
- Update succession readiness

### Manual Commands

```bash
# Headcount report
openclaw agent --message "headcount report" --agent workforce-planning

# Skills analysis
openclaw agent --message "engineering skills gap" --agent workforce-planning

# Succession status
openclaw agent --message "succession status for VP" --agent workforce-planning
```

### Cron Jobs

```bash
# Weekly workforce report
openclaw cron add \
  --name "Weekly Workforce Report" \
  --cron "0 9 * * 1" \
  --session isolated \
  --message "Generate workforce report" \
  --announce \
  --channel slack
```

## Planning Horizons

| Type | Horizon |
|------|---------|
| Tactical | 0-6 months |
| Operational | 6-18 months |
| Strategic | 1-3 years |
| Long-term | 3-5 years |

## Integration

| HRIS | Status |
|------|--------|
| Workday | Supported |
| BambooHR | Supported |
| SAP SuccessFactors | Supported |
| Custom | API configurable |

## Security Considerations

- **Employee Data**: Handles sensitive workforce data
- **PII Protection**: GDPR compliant
- **Access Control**: HR and executives only

See [OpenClaw Security](https://docs.openclaw.ai/gateway/security) for more.

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)
- **Discord**: [OpenClaw Community](https://discord.gg/openclaw)

---

*Built for HR and executive teams*
