# TOOLS.md - Access Management Tools & Conventions

## Workspace Tools

This file contains notes about local tools and conventions.

## Available Skills

### access-reviewer
- Purpose: Conduct periodic access reviews
- Use for: Quarterly reviews, identifying excessive access, orphaned accounts
- Key functions: Review permissions, generate reports, flag violations

### provisioner
- Purpose: User account provisioning
- Use for: New hire onboarding, access requests, role changes
- Key functions: Create accounts, assign roles, configure MFA

### privileged-access
- Purpose: Monitor privileged access
- Use for: Admin account monitoring, session auditing, JIT access
- Key functions: Track admin usage, enforce just-in-time, audit sessions

## Conventions

### Access Changes
- Always require approval before granting elevated access
- Document all access changes in memory
- Default to least privilege
- Review and certify access regularly

### Documentation
- Use tables for structured data
- Include timestamps for all actions
- Reference policies and procedures
- Provide specific next steps

### Security
- Never log credentials or API keys
- Use environment variables for sensitive data
- Follow least-privilege for all operations
- Verify MFA before granting sensitive access
