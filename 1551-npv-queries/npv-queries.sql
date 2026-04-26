# Write your MySQL query statement below
SELECT q.id, q.year, IFNULL(n.npv,0) AS npv
FROM Queries as q
LEFT JOIN NPV as n
ON q.id = n.id
AND q.year = n.year