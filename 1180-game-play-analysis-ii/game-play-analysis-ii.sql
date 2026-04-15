# Write your MySQL query statement below
SELECT a.player_id, a.device_id
FROM Activity AS a
JOIN (SELECT player_id, MIN(event_date) AS first_date
FROM Activity
GROUP BY player_id) AS s1
ON a.player_id = s1.player_id
AND a.event_date = s1.first_date