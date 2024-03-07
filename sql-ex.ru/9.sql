SELECT DISTINCT product.maker
FROM pc
JOIN product
ON product.model = pc.model
WHERE speed >= 450
