---
name: liquidity-monitor
description: Monitor liquidity positions and working capital metrics
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["ERP_API_KEY", "BANKING_API_KEY"] },
        "primaryEnv": "BANKING_API_KEY",
        "emoji": "💧",
      },
  }
---

# Liquidity Monitor Skill

Monitor liquidity positions and working capital metrics.

## When to Use

- Daily cash position checks
- Working capital analysis
- Liquidity ratio monitoring
- Alert generation

## How It Works

1. Query bank accounts for current balances
2. Calculate liquidity ratios
3. Compare to targets and thresholds
4. Generate alerts for issues
5. Track trends over time

## Key Metrics

### Liquidity Ratios
- Current Ratio = Current Assets / Current Liabilities
- Quick Ratio = (Current Assets - Inventory) / Current Liabilities
- Cash Ratio = Cash / Current Liabilities

### Working Capital
- Working Capital = Current Assets - Current Liabilities
- NWC = Accounts Receivable + Inventory - Accounts Payable

### Turnover Metrics
- DSO (Days Sales Outstanding)
- DPO (Days Payable Outstanding)
- DIO (Days Inventory Outstanding)

## Alert Thresholds

| Metric | Warning | Critical |
|--------|---------|----------|
| Current Ratio | < 1.5 | < 1.0 |
| Cash Balance | < $100k | < $50k |
| DSO | > 45 days | > 60 days |

## Output Format

```
## Liquidity Report

**Date**: 2026-03-08

### Cash Position

| Account | Balance |
|---------|---------|
| Operating | $500,000 |
| Payroll | $75,000 |
| Savings | $200,000 |
| **Total** | **$775,000** |

### Key Ratios

| Metric | Current | Target | Status |
|--------|---------|--------|--------|
| Current Ratio | 2.1 | 1.5 | ✅ |
| Quick Ratio | 1.8 | 1.0 | ✅ |
| Working Capital | $450k | $300k | ✅ |

### Alerts

None
```

## Configuration

Set via environment variables:

- `BANKING_API_KEY` - API for bank accounts
- `ERP_API_KEY` - API for working capital data
- `MIN_CASH_REQUIRED` - Minimum cash threshold
- `ALERT_WEBHOOK` - Slack/Email for alerts
