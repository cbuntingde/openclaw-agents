---
name: churn-predictor
description: Identify customers at risk of churning
metadata:
  {
    "openclaw": { "emoji": "⚠️" },
  }
---

# Churn Predictor Skill

Identify customers at risk of churning.

## Risk Factors

| Factor | Weight |
|--------|--------|
| NPS < 5 | High |
| No login 30+ days | High |
| Support tickets > 10 | Medium |
| Declining usage | Medium |
| Non-renewal signal | High |

## Risk Levels

| Score | Risk Level | Action |
|-------|------------|--------|
| > 70 | Low | Monitor |
| 40-70 | Medium | Engage |
| < 40 | High | Escalate |
