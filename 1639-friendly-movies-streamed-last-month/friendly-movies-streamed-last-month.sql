# Write your MySQL query statement below
SELECT DISTINCT c.title
FROM Content AS c
JOIN TVProgram AS t
ON c.content_id = t.content_id
WHERE c.kids_content = 'Y' 
    AND c.content_type = 'Movies'
    AND MONTH(t.program_date) = 6
    AND YEAR(t.program_date) = 2020