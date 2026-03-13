---
name: keyword-tracker
description: Track keyword rankings and monitor position changes
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["SEO_API_KEY"] },
        "primaryEnv": "SEO_API_KEY",
        "emoji": "📊",
      },
  }
---

# Keyword Tracker Skill

Track keyword rankings and monitor position changes in search results.

## When to Use

- Daily ranking checks
- Weekly ranking reports
- When investigating ranking drops
- Competitor analysis

## How It Works

1. Query ranking API for target keywords
2. Compare current positions to previous
3. Calculate position changes
4. Identify trends over time
5. Generate alerts for significant changes

## Metrics Tracked

- Current position
- Previous position
- Position change
- Search volume
- Keyword difficulty
- Estimated traffic

## Position Change Thresholds

| Change | Alert Level |
|--------|-------------|
| +1 to +3 | Minor improvement |
| +4 to +10 | Significant improvement |
| -1 to -3 | Minor drop |
| -4 to -10 | Significant drop |
| > -10 | Critical drop |

## Reporting

```
## Keyword Ranking Report

**Date**: 2026-03-08
**Total Keywords**: 50
**Average Position**: 12.3
**Improved**: 15
**Declined**: 8
**Unchanged**: 27

### Top Movers

| Keyword | Previous | Current | Change |
|---------|----------|---------|--------|
| SEO tips | 5 | 2 | +3 |
| content SEO | 15 | 22 | -7 |
```

## Configuration

Set via environment variables:

- `SEO_API_KEY` - API key for SEO tool (Ahrefs, SEMrush, etc.)
- `TARGET_KEYWORDS` - Comma-separated list of keywords
- `ALERT_THRESHOLD` - Position change threshold for alerts
- `ALERT_WEBHOOK` - Slack/Email webhook

## Notes

- Track rankings at consistent times
- Monitor for seasonality
- Consider competition changes
- Track branded vs non-branded separately
