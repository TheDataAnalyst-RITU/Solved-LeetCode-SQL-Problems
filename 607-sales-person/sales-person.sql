# Write your MySQL query statement below
WITH CTE AS (
    SELECT s.name
    FROM Orders AS o
    JOIN Company AS c
    ON o.com_id = c.com_id
    JOIN SalesPerson AS s
    ON o.sales_id = s.sales_id
    WHERE c.name = 'RED'
    )
SELECT s.name
FROM SalesPerson AS s
WHERE name NOT IN(
    SELECT name 
    FROM cte
)