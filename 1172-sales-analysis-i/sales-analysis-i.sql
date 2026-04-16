# Write your MySQL query statement below
WITH cte AS (
    SELECT seller_id, SUM(price) AS total_sales_price
    FROM Sales
    GROUP BY seller_id
    )
SELECT seller_id
FROM cte
WHERE total_sales_price = (SELECT MAX(total_sales_price) FROM cte)