# NDA Review Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for NDA management and analysis. This agent analyzes NDA terms, tracks signatures, monitors expirations, and manages renewals while ensuring no confidentiality obligations slip through the cracks.

## What This Agent Does

The NDA Review Agent is your automated NDA management solution. It handles the entire NDA lifecycle—from analysis to expiration monitoring—ensuring all confidentiality agreements are properly tracked and maintained.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **NDA Analysis** | Review NDA terms and flag concerning provisions |
| **Signature Tracking** | Monitor NDA signature status and completion |
| **Expiration Monitoring** | Track expiration dates and manage renewals |
| **Risk Assessment** | Identify imbalanced or aggressive terms |
| **Renewal Management** | Proactive renewal reminders and workflows |

## How It Works

### 1. NDA Analysis Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                    NDA ANALYSIS WORKFLOW                      │
├─────────────────────────────────────────────────────────────┤
│  Analysis Process:                                           │
│  1. Receive NDA document for review                         │
│  2. Extract key terms and conditions                        │
│  3. Compare against standard templates                     │
│  4. Identify concerning provisions                         │
│  5. Flag one-way vs two-way NDAs                            │
│  6. Highlight unusual or aggressive terms                  │
│  7. Provide risk assessment (low/medium/high)             │
│  8. Recommend items for legal review                        │
└─────────────────────────────────────────────────────────────┘
```

### 2. Signature Tracking Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                 SIGNATURE TRACKING WORKFLOW                   │
├─────────────────────────────────────────────────────────────┤
│  Tracking Process:                                            │
│  1. Record NDA and counterparty details                     │
│  2. Track date sent for signature                           │
│  3. Monitor pending signatures                              │
│  4. Identify bottlenecks and delays                         │
│  5. Send reminders for pending signatures                   │
│  6. Record signature timestamps                             │
│  7. Maintain signature audit trail                          │
└─────────────────────────────────────────────────────────────┘
```

### 3. Expiration Monitoring Workflow

```
┌─────────────────────────────────────────────────────────────┐
│               EXPIRATION MONITORING WORKFLOW                  │
├─────────────────────────────────────────────────────────────┤
│  Monitoring Timeline:                                        │
│  90 days: Initial awareness of approaching expiration       │
│  60 days: Begin renewal discussions                         │
│  30 days: Confirm renewal status                            │
│   7 days: Urgent action required                           │
│   0 days: NDA expired - flag immediately                   │
│  Post: Update records based on renewal outcome              │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **nda-analyzer** | Analyze NDA terms and identify risks | Incoming NDAs, contract review |
| **signature-tracker** | Track NDA signature status | Pending signatures |
| **expiration-monitor** | Monitor NDA expiration and renewals | Expiration management |

### nda-analyzer

Analyzes NDA terms and identifies potential risks.

**When to use:**
- Reviewing incoming NDAs
- Contract due diligence
- Identifying concerning provisions
- Comparing to standard terms

**Key functions:**
- NDA term review
- Concerning provision identification
- Standard template comparison
- One-way vs two-way NDA flagging
- Unusual term highlighting
- Risk assessment (low/medium/high)
- Legal review recommendations

### signature-tracker

Tracks NDA signature status and completion.

**When to use:**
- Monitoring pending signatures
- Identifying bottlenecks
- Follow-up scheduling
- Audit trail maintenance

**Key functions:**
- Pending signature monitoring
- Signature timestamp tracking
- Bottleneck identification
- Reminder generation
- Audit trail maintenance
- Completion rate reporting

### expiration-monitor

Monitors NDA expiration dates and manages renewal process.

**When to use:**
- Proactive expiration awareness
- Renewal workflow management
- Calendar maintenance
- Deadline management

**Key functions:**
- Expiration date tracking
- Renewal timeline alerts
- Workflow management
- Required action identification
- Renewal calendar maintenance

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `CONTRACT_DB_API` | API for contract management system | Yes |
| `ALERT_WEBHOOK` | Slack/Email webhook for alerts | No |
| `RENEWAL_CALENDAR_API` | API for calendar integration | No |

### Alert Timeline

| Timeline | Action |
|----------|--------|
| 90 days | Initial awareness |
| 60 days | Begin renewal discussions |
| 30 days | Confirm renewal status |
| 7 days | Urgent action required |

## Identity

- **Name**: NDA Manager
- **Emoji**: 📝
- **Color**: purple
- **Personality**: Vigilant, thorough, proactive, organized

## Red Lines

This agent strictly adheres to these boundaries:

- **Does NOT execute or sign contracts** — Only reviews and tracks
- **Does NOT provide legal advice on enforceability** — Only flags concerns
- **Does NOT share confidential terms** — Maintains strict confidentiality

## Integrations

### Supported Contract Management Systems

- Ironclad
- DocuSign CLM
- ContractPodAi
- SAP Ariba
- Oracle Contracts

### Supported E-Signature Platforms

- DocuSign
- Adobe Sign
- HelloSign

## Success Metrics

This agent is successful when:

- [ ] All NDAs properly tracked
- [ ] Signature completion rate >90%
- [ ] Expirations identified 90+ days in advance
- [ ] Concerning terms flagged for legal review
- [ ] Zero missed expirations
- [ ] Renewal calendar maintained accurately

## Directory Structure

```
nda-review-agent/
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
        ├── nda-analyzer/
        │   └── SKILL.md
        ├── signature-tracker/
        │   └── SKILL.md
        └── expiration-monitor/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r nda-review-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "nda-review": {
           enabled: true,
           env: {
             CONTRACT_DB_API: "your-contract-db-api"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for NDA management tasks

## Security Notes

- Contract terms maintained with strict confidentiality
- Only authorized personnel can access NDA details
- All contract changes require proper approval
- Documentation maintained for audit purposes
- Proper access controls enforced

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
