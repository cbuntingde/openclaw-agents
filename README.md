> Note: These agents haven't been fully tested yet, so they may not install or run perfectly out of the box. If you run into any issues, feel free to open a new issue!

# Enterprise Agents

A comprehensive collection of **57 professional AI agents** for the [OpenClaw](https://docs.openclaw.ai) platform, designed to automate enterprise workflows across every business function.

## Overview

Each agent is a fully self-contained OpenClaw workspace with:
- **AGENTS.md** - Operating instructions and memory rules
- **SOUL.md** - Persona, tone, and boundaries  
- **USER.md** - Target users and preferences
- **IDENTITY.md** - Name, emoji, and identity
- **HEARTBEAT.md** - Automated checklist items
- **TOOLS.md** - Available skills and tools
- **MEMORY.md** - Long-term curated memory
- **memory/** - Daily activity logs
- **skills/** - 2-5 specialized skills per agent

## Agent Catalog

### Finance-And-Accounting

| Agent | Skills | Description |
|-------|--------|-------------|
| treasury-agent | cashflow-forecaster, liquidity-monitor, investment-tracker | Cash flow forecasting, liquidity management, investment tracking |
| audit-prep-agent | evidence-gatherer, findings-tracker, audit-documentation | Audit preparation, evidence collection, findings tracking |
| tax-preparation-agent | deadline-tracker, document-gatherer, calculation-assistant | Tax deadlines, document collection, calculations |
| collections-agent | payment-tracker, reminder-sender, dispute-handler | Accounts receivable, payment reminders, dispute resolution |
| accounts-payable-agent | invoice-processor, payment-scheduler, vendor-payments | Invoice processing, payment scheduling |
| accounts-receivable-agent | invoicing, payment-reconciliation, aging-reports | Invoicing, reconciliation, aging analysis |
| financial-reporting-agent | report-generator, variance-analyzer, reconciliation | Financial reporting, variance analysis |
| budget-forecast-agent | burn-forecaster, spending-analyzer, threshold-alerter | Budget forecasting, burn rate analysis |
| expense-audit-agent | policy-checker, duplicate-finder, spend-analyzer | Expense compliance and audit |

### Human Resources

| Agent | Skills | Description |
|-------|--------|-------------|
| performance-review-agent | review-generator, goal-tracker, feedback-collector | Performance reviews, goal tracking, feedback collection |
| learning-development-agent | training-tracker, certification-manager, course-recommender | Training management, certifications |
| compensation-analyst-agent | pay-equity-analyzer, salary-benchmarker, increase-planner | Compensation analysis, pay equity |
| workforce-planning-agent | headcount-planner, skills-gap-analyzer, succession-planner | Workforce strategy, headcount planning |
| benefits-admin-agent | enrollment-processor, benefits-questions, compliance-tracker | Benefits administration |
| payroll-agent | payroll-processor, tax-filer, exception-handler | Payroll processing |
| onboarding-specialist-agent | account-provisioner, welcome-sequencer, task-tracker, feedback-collector | Employee onboarding |
| employee-experience-agent | sentiment-monitor, recognition-manager, request-handler | Employee experience management |

### IT-And-DevOps

| Agent | Skills | Description |
|-------|--------|-------------|
| database-monitor-agent | query-performance, index-health, connection-pooling | Database performance monitoring |
| cicd-pipeline-agent | build-monitor, deployment-tracker, failure-alerting | CI/CD pipeline management |
| cloud-cost-agent | spend-tracker, savings-identifier, resource-optimizer | Cloud cost optimization |
| server-monitor-agent | health-check, performance-monitor, capacity-planner | Server monitoring |
| data-pipeline-agent | job-monitor, failure-alerter, quality-checker | Data pipeline management |
| incident-response-agent | alert-monitor, diagnostics-runner, oncall-notifier, timeline-generator, postmortem-generator | Incident response |
| backup-recovery-agent | backup-monitor, recovery-tester, retention-manager | Backup and recovery |
| bug-triage-agent | bug-prioritizer, severity-assigner, assignee-recommender | Bug triage |

### Legal-And-Compliance

| Agent | Skills | Description |
|-------|--------|-------------|
| contract-lifecycle-agent | contract-creator, negotiation-tracker, renewal-manager | Contract lifecycle management |
| ip-management-agent | patent-tracker, trademark-tracker, copyright-tracker | Intellectual property management |
| contract-review-agent | clause-analyzer, expiration-tracker, template-comparer, renewal-manager | Contract review |
| legal-research-agent | case-law-researcher, statute-tracker, legal-document-analyzer | Legal research |
| nda-review-agent | nda-analyzer, signature-tracker, expiration-monitor | NDA review |
| compliance-officer-agent | compliance-monitor, audit-tracker, policy-alerts | Compliance management |
| security-sentinel-agent | secret-scanner, vuln-monitor, cve-tracker, breach-checker | Security monitoring |

### Customer Service

| Agent | Skills | Description |
|-------|--------|-------------|
| live-chat-routing-agent | chat-router, faq-handler, agent-assigner | Chat routing and FAQ handling |
| nps-survey-agent | survey-sender, result-analyzer, trend-tracker | NPS survey management |
| customer-success-agent | nps-monitor, churn-predictor, health-scorer, renewal-forecaster, engagement-tracker | Customer success |
| ticket-routing-agent | ticket-triage, prioritizer, team-assigner | Support ticket routing |
| user-feedback-agent | feedback-collector, sentiment-analyzer, feature-request-tracker | User feedback |

### Product-And-Analytics

| Agent | Skills | Description |
|-------|--------|-------------|
| product-analytics-agent | metric-tracker, insight-generator, dashboard-builder | Product analytics |
| user-research-agent | survey-conductor, feedback-analyzer, pattern-detector | User research |
| campaign-analytics-agent | performance-dashboard, attribution-tracker, ab-tester | Marketing analytics |
| competitive-intelligence-agent | competitor-tracker, winloss-analyzer, market-signals | Competitive intelligence |
| seo-agent | keyword-tracker, content-optimizer, ranking-monitor | SEO management |
| social-media-agent | post-scheduler, engagement-monitor, sentiment-tracker | Social media management |

### Executive-And-Strategy

| Agent | Skills | Description |
|-------|--------|-------------|
| board-reporting-agent | metric-gatherer, presentation-builder, kpi-tracker | Board reporting |
| strategic-planning-agent | market-analyzer, competitor-benchmarker, scenario-planner | Strategic planning |
| deal-desk-agent | quote-generator, discount-approver, terms-validator | Deal desk management |
| lead-qualification-agent | lead-qualifier, data-enricher, lead-router | Lead qualification |
| meeting-intelligence-agent | transcript-parser, action-items, meeting-summarizer | Meeting intelligence |

### Operations

| Agent | Skills | Description |
|-------|--------|-------------|
| quality-assurance-agent | test-runner, defect-tracker, standard-validator | Quality assurance |
| procurement-agent | purchase-processor, vendor-manager, order-tracker | Procurement management |
| inventory-intelligence-agent | stock-monitor, replenishment-predictor, procurement-advisor | Inventory management |
| facilities-agent | maintenance-scheduler, asset-tracker, work-order-manager | Facilities management |
| supply-chain-agent | logistics-coordinator, shipment-tracker, vendor-coordinator | Supply chain management |
| renewal-management-agent | renewal-tracker, churn-prevention, upsell-identifier | Subscription renewals |
| vendor-management-agent | sla-monitor, security-tracker, risk-assessor | Vendor management |
| knowledge-base-curator-agent | gap-detector, freshness-tracker, faq-generator, content-suggester | Knowledge base management |

### Access-And-Identity

| Agent | Skills | Description |
|-------|--------|-------------|
| access-management-agent | provisioner, access-reviewer, privileged-access | Access management |

## Directory Structure

Agents are organized into category directories:

```
openclaw-agents/
├── Finance-And-Accounting/    # 9 agents
├── Human-Resources/          # 8 agents
├── IT-And-DevOps/            # 8 agents
├── Legal-And-Compliance/     # 7 agents
├── Customer-Service/         # 5 agents
├── Product-And-Analytics/    # 6 agents
├── Executive-And-Strategy/   # 5 agents
├── Operations/               # 8 agents
└── Access-And-Identity/     # 1 agent
```

## Quick Start

### Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- Node.js 18+ (for OpenClaw)

### Installation

```bash
# Clone the repository
git clone https://github.com/cbuntingde/enterprise-agents.git

# Choose an agent and copy to your OpenClaw workspace
cp -r Finance-And-Accounting/treasury-agent/workspace/* ~/.openclaw/workspace/

# Configure the agent in ~/.openclaw/openclaw.json
```

### Creating a New Agent

Each agent follows the OpenClaw workspace structure:

```
<agent-name>/
├── workspace/
│   ├── AGENTS.md          # Role, responsibilities, heartbeats
│   ├── SOUL.md           # Persona, identity, traits
│   ├── USER.md           # Target users, contacts
│   ├── IDENTITY.md       # Name, emoji, tagline
│   ├── HEARTBEAT.md      # Checklist items
│   ├── TOOLS.md          # Available skills
│   ├── MEMORY.md         # Long-term memory
│   └── memory/
│       └── YYYY-MM-DD.md # Daily logs
├── config/
│   └── openclaw.json     # Agent configuration
└── skills/
    ├── <skill-1>/
    │   └── SKILL.md
    ├── <skill-2>/
    │   └── SKILL.md
    └── <skill-3>/
        └── SKILL.md
```

### Skill Structure

Each skill includes YAML frontmatter with OpenClaw metadata:

```markdown
---
name: my-skill
description: A skill that does something useful
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["API_KEY"] },
        "emoji": "🎯",
      },
  }
---

# My Skill

Instructions for the agent...
```

## Architecture

OpenClaw agents communicate via:
- **Channels** - WhatsApp, Telegram, Discord, iMessage, Slack
- **Skills** - Reusable capabilities with environment gating
- **Heartbeats** - Periodic automated checks
- **Cron Jobs** - Scheduled tasks
- **Memory** - Persistent context via vector search

## Documentation

- [OpenClaw Docs](https://docs.openclaw.ai)
- [Creating Skills](https://docs.openclaw.ai/tools/creating-skills.md)
- [Multi-Agent Setup](https://docs.openclaw.ai/concepts/multi-agent.md)

## Contributing

To add a new agent:

1. Create the agent directory structure
2. Add all required workspace files
3. Create 2-4 skills with proper YAML frontmatter
4. Update this README with the new agent
5. Submit a pull request

## License

MIT License - See individual agent directories for details.

---

## Support

If you find these useful, consider [sponsoring](https://github.com/sponsors/cbuntingde) the project.

---

Copyright © 2026 Created by Chris Bunting
