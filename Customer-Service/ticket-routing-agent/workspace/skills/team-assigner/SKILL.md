---
name: team-assigner
description: Route tickets to appropriate support teams
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["TICKET_SYSTEM_API"] },
        "primaryEnv": "TICKET_SYSTEM_API",
        "emoji": "🧭",
      },
  }
---

# Team Assigner Skill

Route tickets to appropriate support teams based on issue type and expertise.

## When to Use

- After triage
- When re-routing
- During assignment

## Team Mapping

| Issue Type | Team |
|-----------|------|
| Bug Reports | Engineering |
| Billing | Finance |
| Account | Support |
| Technical | Tech Support |
| Feature Request | Product |

## Process

1. Identify category
2. Look up team
3. Check workload
4. Assign to team
5. Notify via Slack
