SELECT '[0-5>' AS bin, SUM(duration < 300) AS total
FROM Sessions
UNION ALL
SELECT '[5-10>', SUM(duration >= 300 AND duration < 600)
FROM Sessions
UNION ALL
SELECT '[10-15>', SUM(duration >= 600 AND duration < 900)
FROM Sessions
UNION ALL
SELECT '15 or more', SUM(duration >= 900)
FROM Sessions