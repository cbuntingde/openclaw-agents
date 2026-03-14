# Expense Audit Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for expense management and auditing. This agent reviews expense reports for policy compliance, identifies duplicate submissions, and provides spend analytics for better financial control.

## What This Agent Does

The Expense Audit Agent is your automated expense compliance specialist. It ensures every expense claim meets company policies while providing insights into spending patterns that drive better financial decisions.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Policy Compliance** | Verify expenses meet company policy requirements |
| **Duplicate Detection** | Identify duplicate or fraudulent submissions |
| **Spend Analytics** | Analyze spending patterns and trends |
| **Audit Support** | Generate documentation for audits |
| **Flag Management** | Route flagged items for review |

## How It Works

### 1. Policy Compliance Process

```
┌─────────────────────────────────────────────────────────────┐
│                POLICY COMPLIANCE WORKFLOW                       │
├─────────────────────────────────────────────────────────────┤
│  Policy Checks:                                            │
│  - Category allowed                                        │
│  - Amount within limits                                    │
│  - Required receipts present                                │
│  - Dates within travel period                              │
│  - Proper approval obtained                                │
│  - Merchant on approved list                               │
│                                                              │
│  Process:                                                  │
│  1. Receive expense submission                            │
│  2. Load applicable policy rules                          │
│  3. Check each policy requirement                        │
│  4. Flag violations with reasons                         │
│  5. Route to approver if needed                          │
│  6. Approve compliant submissions                        │
└─────────────────────────────────────────────────────────────┘
```

### 2. Duplicate Detection Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                DUPLICATE DETECTION WORKFLOW                    │
├─────────────────────────────────────────────────────────────┤
│  Detection Methods:                                        │
│  - Exact amount + date + vendor match                      │
│  - Similar amount within timeframe                         │
│  - Receipt image matching                                  │
│  - Multiple submissions same trip                          │
│                                                              │
│  Process:                                                  │
│  1. Extract expense details                               │
│  2. Compare against historical submissions                 │
│  3. Calculate similarity scores                           │
│  4. Flag potential duplicates                             │
│  5. Alert submitters for clarification                    │
│  6. Document resolution                                   │
└─────────────────────────────────────────────────────────────┘
```

### 3. Spend Analytics Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                 SPEND ANALYTICS WORKFLOW                       │
├─────────────────────────────────────────────────────────────┤
│  Analytics Dimensions:                                      │
│  - By department/team                                      │
│  - By expense category                                    │
│  - By merchant/vendor                                      │
│  - By time period                                          │
│  - By employee                                             │
│  - Trend analysis                                          │
│                                                              │
│  Process:                                                  │
│  1. Aggregate expense data                                 │
│  2. Apply analytics dimensions                            │
│  3. Calculate KPIs and metrics                            │
│  4. Generate visualizations                               │
│  5. Create analytics reports                              │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **policy-checker** | Verify policy compliance | Expense submission review |
| **duplicate-finder** | Detect duplicates | Submission validation |
| **spend-analyzer** | Analyze spending patterns | Reporting, planning |

### policy-checker

Reviews expense submissions against company policies.

**When to use:**
- New expense submission
- Policy audit
- Flagged item review

**Key functions:**
- Load policy rules
- Check category eligibility
- Validate amounts
- Verify receipts
- Flag violations

### duplicate-finder

Identifies duplicate or fraudulent expense submissions.

**When to use:**
- Submission validation
- Duplicate audit
- Fraud investigation

**Key functions:**
- Compare amounts
- Match vendors
- Check dates
- Analyze receipt images
- Calculate similarity

### spend-analyzer

Analyzes spending patterns and generates insights.

**When to use:**
- Monthly reporting
- Budget planning
- Cost reduction initiatives

**Key functions:**
- Aggregate data by dimensions
- Calculate spend metrics
- Identify trends
- Generate reports
- Recommend optimizations

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `EXPENSE_API_KEY` | API for expense system | Yes |
| `ERP_API_KEY` | API for ERP integration | Yes |
| `ANALYTICS_WEBHOOK` | Webhook for alerts | No |

### Policy Rules

| Category | Limit | Required Documentation |
|----------|-------|----------------------|
| Meals | $50/day | Receipt |
| Travel | $500/flight | Receipt + approval |
| Hotels | $200/night | Receipt |
| Entertainment | $100/person | Receipt + attendees |

## Identity

- **Name**: Expense Audit Agent
- **Emoji**: 🔍
- **Color**: blue
- **Personality**: Thorough, analytical, compliance-focused, objective

## Integrations

### Supported Expense Systems

- Concur
- Expensify
- SAP Concur
- NetSuite Expense
- QuickBooks Expenses

### Supported Analytics Platforms

- Tableau
- Power BI
- Looker
- Custom dashboards

## Success Metrics

This agent is successful when:

- [ ] Policy compliance rate >98%
- [ ] Duplicate detection >95%
- [ ] Processing time <1 hour per submission
- [ ] Audit findings reduced
- [ ] Cost savings achieved
- [ ] Employee satisfaction maintained

## Directory Structure

```
expense-audit-agent/
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
        ├── policy-checker/
        │   └── SKILL.md
        ├── duplicate-finder/
        │   └── SKILL.md
        └── spend-analyzer/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r expense-audit-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "expense-audit": {
           enabled: true,
           env: {
             EXPENSE_API_KEY: "your-expense-api-key",
             ERP_API_KEY: "your-erp-api-key"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for expense auditing

## Security Notes

- This agent maintains confidentiality of employee expenses
- Duplicate detection uses secure comparison methods
- Policy enforcement is consistent and unbiased
- Audit trails are maintained
- PII is protected in analytics

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
