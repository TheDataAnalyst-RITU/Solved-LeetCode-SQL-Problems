# Write your MySQL query statement below
SELECT MIN(distance) AS shortest
FROM(
    SELECT ABS(x-LAG(x) OVER(ORDER BY x)) AS distance
    FROM Point
    ) t