---
name: breach-checker
description: Check for compromised credentials and data breaches
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["HAVEBEENPWNED_API_KEY"] },
        "primaryEnv": "HAVEBEENPWNED_API_KEY",
        "emoji": "🔓",
      },
  }
---

# Breach Checker Skill

Check for compromised credentials and data breaches.

## When to Use

- When asked to check for breaches
- During incident response
- On scheduled checks for executives

## Capabilities

### 1. Email Breach Check

Check if emails have been in data breaches:
- Query HaveIBeenPwned API
- Return breach details
- Provide recommendations

### 2. Domain Breach Monitoring

Monitor organization domain for breaches:
- Track all breaches containing company emails
- Alert when new breaches occur
- Track breach types (passwords, emails, etc.)

### 3. Paste Site Monitoring

Monitor for leaked data on paste sites:
- Check for organization domains
- Alert on sensitive data exposure

## Output Format

```
## Breach Check Results

**Email**: user@company.com
**Found in Breaches**: 3

### Breaches

| Breach | Date | Data Types |
|--------|------|------------|
| LinkedIn | 2016-05-01 | Email, Password |
| Dropbox | 2012-07-01 | Email, Password |
| Adobe | 2013-10-04 | Email, Password, Username |

### Recommendations

1. Change password on all affected services
2. Enable two-factor authentication
3. Use a password manager
4. Check for credential reuse
```

## Configuration

- `HAVEBEENPWNED_API_KEY` - API key for HIBP
- `MONITORED_DOMAINS` - Company domains to monitor

## Security Notes

- Never log full email addresses
- Hash emails before checking (k-anonymity)
- Handle breach data sensitively
- Report only to authorized personnel

## Notes

- Only check with explicit authorization
- Focus on executive and admin accounts
- Include recommendations in all reports
- Track breach history over time
