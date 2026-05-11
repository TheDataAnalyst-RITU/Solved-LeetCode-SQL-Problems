# Write your MySQL query statement below
WITH NationalAverage AS (SELECT AVG(price) AS national_average
FROM Listings),
CityAverage AS (SELECT city, AVG(price) as city_average
FROM Listings
GROUP BY city)
SELECT city
FROM CityAverage
JOIN NationalAverage 
ON TRUE
WHERE city_average > national_average
ORDER BY city