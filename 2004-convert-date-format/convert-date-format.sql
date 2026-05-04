# Write your MySQL query statement below
SELECT CONCAT(DAYNAME(day), ", ", MONTHNAME(day), " ", DAY(day), ", ", YEAR(day)) AS day
FROM Days;