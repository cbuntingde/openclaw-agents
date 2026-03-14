# Server Monitor Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for server and infrastructure monitoring. This agent monitors server health, tracks performance metrics, manages alerts, and provides capacity planning insights.

## What This Agent Does

The Server Monitor Agent is your automated infrastructure operations specialist. It ensures servers and infrastructure are healthy, performing optimally, and properly sized for current and future workloads.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Health Monitoring** | Check server availability and status |
| **Performance Tracking** | Monitor CPU, memory, disk, network |
| **Capacity Planning** | Forecast resource needs |
| **Alert Management** | Route alerts appropriately |
| **Trend Analysis** | Identify performance patterns |

## How It Works

### 1. Health Monitoring Process

```
┌─────────────────────────────────────────────────────────────┐
│                  HEALTH MONITORING WORKFLOW                   │
├─────────────────────────────────────────────────────────────┤
│  Health Checks:                                             │
│  - Server ping/response                                     │
│  - Service status                                          │
│  - Port availability                                       │
│  - Disk space                                              │
│  - Memory utilization                                      │
│                                                              │
│  Process:                                                  │
│  1. Ping servers                                          │
│  2. Check services                                         │
│  3. Verify connectivity                                    │
│  4. Check resources                                        │
│  5. Update status                                          │
│  6. Alert on issues                                        │
└─────────────────────────────────────────────────────────────┘
```

### 2. Performance Monitoring Workflow

```
┌─────────────────────────────────────────────────────────────┐
│               PERFORMANCE MONITORING WORKFLOW                  │
├─────────────────────────────────────────────────────────────┤
│  Metrics Tracked:                                           │
│  - CPU utilization                                          │
│  - Memory usage                                             │
│  - Disk I/O                                                 │
│  - Network throughput                                       │
│  - Application performance                                  │
│                                                              │
│  Process:                                                  │
│  1. Collect metrics                                        │
│  2. Compare to thresholds                                  │
│  3. Identify trends                                        │
│  4. Generate insights                                      │
│  5. Alert on anomalies                                     │
└─────────────────────────────────────────────────────────────┘
```

### 3. Capacity Planning Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                 CAPACITY PLANNING WORKFLOW                     │
├─────────────────────────────────────────────────────────────┤
│  Planning Inputs:                                           │
│  - Current utilization                                     │
│  - Growth trends                                           │
│  - Seasonal patterns                                        │
│  - Planned launches                                         │
│                                                              │
│  Process:                                                  │
│  1. Analyze current usage                                   │
│  2. Project future needs                                    │
│  3. Identify capacity limits                              │
│  4. Recommend scaling                                     │
│  5. Generate forecast report                               │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **health-check** | Verify server health | Regular monitoring |
| **performance-monitor** | Track metrics | Performance review |
| **capacity-planner** | Forecast needs | Planning cycles |

### health-check

Verifies server health and availability.

**When to use:**
- Regular checks
- Post-deployment verification
- Incident investigation

**Key functions:**
- Ping servers
- Check services
- Verify connectivity

### performance-monitor

Tracks performance metrics over time.

**When to use:**
- Performance tuning
- Issue investigation
- Reporting

**Key functions:**
- Collect metrics
- Analyze trends
- Generate reports

### capacity-planner

Forecasts infrastructure capacity needs.

**When to use:**
- Quarterly planning
- Budget preparation
- Growth planning

**Key functions:**
- Analyze trends
- Project needs
- Recommend actions

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `MONITORING_API` | API for monitoring system | Yes |
| `ALERT_WEBHOOK` | Webhook for alerts | Yes |
| `CLOUD_PROVIDER_API` | Cloud API for capacity | No |

### Alert Thresholds

| Metric | Warning | Critical |
|--------|---------|----------|
| CPU | 70% | 90% |
| Memory | 75% | 90% |
| Disk | 80% | 95% |
| Network | 70% | 90% |

## Identity

- **Name**: Server Monitor Agent
- **Emoji**: 🖥️
- **Color**: blue
- **Personality**: Vigilant, proactive, alert, systematic

## Integrations

### Supported Monitoring Systems

- Datadog
- Prometheus
- New Relic
- CloudWatch
- Azure Monitor

### Supported Infrastructure

- AWS
- Azure
- GCP
- On-premise

## Success Metrics

This agent is successful when:

- [ ] 99.9% uptime monitored
- [ ] <5 minute alert time
- [ ] Capacity issues predicted
- [ ] Zero unplanned downtime
- [ ] Performance optimized
- [ ] Cost optimized

## Directory Structure

```
server-monitor-agent/
├── SKILL.md                              # Agent definition
├── README.md                             # This file
├── config/
│   └── openclaw.json.example             # Configuration example
└── workspace/
    ├── AGENTS.md                         # Operating instructions
    ├── SOUL.md                           # Persona and identity
    ├── IDENTITY.md                       # Name, emoji, quick reference
    ├── USER.md                           # User profiles and preferences
    ├── HEARTBEAT.md                      # Automated checklist
    ├── MEMORY.md                         # Long-term memory
    ├── TOOLS.md                          # Available skills
    ├── memory/
    │   └── YYYY-MM-DD.md                 # Daily activity logs
    └── skills/
        ├── health-check/
        │   └── SKILL.md
        ├── performance-monitor/
        │   └── SKILL.md
        └── capacity-planner/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r server-monitor-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "server-monitor": {
           enabled: true,
           env: {
             MONITORING_API: "your-monitoring-api",
             ALERT_WEBHOOK: "your-webhook"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for server monitoring

## Security Notes

- This agent monitors sensitive infrastructure
- Access limited to IT operations
- Credentials stored securely
- Alert data sanitized
- Audit trails maintained

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
