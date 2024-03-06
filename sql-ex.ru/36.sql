SELECT Ships.name
FROM Ships
WHERE Ships.class = Ships.name
UNION
SELECT Outcomes.ship 'name'
FROM Outcomes
JOIN Classes
ON Classes.class = Outcomes.ship
