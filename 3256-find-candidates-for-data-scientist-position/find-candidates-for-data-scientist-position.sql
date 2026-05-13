# Write your MySQL query statement below
SELECT candidate_id
FROM candidates
WHERE skill IN ("Python", "Tableau", "PostgreSQL")
GROUP BY 1
HAVING COUNT(skill) = 3
ORDER BY 1 ASC;