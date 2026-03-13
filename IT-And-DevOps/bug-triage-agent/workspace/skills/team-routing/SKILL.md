---
name: team-routing
description: Route bugs to appropriate engineering teams
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["BUG_TRACKER_API"] },
        "primaryEnv": "BUG_TRACKER_API",
        "emoji": "🧭",
      },
  }
---

# Team Routing Skill

Route bugs to appropriate engineering teams based on component ownership.

## When to Use

- When bugs need assignment
- During triage sessions
- When component ownership changes
- When rebalancing workload

## How It Works

1. Identify bug component
2. Map to owning team
3. Check current workload
4. Consider expertise and availability
5. Assign to team/member
6. Document routing decision

## Team Mapping Example

| Component | Team | Slack Channel |
|-----------|------|---------------|
| Frontend UI | Frontend Team | #eng-frontend |
| API Backend | Backend Team | #eng-backend |
| Database | Data Team | #eng-data |
| Mobile iOS | Mobile Team | #eng-mobile |
| Infrastructure | Infra Team | #eng-infra |
| Auth | Security Team | #eng-security |

## Routing Criteria

### Primary: Component Ownership
- Route to team owning affected component
- If multiple components, route to primary

### Secondary: Workload Balance
- Consider current sprint load
- Prefer teams with capacity

### Tertiary: Expertise
- Route to team with relevant expertise
- Consider specialist knowledge

## Routing Process

```
1. Identify affected component(s)
2. Look up owning team
3. Check team's current bug count
4. Assign to team (or specific owner)
5. Add routing notes
6. Update bug in tracker
7. Notify team via Slack
```

## Workload Thresholds

| Team Capacity | Action |
|---------------|--------|
| < 5 bugs | Assign new bugs freely |
| 5-10 bugs | Assign only critical/urgent |
| > 10 bugs | Route to other team or escalate |

## Output Format

```
## Bug Routing

**Bug ID**: BUG-123
**Component**: API Backend
**Assigned Team**: Backend Team
**Assigned To**: @developer
**Reason**: Owns API component, has capacity
**Confidence**: High
```

## Escalation

Route to engineering manager when:
- No team owns component
- Multiple teams dispute ownership
- All teams at capacity
- Bug spans multiple components

## Configuration

Set via environment variables:

- `BUG_TRACKER_API` - API for bug tracker
- `TEAM_COMPONENT_MAP` - Component to team mapping
- `SLACK_WEBHOOK` - Notification webhook
- `WORKLOAD_THRESHOLD` - Max bugs per team

## Notes

- Always verify team ownership before routing
- Document routing rationale
- Notify teams of new assignments
- Track routing accuracy for improvements
