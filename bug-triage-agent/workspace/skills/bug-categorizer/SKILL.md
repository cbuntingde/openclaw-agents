---
name: bug-categorizer
description: Categorize bugs by type, component, and labels
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["BUG_TRACKER_API"] },
        "primaryEnv": "BUG_TRACKER_API",
        "emoji": "🏷️",
      },
  }
---

# Bug Categorizer Skill

Categorize bugs by type, component, and labels for efficient management.

## When to Use

- When new bug reports arrive
- During triage sessions
- When bug needs re-categorization
- When cleaning up backlog

## How It Works

1. Analyze bug report description and metadata
2. Identify affected component/module
3. Determine bug category
4. Apply appropriate labels
5. Link to related issues if applicable

## Bug Categories

### By Type
- **Bug**: Standard software defect
- **Feature Request**: Request for new functionality
- **Enhancement**: Improvement to existing feature
- **Documentation**: Docs-related issues
- **Question**: Clarification needed

### By Component
- Frontend / UI
- Backend / API
- Database
- Infrastructure
- Mobile
- Third-party integration
- Authentication
- Performance

### By Labels
- `needs-reproduction`: Cannot reproduce
- `needs-info`: More information required
- `duplicate`: Duplicate of another issue
- `wontfix`: Will not address
- `good-first-issue`: Suitable for new contributors
- `regression`: Regression from previous version

## Categorization Process

```
1. Read bug description thoroughly
2. Identify error messages and stack traces
3. Determine affected component
4. Check for similar existing bugs
5. Apply category and labels
6. Add categorization notes
7. Update bug in tracker
```

## Output Format

```
## Bug Categorization

**Bug ID**: BUG-123
**Category**: Bug
**Component**: Backend/API
**Labels**: needs-reproduction, database
**Confidence**: High
**Notes**: Similar to BUG-456 but different error
```

## Configuration

Set via environment variables:

- `BUG_TRACKER_API` - API for bug tracker (JIRA/GitHub)
- `COMPONENT_MAP` - Mapping of components to teams
- `AUTO_LABELS` - Labels to auto-apply

## Notes

- When uncertain, assign to most likely category
- Always check for duplicates before categorizing
- Document categorization rationale
- Update categories if bug evolves
