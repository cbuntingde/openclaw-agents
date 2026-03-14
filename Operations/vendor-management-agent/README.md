# Vendor Management Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for vendor management and oversight. This agent monitors vendor SLA compliance, tracks security ratings, and assesses vendor risk across your supply chain.

## What This Agent Does

The Vendor Management Agent is your automated third-party risk specialist. It ensures vendors meet contractual obligations, maintain adequate security, and present acceptable risk levels to your organization.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **SLA Monitoring** | Track vendor service level agreements |
| **Security Tracking** | Monitor vendor security posture |
| **Risk Assessment** | Evaluate vendor risk levels |
| **Performance Review** | Conduct vendor performance reviews |
| **Compliance Tracking** | Ensure vendor regulatory compliance |

## How It Works

### 1. SLA Monitoring Process

```
┌─────────────────────────────────────────────────────────────┐
│                    SLA MONITORING WORKFLOW                       │
├─────────────────────────────────────────────────────────────┤
│  SLA Metrics:                                                │
│  - Uptime/Downtime                                         │
│  - Response time                                            │
│  - Resolution time                                          │
│  - Delivery timeliness                                      │
│  - Quality metrics                                          │
│                                                              │
│  Process:                                                  │
│  1. Pull SLA metrics from monitoring                       │
│  2. Compare to contractual thresholds                      │
│  3. Calculate SLA compliance percentage                    │
│  4. Identify SLA breaches                                  │
│  5. Generate compliance report                             │
│  6. Initiate remediation for breaches                      │
└─────────────────────────────────────────────────────────────┘
```

### 2. Security Tracking Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                  SECURITY TRACKING WORKFLOW                      │
├─────────────────────────────────────────────────────────────┤
│  Security Metrics:                                           │
│  - Security ratings (UpGuard, SecurityScorecard)            │
│  - SOC 2 compliance status                                  │
│  - Vulnerability patching                                   │
│  - Incident history                                         │
│  - Data handling practices                                  │
│                                                              │
│  Process:                                                  │
│  1. Pull security ratings                                  │
│  2. Check compliance certifications                        │
│  3. Review incident history                                │
│  4. Calculate security score                              │
│  5. Flag security concerns                                │
│  6. Generate security report                              │
└─────────────────────────────────────────────────────────────┘
```

### 3. Risk Assessment Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                  RISK ASSESSMENT WORKFLOW                        │
├─────────────────────────────────────────────────────────────┤
│  Risk Factors:                                              │
│  - Financial stability                                      │
│  - Geographic risk                                          │
│  - Data access level                                        │
│  - Criticality to operations                                │
│  - Concentration risk                                       │
│                                                              │
│  Process:                                                  │
│  1. Collect vendor information                              │
│  2. Evaluate risk factors                                  │
│  3. Calculate risk score                                    │
│  4. Categorize risk level                                   │
│  5. Recommend mitigation                                    │
│  6. Document assessment                                    │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **sla-monitor** | Track SLA compliance | Ongoing monitoring |
| **security-tracker** | Monitor vendor security | Security reviews |
| **risk-assessor** | Evaluate vendor risk | Assessment cycles |

### sla-monitor

Monitors vendor service level agreements.

**When to use:**
- SLA compliance reviews
- Performance tracking
- Contract negotiations

**Key functions:**
- Pull metrics
- Check compliance
- Generate reports

### security-tracker

Tracks vendor security posture.

**When to use:**
- Security reviews
- Risk assessments
- Compliance tracking

**Key functions:**
- Monitor ratings
- Check certifications
- Flag concerns

### risk-assessor

Evaluates vendor risk levels.

**When to use:**
- Vendor onboarding
- Annual assessments
- Risk reviews

**Key functions:**
- Evaluate factors
- Calculate scores
- Recommend actions

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `VENDOR_API_KEY` | Vendor management system | Yes |
| `SECURITY_RATING_API` | Security rating service | Yes |
| `RISK_WEBHOOK` | Webhook for risk alerts | No |

### SLA Compliance Targets

| Vendor Tier | Minimum SLA | Review Frequency |
|-------------|-------------|------------------|
| Critical | 99.9% | Weekly |
| High | 99.5% | Monthly |
| Medium | 99% | Quarterly |
| Low | 95% | Quarterly |

## Identity

- **Name**: Vendor Management Agent
- **Emoji**: 🤝
- **Color**: blue
- **Personality**: Vigilant, analytical, objective, thorough

## Integrations

### Supported Systems

- Vendor management platforms
- Security rating services
- ERP systems

### Supported Security Ratings

- UpGuard
- SecurityScorecard
- BitSight
- CyberGRX

## Success Metrics

This agent is successful when:

- [ ] SLA compliance >99%
- [ ] Security coverage 100%
- [ ] Risk assessments current
- [ ] Zero critical vulnerabilities
- [ ] Vendor performance improved
- [ ] Compliance maintained

## Directory Structure

```
vendor-management-agent/
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
        ├── sla-monitor/
        │   └── SKILL.md
        ├── security-tracker/
        │   └── SKILL.md
        └── risk-assessor/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r vendor-management-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "vendor-management": {
           enabled: true,
           env: {
             VENDOR_API_KEY: "your-vendor-api-key",
             SECURITY_RATING_API: "your-security-api"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for vendor management

## Security Notes

- This agent handles sensitive vendor data
- Security ratings are confidential
- Risk assessments are privileged
- Access limited to procurement/security
- Audit trails maintained

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
