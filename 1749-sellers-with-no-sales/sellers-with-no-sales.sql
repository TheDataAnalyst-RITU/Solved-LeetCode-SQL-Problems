# Write your MySQL query statement below
SELECT seller_name
FROM Seller 
WHERE seller_id NOT IN (
    SELECT seller_id
    FROM orders
    WHERE YEAR(sale_date) = 2020
    )
ORDER BY seller_name