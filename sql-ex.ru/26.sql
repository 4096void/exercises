WITH mm AS (SELECT price
FROM pc
JOIN product
ON product.model = pc.model
WHERE product.maker = 'A'
UNION ALL
SELECT price
FROM laptop
JOIN product
ON product.model = laptop.model
WHERE product.maker = 'A')

SELECT AVG(price) AS AVG_price
FROM mm
