SELECT DISTINCT product.type, laptop.model, laptop.speed
FROM laptop
JOIN product
ON product.model = laptop.model
WHERE speed < ALL (SELECT speed FROM pc)
