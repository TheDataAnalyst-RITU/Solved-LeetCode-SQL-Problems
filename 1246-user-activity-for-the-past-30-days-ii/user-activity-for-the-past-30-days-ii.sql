# Write your MySQL query statement below
With cte AS (
SELECT DISTINCT user_id, session_id
FROM Activity
WHERE activity_date <= '2019-07-27' AND DATEDIFF('2019-07-27', activity_date)< 30
),
cte1 AS (
SELECT user_id, COUNT(session_id) AS session_count
FROM cte
GROUP BY user_id
)
SELECT IFNULL(ROUND(AVG(session_count), 2),0) AS average_sessions_per_user
FROM cte1