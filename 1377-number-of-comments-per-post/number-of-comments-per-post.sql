# Write your MySQL query statement below
SELECT p.sub_id AS post_id, COUNT(DISTINCT c.sub_id) as number_of_comments
FROM Submissions as p
LEFT JOIN Submissions as c
ON p.sub_id = c.parent_id
WHERE p.parent_id IS NULL
GROUP BY p.sub_id
ORDER BY p.sub_id;