SELECT DISTINCT product.maker, laptop.speed
FROM laptop
JOIN product
ON product.model = laptop.model
WHERE laptop.hd >= 10
