# Customer Success Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for customer success automation. This agent monitors customer health, predicts churn risk, tracks NPS and satisfaction, and drives retention and expansion across the customer lifecycle.

## What This Agent Does

The Customer Success Agent is your automated customer health and retention solution. It handles the entire customer success lifecycle—from health monitoring to renewal forecasting—ensuring customers achieve their desired outcomes.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Health Monitoring** | Track customer health scores across multiple dimensions |
| **Churn Prediction** | Identify at-risk customers using predictive analytics |
| **Engagement Tracking** | Monitor product usage and engagement patterns |
| **NPS Tracking** | Collect, analyze, and trend Net Promoter Score |
| **Renewal Forecasting** | Predict renewal outcomes and identify expansion opportunities |

## How It Works

### 1. Health Monitoring Process

```
┌─────────────────────────────────────────────────────────────┐
│                  HEALTH MONITORING WORKFLOW                  │
├─────────────────────────────────────────────────────────────┤
│  1. Collect metrics from all data sources                   │
│  2. Calculate health scores using weighted components       │
│  3. Identify customers below health threshold               │
│  4. Categorize risk levels (Healthy/At Risk/Critical)      │
│  5. Alert success team for at-risk accounts                │
│  6. Generate health dashboard                               │
└─────────────────────────────────────────────────────────────┘
```

### 2. Churn Prediction Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                  CHURN PREDICTION WORKFLOW                   │
├─────────────────────────────────────────────────────────────┤
│  Risk Analysis:                                              │
│  1. Analyze NPS scores (detractors are high risk)          │
│  2. Check login activity (30+ days inactive = high risk)   │
│  3. Review support ticket volume (>10 = medium risk)        │
│  4. Evaluate usage trends (declining = risk)               │
│  5. Factor in non-renewal signals                          │
│  6. Calculate composite risk score                         │
│  7. Recommend interventions for high-risk accounts          │
└─────────────────────────────────────────────────────────────┘
```

### 3. Renewal Forecasting Process

```
┌─────────────────────────────────────────────────────────────┐
│                RENEWAL FORECASTING WORKFLOW                   │
├─────────────────────────────────────────────────────────────┤
│  1. Gather renewal factors (health, NPS, usage, support)   │
│  2. Weight factors by historical accuracy                   │
│  3. Calculate renewal probability                          │
│  4. Segment: Likely Renew / At Risk / Likely Churn         │
│  5. Recommend proactive interventions                       │
│  6. Flag expansion opportunities                            │
│  7. Generate renewal forecast report                       │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 5 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **health-scorer** | Calculate customer health scores | Health reviews, risk assessment |
| **churn-predictor** | Identify customers at risk of churning | Weekly reviews, early warning |
| **engagement-tracker** | Monitor product usage and engagement | Usage analysis, trend detection |
| **nps-monitor** | Track and analyze Net Promoter Score | Feedback collection, sentiment analysis |
| **renewal-forecaster** | Predict renewal outcomes | Quarterly reviews, forecast planning |

### health-scorer

Calculates customer health scores using weighted components.

**When to use:**
- Weekly health reviews
- Customer health dashboards
- At-risk identification
- Health trend analysis

**Key functions:**
- Weighted score calculation (NPS 25%, Support 20%, Adoption 20%, Engagement 20%, Payments 15%)
- Health threshold categorization (70+ Healthy, 50-70 At Risk, <50 Critical)
- Multi-source data aggregation

### churn-predictor

Identifies customers at risk of churning.

**When to use:**
- Weekly churn risk reviews
- Proactive intervention planning
- Early warning system checks

**Key functions:**
- Risk factor analysis (NPS <5, No login 30+, Support tickets >10, Declining usage, Non-renewal signals)
- Risk scoring (Low >70, Medium 40-70, High <40)
- Intervention recommendations

### engagement-tracker

Monitors product usage and engagement patterns.

**When to use:**
- Usage analysis
- Engagement trend reporting
- Feature adoption tracking

**Key functions:**
- Login frequency monitoring (>3/week healthy)
- Feature usage tracking (>50% healthy)
- Session analysis (>20 sessions/month, >2 hrs/week)
- Month-over-month trending

### nps-monitor

Tracks and analyzes Net Promoter Score.

**When to use:**
- Post-interaction surveys
- Monthly NPS reviews
- Customer sentiment analysis

**Key functions:**
- NPS categorization (Promoters 9-10, Passives 7-8, Detractors 0-6)
- Score calculation (Promoters % - Detractors %)
- Trend analysis and segmentation

### renewal-forecaster

Predicts renewal outcomes for account planning.

**When to use:**
- Quarterly business reviews
- Renewal planning
- Revenue forecasting

**Key functions:**
- Probability calculation using weighted factors
- Outcome segmentation (Likely Renew >80%, At Risk 50-80%, Likely Churn <50%)
- Expansion opportunity identification

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `CRM_API_KEY` | API key for CRM system (Salesforce/HubSpot) | Yes |
| `PRODUCT_API_KEY` | API for product analytics | Yes |
| `SUPPORT_API_KEY` | API for support ticket system | Yes |
| `HEALTH_WEIGHTS` | JSON string of custom health weights | No |
| `ALERT_WEBHOOK` | Slack/Email webhook for alerts | No |

### Customer Tier Thresholds

| Tier | ARR Range | Health Threshold |
|------|-----------|------------------|
| Enterprise | >$100K | 70+ |
| Mid-Market | $25K-$100K | 60+ |
| SMB | <$25K | 50+ |

## Identity

- **Name**: Customer Success Manager
- **Emoji**: 📈
- **Color**: green
- **Personality**: Proactive, data-driven, customer-focused, helpful

## Integrations

### Supported CRM Systems

- Salesforce
- HubSpot
- Pipedrive
- Zoho CRM

### Supported Analytics Platforms

- Mixpanel
- Amplitude
- Pendo
- Intercom
- Segment

### Supported Support Systems

- Zendesk
- Freshdesk
- Intercom
- Salesforce Service Cloud

## Success Metrics

This agent is successful when:

- [ ] Health scores calculated for all accounts weekly
- [ ] Churn predictions accurate within 15% margin
- [ ] At-risk customers identified before churn
- [ ] NPS tracked and trended monthly
- [ ] Renewal forecasts within 10% of actuals
- [ ] Proactive interventions executed for high-risk accounts

## Directory Structure

```
customer-success-agent/
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
        ├── health-scorer/
        │   └── SKILL.md
        ├── churn-predictor/
        │   └── SKILL.md
        ├── engagement-tracker/
        │   └── SKILL.md
        ├── nps-monitor/
        │   └── SKILL.md
        └── renewal-forecaster/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r customer-success-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "customer-success": {
           enabled: true,
           env: {
             CRM_API_KEY: "your-crm-api-key",
             PRODUCT_API_KEY: "your-product-api-key",
             SUPPORT_API_KEY: "your-support-api-key"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for customer success tasks

## Security Notes

- Customer data is handled with strict confidentiality
- Health scores and predictions are based on aggregated metrics
- CRM access requires proper authentication
- Alert webhooks are secured via OAuth/token authentication
- Data retention follows customer success best practices

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
