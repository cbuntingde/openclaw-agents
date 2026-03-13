# Database Monitor Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

🗄️ Proactive database performance monitoring and optimization.

## Features

- **Query Performance** — Monitor slow queries and analyze execution plans
- **Index Health** — Analyze index usage and identify missing indexes
- **Connection Pooling** — Monitor connections and detect leaks
- **Capacity Planning** — Forecast storage and performance needs
- **Alert Management** — Proactive alerts before issues impact users

## Architecture

```
database-monitor-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term DB knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── query-performance/     # Monitor queries
│       ├── index-health/         # Analyze indexes
│       └── connection-pooling/   # Manage connections
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- At least one configured channel (Slack, Email, PagerDuty)
- Database access (read-only recommended)

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-database

# Copy workspace files
cp -r database-monitor-agent/workspace/* ~/.openclaw/workspace-database/
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
openclaw agents add database
```

### 5. Configure Channels

```bash
# Slack (recommended for alerts)
openclaw channels login --channel slack --account database-bot
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
        id: "database",
        name: "Database Monitor Agent",
        workspace: "~/.openclaw/workspace-database",
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
| `DB_HOST` | Database host | No |
| `DB_USER` | Database user | No |
| `DB_PASSWORD` | Database password | No |
| `PAGERDUTY_KEY` | PagerDuty integration | No |

## Skills

### query-performance

Monitors query performance.

```markdown
# Features
- Identify slow queries
- Analyze execution plans
- Suggest optimizations
- Track query patterns
```

### index-health

Analyzes index health.

```markdown
# Features
- Analyze index usage
- Identify missing indexes
- Track fragmentation
- Recommend optimizations
```

### connection-pooling

Manages connection pooling.

```markdown
# Features
- Monitor connections
- Detect leaks
- Optimize pooling
- Alert on exhaustion
```

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks (default: every 15 minutes) to:
- Check for slow queries
- Verify connection health
- Monitor storage capacity

### Manual Commands

```bash
# Check database health
openclaw agent --message "database health" --agent database

# Slow queries
openclaw agent --message "show slow queries" --agent database

# Index recommendations
openclaw agent --message "index recommendations" --agent database
```

### Cron Jobs

```bash
# Hourly health check
openclaw cron add \
  --name "Hourly DB Health" \
  --cron "0 * * * *" \
  --session isolated \
  --message "Run database health check" \
  --announce \
  --channel slack
```

## Supported Databases

| Database | Status |
|----------|--------|
| PostgreSQL | Supported |
| MySQL | Supported |
| MongoDB | Supported |
| Redis | Supported |
| SQL Server | Supported |

## Alert Severity

| Level | Trigger | Response |
|-------|---------|----------|
| Critical | DB down, connection exhaustion | Immediate page |
| High | Slow queries > 5s, high CPU | Slack + email |
| Medium | Index recommendations | Daily report |
| Low | Storage warnings | Weekly report |

## Security Considerations

- **Read-Only Access**: Prefer read-only database connections
- **Sensitive Data**: May access query content
- **Audit Trail**: All queries logged

See [OpenClaw Security](https://docs.openclaw.ai/gateway/security) for more.

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)
- **Discord**: [OpenClaw Community](https://discord.gg/openclaw)

---

*Built for DevOps and DBA teams*
