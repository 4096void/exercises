SELECT DISTINCT maker, type
FROM product
WHERE maker IN (SELECT maker
FROM Product
GROUP BY maker
HAVING COUNT(DISTINCT type) = 1 AND COUNT(model) > 1)
