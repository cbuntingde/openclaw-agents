---
name: postmortem-generator
description: Generate post-incident reports
metadata:
  {
    "openclaw": { "emoji": "📊" },
  }
---

# Post-Mortem Generator Skill

Generate post-incident reports.

## Report Template

```
# Post-Incident Report

**Incident**: [TITLE]
**Date**: [DATE]
**Duration**: [DURATION]
**Severity**: [SEV1-4]
**Author**: [NAME]
**Reviewers**: [NAMES]

## Summary

[Brief description of what happened]

## Impact

- Customers affected: [NUMBER]
- Revenue impact: [ESTIMATE]
- Internal impact: [DESCRIPTION]

## Root Cause

[Detailed explanation of root cause]

## Timeline

[See timeline-generator output]

## What Went Well

- [POSITIVE 1]
- [POSITIVE 2]

## What Could Be Improved

- [IMPROVEMENT 1]
- [IMPROVEMENT 2]

## Action Items

| Item | Owner | Due |
|------|-------|-----|
| [TASK] | [NAME] | [DATE] |

## Lessons Learned

[KEY LESSONS]
```
