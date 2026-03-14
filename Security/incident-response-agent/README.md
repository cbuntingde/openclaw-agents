# Incident Response Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for security incident response automation. This agent monitors alerts, runs initial diagnostics, notifies on-call staff, generates incident timelines, and produces post-mortem reports.

## What This Agent Does

The Incident Response Agent is your automated security operations specialist. It ensures incidents are detected quickly, the right people are notified, and proper documentation is created for compliance and learning.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Alert Monitoring** | Watch monitoring systems for security events |
| **Initial Diagnostics** | Run automated checks to gather context |
| **On-Call Notifications** | Alert on-call staff immediately |
| **Timeline Generation** | Create incident timeline automatically |
| **Post-Mortem Reports** | Generate detailed post-incident reports |

## How It Works

### 1. Alert Monitoring Process

```
┌─────────────────────────────────────────────────────────────┐
│                  ALERT MONITORING WORKFLOW                       │
├─────────────────────────────────────────────────────────────┤
│  Monitoring Sources:                                         │
│  - SIEM alerts                                               │
│  - EDR alerts                                                │
│  - Cloud security alerts                                     │
│  - Network security alerts                                   │
│  - Application security alerts                               │
│                                                              │
│  Process:                                                  │
│  1. Pull alerts from monitoring systems                     │
│  2. Filter false positives                                  │
│  3. Prioritize by severity                                  │
│  4. Correlate related alerts                                │
│  5. Create incident ticket                                  │
│  6. Trigger response workflow                               │
└─────────────────────────────────────────────────────────────┘
```

### 2. Diagnostics Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                   DIAGNOSTICS WORKFLOW                            │
├─────────────────────────────────────────────────────────────┤
│  Diagnostic Checks:                                           │
│  - Host health check                                         │
│  - Network connectivity                                      │
│  - Process activity                                          │
│  - Log analysis                                              │
│  - User activity review                                      │
│                                                              │
│  Process:                                                  │
│  1. Receive alert                                            │
│  2. Determine diagnostic playbook                           │
│  3. Execute automated checks                                 │
│  4. Collect evidence                                        │
│  5. Compile diagnostic report                                │
│  6. Enrich incident ticket                                   │
└─────────────────────────────────────────────────────────────┘
```

### 3. On-Call Notification Workflow

```
┌─────────────────────────────────────────────────────────────┐
│               ON-CALL NOTIFICATION WORKFLOW                       │
├─────────────────────────────────────────────────────────────┤
│  Notification Escalation:                                     │
│  - Severity P1: All on-call immediately                     │
│  - Severity P2: Primary + Secondary on-call                  │
│  - Severity P3: Primary on-call                              │
│  - Severity P4: Email during business hours                 │
│                                                              │
│  Process:                                                  │
│  1. Determine severity                                      │
│  2. Identify on-call contacts                               │
│  3. Send notification (call, SMS, Slack, email)            │
│  4. Track acknowledgment                                   │
│  5. Escalate if unacknowledged                             │
│  6. Create bridge link                                     │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 5 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **alert-monitor** | Watch for alerts | Continuous monitoring |
| **diagnostics-runner** | Run diagnostics | Alert received |
| **oncall-notifier** | Alert on-call | Incidents detected |
| **timeline-generator** | Create timeline | Incident in progress |
| **postmortem-generator** | Generate report | Incident closed |

### alert-monitor

Monitors security alerts from various sources.

**When to use:**
- Continuous monitoring
- Alert triage
- False positive filtering

**Key functions:**
- Pull alerts
- Filter noise
- Prioritize severity

### diagnostics-runner

Runs automated diagnostic checks.

**When to use:**
- Alert received
- Incident investigation
- Evidence gathering

**Key functions:**
- Execute checks
- Collect logs
- Compile results

### oncall-notifier

Alerts on-call staff.

**When to use:**
- Critical incidents
- Escalation needed
- Shift changes

**Key functions:**
- Identify contacts
- Send notifications
- Track ack

### timeline-generator

Creates incident timeline.

**When to use:**
- Incident in progress
- Timeline documentation
- Investigation support

**Key functions:**
- Record events
- Track actions
- Document timeline

### postmortem-generator

Generates post-incident reports.

**When to use:**
- Incident resolved
- Post-mortem meeting
- Compliance requirements

**Key functions:**
- Compile timeline
- Analyze root cause
- Document lessons

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `SIEM_API_KEY` | SIEM system API | Yes |
| `ONCALL_API` | On-call scheduling API | Yes |
| `PAGERDUTY_KEY` | PagerDuty or similar | Yes |
| `TICKET_SYSTEM` | Ticketing system | Yes |

### Severity Definitions

| Severity | Definition | Response Time | Escalation |
|----------|------------|--------------|------------|
| P1 Critical | Active breach, data exposure | Immediate | All on-call |
| P2 High | Potential breach, active attack | 15 min | Primary + Secondary |
| P3 Medium | Suspicious activity | 1 hour | Primary on-call |
| P4 Low | Policy violation, minor issue | 4 hours | Email |

## Identity

- **Name**: Incident Response Agent
- **Emoji**: 🚨
- **Color**: red
- **Personality**: Calm, thorough, action-oriented, documentation-focused

## Integrations

### Supported Security Platforms

- Splunk
- Microsoft Sentinel
- AWS GuardDuty
- Azure Sentinel
- Crowdstrike

### Supported On-Call Systems

- PagerDuty
- OpsGenie
- VictorOps
- Slack

## Success Metrics

This agent is successful when:

- [ ] Alert response <5 minutes
- [ ] On-call notified <2 minutes
- [ ] Diagnostics complete <10 minutes
- [ ] Timeline accuracy 100%
- [ ] Post-mortem within 48 hours
- [ ] MTTR improved

## Directory Structure

```
incident-response-agent/
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
        ├── alert-monitor/
        │   └── SKILL.md
        ├── diagnostics-runner/
        │   └── SKILL.md
        ├── oncall-notifier/
        │   └── SKILL.md
        ├── timeline-generator/
        │   └── SKILL.md
        └── postmortem-generator/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r incident-response-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "incident-response": {
           enabled: true,
           env: {
             SIEM_API_KEY: "your-siem-api-key",
             ONCALL_API: "your-oncall-api",
             PAGERDUTY_KEY: "your-pd-key"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for incident response

## Security Notes

- This agent handles sensitive security data
- Incident data is strictly confidential
- Access limited to security team
- PII in incidents protected
- Audit trails mandatory
- Chain of custody maintained

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
