# Quality Assurance Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

🧪 Software quality assurance and testing agent.

## Features

- **Test Execution** — Run automated tests and report results
- **Defect Tracking** — Track bugs and prioritize issues
- **Standard Validation** — Ensure code meets quality standards
- **Test Coverage** — Monitor and improve test coverage
- **Regression Testing** — Verify fixes don't introduce new issues

## Architecture

```
quality-assurance-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term QA knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── test-runner/           # Run tests
│       ├── defect-tracker/       # Track defects
│       └── standard-validator/  # Validate standards
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- At least one configured channel (Slack, Email)
- Access to CI/CD and test systems

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-quality-assurance

# Copy workspace files
cp -r quality-assurance-agent/workspace/* ~/.openclaw/workspace-quality-assurance/
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
openclaw agents add quality-assurance
```

### 5. Configure Channels

```bash
# Slack (recommended for QA updates)
openclaw channels login --channel slack --account qa-bot
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
        id: "quality-assurance",
        name: "Quality Assurance Agent",
        workspace: "~/.openclaw/workspace-quality-assurance",
        model: "anthropic/claude-sonnet-4-5",
        heartbeat: {
          every: "30m",
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

### test-runner

Runs automated tests.

```markdown
# Features
- Execute test suites
- Report results
- Monitor coverage
- Track flaky tests
```

### defect-tracker

Tracks defects.

```markdown
# Features
- Log bugs
- Prioritize issues
- Track status
- Verify fixes
```

### standard-validator

Validates standards.

```markdown
# Features
- Code review
- Style checking
- Security scanning
- Best practices
```

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks (default: every 30 minutes) to:
- Check test results
- Monitor defect status
- Verify coverage

### Manual Commands

```bash
# Run tests
openclaw agent --message "run test suite" --agent quality-assurance

# Defect summary
openclaw agent --message "open defects" --agent quality-assurance

# Coverage report
openclaw agent --message "coverage report" --agent quality-assurance
```

### Cron Jobs

```bash
# Nightly test run
openclaw cron add \
  --name "Nightly Tests" \
  --cron "0 2 * * *" \
  --session isolated \
  --message "Run full test suite" \
  --announce \
  --channel slack
```

## Test Frameworks

| Framework | Status |
|-----------|--------|
| Jest | Supported |
| Cypress | Supported |
| Selenium | Supported |
| Playwright | Supported |
| pytest | Supported |

## Security Considerations

- **Code Access**: May read source code
- **Test Results**: Handles test data
- **No Direct Deployment**: Read-only testing

See [OpenClaw Security](https://docs.openclaw.ai/gateway/security) for more.

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)
- **Discord**: [OpenClaw Community](https://discord.gg/openclaw)

---

*Built for engineering and QA teams*
