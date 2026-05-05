# Write your MySQL query statement below
SELECT employee_id 
FROM Employees AS e 
WHERE employee_id not in (Select employee_id from Salaries)
UNION 
SELECT employee_id 
FROM Salaries AS s 
WHERE employee_id not in (Select employee_id from Employees)
ORDER BY employee_id