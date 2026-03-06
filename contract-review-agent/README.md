# Contract Review Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Contracts: review | tracking | alerts](https://img.shields.io/badge/Contracts-Review%20%7C%20Tracking%20%7C%20Alerts-purple.svg)](README.md)

A professional OpenClaw agent for contract management. Analyzes contracts for risky clauses, tracks expirations, and manages renewals.

## Features

- **Risk Analysis** — Identify dangerous contract clauses
- **Expiration Tracking** — Monitor contract deadlines
- **Template Comparison** — Compare against standard terms
- **Renewal Management** — Track and process renewals

## Quick Start

```bash
mkdir -p ~/.openclaw/workspace-contracts
cp -r contract-review-agent/workspace/* ~/.openclaw/workspace-contracts/
openclaw agents add contracts
```

## Skills

- `clause-analyzer` - Analyze contract clauses
- `expiration-tracker` - Track deadlines
- `template-comparer` - Compare to standards
- `renewal-manager` - Handle renewals
