# Write your MySQL query statement below
WITH cte AS (SELECT customer_id, 
CASE WHEN amount > 500 THEN 1 ELSE 0 END AS reasoning
FROM Store)
SELECT COUNT(DISTINCT customer_id) AS rich_count
FROM cte
WHERE reasoning = 1