-- full join keep NULL in place
WITH mm AS (SELECT point, date
FROM Income_o
UNION
SELECT point, date
FROM Outcome_o)

SELECT mm.point, mm.date, Income_o.inc, Outcome_o.out
FROM mm
FULL JOIN Income_o
ON Income_o.point = mm.point
AND Income_o.date = mm.date
FULL JOIN  Outcome_o
ON Outcome_o.point = mm.point
AND Outcome_o.date = mm.date
