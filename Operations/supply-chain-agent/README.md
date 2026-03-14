# Supply Chain Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for supply chain operations. This agent tracks orders, coordinates logistics, manages vendor communication, and ensures smooth material flow.

## What This Agent Does

The Supply Chain Agent is your automated logistics operations specialist. It ensures materials and products flow smoothly from suppliers to your organization by tracking orders, coordinating shipments, and managing vendor relationships.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Order Tracking** | Monitor purchase order status |
| **Logistics Coordination** | Manage shipping and delivery |
| **Vendor Communication** | Handle supplier communications |
| **Lead Time Management** | Track supplier performance |
| **Issue Resolution** | Handle supply chain disruptions |

## How It Works

### 1. Order Tracking Process

```
┌─────────────────────────────────────────────────────────────┐
│                   ORDER TRACKING WORKFLOW                      │
├─────────────────────────────────────────────────────────────┤
│  Tracking Status:                                           │
│  - Submitted: PO sent to vendor                            │
│  - Confirmed: Vendor acknowledged                          │
│  - In Production: Being manufactured                       │
│  - Shipped: In transit                                     │
│  - In Transit: On the way                                  │
│  - Delivered: Received                                     │
│                                                              │
│  Process:                                                  │
│  1. Pull PO status                                        │
│  2. Check tracking numbers                                 │
│  3. Update delivery estimates                              │
│  4. Flag delays                                          │
│  5. Notify stakeholders                                    │
└─────────────────────────────────────────────────────────────┘
```

### 2. Logistics Coordination Workflow

```
┌─────────────────────────────────────────────────────────────┐
│               LOGISTICS COORDINATION WORKFLOW                    │
├─────────────────────────────────────────────────────────────┤
│  Coordination Activities:                                    │
│  - Carrier selection                                        │
│  - Shipment scheduling                                      │
│  - Route optimization                                       │
│  - Delivery scheduling                                      │
│  - Customs handling                                         │
│                                                              │
│  Process:                                                  │
│  1. Identify shipment needs                                 │
│  2. Select carrier                                         │
│  3. Schedule pickup                                         │
│  4. Track in transit                                       │
│  5. Coordinate delivery                                    │
└─────────────────────────────────────────────────────────────┘
```

### 3. Vendor Communication Workflow

```
┌─────────────────────────────────────────────────────────────┐
│               VENDOR COMMUNICATION WORKFLOW                      │
├─────────────────────────────────────────────────────────────┤
│  Communication Types:                                        │
│  - Order confirmations                                      │
│  - Shipment updates                                         │
│  - Delay notifications                                      │
│  - Invoice coordination                                     │
│  - Performance reviews                                      │
│                                                              │
│  Process:                                                  │
│  1. Identify communication need                            │
│  2. Draft message                                          │
│  3. Route for approval                                      │
│  4. Send to vendor                                         │
│  5. Track response                                         │
│  6. Document outcome                                       │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **order-tracker** | Track purchase orders | Order monitoring |
| **logistics-coordinator** | Coordinate shipments | Shipping management |
| **vendor-comm** | Handle vendor communication | Vendor relations |

### order-tracker

Monitors purchase order status.

**When to use:**
- Order monitoring
- Delay identification
- Delivery tracking

**Key functions:**
- Track PO status
- Check tracking
- Flag delays

### logistics-coordinator

Manages logistics and shipping.

**When to use:**
- Shipment coordination
- Carrier management
- Delivery scheduling

**Key functions:**
- Select carriers
- Schedule shipments
- Track delivery

### vendor-comm

Handles vendor communications.

**When to use:**
- Order updates
- Issue resolution
- Performance management

**Key functions:**
- Draft messages
- Send communications
- Track responses

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `ERP_API_KEY` | API for ERP system | Yes |
| `LOGISTICS_API` | Logistics platform API | Yes |
| `VENDOR_PORTAL` | Vendor portal access | Yes |

### Lead Time Thresholds

| Item Type | Expected Lead Time | Delay Threshold |
|-----------|------------------|-----------------|
| Critical | 7 days | +2 days |
| Standard | 14 days | +5 days |
| Bulk | 30 days | +7 days |

## Identity

- **Name**: Supply Chain Agent
- **Emoji**: 🚚
- **Color**: blue
- **Personality**: Organized, proactive, communicative, detail-oriented

## Integrations

### Supported Systems

- SAP
- Oracle SCM
- NetSuite
- Descartes
- E2open

### Supported Carriers

- FedEx
- UPS
- DHL
- Maersk
- Flexport

## Success Metrics

This agent is successful when:

- [ ] Order tracking coverage 100%
- [ ] On-time delivery >95%
- [ ] Vendor response time <24 hours
- [ ] Disruption resolution <48 hours
- [ ] Cost optimization achieved
- [ ] Zero production stoppages

## Directory Structure

```
supply-chain-agent/
├── SKILL.md                              # Agent definition
├── README.md                             # This file
├── config/
│   └── openclaw.json.example             # Configuration example
└── workspace/
    ├── AGENTS.md                         # Operating instructions
    ├── SOUL.md                           # Persona and identity
    ├── IDENTITY.md                       # Name, emoji, quick reference
    ├── USER.md                           # User profiles and preferences
    ├── HEARTBEAT.md                      # Automated checklist
    ├── MEMORY.md                         # Long-term memory
    ├── TOOLS.md                          # Available skills
    ├── memory/
    │   └── YYYY-MM-DD.md                 # Daily activity logs
    └── skills/
        ├── order-tracker/
        │   └── SKILL.md
        ├── logistics-coordinator/
        │   └── SKILL.md
        └── vendor-comm/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r supply-chain-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "supply-chain": {
           enabled: true,
           env: {
             ERP_API_KEY: "your-erp-api-key",
             LOGISTICS_API: "your-logistics-api"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for supply chain operations

## Security Notes

- This agent handles supplier information
- Pricing data is confidential
- Vendor communications tracked
- Access limited to operations
- Audit trails maintained

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
