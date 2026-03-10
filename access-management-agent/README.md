# Access Management Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for comprehensive identity and access management. This agent automates access reviews, user provisioning, deprovisioning, and privileged access monitoring while enforcing least-privilege principles.

## What This Agent Does

The Access Management Agent is your automated identity governance solution. It handles the entire access lifecycle—from onboarding to offboarding—ensuring proper controls are always in place.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Access Reviews** | Conduct quarterly and monthly certification of user access rights |
| **User Provisioning** | Automate new employee onboarding with proper access assignment |
| **Deprovisioning** | Instantly disable access when employees leave |
| **Privileged Access** | Monitor admin accounts and enforce just-in-time access |
| **Compliance Reporting** | Generate audit-ready documentation for regulators |

## How It Works

### 1. Access Review Process

```
┌─────────────────────────────────────────────────────────────┐
│                    ACCESS REVIEW WORKFLOW                    │
├─────────────────────────────────────────────────────────────┤
│  1. Query directory for all user access rights              │
│  2. Identify users with elevated/excessive access           │
│  3. Check for orphaned accounts (no recent login)           │
│  4. Verify access aligns with job role                      │
│  5. Flag violations for remediation                         │
│  6. Generate certification report                            │
└─────────────────────────────────────────────────────────────┘
```

### 2. Provisioning Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                  PROVISIONING WORKFLOW                       │
├─────────────────────────────────────────────────────────────┤
│  New Employee:                                               │
│  1. Receive onboarding request from HR                      │
│  2. Verify employee in HR system                            │
│  3. Create account in identity provider                     │
│  4. Assign default role based on department                 │
│  5. Add to required groups                                  │
│  6. Configure MFA                                          │
│  7. Send welcome credentials securely                       │
│  8. Log provisioning completion                             │
└─────────────────────────────────────────────────────────────┘
```

### 3. Deprovisioning Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                 DEPROVISIONING WORKFLOW                      │
├─────────────────────────────────────────────────────────────┤
│  Offboarding:                                                │
│  1. Receive offboarding notice from HR                      │
│  2. Disable account immediately                             │
│  3. Remove all group memberships                            │
│  4. Transfer ownership of files/resources                   │
│  5. Revoke API keys and tokens                              │
│  6. Disable MFA                                             │
│  7. Document deprovisioning complete                        │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **access-reviewer** | Review and certify user access | Quarterly reviews, suspicious access patterns |
| **provisioner** | Provision/deprovision access | Onboarding, offboarding, access changes |
| **privileged-access** | Monitor privileged accounts | Admin monitoring, JIT access enforcement |

### access-reviewer

Reviews and certifies user access rights across enterprise systems.

**When to use:**
- Scheduled quarterly/monthly access reviews
- When asked to review specific user access
- During heartbeat checks
- When suspicious access patterns detected

**Key functions:**
- Orphaned account detection (30+ days inactive)
- Excessive privilege detection
- Least-privilege compliance checking
- Access certification reporting

### provisioner

Handles user provisioning and deprovisioning operations.

**When to use:**
- New employee onboarding
- Access request fulfillment
- Employee offboarding
- Role changes

**Key functions:**
- Automated account creation
- Role-based access assignment
- MFA configuration
- Secure credential delivery

### privileged-access

Monitors and manages privileged access across the organization.

**When to use:**
- During heartbeat checks
- Admin account activity monitoring
- Suspicious privileged access investigation
- Just-in-time access enforcement

**Key functions:**
- Tiered privileged access monitoring
- Session recording oversight
- JIT access provisioning
- Privilege creep detection

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `DIRECTORY_API_KEY` | API key for directory service | Yes |
| `HR_SYSTEM_API` | API for HR system integration | Yes |
| `PAM_SYSTEM_API` | API for privileged access management | Yes |
| `REVIEW_CADENCE` | quarterly or monthly | No |
| `ORPHAN_THRESHOLD_DAYS` | Days before account orphaned | No |
| `ALERT_WEBHOOK` | Slack/Email webhook for alerts | No |

### Approval Requirements

| Access Level | Required Approver | SLA |
|--------------|-------------------|-----|
| Standard | Manager | 24 hours |
| Elevated | Manager + IT Security | 48 hours |
| Privileged | IT Security Lead | 24 hours |
| Admin | CISO | Immediate |

## Identity

- **Name**: Access Manager
- **Emoji**: 🔐
- **Color**: blue
- **Personality**: Vigilant, systematic, precise, security-first

## Integrations

### Supported Identity Providers

- Azure AD
- Okta
- Google Workspace
- OneLogin
- Active Directory

### Supported Systems

- AWS IAM
- SaaS applications (Slack, GitHub, etc.)
- VPN and remote access
- HR systems

## Success Metrics

This agent is successful when:

- [ ] Access reviews completed on schedule
- [ ] All provisioning requests processed within SLA
- [ ] Deprovisioning completed within 24 hours
- [ ] Zero unauthorized access incidents
- [ ] All privileged access properly documented
- [ ] Audit documentation complete and accurate

## Directory Structure

```
access-management-agent/
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
        ├── access-reviewer/
        │   └── SKILL.md
        ├── provisioner/
        │   └── SKILL.md
        └── privileged-access/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r access-management-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "access-management": {
           enabled: true,
           env: {
             DIRECTORY_API_KEY: "your-directory-api-key",
             HR_SYSTEM_API: "your-hr-system-api",
             PAM_SYSTEM_API: "your-pam-api-key"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for access management tasks

## Security Notes

- This agent follows least-privilege principles
- All access changes require proper approval
- Documentation is maintained for audit purposes
- Privileged access is monitored and time-limited
- Deprovisioning is completed within SLA

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
