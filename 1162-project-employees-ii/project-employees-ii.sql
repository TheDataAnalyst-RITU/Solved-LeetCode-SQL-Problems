# Write your MySQL query statement below
WITH cte AS (
    SELECT project_id, COUNT(employee_id) as emp_count
    FROM Project
    GROUP BY project_id)
SELECT project_id
FROM cte
WHERE emp_count = (SELECT MAX(emp_count) FROM cte)