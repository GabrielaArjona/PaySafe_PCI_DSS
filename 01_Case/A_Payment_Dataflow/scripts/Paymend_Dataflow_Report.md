# Tokenization & Dataflow Report

**Scope:** Tokenization flow for payments (demo environment).

**Date:** 2025-09-23

**Prepared by:** Gabriela Arjona

## Key results 
- Payments input (synthetic): 1,200 rows
- Tokenized rows produced: see `outputs/tokenized_payments.csv`
- Validation report: `outputs/validation_report.csv`
- Unique 1,200 (synthetic) tokens
- Failed: 423
- Success: 398
- Declined": 379


## Controls validated
- Tokenization in place (no PAN persisted) — pass/fail in validation report
- Token uniqueness validated — pass/fail in validation report
- Audit log retention policy exists — `02_Frameworks/Data_Retention_Policy.md`

## Artifacts & evidence
- `outputs/tokenized_payments.csv`
- `outputs/validation_report.csv`
- `03_Evidence/hashes/ledger.csv`

## Contact / Owner
Payments Ops / GRC 