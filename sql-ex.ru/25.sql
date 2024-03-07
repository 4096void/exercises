SELECT DISTINCT product.maker
FROM product
WHERE product.type = 'printer'
INTERSECT
SELECT DISTINCT product.maker
FROM pc
JOIN product
ON product.model = pc.model
WHERE speed = (SELECT MAX(speed) FROM (
  SELECT speed FROM PC
  WHERE ram = (SELECT MIN(ram) FROM PC)
) AS mm)
AND ram = (SELECT MIN(ram) FROM pc)
