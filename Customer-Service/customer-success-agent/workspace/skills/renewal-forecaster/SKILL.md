---
name: renewal-forecaster
description: Predict renewal outcomes
metadata:
  {
    "openclaw": { "emoji": "🔮" },
  }
---

# Renewal Forecaster Skill

Predict renewal outcomes.

## Forecast Factors

| Factor | Weight |
|--------|--------|
| Health score | 30% |
| NPS | 20% |
| Usage trend | 20% |
| Support history | 15% |
| Contract terms | 15% |

## Outcomes

| Probability | Prediction |
|-------------|------------|
| > 80% | Likely Renew |
| 50-80% | At Risk |
| < 50% | Likely Churn |
