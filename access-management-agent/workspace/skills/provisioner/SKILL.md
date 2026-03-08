---
name: provisioner
description: Provision and deprovision user access across systems
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["DIRECTORY_API_KEY", "HR_SYSTEM_API"] },
        "primaryEnv": "DIRECTORY_API_KEY",
        "emoji": "🔑",
      },
  }
---

# Provisioner Skill

Provision and deprovision user access across enterprise systems.

## When to Use

- During onboarding for new employees
- When receiving access requests
- During offboarding for departing employees
- When role changes require access updates

## How It Works

1. Verify requester has approval authority
2. Validate requested access against policy
3. Create/modify user accounts in directory
4. Assign appropriate group memberships
5. Configure MFA settings
6. Document all changes
7. Send confirmation to user and manager

## Provisioning Workflow

### New Employee
```
1. Receive onboarding request from HR
2. Verify employee in HR system
3. Create account in identity provider
4. Assign default role based on department
5. Add to required groups
6. Configure MFA
7. Send welcome credentials securely
8. Log provisioning completion
```

### Access Request
```
1. Receive access request
2. Verify manager approval
3. Check against least-privilege policy
4. Grant requested access
5. Document in access log
6. Notify user of access granted
```

### Offboarding
```
1. Receive offboarding notice from HR
2. Disable account immediately
3. Remove all group memberships
4. Transfer ownership of files/resources
5. Revoke API keys and tokens
6. Disable MFA
7. Document deprovisioning complete
```

## Supported Systems

- Active Directory / Azure AD
- Google Workspace
- AWS IAM
- SaaS applications (Slack, GitHub, etc.)
- VPN and remote access

## Configuration

Set via environment variables:

- `DIRECTORY_API_KEY` - API key for directory service
- `HR_SYSTEM_API` - API for HR system integration
- `DEFAULT_ROLE` - Default role for new users
- `APPROVAL_WEBHOOK` - Slack/Email webhook for approvals

## Approval Requirements

| Access Level | Approval Required |
|--------------|-------------------|
| Standard | Manager |
| Elevated | Manager + IT Security |
| Privileged | IT Security Lead |
| Admin | CISO |

## Notes

- Always verify HR approval before provisioning
- Default to least privilege
- Set access expiration for temporary access
- Document all provisioning actions
- Never share credentials via unencrypted channels
