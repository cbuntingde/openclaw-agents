---
name: alert-monitor
description: Monitor alerting systems for new incidents
metadata:
  {
    "openclaw": { "emoji": "👁️" },
  }
---

# Alert Monitor Skill

Monitor alerting systems for new incidents.

## Supported Systems

| System | Status |
|--------|--------|
| Datadog | [CONFIGURE] |
| PagerDuty | [CONFIGURE] |
| Prometheus | [CONFIGURE] |

## Alert Processing

1. Receive alert from monitoring system
2. Categorize severity (SEV1-4)
3. Determine affected service
4. Create incident record
5. Trigger response workflow

## Severity Assignment

| Trigger | Severity |
|---------|----------|
| Service down | SEV1 |
| Error rate > 10% | SEV2 |
| Latency > 500ms | SEV3 |
| Warning threshold | SEV4 |
