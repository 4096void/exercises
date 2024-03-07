SELECT product.maker
FROM pc
JOIN product
ON product.model = pc.model
WHERE pc.speed >= 750
INTERSECT
SELECT product.maker
FROM laptop
JOIN product
ON product.model = laptop.model
WHERE laptop.speed >= 750
