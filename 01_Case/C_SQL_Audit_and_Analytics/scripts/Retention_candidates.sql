-- SQLite
SELECT c.customer_id, c.full_name, c.email, MAX(o.order_date) AS last_order
FROM customers AS c
LEFT JOIN orders AS o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING (MAX(o.order_date) IS NULL) OR (DATE(MAX(o.order_date)) < DATE('now','-18 months'));
