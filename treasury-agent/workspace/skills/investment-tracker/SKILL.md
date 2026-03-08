---
name: investment-tracker
description: Track investment portfolio performance and optimize allocations
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["INVESTMENT_API_KEY"] },
        "primaryEnv": "INVESTMENT_API_KEY",
        "emoji": "📈",
      },
  }
---

# Investment Tracker Skill

Track investment portfolio performance and optimize allocations.

## When to Use

- Daily portfolio review
- Rebalancing decisions
- Performance reporting
- Compliance checks

## How It Works

1. Query investment accounts
2. Calculate returns (absolute and relative)
3. Compare to benchmarks
4. Check allocation vs policy
5. Generate rebalancing recommendations

## Portfolio Categories

- Money Market Funds
- Short-term Treasuries
- Corporate Bonds
- Equities
- Fixed Income
- Alternative Investments

## Performance Metrics

- Total Return
- Time-Weighted Return
- Money-Weighted Return
- Benchmark Comparison
- Risk-Adjusted Return (Sharpe Ratio)

## Rebalancing Triggers

| Condition | Action |
|-----------|--------|
| Allocation > 5% drift | Review needed |
| Sector > 25% | Rebalance recommended |
| Cash < 5% | Review liquidity |
| Loss > 5% | Alert and review |

## Output Format

```
## Investment Portfolio Report

**Date**: 2026-03-08
**Total Value**: $2,450,000

### Performance

| Period | Portfolio | Benchmark | Difference |
|--------|-----------|-----------|------------|
| MTD | +1.2% | +1.0% | +0.2% |
| YTD | +4.5% | +4.2% | +0.3% |
| 1Y | +8.2% | +7.5% | +0.7% |

### Allocation

| Asset Class | Current | Target | Drift |
|-------------|---------|--------|-------|
| Cash | 8% | 5% | +3% |
| Bonds | 45% | 50% | -5% |
| Equities | 47% | 45% | +2% |

### Recommendations

- Consider moving 3% from cash to bonds
- Allocations within policy limits
```

## Configuration

Set via environment variables:

- `INVESTMENT_API_KEY` - API for investment data
- `BENCHMARK` - Benchmark index
- `TARGET_ALLOCATIONS` - JSON of target allocations
- `ALERT_WEBHOOK` - Alerts webhook
