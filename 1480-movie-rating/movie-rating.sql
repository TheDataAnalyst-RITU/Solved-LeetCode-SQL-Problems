WITH cte AS (
    SELECT 
        m.user_id,
        m.movie_id,
        u.name,
        mv.title,
        m.created_at,
        m.rating
    FROM MovieRating m 
    LEFT JOIN Users u
        ON m.user_id = u.user_id
    LEFT JOIN Movies mv
        ON mv.movie_id = m.movie_id
),
cte2 AS (
    SELECT name, COUNT(user_id) AS cnt
    FROM cte
    GROUP BY name
    ORDER BY cnt DESC, name ASC
    LIMIT 1
),
cte3 AS (
    SELECT title, AVG(rating) AS avg_rating
    FROM cte
    WHERE created_at >= '2020-02-01'
      AND created_at < '2020-03-01'
    GROUP BY title
    ORDER BY AVG(rating) DESC, title ASC 
    LIMIT 1
)
SELECT name AS results
FROM cte2

UNION ALL

SELECT title AS results
FROM cte3;