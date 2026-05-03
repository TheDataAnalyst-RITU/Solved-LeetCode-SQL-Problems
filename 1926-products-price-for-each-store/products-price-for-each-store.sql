# Write your MySQL query statement below
SELECT product_id, 
SUM(CASE WHEN store='store1' THEN price end) AS store1,
SUM(CASE WHEN store='store2' THEN price end) AS store2,
SUM(CASE WHEN store='store3' THEN price end) AS store3
FROM Products
GROUP BY product_id