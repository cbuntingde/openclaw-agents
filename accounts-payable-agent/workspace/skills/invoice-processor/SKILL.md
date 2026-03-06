---
name: invoice-processor
description: Process and validate incoming invoices
metadata: {"openclaw": {"requires": {}}}
---

# Invoice Processor

Processes and validates incoming invoices.

## Capabilities

- Extract invoice data (vendor, amount, date, terms)
- Match invoices to purchase orders
- Validate mathematical accuracy
- Flag discrepancies for review
- Route for approval

## Usage

Process:
- New invoices received
- Invoice corrections
- Credit memos

## Output Format

- Invoice summary
- Validation status
- Match status (PO matched / unmatched)
- Approval routing
- Processing notes
