-- UNION ALL, allow duplicated rows when calculating average
-- a same ship can appears in both Ships & Outcomes(even multiple times)

WITH AllShips AS (
  SELECT Classes.country, Ships.class, Ships.name, Classes.bore
  FROM Ships
  JOIN Classes
  ON Ships.class = Classes.class
  UNION ALL
  SELECT DISTINCT Classes.country, Outcomes.ship 'class', Outcomes.ship, Classes.bore
  FROM Outcomes
  JOIN Classes
  ON Outcomes.ship = Classes.class
  WHERE Outcomes.ship NOT IN (SELECT name FROM Ships)
)

SELECT
  country,
  CAST(AVG(bore * bore * bore / 2) AS DECIMAL(10, 2)) AS weight
FROM AllShips
GROUP BY country

SELECT * FROM AllShips
