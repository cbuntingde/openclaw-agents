# Onboarding Specialist Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![HR: onboarding | provisioning | workflows](https://img.shields.io/badge/HR-Onboarding%20%7C%20Provisioning%20%7C%20Workflows-green.svg)](README.md)

A professional OpenClaw agent for employee onboarding automation. Provisions accounts, sends welcome sequences, and tracks onboarding progress.

## Features

- **Account Provisioning** — Create accounts across SaaS tools
- **Welcome Sequences** — Personalized onboarding emails
- **Task Tracking** — Track onboarding checklist progress
- **Equipment Requests** — Manage hardware/software requests
- **Feedback Collection** — Gather onboarding feedback
- **Offboarding** — Reverse provisioning on departure

## Quick Start

```bash
# Create workspace
mkdir -p ~/.openclaw/workspace-onboarding
cp -r onboarding-specialist-agent/workspace/* ~/.openclaw/workspace-onboarding/

# Configure
cp config/openclaw.json.example ~/.openclaw/openclaw.json

# Register agent
openclaw agents add onboarding
```

## Skills

- `account-provisioner` - Create accounts across systems
- `welcome-sequencer` - Send onboarding emails
- `task-tracker` - Track onboarding tasks
- `feedback-collector` - Gather onboarding feedback
