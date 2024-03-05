WITH
M1 AS (SELECT point, date, SUM(inc) AS income
FROM Income
GROUP BY point, date),
M2 AS (SELECT point, date, SUM(out) AS Outcome
FROM Outcome
GROUP BY point, date),
MM AS (SELECT point, date
FROM Income
UNION
SELECT point, date
FROM Outcome)

SELECT MM.point, MM.date, M2.Outcome, M1.income
FROM MM
LEFT JOIN M1
ON M1.point = MM.point
AND M1.date = MM.date
LEFT JOIN  M2
ON M2.point = MM.point
AND M2.date = MM.date
