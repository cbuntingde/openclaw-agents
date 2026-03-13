---
name: cashflow-forecaster
description: Forecast cash flow patterns and predict future cash positions
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["ERP_API_KEY", "BANKING_API_KEY"] },
        "primaryEnv": "ERP_API_KEY",
        "emoji": "📊",
      },
  }
---

# Cash Flow Forecaster Skill

Forecast cash flow patterns and predict future cash positions.

## When to Use

- Daily cash position updates
- Weekly forecast reviews
- Planning for large transactions
- Scenario planning

## How It Works

1. Gather historical cash flow data
2. Identify patterns and trends
3. Apply statistical models
4. Generate forecasts with confidence intervals
5. Model scenarios (best/worst/expected)

## Metrics Tracked

- Operating cash flow
- Investing cash flow
- Financing cash flow
- Free cash flow
- Net cash change

## Forecast Output

```
## Cash Flow Forecast

**Period**: Next 30 days
**Starting Balance**: $1,250,000
**Projected Ending**: $980,000 - $1,150,000

### Key Assumptions

- $150k receivables collected by day 15
- $75k payables due by day 10
- No unexpected expenses

### Scenarios

| Scenario | Day 30 Balance |
|----------|---------------|
| Best Case | $1,150,000 |
| Expected | $1,080,000 |
| Worst Case | $980,000 |
```

## Configuration

Set via environment variables:

- `ERP_API_KEY` - API for ERP system
- `BANKING_API_KEY` - API for banking data
- `FORECAST_DAYS` - Days to forecast (default: 30)
- `HISTORY_DAYS` - Historical data to use

## Notes

- Always show confidence intervals
- Document assumptions clearly
- Update when actuals differ significantly
- Flag any data quality issues
