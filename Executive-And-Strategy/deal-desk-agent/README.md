# Deal Desk Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for sales deal operations. This agent configures pricing, manages discount approvals, and generates quotes while ensuring deal profitability and compliance with pricing policies.

## What This Agent Does

The Deal Desk Agent is your automated deal operations specialist. It streamlines the entire quote-to-cash process by automating pricing configurations, managing approval workflows, and generating professional quotes that close faster.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Pricing Configuration** | Configure deal pricing with tiers, discounts, and custom terms |
| **Discount Approval** | Route discount requests through proper approval chains |
| **Quote Generation** | Create professional, accurate sales quotes |
| **Deal Analysis** | Analyze deal profitability and risk |
| **Policy Enforcement** | Ensure deals meet pricing guidelines |

## How It Works

### 1. Pricing Configuration Process

```
┌─────────────────────────────────────────────────────────────┐
│                PRICING CONFIGURATION WORKFLOW                   │
├─────────────────────────────────────────────────────────────┤
│  1. Receive deal requirements from sales rep                 │
│  2. Validate product/SKU availability                        │
│  3. Apply base pricing from price book                       │
│  4. Calculate volume discounts (tier-based)                  │
│  5. Apply promotional discounts if applicable                │
│  6. Add custom terms or adjustments                          │
│  7. Calculate total deal value                               │
│  8. Validate against pricing policies                        │
└─────────────────────────────────────────────────────────────┘
```

### 2. Discount Approval Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                DISCOUNT APPROVAL WORKFLOW                      │
├─────────────────────────────────────────────────────────────┤
│  Approval Tiers:                                            │
│  - 0-10%: Auto-approved                                     │
│  - 11-20%: Manager approval                                 │
│  - 21-30%: Sales Director approval                          │
│  - 31%+: VP Sales + Finance approval                        │
│                                                              │
│  Process:                                                   │
│  1. Calculate discount percentage                           │
│  2. Determine approval tier                                 │
│  3. Route for appropriate approval                          │
│  4. Track approval status                                  │
│  5. Apply approved discount to quote                       │
└─────────────────────────────────────────────────────────────┘
```

### 3. Quote Generation Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                 QUOTE GENERATION WORKFLOW                      │
├─────────────────────────────────────────────────────────────┤
│  1. Compile finalized pricing configuration                  │
│  2. Add customer details and contract terms                  │
│  3. Include product descriptions and quantities             │
│  4. Apply all approved discounts                            │
│  5. Calculate subtotals, taxes, and final total             │
│  6. Add validity period and payment terms                   │
│  7. Generate PDF/HTML quote                                  │
│  8. Send to customer via email                              │
│  9. Track quote status (sent/opened/accepted)               │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **pricing-configurator** | Configure deal pricing | New deal, pricing changes |
| **discount-approver** | Route and track approvals | Discount requests, approval follow-up |
| **quote-generator** | Generate sales quotes | Quote creation, regeneration |

### pricing-configurator

Configures deal pricing with tiers, discounts, and custom terms.

**When to use:**
- New deal pricing required
- Customer requests custom pricing
- Promotional pricing application
- Volume discount calculations

**Key functions:**
- Validate product availability
- Apply tier-based pricing
- Calculate volume discounts
- Handle promotional codes
- Add custom adjustments
- Validate against policies

### discount-approver

Routes discount requests through proper approval chains and tracks status.

**When to use:**
- Sales rep requests discount
- Discount approval needed
- Approval status tracking
- Escalation of pending approvals

**Key functions:**
- Calculate discount tier
- Route to appropriate approver
- Send approval requests
- Track approval status
- Send reminders
- Document approvals

### quote-generator

Generates professional sales quotes with all terms and conditions.

**When to use:**
- Quote creation for customers
- Quote regeneration needed
- Contract renewals
- Amendment quotes

**Key functions:**
- Compile pricing
- Format quote professionally
- Include terms and conditions
- Generate PDF/HTML output
- Send to customer
- Track quote lifecycle

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `CPQ_API_KEY` | API key for CPQ system | Yes |
| `APPROVAL_WEBHOOK` | Webhook for approval notifications | No |
| `CRM_INTEGRATION` | CRM system API (Salesforce, HubSpot) | No |

### Approval Thresholds

| Discount Level | Approver | Auto-Escalate |
|---------------|----------|---------------|
| 0-10% | Auto | No |
| 11-20% | Manager | After 24h |
| 21-30% | Sales Director | After 48h |
| 31%+ | VP Sales + Finance | Immediate |

## Identity

- **Name**: Deal Desk Agent
- **Emoji**: 💰
- **Color**: gold
- **Personality**: Strategic, precise, compliance-focused, deal-oriented

## Integrations

### Supported CPQ Systems

- Salesforce CPQ
- SAP CPQ
- Oracle CPQ
- Zuora
- Custom CPQ solutions

### Supported CRM Systems

- Salesforce
- HubSpot
- Microsoft Dynamics
- Pipedrive

## Success Metrics

This agent is successful when:

- [ ] Quotes generated within 2 hours
- [ ] Discount approval processing <24 hours
- [ ] Pricing accuracy 100%
- [ ] Policy compliance >95%
- [ ] Quote win rate improved
- [ ] Sales rep productivity increased

## Directory Structure

```
deal-desk-agent/
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
        ├── pricing-configurator/
        │   └── SKILL.md
        ├── discount-approver/
        │   └── SKILL.md
        └── quote-generator/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r deal-desk-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "deal-desk": {
           enabled: true,
           env: {
             CPQ_API_KEY: "your-cpq-api-key",
             APPROVAL_WEBHOOK: "your-approval-webhook"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for deal desk operations

## Security Notes

- This agent enforces pricing policies automatically
- All discounts require proper approval documentation
- Deal information is confidential
- Quote generation maintains audit trail
- Financial controls enforced at each step

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
