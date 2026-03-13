# Financial Reporting Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw agent for financial reporting. Generates reports, analyzes variances, and performs reconciliations.

## Features

- **Report Generation** — Generate financial statements and custom reports
- **Variance Analysis** — Analyze actual vs budget variances
- **Reconciliation** — Perform account reconciliations

## Quick Start

```bash
mkdir -p ~/.openclaw/workspace-financial-reporting
cp -r financial-reporting-agent/workspace/* ~/.openclaw/workspace-financial-reporting/
cp config/openclaw.json.example ~/.openclaw/openclaw.json
openclaw agents add financial-reporting
openclaw gateway restart
```

## Skills

- `report-generator` - Generate financial reports
- `variance-analyzer` - Analyze variances
- `reconciliation` - Perform reconciliations
