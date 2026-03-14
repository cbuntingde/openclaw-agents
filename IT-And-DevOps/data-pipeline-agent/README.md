# Data Pipeline Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for data pipeline operations. This agent monitors ETL jobs, alerts on failures, tracks data quality, and ensures reliable data flow across your organization.

## What This Agent Does

The Data Pipeline Agent is your automated data operations specialist. It ensures data flows reliably from source to destination by monitoring pipeline health, alerting on issues, and maintaining data quality standards.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Job Monitoring** | Track ETL job status and performance |
| **Failure Alerting** | Notify on pipeline failures |
| **Quality Checks** | Validate data quality metrics |
| **Runbook Execution** | Trigger automated remediation |
| **Trend Analysis** | Identify patterns in pipeline health |

## How It Works

### 1. Job Monitoring Process

```
┌─────────────────────────────────────────────────────────────┐
│                   JOB MONITORING WORKFLOW                      │
├─────────────────────────────────────────────────────────────┤
│  Monitoring Metrics:                                         │
│  - Job status (running, success, failed)                     │
│  - Execution time vs baseline                               │
│  - Records processed                                        │
│  - Data volume changes                                      │
│  - Resource utilization                                     │
│                                                              │
│  Process:                                                  │
│  1. Query orchestrator status                               │
│  2. Check job completion                                   │
│  3. Compare metrics to baseline                            │
│  4. Identify anomalies                                     │
│  5. Update dashboard                                       │
│  6. Alert if needed                                        │
└─────────────────────────────────────────────────────────────┘
```

### 2. Failure Alerting Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                  FAILURE ALERTING WORKFLOW                     │
├─────────────────────────────────────────────────────────────┤
│  Alert Triggers:                                           │
│  - Job failure                                             │
│  - SLA breach                                              │
│  - Data quality threshold breach                           │
│  - Resource exhaustion                                     │
│  - Dependency failure                                       │
│                                                              │
│  Process:                                                  │
│  1. Detect failure                                         │
│  2. Classify severity                                      │
│  3. Determine escalation path                             │
│  4. Send alert                                             │
│  5. Create incident ticket                                 │
│  6. Begin remediation                                     │
└─────────────────────────────────────────────────────────────┘
```

### 3. Quality Checking Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                 QUALITY CHECKING WORKFLOW                      │
├─────────────────────────────────────────────────────────────┤
│  Quality Metrics:                                           │
│  - Completeness (nulls, missing values)                    │
│  - Accuracy (invalid values, outliers)                     │
│  - Consistency (schema changes, duplicates)                │
│  - Timeliness (freshness, lateness)                       │
│  - Uniqueness (duplicate records)                          │
│                                                              │
│  Process:                                                  │
│  1. Run quality checks                                     │
│  2. Calculate metrics                                      │
│  3. Compare to thresholds                                  │
│  4. Flag violations                                        │
│  5. Generate quality report                                │
│  6. Alert on critical issues                               │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **job-monitor** | Track ETL job status | Regular monitoring |
| **failure-alerter** | Alert on failures | Incidents |
| **quality-checker** | Validate data quality | Scheduled checks |

### job-monitor

Monitors ETL job status and performance.

**When to use:**
- Regular monitoring
- Performance review
- Anomaly detection

**Key functions:**
- Check job status
- Track metrics
- Compare to baseline

### failure-alerter

Alerts on pipeline failures.

**When to use:**
- Job failures
- SLA breaches
- Quality issues

**Key functions:**
- Detect failures
- Classify severity
- Send alerts

### quality-checker

Validates data quality metrics.

**When to use:**
- Scheduled checks
- Post-job validation
- Audit preparation

**Key functions:**
- Run checks
- Calculate metrics
- Generate reports

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `ORCHESTRATOR_API` | API for pipeline orchestrator | Yes |
| `ALERT_WEBHOOK` | Webhook for alerts | Yes |
| `MONITORING_SYSTEM` | Monitoring integration | No |

### Alert Thresholds

| Metric | Warning | Critical |
|--------|---------|----------|
| Job Duration | +50% baseline | +100% baseline |
| Failure Rate | 1% | 5% |
| Data Quality | <95% | <90% |
| Freshness | >1 hour | >4 hours |

## Identity

- **Name**: Data Pipeline Agent
- **Emoji**: 🔄
- **Color**: blue
- **Personality**: Vigilant, proactive, data-focused, reliable

## Integrations

### Supported Orchestrators

- Airflow
- Dagster
- Prefect
- AWS Glue
- Azure Data Factory

### Supported Monitoring

- Datadog
- Prometheus
- Grafana
- PagerDuty

## Success Metrics

This agent is successful when:

- [ ] 99.9% pipeline uptime
- [ ] <5 minute MTTR
- [ ] Alert accuracy >95%
- [ ] Quality issues detected <1 hour
- [ ] Zero data loss incidents
- [ ] Dashboard accuracy 100%

## Directory Structure

```
data-pipeline-agent/
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
        ├── job-monitor/
        │   └── SKILL.md
        ├── failure-alerter/
        │   └── SKILL.md
        └── quality-checker/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r data-pipeline-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "data-pipeline": {
           enabled: true,
           env: {
             ORCHESTRATOR_API: "your-orchestrator-api",
             ALERT_WEBHOOK: "your-webhook"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for pipeline monitoring

## Security Notes

- This agent monitors sensitive data pipelines
- Access limited to data engineering
- Alert data is sanitized
- Credentials stored securely
- Audit logs maintained

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
