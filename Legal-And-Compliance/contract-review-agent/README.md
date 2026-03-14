# Contract Review Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for contract management and legal operations. This agent analyzes contracts for risky clauses, tracks expiration dates, compares to standard templates, and manages the renewal process.

## What This Agent Does

The Contract Review Agent is your automated legal operations specialist. It ensures contracts are properly reviewed, risks are identified, deadlines are never missed, and renewals are processed smoothly.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Clause Analysis** | Identify risky or unusual contract clauses |
| **Expiration Tracking** | Monitor contract deadlines and milestones |
| **Template Comparison** | Compare contracts against standard terms |
| **Renewal Management** | Track and process contract renewals |
| **Risk Assessment** | Evaluate contract risk levels |

## How It Works

### 1. Clause Analysis Process

```
┌─────────────────────────────────────────────────────────────┐
│                  CLAUSE ANALYSIS WORKFLOW                      │
├─────────────────────────────────────────────────────────────┤
│  Analysis Areas:                                           │
│  - Indemnification clauses                                 │
│  - Limitation of liability                                │
│  - Termination rights                                     │
│  - Payment terms                                          │
│  - Auto-renewal terms                                     │
│  - Intellectual property                                  │
│                                                              │
│  Process:                                                  │
│  1. Parse contract document                               │
│  2. Extract key clauses                                   │
│  3. Compare to baseline                                   │
│  4. Flag risky terms                                      │
│  5. Assess risk level                                     │
│  6. Generate review report                                │
└─────────────────────────────────────────────────────────────┘
```

### 2. Expiration Tracking Workflow

```
┌─────────────────────────────────────────────────────────────┐
│               EXPIRATION TRACKING WORKFLOW                      │
├─────────────────────────────────────────────────────────────┤
│  Tracking Milestones:                                       │
│  - 90 days: Initial notification                           │
│  - 60 days: Renewal decision required                       │
│  - 30 days: Final reminder                                 │
│  - 7 days: Upcoming expiration                             │
│  - 0 days: Expiration/due date                            │
│                                                              │
│  Process:                                                  │
│  1. Pull contract dates                                    │
│  2. Calculate milestones                                   │
│  3. Set notification schedule                              │
│  4. Send reminders                                        │
│  5. Track responses                                       │
│  6. Update contract status                                │
└─────────────────────────────────────────────────────────────┘
```

### 3. Template Comparison Workflow

```
┌─────────────────────────────────────────────────────────────┐
│               TEMPLATE COMPARISON WORKFLOW                      │
├─────────────────────────────────────────────────────────────┤
│  Comparison Areas:                                          │
│  - Standard terms vs custom                                 │
│  - Pricing terms                                           │
│  - Service levels                                          │
│  - Liability caps                                          │
│  - Termination clauses                                     │
│                                                              │
│  Process:                                                  │
│  1. Load contract and template                             │
│  2. Compare clause by clause                               │
│  3. Identify deviations                                    │
│  4. Assess impact                                          │
│  5. Generate comparison report                             │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 4 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **clause-analyzer** | Analyze contract clauses | Contract review |
| **expiration-tracker** | Track deadlines | Ongoing monitoring |
| **template-comparer** | Compare to standards | New contracts |
| **renewal-manager** | Handle renewals | Renewal processing |

### clause-analyzer

Analyzes contract clauses for risk.

**When to use:**
- Contract review
- Risk assessment
- Legal review

**Key functions:**
- Parse document
- Extract clauses
- Identify risks
- Assess impact

### expiration-tracker

Tracks contract expiration dates.

**When to use:**
- Ongoing monitoring
- Deadline reminders
- Calendar management

**Key functions:**
- Track dates
- Send reminders
- Update status

### template-comparer

Compares contracts to standard templates.

**When to use:**
- New contracts
- Vendor agreements
- Compliance review

**Key functions:**
- Compare terms
- Identify deviations
- Generate report

### renewal-manager

Manages contract renewals.

**When to use:**
- Renewal processing
- Decision making
- Contract updates

**Key functions:**
- Track renewals
- Process decisions
- Update terms

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `CONTRACT_API_KEY` | API for contract management | Yes |
| `LEGAL_WEBHOOK` | Webhook for legal alerts | Yes |
| `DOCUMENT_PROCESSOR` | Document parsing API | Yes |

### Notification Schedule

| Milestone | Lead Time | Recipients |
|-----------|-----------|------------|
| Initial | 90 days | Legal + Business |
| Decision | 60 days | Legal + Business |
| Final | 30 days | Legal + Business |
| Due | 7 days | All stakeholders |

## Identity

- **Name**: Contract Review Agent
- **Emoji**: 📄
- **Color**: purple
- **Personality**: Thorough, risk-aware, organized, precise

## Integrations

### Supported Contract Systems

- Ironclad
- DocuSign CLM
- SAP Ariba
- COmanage
- Contractbook

### Supported Document Processing

- AI document extraction
- OCR services
- Legal tech platforms

## Success Metrics

This agent is successful when:

- [ ] Zero missed deadlines
- [ ] Risk identification >90%
- [ ] Review time reduced 50%
- [ ] Template compliance >95%
- [ ] Renewal processing complete
- [ ] Cost savings achieved

## Directory Structure

```
contract-review-agent/
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
        ├── clause-analyzer/
        │   └── SKILL.md
        ├── expiration-tracker/
        │   └── SKILL.md
        ├── template-comparer/
        │   └── SKILL.md
        └── renewal-manager/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r contract-review-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "contract-review": {
           enabled: true,
           env: {
             CONTRACT_API_KEY: "your-contract-api-key",
             LEGAL_WEBHOOK: "your-webhook"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for contract management

## Security Notes

- This agent handles confidential contracts
- Access limited to legal and approved personnel
- Document storage is encrypted
- Audit trails maintained
- PII in contracts is protected

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
