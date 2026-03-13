# Compensation Analyst Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

💰 Compensation analysis and pay equity management agent.

## Features

- **Pay Equity Analysis** — Identify compensation gaps and ensure compliance
- **Salary Benchmarking** — Compare compensation to market data
- **Increase Planning** — Model salary increases and budget analysis
- **Total Rewards** — Analyze benefits and total compensation
- **Compliance Reporting** — Pay transparency and regulatory compliance

## Architecture

```
compensation-analyst-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term compensation knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── pay-equity-analyzer/   # Analyze pay gaps
│       ├── salary-benchmarker/    # Compare to market
│       └── increase-planner/     # Plan increases
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- At least one configured channel (Slack, Email)
- Access to HRIS and compensation data

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-compensation

# Copy workspace files
cp -r compensation-analyst-agent/workspace/* ~/.openclaw/workspace-compensation/
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
openclaw agents add compensation
```

### 5. Configure Channels

```bash
# Slack (recommended for HR updates)
openclaw channels login --channel slack --account compensation-bot
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
        id: "compensation",
        name: "Compensation Analyst Agent",
        workspace: "~/.openclaw/workspace-compensation",
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

### Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `MARKET_DATA_API` | Market compensation API | No |
| `HRIS_INTEGRATION` | HRIS system connection | No |

## Skills

### pay-equity-analyzer

Analyzes pay equity.

```markdown
# Features
- Identify compensation gaps
- Analyze by demographic
- Ensure compliance
- Generate equity reports
```

### salary-benchmarker

Benchmarks against market data.

```markdown
# Features
- Compare to market
- Analyze trends
- Recommend ranges
- Location adjustments
```

### increase-planners

Plans salary increases.

```markdown
# Features
- Model increases
- Budget analysis
- Merit planning
- Recommend adjustments
```

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks (default: daily) to:
- Monitor compensation changes
- Check for equity issues
- Verify compliance

### Manual Commands

```bash
# Run equity analysis
openclaw agent --message "run equity analysis" --agent compensation

# Get market benchmark
openclaw agent --message "benchmark software engineer" --agent compensation

# Plan increases
openclaw agent --message "plan merit increases" --agent compensation
```

### Cron Jobs

```bash
# Monthly equity report
openclaw cron add \
  --name "Monthly Equity Report" \
  --cron "0 9 1 * *" \
  --session isolated \
  --message "Generate equity analysis report" \
  --announce \
  --channel slack
```

## Compliance

| Regulation | Status |
|------------|--------|
| EEOC | Supported |
| Pay Transparency | Supported |
| Local Wage Laws | Configurable |
| GDPR (EU Data) | Supported |

## Security Considerations

- **Sensitive Data**: Handles confidential employee compensation
- **Access Control**: Restricted to HR and Finance leadership
- **Audit Trail**: Maintains all analysis and recommendations

See [OpenClaw Security](https://docs.openclaw.ai/gateway/security) for more.

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)
- **Discord**: [OpenClaw Community](https://discord.gg/openclaw)

---

*Built for HR and compensation teams*
