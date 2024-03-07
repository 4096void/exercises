SELECT maker, COUNT(type) AS Count_Model
FROM product
WHERE type = 'pc'
GROUP BY maker
HAVING COUNT(type) >= 3
