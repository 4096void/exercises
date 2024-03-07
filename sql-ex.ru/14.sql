SELECT ships.class, ships.name, classes.country
FROM classes
JOIN ships
ON classes.class = ships.class
WHERE classes.numGuns >= 10
