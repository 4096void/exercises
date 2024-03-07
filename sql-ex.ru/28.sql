WITH mm AS (SELECT product.maker, COUNT(DISTINCT product.model) AS models_count
FROM product
GROUP BY product.maker
HAVING COUNT(DISTINCT product.model) = 1)

SELECT COUNT(maker) AS qty
FROM mm
