# Customer Success Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Customer Success: NPS | Churn | Engagement](https://img.shields.io/badge/Customer-NPS%20%7C%20Churn%20%7C%20Engagement-purple.svg)](README.md)

A professional OpenClaw agent for customer success management. Monitors NPS, identifies at-risk customers, and drives retention.

## Features

- **NPS Monitoring** — Track Net Promoter Score trends
- **Churn Prediction** — Identify at-risk customers early
- **Engagement Tracking** — Monitor product usage patterns
- **Renewal Forecasting** — Predict renewal outcomes
- **Health Scores** — Calculate customer health metrics
- **Alert Routing** — Route alerts to appropriate teams

## Quick Start

```bash
mkdir -p ~/.openclaw/workspace-customer-success
cp -r customer-success-agent/workspace/* ~/.openclaw/workspace-customer-success/
cp config/openclaw.json.example ~/.openclaw/openclaw.json
openclaw agents add customer-success
```

## Skills

- `nps-monitor` - Track and analyze NPS scores
- `churn-predictor` - Identify at-risk customers
- `health-scorer` - Calculate customer health scores
- `renewal-forecaster` - Predict renewal outcomes
- `engagement-tracker` - Monitor usage patterns
