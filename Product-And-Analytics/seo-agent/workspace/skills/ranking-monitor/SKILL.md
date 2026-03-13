---
name: ranking-monitor
description: Monitor overall SEO performance, domain authority, and competitor rankings
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["SEO_API_KEY"] },
        "primaryEnv": "SEO_API_KEY",
        "emoji": "📈",
      },
  }
---

# Ranking Monitor Skill

Monitor overall SEO performance, domain authority, and competitor rankings.

## When to Use

- Weekly performance reviews
- Competitor analysis
- Domain authority tracking
- Backlink monitoring

## How It Works

1. Query SEO APIs for domain metrics
2. Track domain authority over time
3. Monitor backlink profile
4. Compare to competitors
5. Generate comprehensive reports

## Metrics Monitored

### Domain Metrics
- Domain Authority (DA)
- Page Authority (PA)
- Linking Domains
- Total Backlinks
- Citation Flow
- Trust Flow

### Backlink Profile
- New backlinks gained
- Backlinks lost
- Anchor text distribution
- Top linking domains
- Follow vs nofollow ratio

### Competitor Analysis
- Competitor DA comparison
- Keyword overlap
- Backlink comparison
- Gap analysis

## Alert Thresholds

| Metric | Alert Trigger |
|--------|---------------|
| DA change | > 2 points |
| Backlinks lost | > 10% in week |
| New competitor | Significant DA change |
| Traffic drop | > 20% week over week |

## Dashboard Output

```
## SEO Performance Dashboard

**Date**: 2026-03-08

### Domain Health

| Metric | Current | Previous | Change |
|--------|---------|----------|--------|
| DA | 45 | 43 | +2 |
| Backlinks | 1,250 | 1,180 | +70 |
| Ref. Domains | 180 | 175 | +5 |

### Competitor Comparison

| Site | DA | Backlinks |
|------|----|-----------|
| us | 45 | 1,250 |
| competitor1.com | 52 | 2,100 |
| competitor2.com | 38 | 890 |

### Action Items

- [ ] Address 15 lost backlinks
- [ ] Continue building links from DA-30+ sites
- [ ] Close gap with competitor1
```

## Configuration

Set via environment variables:

- `SEO_API_KEY` - API for SEO tools
- `COMPETITOR_DOMAINS` - Comma-separated competitor list
- `ALERT_WEBHOOK` - Notification webhook

## Notes

- Track metrics consistently
- Focus on trends over time
- Compare to relevant competitors
- Monitor backlink quality not just quantity
