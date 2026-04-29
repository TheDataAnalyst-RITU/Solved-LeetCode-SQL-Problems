# Write your MySQL query statement below
SELECT c.customer_id, c.name
FROM Customers AS c
JOIN Orders AS o 
ON c.customer_id = o.customer_id
JOIN Product AS p 
ON o.product_id = p.product_id
WHERE o.order_date BETWEEN '2020-06-01' AND '2020-07-31'
GROUP BY c.customer_id, c.name
HAVING SUM(CASE WHEN MONTH(o.order_date) = 6 THEN o.quantity * p.price ELSE 0 END) >= 100
AND SUM(CASE WHEN MONTH(o.order_date) = 7 THEN o.quantity * p.price ELSE 0 END) >= 100;