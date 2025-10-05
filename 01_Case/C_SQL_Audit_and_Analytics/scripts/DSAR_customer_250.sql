-- SQLite
SELECT c.*, p.*, o.* 
FROM customers as c
JOIN payments_tokenized as p ON c.customer_id = p.customer_id
JOIN orders as o ON c.customer_id = o.customer_id
WHERE c.customer_id = 250

