WITH FullOutcomes AS (
  SELECT Outcomes.ship, Outcomes.battle, Battles.date, Outcomes.result
  FROM Outcomes
  JOIN Battles
  ON Outcomes.battle = Battles.name
)

SELECT DISTINCT F.ship
FROM FullOutcomes AS F
WHERE F.result = 'damaged'
AND EXISTS (
  SELECT *
  FROM FullOutcomes AS FF
  WHERE FF.ship = F.ship
  AND FF.date > F.date
)
