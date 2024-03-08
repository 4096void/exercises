-- 46 deserves a diffucult level 3
WITH AllShips AS (
  SELECT Outcomes.ship, Classes.class
  FROM Outcomes
  JOIN Classes
  ON Outcomes.ship = Classes.class
  WHERE Outcomes.battle = 'Guadalcanal'
  UNION
  SELECT Outcomes.ship, Classes.class
  FROM Outcomes
  JOIN Ships
  ON Outcomes.ship = Ships.name
  JOIN Classes
  ON Ships.class = Classes.class
  WHERE Outcomes.battle = 'Guadalcanal'
  AND Ships.name <> Ships.class
  UNION
  SELECT Outcomes.ship, NULL AS class
  FROM Outcomes
  WHERE Outcomes.battle = 'Guadalcanal'
  AND Outcomes.ship NOT IN (SELECT name FROM Ships)
  AND Outcomes.ship NOT IN (SELECT class FROM Classes)
)

SELECT AllShips.ship, Classes.displacement, Classes.numGuns
FROM AllShips
LEFT JOIN Classes
ON AllShips.class = Classes.class