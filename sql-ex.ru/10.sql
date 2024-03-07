SELECT model, price
FROM printer
WHERE price IN (
  SELECT TOP 1 price
  FROM printer
  ORDER BY price DESC)
