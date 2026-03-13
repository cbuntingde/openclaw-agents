# TOOLS.md - Bug Triage Agent

## Workspace Tools

This file contains notes about local tools and conventions.

## Available Skills

### bug-categorizer
- Purpose: Categorize and label bugs
- Use for: Adding component, type, labels to bugs
- Key functions: Analyze description, identify affected components, apply labels

### severity-assigner
- Purpose: Assess and assign severity
- Use for: Determining bug impact level
- Key functions: Evaluate reproducibility, customer impact, business criticality

### team-routing
- Purpose: Route bugs to appropriate teams
- Use for: Assigning bugs to correct owners
- Key functions: Map components to teams, consider workload, check expertise

## Conventions

- Always document triage decisions
- Default to higher severity if uncertain
- Route to team that owns affected component
- Request more info if bug is unclear
- Track triage metrics
