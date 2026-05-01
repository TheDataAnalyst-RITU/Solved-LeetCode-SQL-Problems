# Write your MySQL query statement below
SELECT contest_id, ROUND(COUNT(DISTINCT r.user_id) * 100/(SELECT COUNT(*) FROM Users),2) percentage
FROM Users u
JOIN Register r
ON u.user_id = r.user_id
GROUP BY contest_id
ORDER BY percentage DESC, contest_id 