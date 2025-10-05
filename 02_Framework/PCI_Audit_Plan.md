# PCI Audit Plan

## Objective
Define tests and procedures to validate PCI controls for SafePay demo scope.

## Scope
- Tokenization process and outputs
- Payment DB and retention controls
- Logging and audit trails (tokenization events)
- Vendor assessment

## Test cases & evidence
1. **Tokenization (Req 3)**: confirm no PAN stored; review tokenized_payments.csv; Evidence: validation_report.csv, tokenized_payments.csv.  
2. **Logging (Req 10, parcially)**: verify tokenization events log exists and sample entries contain timestamp, actor, request_id, success/fail. Evidence: log retention config.  
3. **Vendor assessments (Req 12.8, parcially)**: confirm AOC or SIG/CAIQ for PSP. Evidence: Vendor_Assessment folder.

## Reporting
Produce a one-page auditor summary for each control and a combined PCI basic audit report.