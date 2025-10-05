# Audit and Analytics Report

**Scope:** Customers & Orders (SQLite DB: outputs/safepay.db)  
**Query run:** customers / orders joined; cutoff = DATE('now','-18 months')  
**Run date:** 2025-10-XX  
**Analyst:** G Arjona

## Summary
- Candidates found for retention review: **51** customers (see `outputs/retention_candidates.csv`).
- Of these, **6** had legal/financial exceptions (consult Finance/Legal).

## Key findings
- Most common reason: last_order_date older than cutoff and no activity in 18 months.
- Customers had transactions within retention window but older than 18 months in other systems (possible mismatch with external PSP).

## Risk & Impact
- **Low/Medium** risk if anonymize; **High** risk if delete without backup (loss of evidence for refunds/legal).
- Tax/accounting retention requirement: verify with Finance (possible 5–7 year retention).

## Action plan (next 30 days)
1. Legal/Finance confirm retention exceptions — owner: Legal (Due: +3 days).  
2. Create archive exports & hashes for PIDs — owner: Data Owner (Due: +7 days).  
3. Run anonymization script for approved IDs — owner: Payments Ops (Due: +14 days).  
4. Verification & update ledger — owner: GRC Analyst (Due: +16 days).  

## Evidence
- `outputs/retention_candidates.csv` (export).  
- `03_Evidence/hashes/ledger.csv` — added SHA256 entries for the exports.

## Notes
- Do not delete until backups are confirmed and legal sign-off is present.
