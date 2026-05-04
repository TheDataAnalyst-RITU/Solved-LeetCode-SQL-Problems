# Write your MySQL query statement below
WITH cte AS(
SELECT p.session_id
FROM Playback AS p
JOIN Ads AS a
WHERE a.timestamp BETWEEN start_time AND end_time 
AND p.customer_id = a.customer_id)
SELECT session_id 
FROM Playback
WHERE session_id NOT IN (SELECT * FROM cte)