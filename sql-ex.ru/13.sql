SELECT SUM(pc.speed)/COUNT(pc.speed)
FROM pc
JOIN product
ON product.model = pc.model
WHERE product.maker = 'A'
AND product.type = 'pc'
