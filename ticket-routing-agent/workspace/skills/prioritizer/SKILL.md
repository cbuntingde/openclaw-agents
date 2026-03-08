---
name: prioritizer
description: Assign priority levels to support tickets
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["TICKET_SYSTEM_API"] },
        "primaryEnv": "TICKET_SYSTEM_API",
        "emoji": "⚡",
      },
  }
---

# Prioritizer Skill

Assign priority levels to support tickets based on urgency and impact.

## When to Use

- New tickets arriving
- During triage
- When circumstances change

## Priority Levels

### Critical (P1)
- System down
- Security breach
- Data loss
- Major customer impact

### High (P2)
- Feature broken
- Significant impact
- Workaround unavailable

### Medium (P3)
- Minor issue
- Workaround available
- Low customer impact

### Low (P4)
- Feature request
- How-to question
- Enhancement

## Factors

- Customer tier
- Issue severity
- Number affected
- SLA requirements
- Business impact
