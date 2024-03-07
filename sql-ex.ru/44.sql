SELECT name
FROM Ships
WHERE name LIKE 'R%'
UNION
SELECT ship AS name
FROM Outcomes
WHERE ship like 'R%'
