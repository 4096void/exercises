SELECT speed, SUM(price)/COUNT(price) AS Avg_price
FROM pc
WHERE speed > 600
GROUP BY speed
