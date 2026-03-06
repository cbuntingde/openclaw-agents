# Enterprise OpenClaw Skill Ideas

Unique and beneficial skills for business/enterprise use, distinct from typical consumer-focused skills.

---

## 1. Compliance Officer Agent

- Monitors regulatory changes (GDPR, HIPAA, SOC2, PCI-DSS)
- Alerts when policies change affecting the business
- Generates compliance reports and documentation
- Tracks audit deadlines and requirements
- **Value**: Automates tedious compliance monitoring

**APIs Needed**: Regulatory APIs (e.g., congress.gov, official gazettes), compliance databases

---

## 2. Enterprise Security Sentinel

- Monitors for exposed credentials/secrets in codebases
- Checks for vulnerable dependencies
- Alerts on unusual API usage patterns
- Tracks security news for relevant CVEs
- Integrates with breach notification services (HaveIBeenPwned, etc.)

**APIs Needed**: GitHub/GitLab scanning, dependency APIs, CVE databases, HaveIBeenPwned

---

## 3. Meeting Intelligence Agent

- Joins/reads meeting transcripts (Zoom, Teams, Meet)
- Extracts action items, decisions, deadlines
- Follows up with participants on commitments
- Generates meeting summaries
- Tracks follow-up completion rates

**APIs Needed**: Zoom API, Microsoft Graph API (Teams), Google CalendarMeet API

---

## 4. Contract Review Agent

- Analyzes contracts for risky clauses
- Compares against standard templates
- Flags unusual terms, auto-renewals, liability caps
- Tracks contract expiration and renewal dates
- Generates term summaries for legal review

**APIs Needed**: DocuSign API, PandaDoc API, contract management systems

---

## 5. Onboarding Specialist Agent

- Automates new employee setup workflows
- Provisions accounts across systems (Slack, email, SaaS tools)
- Sends customized welcome sequences
- Tracks onboarding task completion
- Gathers feedback at checkpoints

**APIs Needed**: HRIS APIs (Workday, BambooHR), identity providers (Okta, Azure AD), Slack/Teams APIs

---

## 6. Customer Success Agent

- Monitors NPS/CSAT scores and sentiment
- Identifies at-risk customers from usage patterns
- Generates renewal forecasts
- Creates personalized outreach campaigns
- Tracks support ticket trends

**APIs Needed**: Salesforce, HubSpot, Gainsight, Zendesk, SurveyMonkey

---

## 7. Inventory Intelligence Agent

- Connects to ERP/CRM systems
- Predicts stock replenishment needs
- Alerts on slow-moving inventory
- Tracks vendor lead times
- Generates procurement recommendations

**APIs Needed**: ERP systems (NetSuite, SAP), inventory management APIs

---

## 8. Expense Audit Agent

- Reviews expense reports for policy violations
- Categorizes spending patterns
- Flags duplicate submissions
- Generates monthly spend analytics
- Automates approval workflows

**APIs Needed**: Expensify, SAP Concur, QuickBooks, Stripe bills

---

## 9. Knowledge Base Curator

- Scans internal wikis, Confluence, Notion for content gaps
- Suggests new articles based on repeated questions
- Updates outdated documentation
- Creates FAQ from support tickets
- Measures content freshness

**APIs Needed**: Confluence API, Notion API, Jira, Zendesk

---

## 10. Incident Response Agent

- Monitors monitoring systems (Datadog, PagerDuty, etc.)
- Runs initial diagnostics on alerts
- Notifies on-call staff with context
- Creates incident timeline automatically
- Generates post-incident reports

**APIs Needed**: PagerDuty, Datadog, Grafana, Jira, Slack

---

## 11. Vendor Management Agent

- Tracks vendor contracts, SLA compliance
- Monitors vendor security ratings (BitSight, SecurityScorecard)
- Alerts on certificate/license expirations
- Manages vendor evaluation workflows
- Generates vendor risk assessments

**APIs Needed**: Vendor APIs, certificate transparency logs, security rating services

---

## 12. Budget Forecast Agent

- Analyzes historical spending patterns
- Predicts monthly/quarterly burn rate
- Alerts on budget threshold breaches
- Generates forecast reports by department
- Recommends reallocation strategies

**APIs Needed**: Accounting systems (QuickBooks, Xero), ERP, budget tracking tools

---

## 13. Employee Experience Agent

- Monitors Slack/Teams for employee sentiment
- Tracks participation in wellness programs
- Manages recognition programs
- Handles PTO requests and approvals
- Generates engagement reports

**APIs Needed**: Slack API, Microsoft Graph, HRIS systems

---

## 14. Data Pipeline Monitor

- Monitors ETL job failures
- Alerts on data quality issues
- Tracks pipeline SLAs
- Generates data lineage reports
- Manages data dictionary updates

**APIs Needed**: Airflow, dbt Cloud, Snowflake, BigQuery, Fivetran

---

## 15. Lead Qualification Agent

- Qualifies inbound leads from multiple sources
- Enriches leads with firmographic data
- Routes leads to appropriate sales reps
- Follows up on stale opportunities
- Updates CRM automatically

**APIs Needed**: Salesforce, HubSpot, Clearbit, ZoomInfo, LinkedIn API

---

## Implementation Considerations

### Skill Architecture
- Each skill should be modular, focusing on one core function
- Use OpenClaw's skill gating to require specific API credentials
- Leverage per-agent sandboxing for skills handling sensitive data

### Common Patterns
- Cron-based scheduled runs for monitoring skills
- Webhook integrations for real-time alerts
- Memory integration for contextual awareness across sessions

### Security
- Never hardcode API keys; use environment variables
- Implement proper error handling for API failures
- Respect rate limits and implement backoff

---

## Market Opportunity

These skills address real enterprise pain points:
- **Compliance** = $15B+ market
- **Security** = $20B+ market  
- **Customer Success** = $10B+ market
- **HR/Onboarding** = $8B+ market

A well-built skill for any of these could be sold as a premium add-on or subscription service to businesses deploying OpenClaw.
