WITH AllShips AS (
  SELECT Ships.class
  FROM Ships
  JOIN Classes
  ON Ships.class = Classes.class
  UNION ALL
  SELECT DISTINCT Outcomes.ship 'class'
  FROM Outcomes
  JOIN Classes
  ON Outcomes.ship = Classes.class
  WHERE Outcomes.ship NOT IN (SELECT name FROM Ships)
)

SELECT class
FROM AllShips
GROUP BY class
HAVING COUNT(class) = 1
