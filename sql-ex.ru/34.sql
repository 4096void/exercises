SELECT Ships.name
FROM Ships
JOIN Classes
ON Ships.class = Classes.class
WHERE Ships.launched >= 1922
AND Classes.displacement > 35000
AND Classes.type = 'bb'