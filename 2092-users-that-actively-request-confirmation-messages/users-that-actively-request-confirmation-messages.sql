# Write your MySQL query statement below
SELECT DISTINCT user_id
FROM (
    SELECT user_id, time_stamp, LAG(time_stamp) OVER (PARTITION BY user_id ORDER BY time_stamp) AS prev_time
    FROM Confirmations
) t
WHERE time_stamp <= prev_time + INTERVAL 1 DAY