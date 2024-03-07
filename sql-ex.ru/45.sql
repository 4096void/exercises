-- LIKE as regular expression, for name containing spaces, and no leading spaces & trailing spaces
WITH AllShips AS (
  SELECT name
  FROM Ships
  UNION
  SELECT ship AS name
  FROM Outcomes
)

SELECT name
FROM AllShips
WHERE name LIKE '% % %'
  AND name NOT LIKE ' %'
  AND name NOT LIKE '% '
