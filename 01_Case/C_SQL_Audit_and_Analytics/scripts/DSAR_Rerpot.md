# Data Subject Access Report
**Customer**: customer_id = 250  
**Report generated:** 2025-10-01  
**Prepared by:** G. Arjona / GRC team    
**Environment:** non-prod

---

## 1. Request metadata
- **Request type:** DSAR – Access / Export
- **Request received (date):** 2025-09-20 
- **Requester contact:** requester123@safepay.com 
- **Request Ticket:** DSAR-218963128
- **Result path:** `C_SQL_Audit_and_Analytics/outputs/DSAR_customer_250_orders.csv` 

---

## 2. Query & scope used
- **DB:** `C_SQL_Audit_and_Analytics/data/safepay.db` 
- **SQL (used to extract data):**
```sql
SELECT c.*, p.*, o.* 
FROM customers as c
JOIN payments_tokenized as p ON c.customer_id = p.customer_id
JOIN orders as o ON c.customer_id = o.customer_id
WHERE c.customer_id = 250
```
---

## 3. Summary of results (high level)

**Customer record found:** Yes    
**Full name:** Jamie Hernandez     
**Account created:** 2024-09-17     
**Last order:** 2023-05-19    
**Number of orders:** 25      

