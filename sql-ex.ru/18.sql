SELECT DISTINCT product.maker, printer.price
FROM printer
JOIN product
ON product.model = printer.model
WHERE printer.color = 'y'
AND price = (
  SELECT MIN(price)
  FROM printer
  WHERE color = 'y')
