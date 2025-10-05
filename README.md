# PCI DSS Lite Compliance Project  

Frameworks: **PCI DSS v4.0**, with light crosswalk to retention and vendor due diligence.  

Focus: payment data tokenization, SQL-based control testing, evidence generation, and vendor security review.  

Data: 100% synthetic (no real cardholder data or PII).  

A tangible, audit-friendly project applying **PCI DSS controls** to a relatable scenario: a simplified payment data environment.  

The repo shows end-to-end control execution: **policy → procedure/runbook → notebooks/scripts → evidence → one-page reports → PCI DSS.**  

---

## 📑 Table of Contents
- [What to look at first](#what-to-look-at-first)
- [Business processes and assets](#business-processes-and-assets)
- [Mini-projects overview](#mini-projects-overview)
  - [A) Data Retention & Tokenization — “Keep only what you need”](#A-Data-Retention-&-Tokenization-Keep-only-what-you-need)
  - [B) PCI Controls & Audit — “Show me the evidence”](#B-PCI-Controls-&-Audit-Show-me-the-evidence)
  - [C) SQL Audit & Analytics — “Query your controls”](#C-SQL-Audit-&-Analytics-Query-your-controls)
  - [D) Vendor Assessment — “Don’t trust, verify”](#D-Vendor-Assessment-Don’t-trust-verify)
- [Repository layout](#repository-layout)
- [Screenshots](#screenshots)

---

## What to look at first
- `02_Frameworks/PCI_Audit_Plan.md` — the starting point audit plan  
- `01_Case/B_PCI_Controls_and_Audit/pci_checks.ipynb` — actual control checks in action  
- `03_Evidence/ledger.csv` — integrity ledger for artifacts  

---

## Business processes and assets
- **Payment environment**: customer orders and payment card data (synthetic)  
- **Tokenization pipeline**: raw → tokenized payments  
- **Retention process**: SQL queries identify stale records to purge  
- **Audit & evidence**: control testing and ledger tracking  
- **Third-party vendor**: lightweight vendor security assessment (questionnaire-based)  

---

## Mini-projects (overview)

### A) Data Retention & Tokenization — “Keep only what you need”
- **Goal**: Demonstrate retention enforcement and secure tokenization of payment data.  
- **Inputs**: `customers.csv`, `payments_raw.csv`  
- **Outputs**: `outputs/tokenized_payments.csv`, `outputs/validation_report.csv`  
- **Docs/Code**: `scripts/tokenization.ipynb`, `Payment_Dataflow_Report.md`  
- **KPIs**:  
  - 100% payment records tokenized  
  - Retention check cycle ≤30 days  
- **Frameworks**: PCI DSS Req. 3 (Protect stored cardholder data)  

---

### B) PCI Controls & Audit — “Show me the evidence”
- **Goal**: Run technical queries/tests mapped to PCI DSS requirements.  
- **Inputs**: PCI baseline (`pci_baseline.json`)  
- **Outputs**: `outputs/pci_checks_detail.json`, `pci_evidence.csv`  
- **Docs/Code**: `scripts/pci_checks.ipynb`, `PCI_controls_and_Audit_Report.md`  
- **KPIs (targets)**:  
  - 100% critical controls tested  
  - Evidence files generated reproducibly  
- **Frameworks**: PCI DSS Req. 10 (Logging) partially, Req. 12 (Documentation & Policies)  

---

### C) SQL Audit & Analytics — “Query your controls”
- **Goal**: Use SQL to simulate DSAR-type queries and find retention candidates.  
- **Inputs**: `orders.csv`, `safepay.db`  
- **Outputs**: `DSAR_customer_250_information.csv`, `retention_candidates.csv`  
- **Docs/Code**: `scripts/DSAR_customer_250.sql`, `Retention_Report.md`  
- **KPIs**:  
  - DSAR requests fulfilled ≤30 days  
  - Retention exceptions=0  
- **Frameworks**: PCI DSS Req. 3.2 (Keep cardholder data storage to a minimum)  

---

### D) Vendor Assessment — “Don’t trust, verify”
- **Goal**: Evaluate a payment vendor with a lightweight checklist.  
- **Docs/Code**: `vendor_assessment_checklist.md`  
- **Outputs**: vendor risk notes, questionnaire  
- **Frameworks**: PCI DSS Req. 12.8 (Vendor management)  

---

## Repository layout
<details>
<summary>Click to expand</summary>

  ```
SafePay/
├─ 01_Case/
│  ├─ A_Payment_Dataflow/
│  │  ├─ data/ # customers.csv, payments_raw.csv
│  │  ├─ outputs/ # tokenized_payments.csv, validation_report.csv
│  │  └─ scripts/ # Payment_Dataflow_Report.md, token_validation.ipynb, tokenization.ipynb
│  ├─ B_PCI_Controls_and_Audit/
│  │  ├─ outputs/ # pci_checks_detail.json, pci_evidence.csv
│  │  └─ scripts/ # pci_checks.ipynb, PCI_controls_and_Audit_Report.md
│  ├─ C_SQL_Audit_and_Analytics/
│  │  ├─ data/ # orders.csv, safepay.db
│  │  ├─ outputs/ # DSAR_customer_250_information.csv, retention_candidates.csv
│  │  └─ scripts/ # build_db.ipynb, DSAR_curtomer_250.sql, DSAR_Report.md, 
│  │                Retention_candidates.sql, Retention_Report.md
│  └─ D_Vendor_Assesement/
│     └─ vendor_assesement_checklist.md
│
├─ 02_Frameworks/
│  ├─ Data_Retention_Policy.md
│  ├─ PCI_Audit_Plan.md
│  ├─ pci_baseline.json
│  ├─ PCI_Control_Catalog.csv
│  └─ SoA_PCI.xlsx
│
├─ 03_Evidence/
│  ├─ Evidence_Builder.ipynb
│  └─ ledger.csv
│
└─ 04_Screenshots/

```
</details>  

---

##  Screenshots

<div style="display: flex; flex-direction: row;">
  <img  style="margin-bottom: 10px;" src="04_Screenshots/Captura de pantalla 2025-09-20 122612.png" alt="project" width="600" height="550">
  <img  style="margin-bottom: 10px;" src="04_Screenshots/Captura de pantalla 2025-09-20 122927.png" width="600" height="550">


> All datasets are synthetic. No real secrets or PII.

---

## 🛡 Framework Reference
PCI DSS v4.0:  
[PCI SSC Document](https://www.middlebury.edu/sites/default/files/2025-01/PCI-DSS-v4_0_1.pdf)

---















