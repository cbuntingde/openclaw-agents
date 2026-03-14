# Backup & Recovery Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for backup and disaster recovery operations. This agent monitors backup jobs, verifies backup integrity, tests recovery procedures, and tracks RTO/RPO compliance.

## What This Agent Does

The Backup & Recovery Agent is your automated data protection specialist. It ensures your organization's critical data is protected, recoverable, and meets recovery objectives through continuous monitoring and regular testing.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Backup Verification** | Verify backup jobs complete successfully |
| **Recovery Testing** | Test restore procedures regularly |
| **RTO Tracking** | Monitor recovery time objectives |
| **Integrity Checks** | Validate backup data integrity |
| **Alert Management** | Notify on backup failures |

## How It Works

### 1. Backup Verification Process

```
┌─────────────────────────────────────────────────────────────┐
│                BACKUP VERIFICATION WORKFLOW                    │
├─────────────────────────────────────────────────────────────┤
│  Verification Checks:                                       │
│  - Job completion status                                   │
│  - Backup size and duration                                │
│  - Retention policy compliance                             │
│  - Chain integrity                                        │
│  - Corruption detection                                    │
│                                                              │
│  Process:                                                  │
│  1. Query backup system status                            │
│  2. Check job completion                                  │
│  3. Verify data integrity                                 │
│  4. Compare to baseline                                   │
│  5. Flag anomalies                                        │
│  6. Generate report                                       │
└─────────────────────────────────────────────────────────────┘
```

### 2. Recovery Testing Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                RECOVERY TESTING WORKFLOW                        │
├─────────────────────────────────────────────────────────────┤
│  Test Types:                                                │
│  - Full system recovery                                    │
│  - File-level restore                                      │
│  - Database recovery                                      │
│  - Application recovery                                   │
│  - DR simulation                                           │
│                                                              │
│  Process:                                                  │
│  1. Schedule recovery test                                │
│  2. Prepare test environment                              │
│  3. Execute recovery                                      │
│  4. Verify data integrity                                 │
│  5. Document results                                      │
│  6. Generate test report                                  │
└─────────────────────────────────────────────────────────────┘
```

### 3. RTO Tracking Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                    RTO TRACKING WORKFLOW                       │
├─────────────────────────────────────────────────────────────┤
│  Metrics Tracked:                                           │
│  - Recovery Time Objective (RTO)                          │
│  - Recovery Point Objective (RPO)                          │
│  - Actual recovery time                                    │
│  - Data loss window                                        │
│                                                              │
│  Process:                                                  │
│  1. Define RTO/RPO for each system                        │
│  2. Monitor backup frequency                              │
│  3. Track recovery times                                  │
│  4. Measure against objectives                            │
│  5. Alert on SLA breach                                   │
│  6. Generate compliance report                             │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **backup-verifier** | Verify backup jobs | Daily monitoring |
| **recovery-tester** | Test recovery procedures | Scheduled testing |
| **rto-tracker** | Track recovery objectives | SLA monitoring |

### backup-verifier

Verifies backup jobs completed successfully.

**When to use:**
- Daily backup monitoring
- Anomaly detection
- Job failure investigation

**Key functions:**
- Check job status
- Verify integrity
- Compare to baseline
- Flag issues

### recovery-tester

Tests recovery procedures.

**When to use:**
- Scheduled testing
- DR drills
- Post-incident verification

**Key functions:**
- Execute recovery
- Verify integrity
- Document results

### rto-tracker

Tracks recovery time objectives.

**When to use:**
- SLA monitoring
- Compliance reporting
- Recovery planning

**Key functions:**
- Monitor RTO/RPO
- Track metrics
- Alert on breaches

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `BACKUP_API_KEY` | API for backup system | Yes |
| `MONITORING_WEBHOOK` | Webhook for alerts | Yes |
| `RECOVERY_TEST_ENV` | Test environment config | Yes |

### Backup SLAs

| Data Criticality | RTO | RPO | Testing Frequency |
|-----------------|-----|-----|------------------|
| Critical | 1 hour | 15 min | Weekly |
| High | 4 hours | 1 hour | Monthly |
| Medium | 24 hours | 4 hours | Quarterly |
| Low | 72 hours | 24 hours | Annually |

## Identity

- **Name**: Backup & Recovery Agent
- **Emoji**: 💾
- **Color**: blue
- **Personality**: Thorough, reliable, vigilant, prepared

## Integrations

### Supported Backup Systems

- Veeam
- Commvault
- Rubrik
- AWS Backup
- Azure Backup

### Supported Monitoring Platforms

- Datadog
- Prometheus
- PagerDuty
- Slack

## Success Metrics

This agent is successful when:

- [ ] Backup success rate >99.9%
- [ ] Recovery tests pass >95%
- [ ] RTO compliance >99%
- [ ] Zero data loss incidents
- [ ] Alert response <15 minutes
- [ ] Documentation complete

## Directory Structure

```
backup-recovery-agent/
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
        ├── backup-verifier/
        │   └── SKILL.md
        ├── recovery-tester/
        │   └── SKILL.md
        └── rto-tracker/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r backup-recovery-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "backup-recovery": {
           enabled: true,
           env: {
             BACKUP_API_KEY: "your-backup-api-key",
             MONITORING_WEBHOOK: "your-webhook"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for backup operations

## Security Notes

- This agent maintains backup encryption keys securely
- Recovery tests run in isolated environments
- Access limited to IT operations
- Audit logs maintained
- Backup data is encrypted

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
