SELECT name
FROM Battles
WHERE Battles.date IS NOT NULL AND NOT EXISTS (
  SELECT *
  FROM Ships
  WHERE launched = DATEPART(yy, Battles.date)
)