# Write your MySQL query statement below
SELECT w2.id
FROM Weather AS w1
JOIN Weather AS w2
WHERE w2.temperature > w1.temperature AND DATEDIFF(w2.recordDate, w1.recordDate) = 1