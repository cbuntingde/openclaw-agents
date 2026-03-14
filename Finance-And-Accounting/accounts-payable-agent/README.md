# Accounts Payable Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for accounts payable operations. This agent processes and validates incoming invoices, schedules payments for optimal cash flow, and manages approval workflows while maintaining proper segregation of duties.

## What This Agent Does

The Accounts Payable Agent is your automated financial operations specialist. It ensures every invoice is properly validated, payments are optimized for cash flow, and approval workflows are enforced—reducing errors while maintaining good vendor relationships.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Invoice Processing** | Extract, validate, and match incoming invoices |
| **Payment Scheduling** | Optimize payment timing for cash flow and discounts |
| **Approval Workflows** | Route invoices through proper approval chains |
| **Three-Way Match** | Verify invoices against POs and receiving documents |
| **Discount Capture** | Identify and capture early payment discounts |

## How It Works

### 1. Invoice Processing Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                 INVOICE PROCESSING WORKFLOW                    │
├─────────────────────────────────────────────────────────────┤
│  1. Receive invoice (email, EDI, portal)                   │
│  2. Extract data (OCR/manual entry)                        │
│  3. Validate mathematical accuracy                         │
│  4. Match to purchase order (three-way match)              │
│  5. Verify pricing and terms                               │
│  6. Flag discrepancies for review                          │
│  7. Route for approval if required                        │
│  8. Schedule for payment                                   │
└─────────────────────────────────────────────────────────────┘
```

### 2. Payment Scheduling Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                PAYMENT SCHEDULING WORKFLOW                     │
├─────────────────────────────────────────────────────────────┤
│  Factors Considered:                                        │
│  - Payment terms (Net 30, Net 60, etc.)                   │
│  - Early payment discounts available                        │
│  - Cash flow requirements                                   │
│  - Vendor relationship priority                             │
│  - Batch payment processing days                            │
│                                                              │
│  Process:                                                   │
│  1. Review approved invoices                                │
│  2. Calculate discount opportunities                       │
│  3. Apply payment terms and deadlines                     │
│  4. Optimize for cash flow                                  │
│  5. Create payment batches                                 │
│  6. Generate payment schedule report                       │
└─────────────────────────────────────────────────────────────┘
```

### 3. Approval Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                   APPROVAL WORKFLOW                           │
├─────────────────────────────────────────────────────────────┤
│  Approval Tiers by Amount:                                  │
│  - <$1,000: Auto-approved                                   │
│  - $1,000-$10,000: Manager approval                        │
│  - $10,000-$50,000: Director approval                     │
│  - >$50,000: VP + Finance approval                         │
│                                                              │
│  Process:                                                   │
│  1. Determine approval tier                                │
│  2. Route to appropriate approvers                         │
│  3. Track approval status                                  │
│  4. Send reminders for pending                             │
│  5. Escalate if SLA breached                               │
│  6. Document approval chain                                │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **invoice-processor** | Extract and validate invoice data | New invoices received |
| **payment-scheduler** | Optimize payment timing | Payment runs, cash flow planning |
| **approval-workflow** | Manage approval routing | Invoices requiring approval |

### invoice-processor

Processes and validates incoming invoices with three-way matching.

**When to use:**
- New invoice received
- Invoice corrections needed
- Credit memos processing

**Key functions:**
- Extract invoice data (vendor, amount, date, terms)
- Match invoices to purchase orders
- Validate mathematical accuracy
- Flag discrepancies for review
- Route for approval

### payment-scheduler

Schedules payments for optimal cash flow management and discount capture.

**When to use:**
- Weekly payment runs
- Cash flow planning
- Special payment requests

**Key functions:**
- Schedule payments based on terms
- Optimize for early payment discounts
- Coordinate with cash flow requirements
- Batch payments for efficiency
- Track scheduled vs paid

### approval-workflow

Manages invoice approval workflows and routing.

**When to use:**
- Approval routing
- Pending approval monitoring
- Escalation management

**Key functions:**
- Route invoices based on amount thresholds
- Track approval status
- Send reminders for pending approvals
- Escalate when needed
- Maintain audit trail

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `ERP_API_KEY` | API key for ERP system | Yes |
| `APPROVAL_WEBHOOK` | Webhook for approval notifications | No |
| `PAYMENT_SYSTEM_API` | API for payment processing | Yes |

### Approval Thresholds

| Amount Range | Approver | SLA |
|--------------|----------|-----|
| <$1,000 | Auto | Immediate |
| $1,000-$10,000 | Manager | 48 hours |
| $10,000-$50,000 | Director | 72 hours |
| >$50,000 | VP + Finance | 96 hours |

## Identity

- **Name**: Accounts Payable Agent
- **Emoji**: 📄
- **Color**: blue
- **Personality**: Meticulous, accurate, timely, financially-focused

## Integrations

### Supported ERP Systems

- SAP
- Oracle
- NetSuite
- QuickBooks
- Microsoft Dynamics

### Supported Payment Systems

- ACH
- Wire transfer
- Credit cards
- Virtual cards

## Success Metrics

This agent is successful when:

- [ ] Invoices processed within 48 hours
- [ ] Three-way match accuracy >98%
- [ ] Discount capture rate >90%
- [ ] Approval SLA compliance >95%
- [ ] Payment processing error rate <0.5%
- [ ] Vendor satisfaction maintained

## Directory Structure

```
accounts-payable-agent/
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
        ├── invoice-processor/
        │   └── SKILL.md
        ├── payment-scheduler/
        │   └── SKILL.md
        └── approval-workflow/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r accounts-payable-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "accounts-payable": {
           enabled: true,
           env: {
             ERP_API_KEY: "your-erp-api-key",
             PAYMENT_SYSTEM_API: "your-payment-api",
             APPROVAL_WEBHOOK: "your-approval-webhook"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for accounts payable operations

## Security Notes

- This agent enforces segregation of duties
- All payments require proper documentation
- Approval workflows cannot be bypassed
- Financial data is confidential
- Audit trails maintained for all transactions
- Duplicate payment prevention enabled

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
