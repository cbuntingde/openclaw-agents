---
name: health-scorer
description: Calculate customer health scores
metadata:
  {
    "openclaw": { "emoji": "💚" },
  }
---

# Health Scorer Skill

Calculate customer health scores.

## Score Components

| Metric | Weight | Data Source |
|--------|--------|--------------|
| NPS | 25% | Survey |
| Support | 20% | Ticket system |
| Adoption | 20% | Product usage |
| Engagement | 20% | Login data |
| Payments | 15% | Billing |

## Health Thresholds

| Score | Status | Action |
|-------|--------|--------|
| 70+ | Healthy | Maintain |
| 50-70 | At Risk | Engage |
| <50 | Critical | Escalate |
