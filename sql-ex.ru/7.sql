SELECT DISTINCT pc.model, pc.price
FROM pc
JOIN product
ON product.model = pc.model
WHERE product.maker = 'B'
UNION
SELECT DISTINCT laptop.model, laptop.price
FROM laptop
JOIN product
ON product.model = laptop.model
WHERE product.maker = 'B'
UNION
SELECT DISTINCT printer.model, printer.price
FROM printer
JOIN product
ON product.model = printer.model
WHERE product.maker = 'B'
